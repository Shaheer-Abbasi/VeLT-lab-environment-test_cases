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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !389
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !355
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !379
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !381
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !383
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !385
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !387
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !391
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !393
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !398
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !403
@.str.43 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !409
@.str.1.44 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !411
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !413
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !444
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !447
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !449
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !454
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !456
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !458
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !460
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !462
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !464
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !466
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.53, ptr @.str.1.54, ptr @.str.2.55, ptr @.str.3.56, ptr @.str.4.57, ptr @.str.5.58, ptr @.str.6.59, ptr @.str.7.60, ptr @.str.8.61, ptr @.str.9.62, ptr null], align 8, !dbg !468
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !493
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !507
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !545
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !552
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !509
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !554
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !497
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !514
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !516
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !518
@.str.13.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !520
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !522
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !560
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !563
@.str.2.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !565
@.str.3.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !567
@.str.4.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !569
@.str.5.74 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !571
@.str.6.75 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !576
@.str.7.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !581
@.str.8.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !583
@.str.9.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !588
@.str.10.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !593
@.str.11.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !598
@.str.12.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !603
@.str.13.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !605
@.str.14.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !610
@.str.15.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !615
@.str.16.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !620
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !625
@.str.18.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !627
@.str.19.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !629
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !631
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !633
@.str.22.93 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !635
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !637
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !642
@exit_failure = dso_local global i32 1, align 4, !dbg !650
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !656
@.str.1.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !659
@.str.2.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !661
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !663
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !666
@.str.122 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !681
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !684

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !757 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !761, metadata !DIExpression()), !dbg !762
  %2 = icmp eq i32 %0, 0, !dbg !763
  br i1 %2, label %8, label %3, !dbg !765

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !766, !tbaa !768
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !766
  %6 = load ptr, ptr @program_name, align 8, !dbg !766, !tbaa !768
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !766
  br label %31, !dbg !766

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !772
  %10 = load ptr, ptr @program_name, align 8, !dbg !772, !tbaa !768
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !772
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #37, !dbg !774
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !774
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !775
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !775
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !776
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !776
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !777
  %16 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %15, ptr noundef nonnull @.str.2) #37, !dbg !777
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !778, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata !797, metadata !791, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata ptr poison, metadata !790, metadata !DIExpression()), !dbg !795
  tail call void @emit_bug_reporting_address() #37, !dbg !798
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !799
  call void @llvm.dbg.value(metadata ptr %17, metadata !793, metadata !DIExpression()), !dbg !795
  %18 = icmp eq ptr %17, null, !dbg !800
  br i1 %18, label %26, label %19, !dbg !802

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #38, !dbg !803
  %21 = icmp eq i32 %20, 0, !dbg !803
  br i1 %21, label %26, label %22, !dbg !804

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !805
  %24 = load ptr, ptr @stdout, align 8, !dbg !805, !tbaa !768
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !805
  br label %26, !dbg !807

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !790, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !794, metadata !DIExpression()), !dbg !795
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !808
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2) #37, !dbg !808
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !809
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.49) #37, !dbg !809
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !810
  unreachable, !dbg !810
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !811 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !815 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !821 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !119 {
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !123, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !124, metadata !DIExpression()), !dbg !824
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !825, !tbaa !826
  %3 = icmp eq i32 %2, -1, !dbg !828
  br i1 %3, label %4, label %16, !dbg !829

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !830
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !125, metadata !DIExpression()), !dbg !831
  %6 = icmp eq ptr %5, null, !dbg !832
  br i1 %6, label %14, label %7, !dbg !833

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !834, !tbaa !835
  %9 = icmp eq i8 %8, 0, !dbg !834
  br i1 %9, label %14, label %10, !dbg !836

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !843, metadata !DIExpression()), !dbg !844
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #38, !dbg !846
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
  br label %121, !dbg !855

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !824
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #38, !dbg !856
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !857
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !130, metadata !DIExpression()), !dbg !824
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !858
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !131, metadata !DIExpression()), !dbg !824
  %26 = icmp eq ptr %25, null, !dbg !859
  br i1 %26, label %53, label %27, !dbg !860

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !861
  br i1 %28, label %53, label %29, !dbg !862

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !132, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !863
  %30 = icmp ult ptr %24, %25, !dbg !864
  br i1 %30, label %31, label %53, !dbg !865

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !824
  %33 = load ptr, ptr %32, align 8, !tbaa !768
  br label %34, !dbg !865

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !132, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !136, metadata !DIExpression()), !dbg !863
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !866
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !132, metadata !DIExpression()), !dbg !863
  %38 = load i8, ptr %35, align 1, !dbg !866, !tbaa !835
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !866
  %41 = load i16, ptr %40, align 2, !dbg !866, !tbaa !867
  %42 = freeze i16 %41, !dbg !869
  %43 = lshr i16 %42, 13, !dbg !869
  %44 = and i16 %43, 1, !dbg !869
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !870
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !136, metadata !DIExpression()), !dbg !863
  %47 = icmp ult ptr %37, %25, !dbg !864
  %48 = icmp ult i64 %46, 2, !dbg !871
  %49 = select i1 %47, i1 %48, i1 false, !dbg !871
  br i1 %49, label %34, label %50, !dbg !865, !llvm.loop !872

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !870
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !874
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !876
  br label %53, !dbg !876

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !824
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !128, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !131, metadata !DIExpression()), !dbg !824
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.18) #38, !dbg !877
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !137, metadata !DIExpression()), !dbg !824
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !138, metadata !DIExpression()), !dbg !824
  br label %58, !dbg !879

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !824
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !128, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !138, metadata !DIExpression()), !dbg !824
  %61 = load i8, ptr %59, align 1, !dbg !880, !tbaa !835
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !881

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !882
  %64 = load i8, ptr %63, align 1, !dbg !885, !tbaa !835
  %65 = icmp ne i8 %64, 45, !dbg !886
  %66 = select i1 %65, i1 %60, i1 false, !dbg !887
  br label %67, !dbg !887

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !128, metadata !DIExpression()), !dbg !824
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !888
  %70 = load ptr, ptr %69, align 8, !dbg !888, !tbaa !768
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !888
  %73 = load i16, ptr %72, align 2, !dbg !888, !tbaa !867
  %74 = and i16 %73, 8192, !dbg !888
  %75 = icmp eq i16 %74, 0, !dbg !888
  br i1 %75, label %89, label %76, !dbg !890

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !891
  br i1 %77, label %91, label %78, !dbg !894

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !895
  %80 = load i8, ptr %79, align 1, !dbg !895, !tbaa !835
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !895
  %83 = load i16, ptr %82, align 2, !dbg !895, !tbaa !867
  %84 = and i16 %83, 8192, !dbg !895
  %85 = icmp eq i16 %84, 0, !dbg !895
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !896
  br i1 %88, label %89, label %91, !dbg !896

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !897
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !138, metadata !DIExpression()), !dbg !824
  br label %58, !dbg !879, !llvm.loop !898

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !824
  %92 = ptrtoint ptr %24 to i64, !dbg !900
  %93 = load ptr, ptr @stdout, align 8, !dbg !900, !tbaa !768
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !837, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata !797, metadata !843, metadata !DIExpression()), !dbg !919
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !195, metadata !DIExpression()), !dbg !824
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #38, !dbg !921
  %96 = icmp eq i32 %95, 0, !dbg !921
  br i1 %96, label %100, label %97, !dbg !923

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #38, !dbg !924
  %99 = icmp eq i32 %98, 0, !dbg !924
  br i1 %99, label %100, label %103, !dbg !925

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !926
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %101, ptr noundef %54) #37, !dbg !926
  br label %106, !dbg !928

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !929
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef %104, ptr noundef %54) #37, !dbg !929
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !768
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %107), !dbg !931
  %109 = load ptr, ptr @stdout, align 8, !dbg !932, !tbaa !768
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %109), !dbg !932
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !933
  %112 = sub i64 %111, %92, !dbg !933
  %113 = load ptr, ptr @stdout, align 8, !dbg !933, !tbaa !768
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !933
  %115 = load ptr, ptr @stdout, align 8, !dbg !934, !tbaa !768
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %115), !dbg !934
  %117 = load ptr, ptr @stdout, align 8, !dbg !935, !tbaa !768
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %117), !dbg !935
  %119 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !768
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !936
  br label %121, !dbg !937

121:                                              ; preds = %106, %19
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !981, metadata !DIExpression()), !dbg !1003
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !982, metadata !DIExpression()), !dbg !1003
  tail call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !1003
  %3 = load ptr, ptr %1, align 8, !dbg !1004, !tbaa !768
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1005
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !1006
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !1007
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1009, metadata !DIExpression()), !dbg !1012
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1014, !tbaa !826
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1016
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !983, metadata !DIExpression()), !dbg !1003
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !984, metadata !DIExpression()), !dbg !1003
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 48, label %.preheader5
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1018

.preheader5:                                      ; preds = %2
  br label %9, !dbg !1018

9:                                                ; preds = %.preheader5, %9
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !983, metadata !DIExpression()), !dbg !1003
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !984, metadata !DIExpression()), !dbg !1003
  switch i32 %10, label %.loopexit6 [
    i32 -1, label %.loopexit7
    i32 48, label %9
    i32 -2, label %.loopexit8
    i32 -3, label %.loopexit9
  ], !dbg !1018, !llvm.loop !1019

.loopexit8:                                       ; preds = %9
  br label %11, !dbg !1022

11:                                               ; preds = %.loopexit8, %2
  tail call void @usage(i32 noundef 0) #41, !dbg !1022
  unreachable, !dbg !1022

.loopexit9:                                       ; preds = %9
  br label %12, !dbg !1025

12:                                               ; preds = %.loopexit9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !768
  %14 = load ptr, ptr @Version, align 8, !dbg !1025, !tbaa !768
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #37, !dbg !1025
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !1025
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #37, !dbg !1025
  tail call void @exit(i32 noundef 0) #39, !dbg !1025
  unreachable, !dbg !1025

.loopexit6:                                       ; preds = %9
  br label %17, !dbg !1026

17:                                               ; preds = %.loopexit6, %2
  tail call void @usage(i32 noundef 2) #41, !dbg !1026
  unreachable, !dbg !1026

.loopexit7:                                       ; preds = %9
  br label %18, !dbg !1027

18:                                               ; preds = %.loopexit7, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %.loopexit7 ]
  %20 = load i32, ptr @optind, align 4, !dbg !1027, !tbaa !826
  %21 = icmp slt i32 %20, %0, !dbg !1028
  br i1 %21, label %22, label %24, !dbg !1029

22:                                               ; preds = %18
  %23 = sext i32 %20 to i64, !dbg !1030
  br label %40, !dbg !1030

24:                                               ; preds = %18
  %25 = load ptr, ptr @environ, align 8, !dbg !1031, !tbaa !768
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !986, metadata !DIExpression()), !dbg !1032
  %26 = load ptr, ptr %25, align 8, !dbg !1033, !tbaa !768
  %27 = icmp eq ptr %26, null, !dbg !1035
  br i1 %27, label %96, label %.preheader3, !dbg !1036

.preheader3:                                      ; preds = %24
  br label %28, !dbg !1036

28:                                               ; preds = %.preheader3, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %.preheader3 ]
  %30 = phi ptr [ %32, %28 ], [ %25, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !986, metadata !DIExpression()), !dbg !1032
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %29, i32 noundef %19) #37, !dbg !1037
  %32 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !1038
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !986, metadata !DIExpression()), !dbg !1032
  %33 = load ptr, ptr %32, align 8, !dbg !1033, !tbaa !768
  %34 = icmp eq ptr %33, null, !dbg !1035
  br i1 %34, label %.loopexit4, label %28, !dbg !1036, !llvm.loop !1039

35:                                               ; preds = %91
  %.lcssa11 = phi i32 [ %92, %91 ], !dbg !1041
  %36 = load i32, ptr @optind, align 4, !dbg !1042, !tbaa !826
  %37 = sub nsw i32 %0, %36, !dbg !1043
  %38 = icmp ne i32 %.lcssa11, %37, !dbg !1044
  tail call void @llvm.dbg.value(metadata i1 %38, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1003
  %39 = zext i1 %38 to i32, !dbg !1045
  br label %96

40:                                               ; preds = %22, %91
  %41 = phi i64 [ %23, %22 ], [ %93, %91 ]
  %42 = phi i32 [ 0, %22 ], [ %92, %91 ]
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !992, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !990, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i8 0, metadata !994, metadata !DIExpression()), !dbg !1047
  %43 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !1048
  %44 = load ptr, ptr %43, align 8, !dbg !1048, !tbaa !768
  %45 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %44, i32 noundef 61) #38, !dbg !1050
  %46 = icmp eq ptr %45, null, !dbg !1050
  br i1 %46, label %47, label %91, !dbg !1051

47:                                               ; preds = %40
  %48 = load ptr, ptr @environ, align 8, !dbg !1052, !tbaa !768
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !997, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !994, metadata !DIExpression()), !dbg !1047
  %49 = load ptr, ptr %48, align 8, !dbg !1054, !tbaa !768
  %50 = icmp eq ptr %49, null, !dbg !1055
  br i1 %50, label %51, label %.preheader1, !dbg !1055

.preheader1:                                      ; preds = %47
  br label %55, !dbg !1055

.loopexit2:                                       ; preds = %86
  %.lcssa = phi i1 [ %87, %86 ]
  br label %51, !dbg !1056

51:                                               ; preds = %.loopexit2, %47
  %52 = phi i1 [ false, %47 ], [ %.lcssa, %.loopexit2 ]
  %53 = zext i1 %52 to i32, !dbg !1056
  %54 = add nsw i32 %42, %53, !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !990, metadata !DIExpression()), !dbg !1041
  br label %91, !dbg !1058

55:                                               ; preds = %.preheader1, %86
  %56 = phi ptr [ %89, %86 ], [ %49, %.preheader1 ]
  %57 = phi ptr [ %88, %86 ], [ %48, %.preheader1 ]
  %58 = phi i1 [ %87, %86 ], [ false, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !997, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1002, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !999, metadata !DIExpression()), !dbg !1059
  %59 = load i8, ptr %56, align 1, !dbg !1060, !tbaa !835
  %60 = icmp eq i8 %59, 0, !dbg !1061
  br i1 %60, label %86, label %61, !dbg !1062

61:                                               ; preds = %55
  %62 = load ptr, ptr %43, align 8, !dbg !1063, !tbaa !768
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !1002, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !999, metadata !DIExpression()), !dbg !1059
  %63 = load i8, ptr %62, align 1, !dbg !1064, !tbaa !835
  %64 = icmp eq i8 %63, 0, !dbg !1065
  br i1 %64, label %86, label %.preheader, !dbg !1066

.preheader:                                       ; preds = %61
  br label %65, !dbg !1067

65:                                               ; preds = %.preheader, %83
  %66 = phi i8 [ %84, %83 ], [ %63, %.preheader ]
  %67 = phi ptr [ %70, %83 ], [ %56, %.preheader ]
  %68 = phi ptr [ %71, %83 ], [ %62, %.preheader ]
  %69 = phi i8 [ %74, %83 ], [ %59, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !999, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !1002, metadata !DIExpression()), !dbg !1059
  %70 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !999, metadata !DIExpression()), !dbg !1059
  %71 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1002, metadata !DIExpression()), !dbg !1059
  %72 = icmp eq i8 %69, %66, !dbg !1070
  br i1 %72, label %73, label %.loopexit, !dbg !1067

73:                                               ; preds = %65
  %74 = load i8, ptr %70, align 1, !dbg !1071, !tbaa !835
  switch i8 %74, label %83 [
    i8 61, label %75
    i8 0, label %.loopexit
  ], !dbg !1074

75:                                               ; preds = %73
  %76 = load i8, ptr %71, align 1, !dbg !1075, !tbaa !835
  %77 = icmp eq i8 %76, 0, !dbg !1076
  br i1 %77, label %78, label %81, !dbg !1077

78:                                               ; preds = %75
  %.lcssa10 = phi ptr [ %67, %75 ]
  %79 = getelementptr inbounds i8, ptr %.lcssa10, i64 2, !dbg !1078
  %80 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %79, i32 noundef %19) #37, !dbg !1078
  tail call void @llvm.dbg.value(metadata i8 1, metadata !994, metadata !DIExpression()), !dbg !1047
  br label %86, !dbg !1080

81:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1002, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !999, metadata !DIExpression()), !dbg !1059
  %82 = icmp eq i8 %74, 0, !dbg !1061
  br i1 %82, label %.loopexit, label %83, !dbg !1062

83:                                               ; preds = %81, %73
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1002, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %70, metadata !999, metadata !DIExpression()), !dbg !1059
  %84 = load i8, ptr %71, align 1, !dbg !1064, !tbaa !835
  %85 = icmp eq i8 %84, 0, !dbg !1065
  br i1 %85, label %.loopexit, label %65, !dbg !1066, !llvm.loop !1081

.loopexit:                                        ; preds = %65, %81, %83, %73
  br label %86, !dbg !1083

86:                                               ; preds = %.loopexit, %61, %55, %78
  %87 = phi i1 [ true, %78 ], [ %58, %55 ], [ %58, %61 ], [ %58, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !994, metadata !DIExpression()), !dbg !1047
  %88 = getelementptr inbounds ptr, ptr %57, i64 1, !dbg !1083
  tail call void @llvm.dbg.value(metadata ptr %88, metadata !997, metadata !DIExpression()), !dbg !1053
  %89 = load ptr, ptr %88, align 8, !dbg !1054, !tbaa !768
  %90 = icmp eq ptr %89, null, !dbg !1055
  br i1 %90, label %.loopexit2, label %55, !dbg !1055, !llvm.loop !1084

91:                                               ; preds = %40, %51
  %92 = phi i32 [ %54, %51 ], [ %42, %40 ], !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !990, metadata !DIExpression()), !dbg !1041
  %93 = add nsw i64 %41, 1, !dbg !1086
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !992, metadata !DIExpression()), !dbg !1046
  %94 = trunc i64 %93 to i32, !dbg !1087
  %95 = icmp eq i32 %94, %0, !dbg !1087
  br i1 %95, label %35, label %40, !dbg !1030, !llvm.loop !1088

.loopexit4:                                       ; preds = %28
  br label %96, !dbg !1090

96:                                               ; preds = %.loopexit4, %24, %35
  %97 = phi i32 [ %39, %35 ], [ 0, %24 ], [ 0, %.loopexit4 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !985, metadata !DIExpression()), !dbg !1003
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !1107
  store ptr %0, ptr @file_name, align 8, !dbg !1108, !tbaa !768
  ret void, !dbg !1109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1110 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1114, metadata !DIExpression()), !dbg !1115
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1116, !tbaa !1117
  ret void, !dbg !1119
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1120 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !768
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1126
  %3 = icmp eq i32 %2, 0, !dbg !1127
  br i1 %3, label %22, label %4, !dbg !1128

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1129, !tbaa !1117, !range !1130, !noundef !797
  %6 = icmp eq i8 %5, 0, !dbg !1129
  br i1 %6, label %11, label %7, !dbg !1131

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1132
  %9 = load i32, ptr %8, align 4, !dbg !1132, !tbaa !826
  %10 = icmp eq i32 %9, 32, !dbg !1133
  br i1 %10, label %22, label %11, !dbg !1134

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #37, !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1122, metadata !DIExpression()), !dbg !1136
  %13 = load ptr, ptr @file_name, align 8, !dbg !1137, !tbaa !768
  %14 = icmp eq ptr %13, null, !dbg !1137
  %15 = tail call ptr @__errno_location() #40, !dbg !1139
  %16 = load i32, ptr %15, align 4, !dbg !1139, !tbaa !826
  br i1 %14, label %19, label %17, !dbg !1140

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1141
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #37, !dbg !1141
  br label %20, !dbg !1141

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #37, !dbg !1142
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1143, !tbaa !826
  tail call void @_exit(i32 noundef %21) #39, !dbg !1144
  unreachable, !dbg !1144

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1145, !tbaa !768
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1147
  %25 = icmp eq i32 %24, 0, !dbg !1148
  br i1 %25, label %28, label %26, !dbg !1149

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1150, !tbaa !826
  tail call void @_exit(i32 noundef %27) #39, !dbg !1151
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1163, metadata !DIExpression()), !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1164, metadata !DIExpression()), !dbg !1167
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1165, metadata !DIExpression()), !dbg !1167
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1166, metadata !DIExpression(DW_OP_deref)), !dbg !1167
  tail call fastcc void @flush_stdout(), !dbg !1168
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1169, !tbaa !768
  %7 = icmp eq ptr %6, null, !dbg !1169
  br i1 %7, label %9, label %8, !dbg !1171

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1172
  br label %13, !dbg !1172

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1173, !tbaa !768
  %11 = tail call ptr @getprogname() #38, !dbg !1173
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %11) #37, !dbg !1173
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1175, !tbaa.struct !1176
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1175
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1175
  ret void, !dbg !1177
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1178 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i32 1, metadata !1182, metadata !DIExpression()), !dbg !1187
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1190
  %2 = icmp slt i32 %1, 0, !dbg !1191
  br i1 %2, label %6, label %3, !dbg !1192

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1193, !tbaa !768
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1193
  br label %6, !dbg !1193

6:                                                ; preds = %3, %0
  ret void, !dbg !1194
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1195 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1201
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1198, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1200, metadata !DIExpression(DW_OP_deref)), !dbg !1202
  %7 = load ptr, ptr @stderr, align 8, !dbg !1203, !tbaa !768
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1204, !noalias !1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1252
  call void @llvm.dbg.value(metadata ptr %7, metadata !1244, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr %2, metadata !1245, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr poison, metadata !1246, metadata !DIExpression(DW_OP_deref)), !dbg !1253
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1204
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1204, !noalias !1248
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1254, !tbaa !826
  %10 = add i32 %9, 1, !dbg !1254
  store i32 %10, ptr @error_message_count, align 4, !dbg !1254, !tbaa !826
  %11 = icmp eq i32 %1, 0, !dbg !1255
  br i1 %11, label %21, label %12, !dbg !1257

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1201, metadata ptr %5, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !1261, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1268
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %13, metadata !1262, metadata !DIExpression()), !dbg !1266
  %14 = icmp eq ptr %13, null, !dbg !1270
  br i1 %14, label %15, label %17, !dbg !1272

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #37, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %16, metadata !1262, metadata !DIExpression()), !dbg !1266
  br label %17, !dbg !1274

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1266
  call void @llvm.dbg.value(metadata ptr %18, metadata !1262, metadata !DIExpression()), !dbg !1266
  %19 = load ptr, ptr @stderr, align 8, !dbg !1275, !tbaa !768
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %18) #37, !dbg !1275
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1276
  br label %21, !dbg !1277

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1278, !tbaa !768
  call void @llvm.dbg.value(metadata i32 10, metadata !1279, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %22, metadata !1285, metadata !DIExpression()), !dbg !1286
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1288
  %24 = load ptr, ptr %23, align 8, !dbg !1288, !tbaa !1289
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1288
  %26 = load ptr, ptr %25, align 8, !dbg !1288, !tbaa !1292
  %27 = icmp ult ptr %24, %26, !dbg !1288
  br i1 %27, label %30, label %28, !dbg !1288, !prof !1293

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1288
  br label %32, !dbg !1288

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1288
  store ptr %31, ptr %23, align 8, !dbg !1288, !tbaa !1289
  store i8 10, ptr %24, align 1, !dbg !1288, !tbaa !835
  br label %32, !dbg !1288

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1294, !tbaa !768
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1294
  %35 = icmp eq i32 %0, 0, !dbg !1295
  br i1 %35, label %37, label %36, !dbg !1297

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1298
  unreachable, !dbg !1298

37:                                               ; preds = %32
  ret void, !dbg !1299
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1300 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1303 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1306 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1309 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1312 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1316 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1323, metadata !DIExpression(), metadata !1324, metadata ptr %4, metadata !DIExpression()), !dbg !1325
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1321, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1322, metadata !DIExpression()), !dbg !1325
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1326
  call void @llvm.va_start(ptr nonnull %4), !dbg !1327
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1328, !tbaa.struct !1176
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1328
  call void @llvm.va_end(ptr nonnull %4), !dbg !1329
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1330
  ret void, !dbg !1330
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !357 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !373, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !374, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !375, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !376, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !377, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !1331
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1332, !tbaa !826
  %9 = icmp eq i32 %8, 0, !dbg !1332
  br i1 %9, label %24, label %10, !dbg !1334

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1335, !tbaa !826
  %12 = icmp eq i32 %11, %3, !dbg !1338
  br i1 %12, label %13, label %23, !dbg !1339

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1340, !tbaa !768
  %15 = icmp eq ptr %14, %2, !dbg !1341
  br i1 %15, label %37, label %16, !dbg !1342

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1343
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1344
  br i1 %19, label %20, label %23, !dbg !1344

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1345
  %22 = icmp eq i32 %21, 0, !dbg !1346
  br i1 %22, label %37, label %23, !dbg !1347

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1348, !tbaa !768
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1349, !tbaa !826
  br label %24, !dbg !1350

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1351
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1352, !tbaa !768
  %26 = icmp eq ptr %25, null, !dbg !1352
  br i1 %26, label %28, label %27, !dbg !1354

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1355
  br label %32, !dbg !1355

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1356, !tbaa !768
  %30 = tail call ptr @getprogname() #38, !dbg !1356
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %30) #37, !dbg !1356
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1358, !tbaa !768
  %34 = icmp eq ptr %2, null, !dbg !1358
  %35 = select i1 %34, ptr @.str.3.33, ptr @.str.2.34, !dbg !1358
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1358
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1359, !tbaa.struct !1176
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1359
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1359
  br label %37, !dbg !1360

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1360
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1361 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1370, metadata !DIExpression(), metadata !1371, metadata ptr %6, metadata !DIExpression()), !dbg !1372
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1365, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1366, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1367, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1368, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1369, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1373
  call void @llvm.va_start(ptr nonnull %6), !dbg !1374
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1375, !tbaa.struct !1176
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1375
  call void @llvm.va_end(ptr nonnull %6), !dbg !1376
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1377
  ret void, !dbg !1377
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1378 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1381, !tbaa !768
  ret ptr %1, !dbg !1382
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1385, metadata !DIExpression()), !dbg !1388
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1386, metadata !DIExpression()), !dbg !1388
  %3 = icmp eq ptr %2, null, !dbg !1390
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1390
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1390
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1387, metadata !DIExpression()), !dbg !1388
  %6 = ptrtoint ptr %5 to i64, !dbg !1391
  %7 = ptrtoint ptr %0 to i64, !dbg !1391
  %8 = sub i64 %6, %7, !dbg !1391
  %9 = icmp sgt i64 %8, 6, !dbg !1393
  br i1 %9, label %10, label %19, !dbg !1394

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1395
  call void @llvm.dbg.value(metadata ptr %11, metadata !1396, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1401, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 7, metadata !1402, metadata !DIExpression()), !dbg !1403
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.43, i64 7), !dbg !1405
  %13 = icmp eq i32 %12, 0, !dbg !1406
  br i1 %13, label %14, label %19, !dbg !1407

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1385, metadata !DIExpression()), !dbg !1388
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.44, i64 noundef 3) #38, !dbg !1408
  %16 = icmp eq i32 %15, 0, !dbg !1411
  %17 = select i1 %16, i64 3, i64 0, !dbg !1412
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1412
  br label %19, !dbg !1412

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1387, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1385, metadata !DIExpression()), !dbg !1388
  store ptr %20, ptr @program_name, align 8, !dbg !1413, !tbaa !768
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1414, !tbaa !768
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1415, !tbaa !768
  ret void, !dbg !1416
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1417 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !415 {
  %3 = alloca i32, align 4, !DIAssignID !1418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !425, metadata !DIExpression(), metadata !1418, metadata ptr %3, metadata !DIExpression()), !dbg !1419
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !430, metadata !DIExpression(), metadata !1420, metadata ptr %4, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !422, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !423, metadata !DIExpression()), !dbg !1419
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1421
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !424, metadata !DIExpression()), !dbg !1419
  %6 = icmp eq ptr %5, %0, !dbg !1422
  br i1 %6, label %7, label %14, !dbg !1424

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %4, metadata !1427, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %4, metadata !1436, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 0, metadata !1442, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 8, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i64 0, ptr %4, align 8, !dbg !1446
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1447
  %9 = icmp eq i64 %8, 2, !dbg !1449
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1450
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1451
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1419
  ret ptr %15, !dbg !1451
}

; Function Attrs: nounwind
declare !dbg !1452 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1463, metadata !DIExpression()), !dbg !1466
  %2 = tail call ptr @__errno_location() #40, !dbg !1467
  %3 = load i32, ptr %2, align 4, !dbg !1467, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1464, metadata !DIExpression()), !dbg !1466
  %4 = icmp eq ptr %0, null, !dbg !1468
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1468
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1469
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1465, metadata !DIExpression()), !dbg !1466
  store i32 %3, ptr %2, align 4, !dbg !1470, !tbaa !826
  ret ptr %6, !dbg !1471
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1472 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1478, metadata !DIExpression()), !dbg !1479
  %2 = icmp eq ptr %0, null, !dbg !1480
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1480
  %4 = load i32, ptr %3, align 8, !dbg !1481, !tbaa !1482
  ret i32 %4, !dbg !1484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1485 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1489, metadata !DIExpression()), !dbg !1491
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1490, metadata !DIExpression()), !dbg !1491
  %3 = icmp eq ptr %0, null, !dbg !1492
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1492
  store i32 %1, ptr %4, align 8, !dbg !1493, !tbaa !1482
  ret void, !dbg !1494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1499, metadata !DIExpression()), !dbg !1507
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1500, metadata !DIExpression()), !dbg !1507
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1501, metadata !DIExpression()), !dbg !1507
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1502, metadata !DIExpression()), !dbg !1507
  %4 = icmp eq ptr %0, null, !dbg !1508
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1508
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1509
  %7 = lshr i8 %1, 5, !dbg !1510
  %8 = zext nneg i8 %7 to i64, !dbg !1510
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1511
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1503, metadata !DIExpression()), !dbg !1507
  %10 = and i8 %1, 31, !dbg !1512
  %11 = zext nneg i8 %10 to i32, !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1505, metadata !DIExpression()), !dbg !1507
  %12 = load i32, ptr %9, align 4, !dbg !1513, !tbaa !826
  %13 = lshr i32 %12, %11, !dbg !1514
  %14 = and i32 %13, 1, !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1506, metadata !DIExpression()), !dbg !1507
  %15 = xor i32 %13, %2, !dbg !1516
  %16 = and i32 %15, 1, !dbg !1516
  %17 = shl nuw i32 %16, %11, !dbg !1517
  %18 = xor i32 %17, %12, !dbg !1518
  store i32 %18, ptr %9, align 4, !dbg !1518, !tbaa !826
  ret i32 %14, !dbg !1519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1520 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1525, metadata !DIExpression()), !dbg !1527
  %3 = icmp eq ptr %0, null, !dbg !1528
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1524, metadata !DIExpression()), !dbg !1527
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1531
  %6 = load i32, ptr %5, align 4, !dbg !1531, !tbaa !1532
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1526, metadata !DIExpression()), !dbg !1527
  store i32 %1, ptr %5, align 4, !dbg !1533, !tbaa !1532
  ret i32 %6, !dbg !1534
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1535 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1539, metadata !DIExpression()), !dbg !1542
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1540, metadata !DIExpression()), !dbg !1542
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1541, metadata !DIExpression()), !dbg !1542
  %4 = icmp eq ptr %0, null, !dbg !1543
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1545
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !1542
  store i32 10, ptr %5, align 8, !dbg !1546, !tbaa !1482
  %6 = icmp ne ptr %1, null, !dbg !1547
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1549
  br i1 %8, label %10, label %9, !dbg !1549

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1550
  unreachable, !dbg !1550

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1551
  store ptr %1, ptr %11, align 8, !dbg !1552, !tbaa !1553
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1554
  store ptr %2, ptr %12, align 8, !dbg !1555, !tbaa !1556
  ret void, !dbg !1557
}

; Function Attrs: noreturn nounwind
declare !dbg !1558 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1559 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1563, metadata !DIExpression()), !dbg !1571
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1564, metadata !DIExpression()), !dbg !1571
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1565, metadata !DIExpression()), !dbg !1571
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1566, metadata !DIExpression()), !dbg !1571
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1567, metadata !DIExpression()), !dbg !1571
  %6 = icmp eq ptr %4, null, !dbg !1572
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1568, metadata !DIExpression()), !dbg !1571
  %8 = tail call ptr @__errno_location() #40, !dbg !1573
  %9 = load i32, ptr %8, align 4, !dbg !1573, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1569, metadata !DIExpression()), !dbg !1571
  %10 = load i32, ptr %7, align 8, !dbg !1574, !tbaa !1482
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1575
  %12 = load i32, ptr %11, align 4, !dbg !1575, !tbaa !1532
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1576
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1577
  %15 = load ptr, ptr %14, align 8, !dbg !1577, !tbaa !1553
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1578
  %17 = load ptr, ptr %16, align 8, !dbg !1578, !tbaa !1556
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1570, metadata !DIExpression()), !dbg !1571
  store i32 %9, ptr %8, align 4, !dbg !1580, !tbaa !826
  ret i64 %18, !dbg !1581
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1582 {
  %10 = alloca i32, align 4, !DIAssignID !1650
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1651
  %12 = alloca i32, align 4, !DIAssignID !1652
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1653
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1628, metadata !DIExpression(), metadata !1654, metadata ptr %14, metadata !DIExpression()), !dbg !1655
  %15 = alloca i32, align 4, !DIAssignID !1656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1631, metadata !DIExpression(), metadata !1656, metadata ptr %15, metadata !DIExpression()), !dbg !1657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1588, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1591, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1592, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1593, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1594, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1595, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1596, metadata !DIExpression()), !dbg !1658
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1659
  %17 = icmp eq i64 %16, 1, !dbg !1660
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1600, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1603, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1658
  %18 = and i32 %5, 2, !dbg !1661
  %19 = icmp ne i32 %18, 0, !dbg !1661
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1661

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1662
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1663
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1664
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1601, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1600, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1591, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1596, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1595, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1592, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.label(metadata !1606), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1658
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
  ], !dbg !1666

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1592, metadata !DIExpression()), !dbg !1658
  br label %101, !dbg !1667

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1592, metadata !DIExpression()), !dbg !1658
  br i1 %36, label %101, label %42, !dbg !1667

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1668
  br i1 %43, label %101, label %44, !dbg !1672

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1668, !tbaa !835
  br label %101, !dbg !1668

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !531, metadata !DIExpression(), metadata !1652, metadata ptr %12, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !1653, metadata ptr %13, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !528, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 %28, metadata !529, metadata !DIExpression()), !dbg !1673
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #37, !dbg !1677
  call void @llvm.dbg.value(metadata ptr %46, metadata !530, metadata !DIExpression()), !dbg !1673
  %47 = icmp eq ptr %46, @.str.11.63, !dbg !1678
  br i1 %47, label %48, label %57, !dbg !1680

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1681
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1682
  call void @llvm.dbg.value(metadata ptr %13, metadata !1683, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %13, metadata !1691, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 0, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i64 8, metadata !1695, metadata !DIExpression()), !dbg !1696
  store i64 0, ptr %13, align 8, !dbg !1698
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1699
  %50 = icmp eq i64 %49, 3, !dbg !1701
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1702
  %54 = icmp eq i32 %28, 9, !dbg !1702
  %55 = select i1 %54, ptr @.str.10.65, ptr @.str.12.66, !dbg !1702
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1702
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1703
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1703
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1673
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !531, metadata !DIExpression(), metadata !1650, metadata ptr %10, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !1651, metadata ptr %11, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !528, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %28, metadata !529, metadata !DIExpression()), !dbg !1704
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #37, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %59, metadata !530, metadata !DIExpression()), !dbg !1704
  %60 = icmp eq ptr %59, @.str.12.66, !dbg !1707
  br i1 %60, label %61, label %70, !dbg !1708

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1709
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %11, metadata !1683, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata ptr %11, metadata !1691, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 0, metadata !1694, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 8, metadata !1695, metadata !DIExpression()), !dbg !1713
  store i64 0, ptr %11, align 8, !dbg !1715
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1716
  %63 = icmp eq i64 %62, 3, !dbg !1717
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1718
  %67 = icmp eq i32 %28, 9, !dbg !1718
  %68 = select i1 %67, ptr @.str.10.65, ptr @.str.12.66, !dbg !1718
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1719
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1596, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1595, metadata !DIExpression()), !dbg !1658
  br i1 %36, label %88, label %73, !dbg !1720

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1608, metadata !DIExpression()), !dbg !1721
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1658
  %74 = load i8, ptr %71, align 1, !dbg !1722, !tbaa !835
  %75 = icmp eq i8 %74, 0, !dbg !1724
  br i1 %75, label %88, label %.preheader11, !dbg !1724

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1724

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1608, metadata !DIExpression()), !dbg !1721
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1598, metadata !DIExpression()), !dbg !1658
  %80 = icmp ult i64 %79, %39, !dbg !1725
  br i1 %80, label %81, label %83, !dbg !1728

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1725
  store i8 %77, ptr %82, align 1, !dbg !1725, !tbaa !835
  br label %83, !dbg !1725

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1598, metadata !DIExpression()), !dbg !1658
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1729
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1608, metadata !DIExpression()), !dbg !1721
  %86 = load i8, ptr %85, align 1, !dbg !1722, !tbaa !835
  %87 = icmp eq i8 %86, 0, !dbg !1724
  br i1 %87, label %.loopexit12, label %76, !dbg !1724, !llvm.loop !1730

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1728
  br label %88, !dbg !1732

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1600, metadata !DIExpression()), !dbg !1658
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1732
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1601, metadata !DIExpression()), !dbg !1658
  br label %101, !dbg !1734

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1658
  br label %101, !dbg !1735

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1658
  br label %101, !dbg !1736

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1658
  br i1 %36, label %101, label %95, !dbg !1737

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1592, metadata !DIExpression()), !dbg !1658
  br i1 %36, label %101, label %95, !dbg !1736

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1738
  br i1 %97, label %101, label %98, !dbg !1742

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1738, !tbaa !835
  br label %101, !dbg !1738

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1658
  br label %101, !dbg !1743

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1744
  unreachable, !dbg !1744

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1733
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.65, %42 ], [ @.str.10.65, %44 ], [ @.str.10.65, %41 ], [ %33, %27 ], [ @.str.12.66, %95 ], [ @.str.12.66, %98 ], [ @.str.12.66, %94 ], [ @.str.10.65, %40 ], [ @.str.12.66, %91 ], [ @.str.12.66, %92 ], [ @.str.12.66, %93 ], !dbg !1658
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1658
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1601, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1600, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1596, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1595, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1592, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1613, metadata !DIExpression()), !dbg !1745
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
  br label %121, !dbg !1746

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1733
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1662
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1747
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1591, metadata !DIExpression()), !dbg !1658
  %130 = icmp eq i64 %122, -1, !dbg !1748
  br i1 %130, label %131, label %135, !dbg !1749

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1750
  %133 = load i8, ptr %132, align 1, !dbg !1750, !tbaa !835
  %134 = icmp eq i8 %133, 0, !dbg !1751
  br i1 %134, label %573, label %137, !dbg !1752

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1753
  br i1 %136, label %573, label %137, !dbg !1752

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1615, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1754
  br i1 %113, label %138, label %151, !dbg !1755

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1757
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1758
  br i1 %140, label %141, label %143, !dbg !1758

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1591, metadata !DIExpression()), !dbg !1658
  br label %143, !dbg !1760

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1591, metadata !DIExpression()), !dbg !1658
  %145 = icmp ugt i64 %139, %144, !dbg !1761
  br i1 %145, label %151, label %146, !dbg !1762

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %147, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %106, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %107, metadata !1768, metadata !DIExpression()), !dbg !1769
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1771
  %149 = icmp eq i32 %148, 0, !dbg !1772
  %150 = and i1 %149, %109, !dbg !1773
  br i1 %150, label %.loopexit7, label %151, !dbg !1773

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1591, metadata !DIExpression()), !dbg !1658
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1774
  %155 = load i8, ptr %154, align 1, !dbg !1774, !tbaa !835
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1620, metadata !DIExpression()), !dbg !1754
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
  ], !dbg !1775

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1776

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1777

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1754
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1781
  br i1 %159, label %176, label %160, !dbg !1781

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1783
  br i1 %161, label %162, label %164, !dbg !1787

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1783
  store i8 39, ptr %163, align 1, !dbg !1783, !tbaa !835
  br label %164, !dbg !1783

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1598, metadata !DIExpression()), !dbg !1658
  %166 = icmp ult i64 %165, %129, !dbg !1788
  br i1 %166, label %167, label %169, !dbg !1791

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1788
  store i8 36, ptr %168, align 1, !dbg !1788, !tbaa !835
  br label %169, !dbg !1788

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1791
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1598, metadata !DIExpression()), !dbg !1658
  %171 = icmp ult i64 %170, %129, !dbg !1792
  br i1 %171, label %172, label %174, !dbg !1795

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1792
  store i8 39, ptr %173, align 1, !dbg !1792, !tbaa !835
  br label %174, !dbg !1792

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1658
  br label %176, !dbg !1796

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1658
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1598, metadata !DIExpression()), !dbg !1658
  %179 = icmp ult i64 %177, %129, !dbg !1797
  br i1 %179, label %180, label %182, !dbg !1800

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1797
  store i8 92, ptr %181, align 1, !dbg !1797, !tbaa !835
  br label %182, !dbg !1797

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1598, metadata !DIExpression()), !dbg !1658
  br i1 %110, label %184, label %476, !dbg !1801

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1803
  %186 = icmp ult i64 %185, %152, !dbg !1804
  br i1 %186, label %187, label %433, !dbg !1805

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1806
  %189 = load i8, ptr %188, align 1, !dbg !1806, !tbaa !835
  %190 = add i8 %189, -48, !dbg !1807
  %191 = icmp ult i8 %190, 10, !dbg !1807
  br i1 %191, label %192, label %433, !dbg !1807

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1808
  br i1 %193, label %194, label %196, !dbg !1812

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1808
  store i8 48, ptr %195, align 1, !dbg !1808, !tbaa !835
  br label %196, !dbg !1808

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1812
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1598, metadata !DIExpression()), !dbg !1658
  %198 = icmp ult i64 %197, %129, !dbg !1813
  br i1 %198, label %199, label %201, !dbg !1816

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1813
  store i8 48, ptr %200, align 1, !dbg !1813, !tbaa !835
  br label %201, !dbg !1813

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1816
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1598, metadata !DIExpression()), !dbg !1658
  br label %433, !dbg !1817

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1818

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1819

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1820

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1822

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1824
  %209 = icmp ult i64 %208, %152, !dbg !1825
  br i1 %209, label %210, label %433, !dbg !1826

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1827
  %212 = load i8, ptr %211, align 1, !dbg !1827, !tbaa !835
  %213 = icmp eq i8 %212, 63, !dbg !1828
  br i1 %213, label %214, label %433, !dbg !1829

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1830
  %216 = load i8, ptr %215, align 1, !dbg !1830, !tbaa !835
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
  ], !dbg !1831

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1832

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1613, metadata !DIExpression()), !dbg !1745
  %219 = icmp ult i64 %123, %129, !dbg !1834
  br i1 %219, label %220, label %222, !dbg !1837

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1834
  store i8 63, ptr %221, align 1, !dbg !1834, !tbaa !835
  br label %222, !dbg !1834

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1837
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1598, metadata !DIExpression()), !dbg !1658
  %224 = icmp ult i64 %223, %129, !dbg !1838
  br i1 %224, label %225, label %227, !dbg !1841

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1838
  store i8 34, ptr %226, align 1, !dbg !1838, !tbaa !835
  br label %227, !dbg !1838

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1598, metadata !DIExpression()), !dbg !1658
  %229 = icmp ult i64 %228, %129, !dbg !1842
  br i1 %229, label %230, label %232, !dbg !1845

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1842
  store i8 34, ptr %231, align 1, !dbg !1842, !tbaa !835
  br label %232, !dbg !1842

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1845
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1598, metadata !DIExpression()), !dbg !1658
  %234 = icmp ult i64 %233, %129, !dbg !1846
  br i1 %234, label %235, label %237, !dbg !1849

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1846
  store i8 63, ptr %236, align 1, !dbg !1846, !tbaa !835
  br label %237, !dbg !1846

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1598, metadata !DIExpression()), !dbg !1658
  br label %433, !dbg !1850

239:                                              ; preds = %151
  br label %249, !dbg !1851

240:                                              ; preds = %151
  br label %249, !dbg !1852

241:                                              ; preds = %151
  br label %247, !dbg !1853

242:                                              ; preds = %151
  br label %247, !dbg !1854

243:                                              ; preds = %151
  br label %249, !dbg !1855

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1856

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1857

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1860

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1862
  call void @llvm.dbg.label(metadata !1621), !dbg !1863
  br i1 %118, label %.loopexit8, label %249, !dbg !1864

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1862
  call void @llvm.dbg.label(metadata !1624), !dbg !1866
  br i1 %108, label %487, label %444, !dbg !1867

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1868

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1869, !tbaa !835
  %254 = icmp eq i8 %253, 0, !dbg !1871
  br i1 %254, label %255, label %433, !dbg !1872

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1873
  br i1 %256, label %257, label %433, !dbg !1875

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1754
  br label %258, !dbg !1876

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1754
  br i1 %115, label %260, label %433, !dbg !1877

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1879

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1754
  br i1 %115, label %262, label %433, !dbg !1880

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1881

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1884
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1886
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1886
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1599, metadata !DIExpression()), !dbg !1658
  %269 = icmp ult i64 %123, %268, !dbg !1887
  br i1 %269, label %270, label %272, !dbg !1890

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1887
  store i8 39, ptr %271, align 1, !dbg !1887, !tbaa !835
  br label %272, !dbg !1887

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1598, metadata !DIExpression()), !dbg !1658
  %274 = icmp ult i64 %273, %268, !dbg !1891
  br i1 %274, label %275, label %277, !dbg !1894

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1891
  store i8 92, ptr %276, align 1, !dbg !1891, !tbaa !835
  br label %277, !dbg !1891

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1894
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1598, metadata !DIExpression()), !dbg !1658
  %279 = icmp ult i64 %278, %268, !dbg !1895
  br i1 %279, label %280, label %282, !dbg !1898

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1895
  store i8 39, ptr %281, align 1, !dbg !1895, !tbaa !835
  br label %282, !dbg !1895

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1658
  br label %433, !dbg !1899

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1900

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1625, metadata !DIExpression()), !dbg !1901
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1902
  %287 = load ptr, ptr %286, align 8, !dbg !1902, !tbaa !768
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1902
  %290 = load i16, ptr %289, align 2, !dbg !1902, !tbaa !867
  %291 = and i16 %290, 16384, !dbg !1902
  %292 = icmp ne i16 %291, 0, !dbg !1904
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1627, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1901
  br label %334, !dbg !1905

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %14, metadata !1683, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata ptr %14, metadata !1691, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 0, metadata !1694, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 8, metadata !1695, metadata !DIExpression()), !dbg !1909
  store i64 0, ptr %14, align 8, !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1901
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1901
  %294 = icmp eq i64 %152, -1, !dbg !1912
  br i1 %294, label %295, label %297, !dbg !1914

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1591, metadata !DIExpression()), !dbg !1658
  br label %297, !dbg !1916

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1591, metadata !DIExpression()), !dbg !1658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1917
  %299 = sub i64 %298, %128, !dbg !1918
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1635, metadata !DIExpression()), !dbg !1657
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1920

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1901
  %302 = icmp ult i64 %128, %298, !dbg !1921
  br i1 %302, label %.preheader5, label %329, !dbg !1923

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1924

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1901
  br label %329, !dbg !1925

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1625, metadata !DIExpression()), !dbg !1901
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1927
  %308 = load i8, ptr %307, align 1, !dbg !1927, !tbaa !835
  %309 = icmp eq i8 %308, 0, !dbg !1923
  br i1 %309, label %.loopexit6, label %310, !dbg !1924

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1625, metadata !DIExpression()), !dbg !1901
  %312 = add i64 %311, %128, !dbg !1929
  %313 = icmp eq i64 %311, %299, !dbg !1921
  br i1 %313, label %.loopexit6, label %304, !dbg !1923, !llvm.loop !1930

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1636, metadata !DIExpression()), !dbg !1931
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1932
  %317 = and i1 %316, %109, !dbg !1932
  br i1 %317, label %.preheader3, label %325, !dbg !1932

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1933

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1636, metadata !DIExpression()), !dbg !1931
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1934
  %321 = load i8, ptr %320, align 1, !dbg !1934, !tbaa !835
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1936

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1636, metadata !DIExpression()), !dbg !1931
  %324 = icmp eq i64 %323, %300, !dbg !1938
  br i1 %324, label %.loopexit4, label %318, !dbg !1933, !llvm.loop !1939

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1941

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1941, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %326, metadata !1943, metadata !DIExpression()), !dbg !1951
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1953
  %328 = icmp ne i32 %327, 0, !dbg !1954
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1625, metadata !DIExpression()), !dbg !1901
  br label %329, !dbg !1955

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1956

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1625, metadata !DIExpression()), !dbg !1901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1957
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1957
  call void @llvm.dbg.label(metadata !1649), !dbg !1958
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1959
  br label %624, !dbg !1959

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1754
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1961
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1625, metadata !DIExpression()), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1591, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1619, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1754
  %338 = icmp ult i64 %336, 2, !dbg !1962
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1963
  br i1 %340, label %433, label %341, !dbg !1963

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1644, metadata !DIExpression()), !dbg !1965
  br label %343, !dbg !1966

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1658
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1745
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1598, metadata !DIExpression()), !dbg !1658
  br i1 %339, label %394, label %350, !dbg !1967

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1972

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1754
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1975
  br i1 %352, label %369, label %353, !dbg !1975

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1977
  br i1 %354, label %355, label %357, !dbg !1981

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1977
  store i8 39, ptr %356, align 1, !dbg !1977, !tbaa !835
  br label %357, !dbg !1977

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1981
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1598, metadata !DIExpression()), !dbg !1658
  %359 = icmp ult i64 %358, %129, !dbg !1982
  br i1 %359, label %360, label %362, !dbg !1985

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1982
  store i8 36, ptr %361, align 1, !dbg !1982, !tbaa !835
  br label %362, !dbg !1982

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1985
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1598, metadata !DIExpression()), !dbg !1658
  %364 = icmp ult i64 %363, %129, !dbg !1986
  br i1 %364, label %365, label %367, !dbg !1989

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1986
  store i8 39, ptr %366, align 1, !dbg !1986, !tbaa !835
  br label %367, !dbg !1986

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1989
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1658
  br label %369, !dbg !1990

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1658
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1598, metadata !DIExpression()), !dbg !1658
  %372 = icmp ult i64 %370, %129, !dbg !1991
  br i1 %372, label %373, label %375, !dbg !1994

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1991
  store i8 92, ptr %374, align 1, !dbg !1991, !tbaa !835
  br label %375, !dbg !1991

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1598, metadata !DIExpression()), !dbg !1658
  %377 = icmp ult i64 %376, %129, !dbg !1995
  br i1 %377, label %378, label %382, !dbg !1998

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1995
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1995
  store i8 %380, ptr %381, align 1, !dbg !1995, !tbaa !835
  br label %382, !dbg !1995

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1598, metadata !DIExpression()), !dbg !1658
  %384 = icmp ult i64 %383, %129, !dbg !1999
  br i1 %384, label %385, label %390, !dbg !2002

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !1999
  %388 = or disjoint i8 %387, 48, !dbg !1999
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !1999
  store i8 %388, ptr %389, align 1, !dbg !1999, !tbaa !835
  br label %390, !dbg !1999

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1598, metadata !DIExpression()), !dbg !1658
  %392 = and i8 %349, 7, !dbg !2003
  %393 = or disjoint i8 %392, 48, !dbg !2004
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1620, metadata !DIExpression()), !dbg !1754
  br label %401, !dbg !2005

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2006

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2007
  br i1 %396, label %397, label %399, !dbg !2012

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2007
  store i8 92, ptr %398, align 1, !dbg !2007, !tbaa !835
  br label %399, !dbg !2007

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2012
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1615, metadata !DIExpression()), !dbg !1754
  br label %401, !dbg !2013

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1658
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1598, metadata !DIExpression()), !dbg !1658
  %407 = add i64 %346, 1, !dbg !2014
  %408 = icmp ugt i64 %342, %407, !dbg !2016
  br i1 %408, label %409, label %.loopexit2, !dbg !2017

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2018
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2018
  br i1 %411, label %423, label %412, !dbg !2018

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2021
  br i1 %413, label %414, label %416, !dbg !2025

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2021
  store i8 39, ptr %415, align 1, !dbg !2021, !tbaa !835
  br label %416, !dbg !2021

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1598, metadata !DIExpression()), !dbg !1658
  %418 = icmp ult i64 %417, %129, !dbg !2026
  br i1 %418, label %419, label %421, !dbg !2029

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2026
  store i8 39, ptr %420, align 1, !dbg !2026, !tbaa !835
  br label %421, !dbg !2026

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1658
  br label %423, !dbg !2030

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2031
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1598, metadata !DIExpression()), !dbg !1658
  %426 = icmp ult i64 %424, %129, !dbg !2032
  br i1 %426, label %427, label %429, !dbg !2035

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2032
  store i8 %406, ptr %428, align 1, !dbg !2032, !tbaa !835
  br label %429, !dbg !2032

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2035
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1613, metadata !DIExpression()), !dbg !1745
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2036
  %432 = load i8, ptr %431, align 1, !dbg !2036, !tbaa !835
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1620, metadata !DIExpression()), !dbg !1754
  br label %343, !dbg !2037, !llvm.loop !2038

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2041
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1658
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1662
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1745
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1754
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1591, metadata !DIExpression()), !dbg !1658
  br i1 %111, label %455, label %444, !dbg !2042

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
  br i1 %120, label %456, label %476, !dbg !2044

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2045

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
  %467 = lshr i8 %458, 5, !dbg !2046
  %468 = zext nneg i8 %467 to i64, !dbg !2046
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2047
  %470 = load i32, ptr %469, align 4, !dbg !2047, !tbaa !826
  %471 = and i8 %458, 31, !dbg !2048
  %472 = zext nneg i8 %471 to i32, !dbg !2048
  %473 = shl nuw i32 1, %472, !dbg !2049
  %474 = and i32 %470, %473, !dbg !2049
  %475 = icmp eq i32 %474, 0, !dbg !2049
  br i1 %475, label %476, label %487, !dbg !2050

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
  br i1 %153, label %487, label %523, !dbg !2051

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2041
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1658
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1662
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2052
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1754
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1591, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.label(metadata !1647), !dbg !2053
  br i1 %109, label %.loopexit8, label %497, !dbg !2054

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1754
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2056
  br i1 %498, label %515, label %499, !dbg !2056

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2058
  br i1 %500, label %501, label %503, !dbg !2062

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2058
  store i8 39, ptr %502, align 1, !dbg !2058, !tbaa !835
  br label %503, !dbg !2058

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1598, metadata !DIExpression()), !dbg !1658
  %505 = icmp ult i64 %504, %496, !dbg !2063
  br i1 %505, label %506, label %508, !dbg !2066

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2063
  store i8 36, ptr %507, align 1, !dbg !2063, !tbaa !835
  br label %508, !dbg !2063

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1598, metadata !DIExpression()), !dbg !1658
  %510 = icmp ult i64 %509, %496, !dbg !2067
  br i1 %510, label %511, label %513, !dbg !2070

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2067
  store i8 39, ptr %512, align 1, !dbg !2067, !tbaa !835
  br label %513, !dbg !2067

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1658
  br label %515, !dbg !2071

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1754
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1598, metadata !DIExpression()), !dbg !1658
  %518 = icmp ult i64 %516, %496, !dbg !2072
  br i1 %518, label %519, label %521, !dbg !2075

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2072
  store i8 92, ptr %520, align 1, !dbg !2072, !tbaa !835
  br label %521, !dbg !2072

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1591, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.label(metadata !1648), !dbg !2076
  br label %547, !dbg !2077

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1658
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1754
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1745
  br label %523, !dbg !2077

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2041
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1658
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1662
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2052
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2080
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1620, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1591, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.label(metadata !1648), !dbg !2076
  %534 = xor i1 %528, true, !dbg !2077
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2077
  br i1 %535, label %547, label %536, !dbg !2077

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2081
  br i1 %537, label %538, label %540, !dbg !2085

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2081
  store i8 39, ptr %539, align 1, !dbg !2081, !tbaa !835
  br label %540, !dbg !2081

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1598, metadata !DIExpression()), !dbg !1658
  %542 = icmp ult i64 %541, %533, !dbg !2086
  br i1 %542, label %543, label %545, !dbg !2089

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2086
  store i8 39, ptr %544, align 1, !dbg !2086, !tbaa !835
  br label %545, !dbg !2086

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1658
  br label %547, !dbg !2090

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1754
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1598, metadata !DIExpression()), !dbg !1658
  %557 = icmp ult i64 %555, %548, !dbg !2091
  br i1 %557, label %558, label %560, !dbg !2094

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2091
  store i8 %549, ptr %559, align 1, !dbg !2091, !tbaa !835
  br label %560, !dbg !2091

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2094
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1598, metadata !DIExpression()), !dbg !1658
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1658
  br label %563, !dbg !2096

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2041
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1658
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1662
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2052
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1613, metadata !DIExpression()), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1591, metadata !DIExpression()), !dbg !1658
  %572 = add i64 %570, 1, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1613, metadata !DIExpression()), !dbg !1745
  br label %121, !dbg !2098, !llvm.loop !2099

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1733
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1662
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1589, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1599, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1598, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1591, metadata !DIExpression()), !dbg !1658
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2101
  %575 = xor i1 %109, true, !dbg !2103
  %576 = or i1 %574, %575, !dbg !2103
  %577 = or i1 %576, %110, !dbg !2103
  br i1 %577, label %578, label %.loopexit13, !dbg !2103

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2104
  %580 = xor i1 %.lcssa38, true, !dbg !2104
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2104
  br i1 %581, label %589, label %582, !dbg !2104

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2106

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1662
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2108
  br label %638, !dbg !2110

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2111
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2113
  br i1 %588, label %27, label %589, !dbg !2113

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1658
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1733
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2114
  %592 = or i1 %591, %590, !dbg !2116
  br i1 %592, label %608, label %593, !dbg !2116

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1600, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1598, metadata !DIExpression()), !dbg !1658
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2117, !tbaa !835
  %595 = icmp eq i8 %594, 0, !dbg !2120
  br i1 %595, label %608, label %.preheader, !dbg !2120

.preheader:                                       ; preds = %593
  br label %596, !dbg !2120

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1600, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1598, metadata !DIExpression()), !dbg !1658
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2121
  br i1 %600, label %601, label %603, !dbg !2124

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2121
  store i8 %597, ptr %602, align 1, !dbg !2121, !tbaa !835
  br label %603, !dbg !2121

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1598, metadata !DIExpression()), !dbg !1658
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2125
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1600, metadata !DIExpression()), !dbg !1658
  %606 = load i8, ptr %605, align 1, !dbg !2117, !tbaa !835
  %607 = icmp eq i8 %606, 0, !dbg !2120
  br i1 %607, label %.loopexit, label %596, !dbg !2120, !llvm.loop !2126

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2124
  br label %608, !dbg !2128

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1598, metadata !DIExpression()), !dbg !1658
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2128
  br i1 %610, label %611, label %638, !dbg !2130

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2131
  store i8 0, ptr %612, align 1, !dbg !2132, !tbaa !835
  br label %638, !dbg !2131

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1649), !dbg !1958
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2133
  br i1 %614, label %624, label %630, !dbg !1959

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1754
  br label %615, !dbg !2133

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2133

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2133

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1649), !dbg !1958
  %622 = icmp eq i32 %616, 2, !dbg !2133
  %623 = select i1 %619, i32 4, i32 2, !dbg !1959
  br i1 %622, label %624, label %630, !dbg !1959

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1959

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1760
  br label %630, !dbg !2134

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1592, metadata !DIExpression()), !dbg !1658
  %636 = and i32 %5, -3, !dbg !2134
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2135
  br label %638, !dbg !2136

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2137
}

; Function Attrs: nounwind
declare !dbg !2138 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2141 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2144 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2146 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2150, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2151, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %0, metadata !2154, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %1, metadata !2159, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata ptr null, metadata !2160, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata ptr %2, metadata !2161, metadata !DIExpression()), !dbg !2167
  %4 = icmp eq ptr %2, null, !dbg !2169
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2169
  call void @llvm.dbg.value(metadata ptr %5, metadata !2162, metadata !DIExpression()), !dbg !2167
  %6 = tail call ptr @__errno_location() #40, !dbg !2170
  %7 = load i32, ptr %6, align 4, !dbg !2170, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %7, metadata !2163, metadata !DIExpression()), !dbg !2167
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2171
  %9 = load i32, ptr %8, align 4, !dbg !2171, !tbaa !1532
  %10 = or i32 %9, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %10, metadata !2164, metadata !DIExpression()), !dbg !2167
  %11 = load i32, ptr %5, align 8, !dbg !2173, !tbaa !1482
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2174
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2175
  %14 = load ptr, ptr %13, align 8, !dbg !2175, !tbaa !1553
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2176
  %16 = load ptr, ptr %15, align 8, !dbg !2176, !tbaa !1556
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2177
  %18 = add i64 %17, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %18, metadata !2165, metadata !DIExpression()), !dbg !2167
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2179
  call void @llvm.dbg.value(metadata ptr %19, metadata !2166, metadata !DIExpression()), !dbg !2167
  %20 = load i32, ptr %5, align 8, !dbg !2180, !tbaa !1482
  %21 = load ptr, ptr %13, align 8, !dbg !2181, !tbaa !1553
  %22 = load ptr, ptr %15, align 8, !dbg !2182, !tbaa !1556
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2183
  store i32 %7, ptr %6, align 4, !dbg !2184, !tbaa !826
  ret ptr %19, !dbg !2185
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2155 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2154, metadata !DIExpression()), !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2159, metadata !DIExpression()), !dbg !2186
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2160, metadata !DIExpression()), !dbg !2186
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2161, metadata !DIExpression()), !dbg !2186
  %5 = icmp eq ptr %3, null, !dbg !2187
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2187
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2162, metadata !DIExpression()), !dbg !2186
  %7 = tail call ptr @__errno_location() #40, !dbg !2188
  %8 = load i32, ptr %7, align 4, !dbg !2188, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2163, metadata !DIExpression()), !dbg !2186
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2189
  %10 = load i32, ptr %9, align 4, !dbg !2189, !tbaa !1532
  %11 = icmp eq ptr %2, null, !dbg !2190
  %12 = zext i1 %11 to i32, !dbg !2190
  %13 = or i32 %10, %12, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2164, metadata !DIExpression()), !dbg !2186
  %14 = load i32, ptr %6, align 8, !dbg !2192, !tbaa !1482
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2193
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2194
  %17 = load ptr, ptr %16, align 8, !dbg !2194, !tbaa !1553
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2195
  %19 = load ptr, ptr %18, align 8, !dbg !2195, !tbaa !1556
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2196
  %21 = add i64 %20, 1, !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2165, metadata !DIExpression()), !dbg !2186
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2198
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2166, metadata !DIExpression()), !dbg !2186
  %23 = load i32, ptr %6, align 8, !dbg !2199, !tbaa !1482
  %24 = load ptr, ptr %16, align 8, !dbg !2200, !tbaa !1553
  %25 = load ptr, ptr %18, align 8, !dbg !2201, !tbaa !1556
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2202
  store i32 %8, ptr %7, align 4, !dbg !2203, !tbaa !826
  br i1 %11, label %28, label %27, !dbg !2204

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2205, !tbaa !2207
  br label %28, !dbg !2208

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2209
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2210 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2215, !tbaa !768
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2212, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2213, metadata !DIExpression()), !dbg !2217
  %2 = load i32, ptr @nslots, align 4, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2213, metadata !DIExpression()), !dbg !2217
  %3 = icmp sgt i32 %2, 1, !dbg !2218
  br i1 %3, label %4, label %6, !dbg !2220

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2218
  br label %10, !dbg !2220

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2221

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2221
  %8 = load ptr, ptr %7, align 8, !dbg !2221, !tbaa !2223
  %9 = icmp eq ptr %8, @slot0, !dbg !2225
  br i1 %9, label %17, label %16, !dbg !2226

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2213, metadata !DIExpression()), !dbg !2217
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2227
  %13 = load ptr, ptr %12, align 8, !dbg !2227, !tbaa !2223
  tail call void @free(ptr noundef %13) #37, !dbg !2228
  %14 = add nuw nsw i64 %11, 1, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2213, metadata !DIExpression()), !dbg !2217
  %15 = icmp eq i64 %14, %5, !dbg !2218
  br i1 %15, label %.loopexit, label %10, !dbg !2220, !llvm.loop !2230

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2232
  store i64 256, ptr @slotvec0, align 8, !dbg !2234, !tbaa !2235
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2236, !tbaa !2223
  br label %17, !dbg !2237

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2238
  br i1 %18, label %20, label %19, !dbg !2240

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2241
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2243, !tbaa !768
  br label %20, !dbg !2244

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2245, !tbaa !826
  ret void, !dbg !2246
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2247 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2250 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()), !dbg !2254
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2253, metadata !DIExpression()), !dbg !2254
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2255
  ret ptr %3, !dbg !2256
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2257 {
  %5 = alloca i64, align 8, !DIAssignID !2277
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2271, metadata !DIExpression(), metadata !2277, metadata ptr %5, metadata !DIExpression()), !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2262, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2263, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2264, metadata !DIExpression()), !dbg !2279
  %6 = tail call ptr @__errno_location() #40, !dbg !2280
  %7 = load i32, ptr %6, align 4, !dbg !2280, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2265, metadata !DIExpression()), !dbg !2279
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2281, !tbaa !768
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2266, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2267, metadata !DIExpression()), !dbg !2279
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2282
  br i1 %9, label %10, label %11, !dbg !2282

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2284
  unreachable, !dbg !2284

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2285, !tbaa !826
  %13 = icmp sgt i32 %12, %0, !dbg !2286
  br i1 %13, label %32, label %14, !dbg !2287

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2288
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2289
  %16 = sext i32 %12 to i64, !dbg !2290
  store i64 %16, ptr %5, align 8, !dbg !2291, !tbaa !2207, !DIAssignID !2292
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2271, metadata !DIExpression(), metadata !2292, metadata ptr %5, metadata !DIExpression()), !dbg !2278
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2293
  %18 = add nuw nsw i32 %0, 1, !dbg !2294
  %19 = sub i32 %18, %12, !dbg !2295
  %20 = sext i32 %19 to i64, !dbg !2296
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2297
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2266, metadata !DIExpression()), !dbg !2279
  store ptr %21, ptr @slotvec, align 8, !dbg !2298, !tbaa !768
  br i1 %15, label %22, label %23, !dbg !2299

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2300, !tbaa.struct !2302
  br label %23, !dbg !2303

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2304, !tbaa !826
  %25 = sext i32 %24 to i64, !dbg !2305
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2305
  %27 = load i64, ptr %5, align 8, !dbg !2306, !tbaa !2207
  %28 = sub nsw i64 %27, %25, !dbg !2307
  %29 = shl i64 %28, 4, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %26, metadata !1691, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !1694, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %29, metadata !1695, metadata !DIExpression()), !dbg !2309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2311
  %30 = load i64, ptr %5, align 8, !dbg !2312, !tbaa !2207
  %31 = trunc i64 %30 to i32, !dbg !2312
  store i32 %31, ptr @nslots, align 4, !dbg !2313, !tbaa !826
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2314
  br label %32, !dbg !2315

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2279
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2266, metadata !DIExpression()), !dbg !2279
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2316
  %36 = load i64, ptr %35, align 8, !dbg !2317, !tbaa !2235
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2272, metadata !DIExpression()), !dbg !2318
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2319
  %38 = load ptr, ptr %37, align 8, !dbg !2319, !tbaa !2223
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2274, metadata !DIExpression()), !dbg !2318
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2320
  %40 = load i32, ptr %39, align 4, !dbg !2320, !tbaa !1532
  %41 = or i32 %40, 1, !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2275, metadata !DIExpression()), !dbg !2318
  %42 = load i32, ptr %3, align 8, !dbg !2322, !tbaa !1482
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2323
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2324
  %45 = load ptr, ptr %44, align 8, !dbg !2324, !tbaa !1553
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2325
  %47 = load ptr, ptr %46, align 8, !dbg !2325, !tbaa !1556
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2276, metadata !DIExpression()), !dbg !2318
  %49 = icmp ugt i64 %36, %48, !dbg !2327
  br i1 %49, label %60, label %50, !dbg !2329

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2272, metadata !DIExpression()), !dbg !2318
  store i64 %51, ptr %35, align 8, !dbg !2332, !tbaa !2235
  %52 = icmp eq ptr %38, @slot0, !dbg !2333
  br i1 %52, label %54, label %53, !dbg !2335

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2336
  br label %54, !dbg !2336

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2337
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2274, metadata !DIExpression()), !dbg !2318
  store ptr %55, ptr %37, align 8, !dbg !2338, !tbaa !2223
  %56 = load i32, ptr %3, align 8, !dbg !2339, !tbaa !1482
  %57 = load ptr, ptr %44, align 8, !dbg !2340, !tbaa !1553
  %58 = load ptr, ptr %46, align 8, !dbg !2341, !tbaa !1556
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2342
  br label %60, !dbg !2343

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2318
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2274, metadata !DIExpression()), !dbg !2318
  store i32 %7, ptr %6, align 4, !dbg !2344, !tbaa !826
  ret ptr %61, !dbg !2345
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2346 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2350, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2351, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2352, metadata !DIExpression()), !dbg !2353
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2354
  ret ptr %4, !dbg !2355
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2356 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %0, metadata !2253, metadata !DIExpression()), !dbg !2360
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2362
  ret ptr %2, !dbg !2363
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2364 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %0, metadata !2351, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %1, metadata !2352, metadata !DIExpression()), !dbg !2371
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2373
  ret ptr %3, !dbg !2374
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2375 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2383
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2382, metadata !DIExpression(), metadata !2383, metadata ptr %4, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2380, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2381, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2398, !alias.scope !2386, !DIAssignID !2399
  call void @llvm.dbg.assign(metadata i8 0, metadata !2382, metadata !DIExpression(), metadata !2399, metadata ptr %4, metadata !DIExpression()), !dbg !2384
  %5 = icmp eq i32 %1, 10, !dbg !2400
  br i1 %5, label %6, label %7, !dbg !2402

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2403, !noalias !2386
  unreachable, !dbg !2403

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2404, !tbaa !1482, !alias.scope !2386, !DIAssignID !2405
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2382, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2405, metadata ptr %4, metadata !DIExpression()), !dbg !2384
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2406
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2407
  ret ptr %8, !dbg !2408
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2409 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2417, metadata !DIExpression(), metadata !2418, metadata ptr %5, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2413, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2415, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2395, metadata !DIExpression()), !dbg !2427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2427, !alias.scope !2421, !DIAssignID !2428
  call void @llvm.dbg.assign(metadata i8 0, metadata !2417, metadata !DIExpression(), metadata !2428, metadata ptr %5, metadata !DIExpression()), !dbg !2419
  %6 = icmp eq i32 %1, 10, !dbg !2429
  br i1 %6, label %7, label %8, !dbg !2430

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2431, !noalias !2421
  unreachable, !dbg !2431

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2432, !tbaa !1482, !alias.scope !2421, !DIAssignID !2433
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2433, metadata ptr %5, metadata !DIExpression()), !dbg !2419
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2434
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2435
  ret ptr %9, !dbg !2436
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2437 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2443
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2441, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2382, metadata !DIExpression(), metadata !2443, metadata ptr %3, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %1, metadata !2381, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2395, metadata !DIExpression()), !dbg !2454
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2454, !alias.scope !2448, !DIAssignID !2455
  call void @llvm.dbg.assign(metadata i8 0, metadata !2382, metadata !DIExpression(), metadata !2455, metadata ptr %3, metadata !DIExpression()), !dbg !2445
  %4 = icmp eq i32 %0, 10, !dbg !2456
  br i1 %4, label %5, label %6, !dbg !2457

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2458, !noalias !2448
  unreachable, !dbg !2458

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2459, !tbaa !1482, !alias.scope !2448, !DIAssignID !2460
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2382, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2460, metadata ptr %3, metadata !DIExpression()), !dbg !2445
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2461
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2462
  ret ptr %7, !dbg !2463
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2464 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2471
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2468, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2469, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2417, metadata !DIExpression(), metadata !2471, metadata ptr %4, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 0, metadata !2413, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata ptr %1, metadata !2415, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %2, metadata !2416, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2476), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2395, metadata !DIExpression()), !dbg !2482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2482, !alias.scope !2476, !DIAssignID !2483
  call void @llvm.dbg.assign(metadata i8 0, metadata !2417, metadata !DIExpression(), metadata !2483, metadata ptr %4, metadata !DIExpression()), !dbg !2473
  %5 = icmp eq i32 %0, 10, !dbg !2484
  br i1 %5, label %6, label %7, !dbg !2485

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2486, !noalias !2476
  unreachable, !dbg !2486

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2487, !tbaa !1482, !alias.scope !2476, !DIAssignID !2488
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2488, metadata ptr %4, metadata !DIExpression()), !dbg !2473
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2489
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2490
  ret ptr %8, !dbg !2491
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2492 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2500, metadata ptr %4, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2496, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2497, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2498, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2503, !tbaa.struct !2504, !DIAssignID !2505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2505, metadata ptr %4, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1499, metadata !DIExpression()), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1500, metadata !DIExpression()), !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1501, metadata !DIExpression()), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1502, metadata !DIExpression()), !dbg !2506
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2508
  %6 = lshr i8 %2, 5, !dbg !2509
  %7 = zext nneg i8 %6 to i64, !dbg !2509
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2510
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1503, metadata !DIExpression()), !dbg !2506
  %9 = and i8 %2, 31, !dbg !2511
  %10 = zext nneg i8 %9 to i32, !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1505, metadata !DIExpression()), !dbg !2506
  %11 = load i32, ptr %8, align 4, !dbg !2512, !tbaa !826
  %12 = lshr i32 %11, %10, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1506, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2506
  %13 = and i32 %12, 1, !dbg !2514
  %14 = xor i32 %13, 1, !dbg !2514
  %15 = shl nuw i32 %14, %10, !dbg !2515
  %16 = xor i32 %15, %11, !dbg !2516
  store i32 %16, ptr %8, align 4, !dbg !2516, !tbaa !826
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2517
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2518
  ret ptr %17, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2520 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2526
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2527
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2525, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2526, metadata ptr %3, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %0, metadata !2496, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 -1, metadata !2497, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %1, metadata !2498, metadata !DIExpression()), !dbg !2528
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2531, !tbaa.struct !2504, !DIAssignID !2532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2532, metadata ptr %3, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %3, metadata !1499, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1500, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 1, metadata !1501, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1502, metadata !DIExpression()), !dbg !2533
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2535
  %5 = lshr i8 %1, 5, !dbg !2536
  %6 = zext nneg i8 %5 to i64, !dbg !2536
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2537
  call void @llvm.dbg.value(metadata ptr %7, metadata !1503, metadata !DIExpression()), !dbg !2533
  %8 = and i8 %1, 31, !dbg !2538
  %9 = zext nneg i8 %8 to i32, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %9, metadata !1505, metadata !DIExpression()), !dbg !2533
  %10 = load i32, ptr %7, align 4, !dbg !2539, !tbaa !826
  %11 = lshr i32 %10, %9, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %11, metadata !1506, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2533
  %12 = and i32 %11, 1, !dbg !2541
  %13 = xor i32 %12, 1, !dbg !2541
  %14 = shl nuw i32 %13, %9, !dbg !2542
  %15 = xor i32 %14, %10, !dbg !2543
  store i32 %15, ptr %7, align 4, !dbg !2543, !tbaa !826
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2544
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2545
  ret ptr %16, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2547 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2550
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 58, metadata !2525, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2550, metadata ptr %2, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %0, metadata !2496, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 -1, metadata !2497, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 58, metadata !2498, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2557, !tbaa.struct !2504, !DIAssignID !2558
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2558, metadata ptr %2, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %2, metadata !1499, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 1, metadata !1501, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !1502, metadata !DIExpression()), !dbg !2559
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 26, metadata !1505, metadata !DIExpression()), !dbg !2559
  %4 = load i32, ptr %3, align 4, !dbg !2562, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %4, metadata !1506, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2559
  %5 = or i32 %4, 67108864, !dbg !2563
  store i32 %5, ptr %3, align 4, !dbg !2563, !tbaa !826
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2565
  ret ptr %6, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2567 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2571
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2569, metadata !DIExpression()), !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2571, metadata ptr %3, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata ptr %0, metadata !2496, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1, metadata !2497, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !2498, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2576, !tbaa.struct !2504, !DIAssignID !2577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2577, metadata ptr %3, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata ptr %3, metadata !1499, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 1, metadata !1501, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 58, metadata !1502, metadata !DIExpression()), !dbg !2578
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2580
  call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 26, metadata !1505, metadata !DIExpression()), !dbg !2578
  %5 = load i32, ptr %4, align 4, !dbg !2581, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %5, metadata !1506, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2578
  %6 = or i32 %5, 67108864, !dbg !2582
  store i32 %6, ptr %4, align 4, !dbg !2582, !tbaa !826
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2583
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2584
  ret ptr %7, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2586 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2592
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2592, metadata ptr %4, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2395, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2589, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2597
  %5 = icmp eq i32 %1, 10, !dbg !2598
  br i1 %5, label %6, label %7, !dbg !2599

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2600, !noalias !2601
  unreachable, !dbg !2600

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2597
  store i32 %1, ptr %4, align 8, !dbg !2604, !tbaa.struct !2504, !DIAssignID !2605
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2604
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2605, metadata ptr %4, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2606, metadata ptr %8, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1499, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1501, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1502, metadata !DIExpression()), !dbg !2607
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1503, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1505, metadata !DIExpression()), !dbg !2607
  %10 = load i32, ptr %9, align 4, !dbg !2610, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1506, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2607
  %11 = or i32 %10, 67108864, !dbg !2611
  store i32 %11, ptr %9, align 4, !dbg !2611, !tbaa !826, !DIAssignID !2612
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2591, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2612, metadata ptr %9, metadata !DIExpression()), !dbg !2593
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2613
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2614
  ret ptr %12, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2616 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2624
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2621, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2622, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2623, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2624, metadata ptr %5, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %1, metadata !2632, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2639, !tbaa.struct !2504, !DIAssignID !2640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2640, metadata ptr %5, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2641, metadata ptr undef, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %1, metadata !1540, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %2, metadata !1541, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !2642
  store i32 10, ptr %5, align 8, !dbg !2644, !tbaa !1482, !DIAssignID !2645
  call void @llvm.dbg.assign(metadata i32 10, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2645, metadata ptr %5, metadata !DIExpression()), !dbg !2636
  %6 = icmp ne ptr %1, null, !dbg !2646
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2647
  br i1 %8, label %10, label %9, !dbg !2647

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2648
  unreachable, !dbg !2648

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2649
  store ptr %1, ptr %11, align 8, !dbg !2650, !tbaa !1553, !DIAssignID !2651
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2651, metadata ptr %11, metadata !DIExpression()), !dbg !2636
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2652
  store ptr %2, ptr %12, align 8, !dbg !2653, !tbaa !1556, !DIAssignID !2654
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2654, metadata ptr %12, metadata !DIExpression()), !dbg !2636
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2655
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2656
  ret ptr %13, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2627 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2658, metadata ptr %6, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2632, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2635, metadata !DIExpression()), !dbg !2659
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2661, !tbaa.struct !2504, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2662, metadata ptr %6, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2663, metadata ptr undef, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %6, metadata !1539, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !1540, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %2, metadata !1541, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %6, metadata !1539, metadata !DIExpression()), !dbg !2664
  store i32 10, ptr %6, align 8, !dbg !2666, !tbaa !1482, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata i32 10, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2667, metadata ptr %6, metadata !DIExpression()), !dbg !2659
  %7 = icmp ne ptr %1, null, !dbg !2668
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2669
  br i1 %9, label %11, label %10, !dbg !2669

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2670
  unreachable, !dbg !2670

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2671
  store ptr %1, ptr %12, align 8, !dbg !2672, !tbaa !1553, !DIAssignID !2673
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2673, metadata ptr %12, metadata !DIExpression()), !dbg !2659
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2674
  store ptr %2, ptr %13, align 8, !dbg !2675, !tbaa !1556, !DIAssignID !2676
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2676, metadata ptr %13, metadata !DIExpression()), !dbg !2659
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2677
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2678
  ret ptr %14, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2680 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2687
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2684, metadata !DIExpression()), !dbg !2688
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2685, metadata !DIExpression()), !dbg !2688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %0, metadata !2621, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %1, metadata !2622, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %2, metadata !2623, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2687, metadata ptr %4, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %0, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %1, metadata !2633, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2694, !tbaa.struct !2504, !DIAssignID !2695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2695, metadata ptr %4, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2696, metadata ptr undef, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %4, metadata !1539, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %0, metadata !1540, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %4, metadata !1539, metadata !DIExpression()), !dbg !2697
  store i32 10, ptr %4, align 8, !dbg !2699, !tbaa !1482, !DIAssignID !2700
  call void @llvm.dbg.assign(metadata i32 10, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2700, metadata ptr %4, metadata !DIExpression()), !dbg !2691
  %5 = icmp ne ptr %0, null, !dbg !2701
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2702
  br i1 %7, label %9, label %8, !dbg !2702

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2703
  unreachable, !dbg !2703

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2704
  store ptr %0, ptr %10, align 8, !dbg !2705, !tbaa !1553, !DIAssignID !2706
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2706, metadata ptr %10, metadata !DIExpression()), !dbg !2691
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2707
  store ptr %1, ptr %11, align 8, !dbg !2708, !tbaa !1556, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2709, metadata ptr %11, metadata !DIExpression()), !dbg !2691
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2710
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2711
  ret ptr %12, !dbg !2712
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2713 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2721
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2718, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2719, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2720, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2721, metadata ptr %5, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %0, metadata !2632, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %1, metadata !2633, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %3, metadata !2635, metadata !DIExpression()), !dbg !2723
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2726, !tbaa.struct !2504, !DIAssignID !2727
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(), metadata !2727, metadata ptr %5, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2728, metadata ptr undef, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %0, metadata !1540, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !2729
  store i32 10, ptr %5, align 8, !dbg !2731, !tbaa !1482, !DIAssignID !2732
  call void @llvm.dbg.assign(metadata i32 10, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2732, metadata ptr %5, metadata !DIExpression()), !dbg !2723
  %6 = icmp ne ptr %0, null, !dbg !2733
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2734
  br i1 %8, label %10, label %9, !dbg !2734

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2735
  unreachable, !dbg !2735

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2736
  store ptr %0, ptr %11, align 8, !dbg !2737, !tbaa !1553, !DIAssignID !2738
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2738, metadata ptr %11, metadata !DIExpression()), !dbg !2723
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2739
  store ptr %1, ptr %12, align 8, !dbg !2740, !tbaa !1556, !DIAssignID !2741
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2626, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2741, metadata ptr %12, metadata !DIExpression()), !dbg !2723
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2742
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2743
  ret ptr %13, !dbg !2744
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2745 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2749, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2751, metadata !DIExpression()), !dbg !2752
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2753
  ret ptr %4, !dbg !2754
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2755 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2759, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 0, metadata !2749, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()), !dbg !2762
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2764
  ret ptr %3, !dbg !2765
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2766 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2770, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %0, metadata !2749, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 -1, metadata !2751, metadata !DIExpression()), !dbg !2773
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2775
  ret ptr %3, !dbg !2776
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2749, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 -1, metadata !2751, metadata !DIExpression()), !dbg !2785
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2787
  ret ptr %2, !dbg !2788
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2789 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2834
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2834
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2830, metadata !DIExpression()), !dbg !2834
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2831, metadata !DIExpression()), !dbg !2834
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2832, metadata !DIExpression()), !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2833, metadata !DIExpression()), !dbg !2834
  %7 = icmp eq ptr %1, null, !dbg !2835
  br i1 %7, label %10, label %8, !dbg !2837

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2838
  br label %12, !dbg !2838

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.70, ptr noundef %2, ptr noundef %3) #37, !dbg !2839
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.3.72, i32 noundef 5) #37, !dbg !2840
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2840
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2841
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.5.74, i32 noundef 5) #37, !dbg !2842
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.75) #37, !dbg !2842
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2843
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
  ], !dbg !2844

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.7.76, i32 noundef 5) #37, !dbg !2845
  %21 = load ptr, ptr %4, align 8, !dbg !2845, !tbaa !768
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2845
  br label %147, !dbg !2847

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.8.77, i32 noundef 5) #37, !dbg !2848
  %25 = load ptr, ptr %4, align 8, !dbg !2848, !tbaa !768
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2848
  %27 = load ptr, ptr %26, align 8, !dbg !2848, !tbaa !768
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2848
  br label %147, !dbg !2849

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.9.78, i32 noundef 5) #37, !dbg !2850
  %31 = load ptr, ptr %4, align 8, !dbg !2850, !tbaa !768
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2850
  %33 = load ptr, ptr %32, align 8, !dbg !2850, !tbaa !768
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2850
  %35 = load ptr, ptr %34, align 8, !dbg !2850, !tbaa !768
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2850
  br label %147, !dbg !2851

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.10.79, i32 noundef 5) #37, !dbg !2852
  %39 = load ptr, ptr %4, align 8, !dbg !2852, !tbaa !768
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2852
  %41 = load ptr, ptr %40, align 8, !dbg !2852, !tbaa !768
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2852
  %43 = load ptr, ptr %42, align 8, !dbg !2852, !tbaa !768
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2852
  %45 = load ptr, ptr %44, align 8, !dbg !2852, !tbaa !768
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2852
  br label %147, !dbg !2853

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.11.80, i32 noundef 5) #37, !dbg !2854
  %49 = load ptr, ptr %4, align 8, !dbg !2854, !tbaa !768
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2854
  %51 = load ptr, ptr %50, align 8, !dbg !2854, !tbaa !768
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2854
  %53 = load ptr, ptr %52, align 8, !dbg !2854, !tbaa !768
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2854
  %55 = load ptr, ptr %54, align 8, !dbg !2854, !tbaa !768
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2854
  %57 = load ptr, ptr %56, align 8, !dbg !2854, !tbaa !768
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2854
  br label %147, !dbg !2855

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.12.81, i32 noundef 5) #37, !dbg !2856
  %61 = load ptr, ptr %4, align 8, !dbg !2856, !tbaa !768
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2856
  %63 = load ptr, ptr %62, align 8, !dbg !2856, !tbaa !768
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2856
  %65 = load ptr, ptr %64, align 8, !dbg !2856, !tbaa !768
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2856
  %67 = load ptr, ptr %66, align 8, !dbg !2856, !tbaa !768
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2856
  %69 = load ptr, ptr %68, align 8, !dbg !2856, !tbaa !768
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2856
  %71 = load ptr, ptr %70, align 8, !dbg !2856, !tbaa !768
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2856
  br label %147, !dbg !2857

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.13.82, i32 noundef 5) #37, !dbg !2858
  %75 = load ptr, ptr %4, align 8, !dbg !2858, !tbaa !768
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2858
  %77 = load ptr, ptr %76, align 8, !dbg !2858, !tbaa !768
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2858
  %79 = load ptr, ptr %78, align 8, !dbg !2858, !tbaa !768
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2858
  %81 = load ptr, ptr %80, align 8, !dbg !2858, !tbaa !768
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2858
  %83 = load ptr, ptr %82, align 8, !dbg !2858, !tbaa !768
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2858
  %85 = load ptr, ptr %84, align 8, !dbg !2858, !tbaa !768
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2858
  %87 = load ptr, ptr %86, align 8, !dbg !2858, !tbaa !768
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2858
  br label %147, !dbg !2859

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.14.83, i32 noundef 5) #37, !dbg !2860
  %91 = load ptr, ptr %4, align 8, !dbg !2860, !tbaa !768
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2860
  %93 = load ptr, ptr %92, align 8, !dbg !2860, !tbaa !768
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2860
  %95 = load ptr, ptr %94, align 8, !dbg !2860, !tbaa !768
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2860
  %97 = load ptr, ptr %96, align 8, !dbg !2860, !tbaa !768
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2860
  %99 = load ptr, ptr %98, align 8, !dbg !2860, !tbaa !768
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2860
  %101 = load ptr, ptr %100, align 8, !dbg !2860, !tbaa !768
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2860
  %103 = load ptr, ptr %102, align 8, !dbg !2860, !tbaa !768
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2860
  %105 = load ptr, ptr %104, align 8, !dbg !2860, !tbaa !768
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2860
  br label %147, !dbg !2861

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.15.84, i32 noundef 5) #37, !dbg !2862
  %109 = load ptr, ptr %4, align 8, !dbg !2862, !tbaa !768
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2862
  %111 = load ptr, ptr %110, align 8, !dbg !2862, !tbaa !768
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2862
  %113 = load ptr, ptr %112, align 8, !dbg !2862, !tbaa !768
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2862
  %115 = load ptr, ptr %114, align 8, !dbg !2862, !tbaa !768
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2862
  %117 = load ptr, ptr %116, align 8, !dbg !2862, !tbaa !768
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2862
  %119 = load ptr, ptr %118, align 8, !dbg !2862, !tbaa !768
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2862
  %121 = load ptr, ptr %120, align 8, !dbg !2862, !tbaa !768
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2862
  %123 = load ptr, ptr %122, align 8, !dbg !2862, !tbaa !768
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2862
  %125 = load ptr, ptr %124, align 8, !dbg !2862, !tbaa !768
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2862
  br label %147, !dbg !2863

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.16.85, i32 noundef 5) #37, !dbg !2864
  %129 = load ptr, ptr %4, align 8, !dbg !2864, !tbaa !768
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2864
  %131 = load ptr, ptr %130, align 8, !dbg !2864, !tbaa !768
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2864
  %133 = load ptr, ptr %132, align 8, !dbg !2864, !tbaa !768
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2864
  %135 = load ptr, ptr %134, align 8, !dbg !2864, !tbaa !768
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2864
  %137 = load ptr, ptr %136, align 8, !dbg !2864, !tbaa !768
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2864
  %139 = load ptr, ptr %138, align 8, !dbg !2864, !tbaa !768
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2864
  %141 = load ptr, ptr %140, align 8, !dbg !2864, !tbaa !768
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2864
  %143 = load ptr, ptr %142, align 8, !dbg !2864, !tbaa !768
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2864
  %145 = load ptr, ptr %144, align 8, !dbg !2864, !tbaa !768
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2864
  br label %147, !dbg !2865

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2867 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2872, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2875, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2876, metadata !DIExpression()), !dbg !2877
  br label %6, !dbg !2878

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2876, metadata !DIExpression()), !dbg !2877
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2881
  %9 = load ptr, ptr %8, align 8, !dbg !2881, !tbaa !768
  %10 = icmp eq ptr %9, null, !dbg !2883
  %11 = add i64 %7, 1, !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2876, metadata !DIExpression()), !dbg !2877
  br i1 %10, label %12, label %6, !dbg !2883, !llvm.loop !2885

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2880
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2887
  ret void, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2889 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2911, metadata ptr %6, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2903, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2904, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2905, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2906, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !2912
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2908, metadata !DIExpression()), !dbg !2912
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2908, metadata !DIExpression()), !dbg !2912
  %10 = icmp sgt i32 %9, -1, !dbg !2914
  br i1 %10, label %18, label %11, !dbg !2914

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2914
  store i32 %12, ptr %7, align 8, !dbg !2914
  %13 = icmp ult i32 %9, -7, !dbg !2914
  br i1 %13, label %14, label %18, !dbg !2914

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2914
  %16 = sext i32 %9 to i64, !dbg !2914
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2914
  br label %22, !dbg !2914

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2914
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2914
  store ptr %21, ptr %4, align 8, !dbg !2914
  br label %22, !dbg !2914

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2914
  %25 = load ptr, ptr %24, align 8, !dbg !2914
  store ptr %25, ptr %6, align 8, !dbg !2917, !tbaa !768
  %26 = icmp eq ptr %25, null, !dbg !2918
  br i1 %26, label %197, label %27, !dbg !2919

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2908, metadata !DIExpression()), !dbg !2912
  %28 = icmp sgt i32 %23, -1, !dbg !2914
  br i1 %28, label %36, label %29, !dbg !2914

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2914
  store i32 %30, ptr %7, align 8, !dbg !2914
  %31 = icmp ult i32 %23, -7, !dbg !2914
  br i1 %31, label %32, label %36, !dbg !2914

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2914
  %34 = sext i32 %23 to i64, !dbg !2914
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2914
  br label %40, !dbg !2914

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2914
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2914
  store ptr %39, ptr %4, align 8, !dbg !2914
  br label %40, !dbg !2914

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2914
  %43 = load ptr, ptr %42, align 8, !dbg !2914
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2920
  store ptr %43, ptr %44, align 8, !dbg !2917, !tbaa !768
  %45 = icmp eq ptr %43, null, !dbg !2918
  br i1 %45, label %197, label %46, !dbg !2919

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2908, metadata !DIExpression()), !dbg !2912
  %47 = icmp sgt i32 %41, -1, !dbg !2914
  br i1 %47, label %55, label %48, !dbg !2914

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2914
  store i32 %49, ptr %7, align 8, !dbg !2914
  %50 = icmp ult i32 %41, -7, !dbg !2914
  br i1 %50, label %51, label %55, !dbg !2914

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2914
  %53 = sext i32 %41 to i64, !dbg !2914
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2914
  br label %59, !dbg !2914

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2914
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2914
  store ptr %58, ptr %4, align 8, !dbg !2914
  br label %59, !dbg !2914

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2914
  %62 = load ptr, ptr %61, align 8, !dbg !2914
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2920
  store ptr %62, ptr %63, align 8, !dbg !2917, !tbaa !768
  %64 = icmp eq ptr %62, null, !dbg !2918
  br i1 %64, label %197, label %65, !dbg !2919

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2908, metadata !DIExpression()), !dbg !2912
  %66 = icmp sgt i32 %60, -1, !dbg !2914
  br i1 %66, label %74, label %67, !dbg !2914

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2914
  store i32 %68, ptr %7, align 8, !dbg !2914
  %69 = icmp ult i32 %60, -7, !dbg !2914
  br i1 %69, label %70, label %74, !dbg !2914

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2914
  %72 = sext i32 %60 to i64, !dbg !2914
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2914
  br label %78, !dbg !2914

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2914
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2914
  store ptr %77, ptr %4, align 8, !dbg !2914
  br label %78, !dbg !2914

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2914
  %81 = load ptr, ptr %80, align 8, !dbg !2914
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2920
  store ptr %81, ptr %82, align 8, !dbg !2917, !tbaa !768
  %83 = icmp eq ptr %81, null, !dbg !2918
  br i1 %83, label %197, label %84, !dbg !2919

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2908, metadata !DIExpression()), !dbg !2912
  %85 = icmp sgt i32 %79, -1, !dbg !2914
  br i1 %85, label %93, label %86, !dbg !2914

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2914
  store i32 %87, ptr %7, align 8, !dbg !2914
  %88 = icmp ult i32 %79, -7, !dbg !2914
  br i1 %88, label %89, label %93, !dbg !2914

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2914
  %91 = sext i32 %79 to i64, !dbg !2914
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2914
  br label %97, !dbg !2914

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2914
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2914
  store ptr %96, ptr %4, align 8, !dbg !2914
  br label %97, !dbg !2914

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2914
  %100 = load ptr, ptr %99, align 8, !dbg !2914
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2920
  store ptr %100, ptr %101, align 8, !dbg !2917, !tbaa !768
  %102 = icmp eq ptr %100, null, !dbg !2918
  br i1 %102, label %197, label %103, !dbg !2919

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2908, metadata !DIExpression()), !dbg !2912
  %104 = icmp sgt i32 %98, -1, !dbg !2914
  br i1 %104, label %112, label %105, !dbg !2914

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2914
  store i32 %106, ptr %7, align 8, !dbg !2914
  %107 = icmp ult i32 %98, -7, !dbg !2914
  br i1 %107, label %108, label %112, !dbg !2914

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2914
  %110 = sext i32 %98 to i64, !dbg !2914
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2914
  br label %116, !dbg !2914

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2914
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2914
  store ptr %115, ptr %4, align 8, !dbg !2914
  br label %116, !dbg !2914

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2914
  %119 = load ptr, ptr %118, align 8, !dbg !2914
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2920
  store ptr %119, ptr %120, align 8, !dbg !2917, !tbaa !768
  %121 = icmp eq ptr %119, null, !dbg !2918
  br i1 %121, label %197, label %122, !dbg !2919

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2908, metadata !DIExpression()), !dbg !2912
  %123 = icmp sgt i32 %117, -1, !dbg !2914
  br i1 %123, label %131, label %124, !dbg !2914

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2914
  store i32 %125, ptr %7, align 8, !dbg !2914
  %126 = icmp ult i32 %117, -7, !dbg !2914
  br i1 %126, label %127, label %131, !dbg !2914

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2914
  %129 = sext i32 %117 to i64, !dbg !2914
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2914
  br label %135, !dbg !2914

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2914
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2914
  store ptr %134, ptr %4, align 8, !dbg !2914
  br label %135, !dbg !2914

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2914
  %138 = load ptr, ptr %137, align 8, !dbg !2914
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2920
  store ptr %138, ptr %139, align 8, !dbg !2917, !tbaa !768
  %140 = icmp eq ptr %138, null, !dbg !2918
  br i1 %140, label %197, label %141, !dbg !2919

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2908, metadata !DIExpression()), !dbg !2912
  %142 = icmp sgt i32 %136, -1, !dbg !2914
  br i1 %142, label %150, label %143, !dbg !2914

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2914
  store i32 %144, ptr %7, align 8, !dbg !2914
  %145 = icmp ult i32 %136, -7, !dbg !2914
  br i1 %145, label %146, label %150, !dbg !2914

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2914
  %148 = sext i32 %136 to i64, !dbg !2914
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2914
  br label %154, !dbg !2914

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2914
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2914
  store ptr %153, ptr %4, align 8, !dbg !2914
  br label %154, !dbg !2914

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2914
  %157 = load ptr, ptr %156, align 8, !dbg !2914
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2920
  store ptr %157, ptr %158, align 8, !dbg !2917, !tbaa !768
  %159 = icmp eq ptr %157, null, !dbg !2918
  br i1 %159, label %197, label %160, !dbg !2919

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2908, metadata !DIExpression()), !dbg !2912
  %161 = icmp sgt i32 %155, -1, !dbg !2914
  br i1 %161, label %169, label %162, !dbg !2914

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2914
  store i32 %163, ptr %7, align 8, !dbg !2914
  %164 = icmp ult i32 %155, -7, !dbg !2914
  br i1 %164, label %165, label %169, !dbg !2914

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2914
  %167 = sext i32 %155 to i64, !dbg !2914
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2914
  br label %173, !dbg !2914

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2914
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2914
  store ptr %172, ptr %4, align 8, !dbg !2914
  br label %173, !dbg !2914

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2914
  %176 = load ptr, ptr %175, align 8, !dbg !2914
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2920
  store ptr %176, ptr %177, align 8, !dbg !2917, !tbaa !768
  %178 = icmp eq ptr %176, null, !dbg !2918
  br i1 %178, label %197, label %179, !dbg !2919

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2908, metadata !DIExpression()), !dbg !2912
  %180 = icmp sgt i32 %174, -1, !dbg !2914
  br i1 %180, label %188, label %181, !dbg !2914

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2914
  store i32 %182, ptr %7, align 8, !dbg !2914
  %183 = icmp ult i32 %174, -7, !dbg !2914
  br i1 %183, label %184, label %188, !dbg !2914

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2914
  %186 = sext i32 %174 to i64, !dbg !2914
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2914
  br label %191, !dbg !2914

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2914
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2914
  store ptr %190, ptr %4, align 8, !dbg !2914
  br label %191, !dbg !2914

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2914
  %193 = load ptr, ptr %192, align 8, !dbg !2914
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2920
  store ptr %193, ptr %194, align 8, !dbg !2917, !tbaa !768
  %195 = icmp eq ptr %193, null, !dbg !2918
  %196 = select i1 %195, i64 9, i64 10, !dbg !2919
  br label %197, !dbg !2919

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2921
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2922
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2923
  ret void, !dbg !2923
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2924 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2933
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2932, metadata !DIExpression(), metadata !2933, metadata ptr %5, metadata !DIExpression()), !dbg !2934
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2928, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2929, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2935
  call void @llvm.va_start(ptr nonnull %5), !dbg !2936
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2937, !tbaa.struct !1176
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2937
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2937
  call void @llvm.va_end(ptr nonnull %5), !dbg !2938
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2939
  ret void, !dbg !2939
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2940 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2941, !tbaa !768
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %1), !dbg !2941
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.17.90, i32 noundef 5) #37, !dbg !2942
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.91) #37, !dbg !2942
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.19.92, i32 noundef 5) #37, !dbg !2943
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !2943
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.22.93, i32 noundef 5) #37, !dbg !2944
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2944
  ret void, !dbg !2945
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2946 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %2, metadata !2959, metadata !DIExpression()), !dbg !2960
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !2968
  %5 = icmp eq ptr %4, null, !dbg !2970
  br i1 %5, label %6, label %7, !dbg !2972

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2973
  unreachable, !dbg !2973

7:                                                ; preds = %3
  ret ptr %4, !dbg !2974
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2956 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2959, metadata !DIExpression()), !dbg !2975
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2976
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !2977
  %5 = icmp eq ptr %4, null, !dbg !2979
  br i1 %5, label %6, label %7, !dbg !2980

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2981
  unreachable, !dbg !2981

7:                                                ; preds = %3
  ret ptr %4, !dbg !2982
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2983 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2989
  call void @llvm.dbg.value(metadata ptr %2, metadata !2963, metadata !DIExpression()), !dbg !2990
  %3 = icmp eq ptr %2, null, !dbg !2992
  br i1 %3, label %4, label %5, !dbg !2993

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2994
  unreachable, !dbg !2994

5:                                                ; preds = %1
  ret ptr %2, !dbg !2995
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2996 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2997 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %0, metadata !3003, metadata !DIExpression()), !dbg !3007
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3009
  call void @llvm.dbg.value(metadata ptr %2, metadata !2963, metadata !DIExpression()), !dbg !3010
  %3 = icmp eq ptr %2, null, !dbg !3012
  br i1 %3, label %4, label %5, !dbg !3013

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3014
  unreachable, !dbg !3014

5:                                                ; preds = %1
  ret ptr %2, !dbg !3015
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3016 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %0, metadata !2987, metadata !DIExpression()), !dbg !3022
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !2963, metadata !DIExpression()), !dbg !3025
  %3 = icmp eq ptr %2, null, !dbg !3027
  br i1 %3, label %4, label %5, !dbg !3028

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3029
  unreachable, !dbg !3029

5:                                                ; preds = %1
  ret ptr %2, !dbg !3030
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3031 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3043
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3045
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3046
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !3047
  %5 = icmp eq ptr %4, null, !dbg !3049
  br i1 %5, label %6, label %7, !dbg !3050

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3051
  unreachable, !dbg !3051

7:                                                ; preds = %2
  ret ptr %4, !dbg !3052
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3053 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3054 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3067
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3069
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !3071
  %5 = icmp eq ptr %4, null, !dbg !3073
  br i1 %5, label %6, label %7, !dbg !3074

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3075
  unreachable, !dbg !3075

7:                                                ; preds = %2
  ret ptr %4, !dbg !3076
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %0, metadata !3085, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %2, metadata !3089, metadata !DIExpression()), !dbg !3090
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !3093
  %5 = icmp eq ptr %4, null, !dbg !3095
  br i1 %5, label %6, label %7, !dbg !3096

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3097
  unreachable, !dbg !3097

7:                                                ; preds = %3
  ret ptr %4, !dbg !3098
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3099 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3103, metadata !DIExpression()), !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr null, metadata !2955, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %0, metadata !2958, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !2959, metadata !DIExpression()), !dbg !3106
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3108
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !3109
  %4 = icmp eq ptr %3, null, !dbg !3111
  br i1 %4, label %5, label %6, !dbg !3112

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3113
  unreachable, !dbg !3113

6:                                                ; preds = %2
  ret ptr %3, !dbg !3114
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3115 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3119, metadata !DIExpression()), !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr null, metadata !3081, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr null, metadata !3085, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %0, metadata !3088, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3124
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3126
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !3127
  %4 = icmp eq ptr %3, null, !dbg !3129
  br i1 %4, label %5, label %6, !dbg !3130

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3131
  unreachable, !dbg !3131

6:                                                ; preds = %2
  ret ptr %3, !dbg !3132
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3137, metadata !DIExpression()), !dbg !3139
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %0, metadata !704, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %1, metadata !705, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 1, metadata !706, metadata !DIExpression()), !dbg !3140
  %3 = load i64, ptr %1, align 8, !dbg !3142, !tbaa !2207
  call void @llvm.dbg.value(metadata i64 %3, metadata !707, metadata !DIExpression()), !dbg !3140
  %4 = icmp eq ptr %0, null, !dbg !3143
  br i1 %4, label %5, label %8, !dbg !3145

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3146
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3149
  br label %15, !dbg !3149

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3150
  %10 = add nuw i64 %9, 1, !dbg !3150
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3150
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3150
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %13, metadata !707, metadata !DIExpression()), !dbg !3140
  br i1 %12, label %14, label %15, !dbg !3153

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3154
  unreachable, !dbg !3154

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3140
  call void @llvm.dbg.value(metadata i64 %16, metadata !707, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %16, metadata !2958, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 1, metadata !2959, metadata !DIExpression()), !dbg !3155
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3157
  call void @llvm.dbg.value(metadata ptr %17, metadata !2963, metadata !DIExpression()), !dbg !3158
  %18 = icmp eq ptr %17, null, !dbg !3160
  br i1 %18, label %19, label %20, !dbg !3161

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3162
  unreachable, !dbg !3162

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !704, metadata !DIExpression()), !dbg !3140
  store i64 %16, ptr %1, align 8, !dbg !3163, !tbaa !2207
  ret ptr %17, !dbg !3164
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !699 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !704, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !705, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !706, metadata !DIExpression()), !dbg !3165
  %4 = load i64, ptr %1, align 8, !dbg !3166, !tbaa !2207
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !707, metadata !DIExpression()), !dbg !3165
  %5 = icmp eq ptr %0, null, !dbg !3167
  br i1 %5, label %6, label %13, !dbg !3168

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3169
  br i1 %7, label %8, label %20, !dbg !3170

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !707, metadata !DIExpression()), !dbg !3165
  %10 = icmp ugt i64 %2, 128, !dbg !3173
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !707, metadata !DIExpression()), !dbg !3165
  br label %20, !dbg !3175

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3176
  %15 = add nuw i64 %14, 1, !dbg !3176
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3176
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3176
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !707, metadata !DIExpression()), !dbg !3165
  br i1 %17, label %19, label %20, !dbg !3177

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3178
  unreachable, !dbg !3178

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !707, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %21, metadata !2958, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %2, metadata !2959, metadata !DIExpression()), !dbg !3179
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %22, metadata !2963, metadata !DIExpression()), !dbg !3182
  %23 = icmp eq ptr %22, null, !dbg !3184
  br i1 %23, label %24, label %25, !dbg !3185

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3186
  unreachable, !dbg !3186

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !704, metadata !DIExpression()), !dbg !3165
  store i64 %21, ptr %1, align 8, !dbg !3187, !tbaa !2207
  ret ptr %22, !dbg !3188
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !722, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !723, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !724, metadata !DIExpression()), !dbg !3189
  %6 = load i64, ptr %1, align 8, !dbg !3190, !tbaa !2207
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !725, metadata !DIExpression()), !dbg !3189
  %7 = ashr i64 %6, 1, !dbg !3191
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3191
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3191
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !726, metadata !DIExpression()), !dbg !3189
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !726, metadata !DIExpression()), !dbg !3189
  %12 = icmp sgt i64 %3, -1, !dbg !3194
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3196
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !726, metadata !DIExpression()), !dbg !3189
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3197
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3197
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !727, metadata !DIExpression()), !dbg !3189
  %18 = icmp slt i64 %17, 128, !dbg !3197
  %19 = select i1 %18, i64 128, i64 0, !dbg !3197
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !728, metadata !DIExpression()), !dbg !3189
  %21 = icmp eq i64 %20, 0, !dbg !3198
  br i1 %21, label %28, label %22, !dbg !3200

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !726, metadata !DIExpression()), !dbg !3189
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !727, metadata !DIExpression()), !dbg !3189
  br label %28, !dbg !3204

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3189
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !727, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !726, metadata !DIExpression()), !dbg !3189
  %31 = icmp eq ptr %0, null, !dbg !3205
  br i1 %31, label %32, label %33, !dbg !3207

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3208, !tbaa !2207
  br label %33, !dbg !3209

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3210
  %35 = icmp slt i64 %34, %2, !dbg !3212
  br i1 %35, label %36, label %48, !dbg !3213

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3214
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3214
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !726, metadata !DIExpression()), !dbg !3189
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3215
  br i1 %42, label %47, label %43, !dbg !3215

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3216
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3216
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !727, metadata !DIExpression()), !dbg !3189
  br i1 %45, label %47, label %48, !dbg !3217

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3218
  unreachable, !dbg !3218

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3189
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !727, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !726, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %50, metadata !3036, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %50, metadata !3042, metadata !DIExpression()), !dbg !3221
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3223
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3224
  call void @llvm.dbg.value(metadata ptr %52, metadata !2963, metadata !DIExpression()), !dbg !3225
  %53 = icmp eq ptr %52, null, !dbg !3227
  br i1 %53, label %54, label %55, !dbg !3228

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3229
  unreachable, !dbg !3229

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !720, metadata !DIExpression()), !dbg !3189
  store i64 %49, ptr %1, align 8, !dbg !3230, !tbaa !2207
  ret ptr %52, !dbg !3231
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3232 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 1, metadata !3239, metadata !DIExpression()), !dbg !3240
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %2, metadata !2963, metadata !DIExpression()), !dbg !3243
  %3 = icmp eq ptr %2, null, !dbg !3245
  br i1 %3, label %4, label %5, !dbg !3246

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3247
  unreachable, !dbg !3247

5:                                                ; preds = %1
  ret ptr %2, !dbg !3248
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3249 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3237 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()), !dbg !3250
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !3252
  %4 = icmp eq ptr %3, null, !dbg !3254
  br i1 %4, label %5, label %6, !dbg !3255

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3256
  unreachable, !dbg !3256

6:                                                ; preds = %2
  ret ptr %3, !dbg !3257
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3258 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3260, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 1, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 1, metadata !3271, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 1, metadata !3271, metadata !DIExpression()), !dbg !3272
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %2, metadata !2963, metadata !DIExpression()), !dbg !3275
  %3 = icmp eq ptr %2, null, !dbg !3277
  br i1 %3, label %4, label %5, !dbg !3278

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3279
  unreachable, !dbg !3279

5:                                                ; preds = %1
  ret ptr %2, !dbg !3280
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3263 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3282
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !3285
  %4 = icmp eq ptr %3, null, !dbg !3287
  br i1 %4, label %5, label %6, !dbg !3288

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3289
  unreachable, !dbg !3289

6:                                                ; preds = %2
  ret ptr %3, !dbg !3290
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3291 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()), !dbg !3298
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !3301
  %4 = icmp eq ptr %3, null, !dbg !3303
  br i1 %4, label %5, label %6, !dbg !3304

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3305
  unreachable, !dbg !3305

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3306, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3316
  ret ptr %3, !dbg !3317
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3318 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3323, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()), !dbg !3327
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3329
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !3330
  %4 = icmp eq ptr %3, null, !dbg !3332
  br i1 %4, label %5, label %6, !dbg !3333

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3334
  unreachable, !dbg !3334

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3306, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3337
  ret ptr %3, !dbg !3338
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3339 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3343, metadata !DIExpression()), !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3346
  %3 = add nsw i64 %1, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %3, metadata !3001, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %3, metadata !3003, metadata !DIExpression()), !dbg !3350
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3352
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !3353
  %5 = icmp eq ptr %4, null, !dbg !3355
  br i1 %5, label %6, label %7, !dbg !3356

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3357
  unreachable, !dbg !3357

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3345, metadata !DIExpression()), !dbg !3346
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3358
  store i8 0, ptr %8, align 1, !dbg !3359, !tbaa !835
  call void @llvm.dbg.value(metadata ptr %4, metadata !3306, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()), !dbg !3360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3362
  ret ptr %4, !dbg !3363
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3364 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3366, metadata !DIExpression()), !dbg !3367
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3368
  %3 = add i64 %2, 1, !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %3, metadata !3296, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !3372
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !3375
  %5 = icmp eq ptr %4, null, !dbg !3377
  br i1 %5, label %6, label %7, !dbg !3378

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3379
  unreachable, !dbg !3379

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3306, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %3, metadata !3313, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3382
  ret ptr %4, !dbg !3383
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3384 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3389, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3386, metadata !DIExpression()), !dbg !3390
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #37, !dbg !3389
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #37, !dbg !3389
  %3 = icmp eq i32 %1, 0, !dbg !3389
  tail call void @llvm.assume(i1 %3), !dbg !3389
  tail call void @abort() #39, !dbg !3391
  unreachable, !dbg !3391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3392 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3435
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3436
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3431, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %3 = load i32, ptr %0, align 8, !dbg !3442, !tbaa !3443
  %4 = and i32 %3, 32, !dbg !3444
  %5 = icmp eq i32 %4, 0, !dbg !3444
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3433, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3435
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3445
  %7 = icmp eq i32 %6, 0, !dbg !3446
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3434, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3435
  br i1 %5, label %8, label %18, !dbg !3447

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3449
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3431, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3435
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3450
  %11 = xor i1 %7, true, !dbg !3450
  %12 = sext i1 %11 to i32, !dbg !3450
  br i1 %10, label %21, label %13, !dbg !3450

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3451
  %15 = load i32, ptr %14, align 4, !dbg !3451, !tbaa !826
  %16 = icmp ne i32 %15, 9, !dbg !3452
  %17 = sext i1 %16 to i32, !dbg !3453
  br label %21, !dbg !3453

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3454

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3456
  store i32 0, ptr %20, align 4, !dbg !3458, !tbaa !826
  br label %21, !dbg !3456

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3435
  ret i32 %22, !dbg !3459
}

; Function Attrs: nounwind
declare !dbg !3460 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3464 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3502, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3503, metadata !DIExpression()), !dbg !3506
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3507
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3504, metadata !DIExpression()), !dbg !3506
  %3 = icmp slt i32 %2, 0, !dbg !3508
  br i1 %3, label %4, label %6, !dbg !3510

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3511
  br label %24, !dbg !3512

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3513
  %8 = icmp eq i32 %7, 0, !dbg !3513
  br i1 %8, label %13, label %9, !dbg !3515

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3516
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3517
  %12 = icmp eq i64 %11, -1, !dbg !3518
  br i1 %12, label %16, label %13, !dbg !3519

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3520
  %15 = icmp eq i32 %14, 0, !dbg !3520
  br i1 %15, label %16, label %18, !dbg !3521

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3503, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3505, metadata !DIExpression()), !dbg !3506
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3505, metadata !DIExpression()), !dbg !3506
  br label %24, !dbg !3523

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3524
  %20 = load i32, ptr %19, align 4, !dbg !3524, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3503, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3505, metadata !DIExpression()), !dbg !3506
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3505, metadata !DIExpression()), !dbg !3506
  %22 = icmp eq i32 %20, 0, !dbg !3525
  br i1 %22, label %24, label %23, !dbg !3523

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3527, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3505, metadata !DIExpression()), !dbg !3506
  br label %24, !dbg !3529

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3506
  ret i32 %25, !dbg !3530
}

; Function Attrs: nofree nounwind
declare !dbg !3531 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3532 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3533 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3534 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3537 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3575, metadata !DIExpression()), !dbg !3576
  %2 = icmp eq ptr %0, null, !dbg !3577
  br i1 %2, label %6, label %3, !dbg !3579

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3580
  %5 = icmp eq i32 %4, 0, !dbg !3580
  br i1 %5, label %6, label %8, !dbg !3581

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3582
  br label %16, !dbg !3583

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3589
  %9 = load i32, ptr %0, align 8, !dbg !3591, !tbaa !3443
  %10 = and i32 %9, 256, !dbg !3593
  %11 = icmp eq i32 %10, 0, !dbg !3593
  br i1 %11, label %14, label %12, !dbg !3594

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3595
  br label %14, !dbg !3595

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3596
  br label %16, !dbg !3597

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3576
  ret i32 %17, !dbg !3598
}

; Function Attrs: nofree nounwind
declare !dbg !3599 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3600 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3639, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3640, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3641, metadata !DIExpression()), !dbg !3645
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3646
  %5 = load ptr, ptr %4, align 8, !dbg !3646, !tbaa !3647
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3648
  %7 = load ptr, ptr %6, align 8, !dbg !3648, !tbaa !3649
  %8 = icmp eq ptr %5, %7, !dbg !3650
  br i1 %8, label %9, label %27, !dbg !3651

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3652
  %11 = load ptr, ptr %10, align 8, !dbg !3652, !tbaa !1289
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3653
  %13 = load ptr, ptr %12, align 8, !dbg !3653, !tbaa !3654
  %14 = icmp eq ptr %11, %13, !dbg !3655
  br i1 %14, label %15, label %27, !dbg !3656

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3657
  %17 = load ptr, ptr %16, align 8, !dbg !3657, !tbaa !3658
  %18 = icmp eq ptr %17, null, !dbg !3659
  br i1 %18, label %19, label %27, !dbg !3660

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3661
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3642, metadata !DIExpression()), !dbg !3663
  %22 = icmp eq i64 %21, -1, !dbg !3664
  br i1 %22, label %29, label %23, !dbg !3666

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3667, !tbaa !3443
  %25 = and i32 %24, -17, !dbg !3667
  store i32 %25, ptr %0, align 8, !dbg !3667, !tbaa !3443
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3668
  store i64 %21, ptr %26, align 8, !dbg !3669, !tbaa !3670
  br label %29, !dbg !3671

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3672
  br label %29, !dbg !3673

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3645
  ret i32 %30, !dbg !3674
}

; Function Attrs: nofree nounwind
declare !dbg !3675 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3678 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3688
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3684, metadata !DIExpression()), !dbg !3688
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3685, metadata !DIExpression()), !dbg !3688
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3686, metadata !DIExpression()), !dbg !3688
  %5 = icmp eq ptr %1, null, !dbg !3689
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3691
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3691
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3685, metadata !DIExpression()), !dbg !3688
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3684, metadata !DIExpression()), !dbg !3688
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3683, metadata !DIExpression()), !dbg !3688
  %9 = icmp eq ptr %3, null, !dbg !3692
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3694
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3686, metadata !DIExpression()), !dbg !3688
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3687, metadata !DIExpression()), !dbg !3688
  %12 = icmp ult i64 %11, -3, !dbg !3696
  br i1 %12, label %13, label %17, !dbg !3698

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3699
  %15 = icmp eq i32 %14, 0, !dbg !3699
  br i1 %15, label %16, label %29, !dbg !3700

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %10, metadata !3708, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 0, metadata !3711, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 8, metadata !3712, metadata !DIExpression()), !dbg !3713
  store i64 0, ptr %10, align 1, !dbg !3715
  br label %29, !dbg !3716

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3717
  br i1 %18, label %19, label %20, !dbg !3719

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3720
  unreachable, !dbg !3720

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3721

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3723
  br i1 %23, label %29, label %24, !dbg !3724

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3725
  br i1 %25, label %29, label %26, !dbg !3728

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3729, !tbaa !835
  %28 = zext i8 %27 to i32, !dbg !3730
  store i32 %28, ptr %6, align 4, !dbg !3731, !tbaa !826
  br label %29, !dbg !3732

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3688
  ret i64 %30, !dbg !3733
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3734 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3742, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3743, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3744, metadata !DIExpression()), !dbg !3746
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3747
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3745, metadata !DIExpression()), !dbg !3746
  br i1 %5, label %6, label %8, !dbg !3749

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3750
  store i32 12, ptr %7, align 4, !dbg !3752, !tbaa !826
  br label %12, !dbg !3753

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata ptr %0, metadata !3754, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %9, metadata !3757, metadata !DIExpression()), !dbg !3758
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3760
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3761
  br label %12, !dbg !3762

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3746
  ret ptr %13, !dbg !3763
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3764 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3773
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3769, metadata !DIExpression(), metadata !3773, metadata ptr %2, metadata !DIExpression()), !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3775
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3776
  %4 = icmp eq i32 %3, 0, !dbg !3776
  br i1 %4, label %5, label %12, !dbg !3778

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3779, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr @.str.122, metadata !3782, metadata !DIExpression()), !dbg !3783
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.122, i64 2), !dbg !3786
  %7 = icmp eq i32 %6, 0, !dbg !3787
  br i1 %7, label %11, label %8, !dbg !3788

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3779, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3782, metadata !DIExpression()), !dbg !3789
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3791
  %10 = icmp eq i32 %9, 0, !dbg !3792
  br i1 %10, label %11, label %12, !dbg !3793

11:                                               ; preds = %8, %5
  br label %12, !dbg !3794

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3774
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3795
  ret i1 %13, !dbg !3795
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3796 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3800, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3801, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3802, metadata !DIExpression()), !dbg !3803
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3804
  ret i32 %4, !dbg !3805
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3810, metadata !DIExpression()), !dbg !3811
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3812
  ret ptr %2, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3814 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3818
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3819
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3817, metadata !DIExpression()), !dbg !3818
  ret ptr %2, !dbg !3820
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3821 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3823, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3825, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3831
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %4, metadata !3817, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3830
  %5 = icmp eq ptr %4, null, !dbg !3834
  br i1 %5, label %6, label %9, !dbg !3835

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3836
  br i1 %7, label %19, label %8, !dbg !3839

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3840, !tbaa !835
  br label %19, !dbg !3841

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3827, metadata !DIExpression()), !dbg !3843
  %11 = icmp ult i64 %10, %2, !dbg !3844
  br i1 %11, label %12, label %14, !dbg !3846

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3847
  call void @llvm.dbg.value(metadata ptr %1, metadata !3849, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %4, metadata !3852, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %13, metadata !3853, metadata !DIExpression()), !dbg !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3856
  br label %19, !dbg !3857

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3858
  br i1 %15, label %19, label %16, !dbg !3861

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3862
  call void @llvm.dbg.value(metadata ptr %1, metadata !3849, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata ptr %4, metadata !3852, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %17, metadata !3853, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3866
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3867
  store i8 0, ptr %18, align 1, !dbg !3868, !tbaa !835
  br label %19, !dbg !3869

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3870
  ret i32 %20, !dbg !3871
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

!llvm.dbg.cu = !{!59, !330, !334, !349, !652, !686, !405, !419, !470, !688, !644, !695, !730, !732, !734, !736, !738, !668, !740, !742, !744, !746}
!llvm.ident = !{!748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748, !748}
!llvm.module.flags = !{!749, !750, !751, !752, !753, !754, !755, !756}

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
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/printenv.o -MD -MP -MF src/.deps/printenv.Tpo -c src/printenv.c -o src/.printenv.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !86, globals: !96, splitDebugInlining: false, nameTableKind: None)
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
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 18, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !327, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !331, splitDebugInlining: false, nameTableKind: None)
!331 = !{!325, !328}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "file_name", scope: !334, file: !335, line: 45, type: !93, isLocal: true, isDefinition: true)
!334 = distinct !DICompileUnit(language: DW_LANG_C11, file: !335, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !336, splitDebugInlining: false, nameTableKind: None)
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
!348 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !349, file: !350, line: 66, type: !400, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C11, file: !350, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !351, globals: !352, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!351 = !{!88, !95}
!352 = !{!353, !355, !379, !381, !383, !385, !347, !387, !389, !391, !393, !398}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !350, line: 272, type: !114, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "old_file_name", scope: !357, file: !350, line: 304, type: !93, isLocal: true, isDefinition: true)
!357 = distinct !DISubprogram(name: "verror_at_line", scope: !350, file: !350, line: 298, type: !358, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !372)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !67, !67, !93, !62, !93, !360}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !361, line: 52, baseType: !362)
!361 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !363, line: 12, baseType: !364)
!363 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !350, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !366)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !365, file: !350, baseType: !88, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !365, file: !350, baseType: !88, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !365, file: !350, baseType: !88, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !365, file: !350, baseType: !67, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !365, file: !350, baseType: !67, size: 32, offset: 224)
!372 = !{!373, !374, !375, !376, !377, !378}
!373 = !DILocalVariable(name: "status", arg: 1, scope: !357, file: !350, line: 298, type: !67)
!374 = !DILocalVariable(name: "errnum", arg: 2, scope: !357, file: !350, line: 298, type: !67)
!375 = !DILocalVariable(name: "file_name", arg: 3, scope: !357, file: !350, line: 298, type: !93)
!376 = !DILocalVariable(name: "line_number", arg: 4, scope: !357, file: !350, line: 298, type: !62)
!377 = !DILocalVariable(name: "message", arg: 5, scope: !357, file: !350, line: 298, type: !93)
!378 = !DILocalVariable(name: "args", arg: 6, scope: !357, file: !350, line: 298, type: !360)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "old_line_number", scope: !357, file: !350, line: 305, type: !62, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !350, line: 338, type: !206, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !238, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !213, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "error_message_count", scope: !349, file: !350, line: 69, type: !62, isLocal: false, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !349, file: !350, line: 295, type: !67, isLocal: false, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !233, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 21)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !350, line: 214, type: !114, isLocal: true, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null}
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "program_name", scope: !405, file: !406, line: 31, type: !93, isLocal: false, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!407 = !{!88, !87}
!408 = !{!403, !409, !411}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 46, type: !238, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !406, line: 49, type: !206, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "utf07FF", scope: !415, file: !416, line: 46, type: !443, isLocal: true, isDefinition: true)
!415 = distinct !DISubprogram(name: "proper_name_lite", scope: !416, file: !416, line: 38, type: !417, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !421)
!416 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!417 = !DISubroutineType(types: !418)
!418 = !{!93, !93, !93}
!419 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !420, splitDebugInlining: false, nameTableKind: None)
!420 = !{!413}
!421 = !{!422, !423, !424, !425, !430}
!422 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !415, file: !416, line: 38, type: !93)
!423 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !415, file: !416, line: 38, type: !93)
!424 = !DILocalVariable(name: "translation", scope: !415, file: !416, line: 40, type: !93)
!425 = !DILocalVariable(name: "w", scope: !415, file: !416, line: 47, type: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !427, line: 37, baseType: !428)
!427 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !169, line: 57, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !62)
!430 = !DILocalVariable(name: "mbs", scope: !415, file: !416, line: 48, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !433)
!432 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !435)
!434 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !435, file: !434, line: 15, baseType: !67, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !435, file: !434, line: 20, baseType: !439, size: 32, offset: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !434, line: 16, size: 32, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !439, file: !434, line: 18, baseType: !62, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !439, file: !434, line: 19, baseType: !206, size: 32)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16, elements: !214)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !446, line: 78, type: !238, isLocal: true, isDefinition: true)
!446 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !446, line: 79, type: !54, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !446, line: 80, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 13)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !446, line: 81, type: !451, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !446, line: 82, type: !191, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !446, line: 83, type: !213, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !446, line: 84, type: !238, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !446, line: 85, type: !233, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !446, line: 86, type: !233, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !446, line: 87, type: !238, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !470, file: !446, line: 76, type: !556, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C11, file: !446, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !471, retainedTypes: !491, globals: !492, splitDebugInlining: false, nameTableKind: None)
!471 = !{!472, !486, !71}
!472 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !473, line: 42, baseType: !62, size: 32, elements: !474)
!473 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485}
!475 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!476 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!477 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!478 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!479 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!480 = !DIEnumerator(name: "c_quoting_style", value: 5)
!481 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!482 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!483 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!484 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!485 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !473, line: 254, baseType: !62, size: 32, elements: !487)
!487 = !{!488, !489, !490}
!488 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!489 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!490 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!491 = !{!88, !67, !89, !90}
!492 = !{!444, !447, !449, !454, !456, !458, !460, !462, !464, !466, !468, !493, !497, !507, !509, !514, !516, !518, !520, !522, !545, !552, !554}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !470, file: !446, line: 92, type: !495, isLocal: false, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 320, elements: !45)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !470, file: !446, line: 1040, type: !499, isLocal: false, isDefinition: true)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !446, line: 56, size: 448, elements: !500)
!500 = !{!501, !502, !503, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !499, file: !446, line: 59, baseType: !472, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !446, line: 62, baseType: !67, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !499, file: !446, line: 66, baseType: !504, size: 256, offset: 64)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !239)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !499, file: !446, line: 69, baseType: !93, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !499, file: !446, line: 72, baseType: !93, size: 64, offset: 384)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !470, file: !446, line: 107, type: !499, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "slot0", scope: !470, file: !446, line: 831, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 256)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !446, line: 321, type: !213, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !446, line: 357, type: !213, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !446, line: 358, type: !213, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !446, line: 199, type: !233, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "quote", scope: !524, file: !446, line: 228, type: !543, isLocal: true, isDefinition: true)
!524 = distinct !DISubprogram(name: "gettext_quote", scope: !446, file: !446, line: 197, type: !525, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!93, !93, !472}
!527 = !{!528, !529, !530, !531, !532}
!528 = !DILocalVariable(name: "msgid", arg: 1, scope: !524, file: !446, line: 197, type: !93)
!529 = !DILocalVariable(name: "s", arg: 2, scope: !524, file: !446, line: 197, type: !472)
!530 = !DILocalVariable(name: "translation", scope: !524, file: !446, line: 199, type: !93)
!531 = !DILocalVariable(name: "w", scope: !524, file: !446, line: 229, type: !426)
!532 = !DILocalVariable(name: "mbs", scope: !524, file: !446, line: 230, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !535, file: !434, line: 15, baseType: !67, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !535, file: !434, line: 20, baseType: !539, size: 32, offset: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !434, line: 16, size: 32, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !539, file: !434, line: 18, baseType: !62, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !539, file: !434, line: 19, baseType: !206, size: 32)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !544)
!544 = !{!215, !208}
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "slotvec", scope: !470, file: !446, line: 834, type: !547, isLocal: true, isDefinition: true)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !446, line: 823, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !548, file: !446, line: 825, baseType: !90, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !548, file: !446, line: 826, baseType: !87, size: 64, offset: 64)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "nslots", scope: !470, file: !446, line: 832, type: !67, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "slotvec0", scope: !470, file: !446, line: 833, type: !548, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 704, elements: !558)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!558 = !{!559}
!559 = !DISubrange(count: 11)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !562, line: 67, type: !306, isLocal: true, isDefinition: true)
!562 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !562, line: 69, type: !233, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !562, line: 83, type: !233, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !562, line: 83, type: !206, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !562, line: 85, type: !213, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !562, line: 88, type: !573, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 171)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !562, line: 88, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 34)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !562, line: 105, type: !104, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !562, line: 109, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 23)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !562, line: 113, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 28)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !562, line: 120, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 32)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !562, line: 127, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 36)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !562, line: 134, type: !257, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !562, line: 142, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 44)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !562, line: 150, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 48)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !562, line: 159, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 52)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !562, line: 170, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 60)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !562, line: 248, type: !191, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !562, line: 248, type: !282, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !562, line: 254, type: !191, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !562, line: 254, type: !99, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !562, line: 254, type: !257, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !562, line: 259, type: !3, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !562, line: 259, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 29)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !644, file: !645, line: 26, type: !647, isLocal: false, isDefinition: true)
!644 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !646, splitDebugInlining: false, nameTableKind: None)
!645 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!646 = !{!642}
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 47)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "exit_failure", scope: !652, file: !653, line: 24, type: !655, isLocal: false, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!654 = !{!650}
!655 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !658, line: 34, type: !222, isLocal: true, isDefinition: true)
!658 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !658, line: 34, type: !233, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !658, line: 34, type: !109, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !665, line: 108, type: !39, isLocal: true, isDefinition: true)
!665 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "internal_state", scope: !668, file: !665, line: 97, type: !671, isLocal: true, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !665, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !669, globals: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !{!88, !90, !95}
!670 = !{!663, !666}
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !673, file: !434, line: 15, baseType: !67, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !673, file: !434, line: 20, baseType: !677, size: 32, offset: 32)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !434, line: 16, size: 32, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !677, file: !434, line: 18, baseType: !62, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !677, file: !434, line: 19, baseType: !206, size: 32)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !683, line: 35, type: !213, isLocal: true, isDefinition: true)
!683 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !683, line: 35, type: !54, isLocal: true, isDefinition: true)
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!687 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !562, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !689, retainedTypes: !693, globals: !694, splitDebugInlining: false, nameTableKind: None)
!689 = !{!690}
!690 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !562, line: 40, baseType: !62, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!693 = !{!88}
!694 = !{!560, !563, !565, !567, !569, !571, !576, !581, !583, !588, !593, !598, !603, !605, !610, !615, !620, !625, !627, !629, !631, !633, !635, !637}
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !697, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!697 = !{!698, !710}
!698 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !699, file: !696, line: 188, baseType: !62, size: 32, elements: !708)
!699 = distinct !DISubprogram(name: "x2nrealloc", scope: !696, file: !696, line: 176, type: !700, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!88, !88, !702, !90}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!703 = !{!704, !705, !706, !707}
!704 = !DILocalVariable(name: "p", arg: 1, scope: !699, file: !696, line: 176, type: !88)
!705 = !DILocalVariable(name: "pn", arg: 2, scope: !699, file: !696, line: 176, type: !702)
!706 = !DILocalVariable(name: "s", arg: 3, scope: !699, file: !696, line: 176, type: !90)
!707 = !DILocalVariable(name: "n", scope: !699, file: !696, line: 178, type: !90)
!708 = !{!709}
!709 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!710 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !711, file: !696, line: 228, baseType: !62, size: 32, elements: !708)
!711 = distinct !DISubprogram(name: "xpalloc", scope: !696, file: !696, line: 223, type: !712, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !719)
!712 = !DISubroutineType(types: !713)
!713 = !{!88, !88, !714, !715, !717, !715}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !716, line: 130, baseType: !717)
!716 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !718, line: 18, baseType: !170)
!718 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728}
!720 = !DILocalVariable(name: "pa", arg: 1, scope: !711, file: !696, line: 223, type: !88)
!721 = !DILocalVariable(name: "pn", arg: 2, scope: !711, file: !696, line: 223, type: !714)
!722 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !711, file: !696, line: 223, type: !715)
!723 = !DILocalVariable(name: "n_max", arg: 4, scope: !711, file: !696, line: 223, type: !717)
!724 = !DILocalVariable(name: "s", arg: 5, scope: !711, file: !696, line: 223, type: !715)
!725 = !DILocalVariable(name: "n0", scope: !711, file: !696, line: 230, type: !715)
!726 = !DILocalVariable(name: "n", scope: !711, file: !696, line: 237, type: !715)
!727 = !DILocalVariable(name: "nbytes", scope: !711, file: !696, line: 248, type: !715)
!728 = !DILocalVariable(name: "adjusted_nbytes", scope: !711, file: !696, line: 252, type: !715)
!729 = !{!87, !88}
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !731, splitDebugInlining: false, nameTableKind: None)
!731 = !{!656, !659, !661}
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !693, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !693, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !693, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !743, splitDebugInlining: false, nameTableKind: None)
!743 = !{!681, !684}
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !693, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!748 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!749 = !{i32 7, !"Dwarf Version", i32 5}
!750 = !{i32 2, !"Debug Info Version", i32 3}
!751 = !{i32 1, !"wchar_size", i32 4}
!752 = !{i32 8, !"PIC Level", i32 2}
!753 = !{i32 7, !"PIE Level", i32 2}
!754 = !{i32 7, !"uwtable", i32 2}
!755 = !{i32 7, !"frame-pointer", i32 1}
!756 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!797 = !{}
!798 = !DILocation(line: 857, column: 3, scope: !779, inlinedAt: !796)
!799 = !DILocation(line: 861, column: 29, scope: !779, inlinedAt: !796)
!800 = !DILocation(line: 862, column: 7, scope: !801, inlinedAt: !796)
!801 = distinct !DILexicalBlock(scope: !779, file: !66, line: 862, column: 7)
!802 = !DILocation(line: 862, column: 19, scope: !801, inlinedAt: !796)
!803 = !DILocation(line: 862, column: 22, scope: !801, inlinedAt: !796)
!804 = !DILocation(line: 862, column: 7, scope: !779, inlinedAt: !796)
!805 = !DILocation(line: 868, column: 7, scope: !806, inlinedAt: !796)
!806 = distinct !DILexicalBlock(scope: !801, file: !66, line: 863, column: 5)
!807 = !DILocation(line: 870, column: 5, scope: !806, inlinedAt: !796)
!808 = !DILocation(line: 875, column: 3, scope: !779, inlinedAt: !796)
!809 = !DILocation(line: 877, column: 3, scope: !779, inlinedAt: !796)
!810 = !DILocation(line: 78, column: 3, scope: !757)
!811 = !DISubprogram(name: "dcgettext", scope: !812, file: !812, line: 51, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!813 = !DISubroutineType(types: !814)
!814 = !{!87, !93, !93, !67}
!815 = !DISubprogram(name: "__fprintf_chk", scope: !816, file: !816, line: 93, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!817 = !DISubroutineType(types: !818)
!818 = !{!67, !819, !67, !820, null}
!819 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!821 = !DISubprogram(name: "__printf_chk", scope: !816, file: !816, line: 95, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!938 = !DISubprogram(name: "setlocale", scope: !939, file: !939, line: 122, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!940 = !DISubroutineType(types: !941)
!941 = !{!87, !67, !93}
!942 = !DISubprogram(name: "strncmp", scope: !943, file: !943, line: 159, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!944 = !DISubroutineType(types: !945)
!945 = !{!67, !93, !93, !90}
!946 = !DISubprogram(name: "fputs_unlocked", scope: !361, file: !361, line: 691, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{!67, !820, !819}
!949 = !DISubprogram(name: "exit", scope: !950, file: !950, line: 624, type: !758, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!950 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!951 = !DISubprogram(name: "getenv", scope: !950, file: !950, line: 641, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubroutineType(types: !953)
!953 = !{!87, !93}
!954 = !DISubprogram(name: "strcmp", scope: !943, file: !943, line: 156, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{!67, !93, !93}
!957 = !DISubprogram(name: "strspn", scope: !943, file: !943, line: 297, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{!92, !93, !93}
!960 = !DISubprogram(name: "strchr", scope: !943, file: !943, line: 246, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubroutineType(types: !962)
!962 = !{!87, !93, !67}
!963 = !DISubprogram(name: "__ctype_b_loc", scope: !72, file: !72, line: 79, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!969 = !DISubprogram(name: "strcspn", scope: !943, file: !943, line: 293, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubprogram(name: "fwrite_unlocked", scope: !361, file: !361, line: 704, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1041 = !DILocation(line: 0, scope: !991)
!1042 = !DILocation(line: 148, column: 31, scope: !991)
!1043 = !DILocation(line: 148, column: 29, scope: !991)
!1044 = !DILocation(line: 148, column: 21, scope: !991)
!1045 = !DILocation(line: 151, column: 10, scope: !976)
!1046 = !DILocation(line: 0, scope: !993)
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
!1067 = !DILocation(line: 133, column: 15, scope: !1000)
!1068 = !DILocation(line: 133, column: 55, scope: !1000)
!1069 = !DILocation(line: 133, column: 64, scope: !1000)
!1070 = !DILocation(line: 133, column: 58, scope: !1000)
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
!1081 = distinct !{!1081, !1067, !1082, !873}
!1082 = !DILocation(line: 142, column: 17, scope: !1000)
!1083 = !DILocation(line: 129, column: 44, scope: !1001)
!1084 = distinct !{!1084, !1055, !1085, !873}
!1085 = !DILocation(line: 143, column: 13, scope: !998)
!1086 = !DILocation(line: 121, column: 38, scope: !996)
!1087 = !DILocation(line: 121, column: 30, scope: !996)
!1088 = distinct !{!1088, !1030, !1089, !873}
!1089 = !DILocation(line: 146, column: 9, scope: !993)
!1090 = !DILocation(line: 152, column: 1, scope: !976)
!1091 = !DISubprogram(name: "bindtextdomain", scope: !812, file: !812, line: 86, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!87, !93, !93}
!1094 = !DISubprogram(name: "textdomain", scope: !812, file: !812, line: 82, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubprogram(name: "atexit", scope: !950, file: !950, line: 602, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!67, !400}
!1098 = !DISubprogram(name: "getopt_long", scope: !318, file: !318, line: 66, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1120 = distinct !DISubprogram(name: "close_stdout", scope: !335, file: !335, line: 116, type: !401, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1121)
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
!1153 = !DISubprogram(name: "__errno_location", scope: !1154, file: !1154, line: 37, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!323}
!1157 = !DISubprogram(name: "_exit", scope: !1158, file: !1158, line: 624, type: !758, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1168 = !DILocation(line: 261, column: 3, scope: !1159)
!1169 = !DILocation(line: 265, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !350, line: 265, column: 7)
!1171 = !DILocation(line: 265, column: 7, scope: !1159)
!1172 = !DILocation(line: 266, column: 5, scope: !1170)
!1173 = !DILocation(line: 272, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !350, line: 268, column: 5)
!1175 = !DILocation(line: 276, column: 3, scope: !1159)
!1176 = !{i64 0, i64 8, !768, i64 8, i64 8, !768, i64 16, i64 8, !768, i64 24, i64 4, !826, i64 28, i64 4, !826}
!1177 = !DILocation(line: 282, column: 1, scope: !1159)
!1178 = distinct !DISubprogram(name: "flush_stdout", scope: !350, file: !350, line: 163, type: !401, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1179)
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "stdout_fd", scope: !1178, file: !350, line: 166, type: !67)
!1181 = !DILocation(line: 0, scope: !1178)
!1182 = !DILocalVariable(name: "fd", arg: 1, scope: !1183, file: !350, line: 145, type: !67)
!1183 = distinct !DISubprogram(name: "is_open", scope: !350, file: !350, line: 145, type: !1184, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!67, !67}
!1186 = !{!1182}
!1187 = !DILocation(line: 0, scope: !1183, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 182, column: 25, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1178, file: !350, line: 182, column: 7)
!1190 = !DILocation(line: 157, column: 15, scope: !1183, inlinedAt: !1188)
!1191 = !DILocation(line: 157, column: 12, scope: !1183, inlinedAt: !1188)
!1192 = !DILocation(line: 182, column: 7, scope: !1178)
!1193 = !DILocation(line: 184, column: 5, scope: !1189)
!1194 = !DILocation(line: 185, column: 1, scope: !1178)
!1195 = distinct !DISubprogram(name: "error_tail", scope: !350, file: !350, line: 219, type: !1160, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1196)
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "status", arg: 1, scope: !1195, file: !350, line: 219, type: !67)
!1198 = !DILocalVariable(name: "errnum", arg: 2, scope: !1195, file: !350, line: 219, type: !67)
!1199 = !DILocalVariable(name: "message", arg: 3, scope: !1195, file: !350, line: 219, type: !93)
!1200 = !DILocalVariable(name: "args", arg: 4, scope: !1195, file: !350, line: 219, type: !360)
!1201 = distinct !DIAssignID()
!1202 = !DILocation(line: 0, scope: !1195)
!1203 = !DILocation(line: 229, column: 13, scope: !1195)
!1204 = !DILocation(line: 135, column: 10, scope: !1205, inlinedAt: !1247)
!1205 = distinct !DISubprogram(name: "vfprintf", scope: !816, file: !816, line: 132, type: !1206, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1243)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!67, !1208, !820, !362}
!1208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1211, file: !146, line: 51, baseType: !67, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1211, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1211, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1211, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1211, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1211, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1211, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1211, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1211, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1211, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1211, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1211, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1211, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1211, file: !146, line: 70, baseType: !1227, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1211, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1211, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1211, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1211, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1211, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1211, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1211, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1211, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1211, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1211, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1211, file: !146, line: 93, baseType: !1227, size: 64, offset: 1344)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1211, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1211, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1211, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1211, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!1243 = !{!1244, !1245, !1246}
!1244 = !DILocalVariable(name: "__stream", arg: 1, scope: !1205, file: !816, line: 132, type: !1208)
!1245 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1205, file: !816, line: 133, type: !820)
!1246 = !DILocalVariable(name: "__ap", arg: 3, scope: !1205, file: !816, line: 133, type: !362)
!1247 = distinct !DILocation(line: 229, column: 3, scope: !1195)
!1248 = !{!1249, !1251}
!1249 = distinct !{!1249, !1250, !"vfprintf.inline: argument 0"}
!1250 = distinct !{!1250, !"vfprintf.inline"}
!1251 = distinct !{!1251, !1250, !"vfprintf.inline: argument 1"}
!1252 = !DILocation(line: 229, column: 3, scope: !1195)
!1253 = !DILocation(line: 0, scope: !1205, inlinedAt: !1247)
!1254 = !DILocation(line: 232, column: 3, scope: !1195)
!1255 = !DILocation(line: 233, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1195, file: !350, line: 233, column: 7)
!1257 = !DILocation(line: 233, column: 7, scope: !1195)
!1258 = !DILocalVariable(name: "errbuf", scope: !1259, file: !350, line: 193, type: !1263)
!1259 = distinct !DISubprogram(name: "print_errno_message", scope: !350, file: !350, line: 188, type: !758, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1260)
!1260 = !{!1261, !1262, !1258}
!1261 = !DILocalVariable(name: "errnum", arg: 1, scope: !1259, file: !350, line: 188, type: !67)
!1262 = !DILocalVariable(name: "s", scope: !1259, file: !350, line: 190, type: !93)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 1024)
!1266 = !DILocation(line: 0, scope: !1259, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 234, column: 5, scope: !1256)
!1268 = !DILocation(line: 193, column: 3, scope: !1259, inlinedAt: !1267)
!1269 = !DILocation(line: 195, column: 7, scope: !1259, inlinedAt: !1267)
!1270 = !DILocation(line: 207, column: 9, scope: !1271, inlinedAt: !1267)
!1271 = distinct !DILexicalBlock(scope: !1259, file: !350, line: 207, column: 7)
!1272 = !DILocation(line: 207, column: 7, scope: !1259, inlinedAt: !1267)
!1273 = !DILocation(line: 208, column: 9, scope: !1271, inlinedAt: !1267)
!1274 = !DILocation(line: 208, column: 5, scope: !1271, inlinedAt: !1267)
!1275 = !DILocation(line: 214, column: 3, scope: !1259, inlinedAt: !1267)
!1276 = !DILocation(line: 216, column: 1, scope: !1259, inlinedAt: !1267)
!1277 = !DILocation(line: 234, column: 5, scope: !1256)
!1278 = !DILocation(line: 238, column: 3, scope: !1195)
!1279 = !DILocalVariable(name: "__c", arg: 1, scope: !1280, file: !1281, line: 101, type: !67)
!1280 = distinct !DISubprogram(name: "putc_unlocked", scope: !1281, file: !1281, line: 101, type: !1282, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1284)
!1281 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!67, !67, !1209}
!1284 = !{!1279, !1285}
!1285 = !DILocalVariable(name: "__stream", arg: 2, scope: !1280, file: !1281, line: 101, type: !1209)
!1286 = !DILocation(line: 0, scope: !1280, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 238, column: 3, scope: !1195)
!1288 = !DILocation(line: 103, column: 10, scope: !1280, inlinedAt: !1287)
!1289 = !{!1290, !769, i64 40}
!1290 = !{!"_IO_FILE", !827, i64 0, !769, i64 8, !769, i64 16, !769, i64 24, !769, i64 32, !769, i64 40, !769, i64 48, !769, i64 56, !769, i64 64, !769, i64 72, !769, i64 80, !769, i64 88, !769, i64 96, !769, i64 104, !827, i64 112, !827, i64 116, !1291, i64 120, !868, i64 128, !770, i64 130, !770, i64 131, !769, i64 136, !1291, i64 144, !769, i64 152, !769, i64 160, !769, i64 168, !769, i64 176, !1291, i64 184, !827, i64 192, !770, i64 196}
!1291 = !{!"long", !770, i64 0}
!1292 = !{!1290, !769, i64 48}
!1293 = !{!"branch_weights", i32 2000, i32 1}
!1294 = !DILocation(line: 240, column: 3, scope: !1195)
!1295 = !DILocation(line: 241, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1195, file: !350, line: 241, column: 7)
!1297 = !DILocation(line: 241, column: 7, scope: !1195)
!1298 = !DILocation(line: 242, column: 5, scope: !1296)
!1299 = !DILocation(line: 243, column: 1, scope: !1195)
!1300 = !DISubprogram(name: "__vfprintf_chk", scope: !816, file: !816, line: 96, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!67, !1208, !67, !820, !362}
!1303 = !DISubprogram(name: "strerror_r", scope: !943, file: !943, line: 444, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!87, !67, !87, !90}
!1306 = !DISubprogram(name: "__overflow", scope: !361, file: !361, line: 886, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!67, !1209, !67}
!1309 = !DISubprogram(name: "fflush_unlocked", scope: !361, file: !361, line: 239, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!67, !1209}
!1312 = !DISubprogram(name: "fcntl", scope: !1313, file: !1313, line: 149, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!67, !67, !67, null}
!1316 = distinct !DISubprogram(name: "error", scope: !350, file: !350, line: 285, type: !1317, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !67, !67, !93, null}
!1319 = !{!1320, !1321, !1322, !1323}
!1320 = !DILocalVariable(name: "status", arg: 1, scope: !1316, file: !350, line: 285, type: !67)
!1321 = !DILocalVariable(name: "errnum", arg: 2, scope: !1316, file: !350, line: 285, type: !67)
!1322 = !DILocalVariable(name: "message", arg: 3, scope: !1316, file: !350, line: 285, type: !93)
!1323 = !DILocalVariable(name: "ap", scope: !1316, file: !350, line: 287, type: !360)
!1324 = distinct !DIAssignID()
!1325 = !DILocation(line: 0, scope: !1316)
!1326 = !DILocation(line: 287, column: 3, scope: !1316)
!1327 = !DILocation(line: 288, column: 3, scope: !1316)
!1328 = !DILocation(line: 289, column: 3, scope: !1316)
!1329 = !DILocation(line: 290, column: 3, scope: !1316)
!1330 = !DILocation(line: 291, column: 1, scope: !1316)
!1331 = !DILocation(line: 0, scope: !357)
!1332 = !DILocation(line: 302, column: 7, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !357, file: !350, line: 302, column: 7)
!1334 = !DILocation(line: 302, column: 7, scope: !357)
!1335 = !DILocation(line: 307, column: 11, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !350, line: 307, column: 11)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !350, line: 303, column: 5)
!1338 = !DILocation(line: 307, column: 27, scope: !1336)
!1339 = !DILocation(line: 308, column: 11, scope: !1336)
!1340 = !DILocation(line: 308, column: 28, scope: !1336)
!1341 = !DILocation(line: 308, column: 25, scope: !1336)
!1342 = !DILocation(line: 309, column: 15, scope: !1336)
!1343 = !DILocation(line: 309, column: 33, scope: !1336)
!1344 = !DILocation(line: 310, column: 19, scope: !1336)
!1345 = !DILocation(line: 311, column: 22, scope: !1336)
!1346 = !DILocation(line: 311, column: 56, scope: !1336)
!1347 = !DILocation(line: 307, column: 11, scope: !1337)
!1348 = !DILocation(line: 316, column: 21, scope: !1337)
!1349 = !DILocation(line: 317, column: 23, scope: !1337)
!1350 = !DILocation(line: 318, column: 5, scope: !1337)
!1351 = !DILocation(line: 327, column: 3, scope: !357)
!1352 = !DILocation(line: 331, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !357, file: !350, line: 331, column: 7)
!1354 = !DILocation(line: 331, column: 7, scope: !357)
!1355 = !DILocation(line: 332, column: 5, scope: !1353)
!1356 = !DILocation(line: 338, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !350, line: 334, column: 5)
!1358 = !DILocation(line: 346, column: 3, scope: !357)
!1359 = !DILocation(line: 350, column: 3, scope: !357)
!1360 = !DILocation(line: 356, column: 1, scope: !357)
!1361 = distinct !DISubprogram(name: "error_at_line", scope: !350, file: !350, line: 359, type: !1362, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1364)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !67, !67, !93, !62, !93, null}
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370}
!1365 = !DILocalVariable(name: "status", arg: 1, scope: !1361, file: !350, line: 359, type: !67)
!1366 = !DILocalVariable(name: "errnum", arg: 2, scope: !1361, file: !350, line: 359, type: !67)
!1367 = !DILocalVariable(name: "file_name", arg: 3, scope: !1361, file: !350, line: 359, type: !93)
!1368 = !DILocalVariable(name: "line_number", arg: 4, scope: !1361, file: !350, line: 360, type: !62)
!1369 = !DILocalVariable(name: "message", arg: 5, scope: !1361, file: !350, line: 360, type: !93)
!1370 = !DILocalVariable(name: "ap", scope: !1361, file: !350, line: 362, type: !360)
!1371 = distinct !DIAssignID()
!1372 = !DILocation(line: 0, scope: !1361)
!1373 = !DILocation(line: 362, column: 3, scope: !1361)
!1374 = !DILocation(line: 363, column: 3, scope: !1361)
!1375 = !DILocation(line: 364, column: 3, scope: !1361)
!1376 = !DILocation(line: 366, column: 3, scope: !1361)
!1377 = !DILocation(line: 367, column: 1, scope: !1361)
!1378 = distinct !DISubprogram(name: "getprogname", scope: !687, file: !687, line: 54, type: !1379, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!93}
!1381 = !DILocation(line: 58, column: 10, scope: !1378)
!1382 = !DILocation(line: 58, column: 3, scope: !1378)
!1383 = distinct !DISubprogram(name: "set_program_name", scope: !406, file: !406, line: 37, type: !780, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "argv0", arg: 1, scope: !1383, file: !406, line: 37, type: !93)
!1386 = !DILocalVariable(name: "slash", scope: !1383, file: !406, line: 44, type: !93)
!1387 = !DILocalVariable(name: "base", scope: !1383, file: !406, line: 45, type: !93)
!1388 = !DILocation(line: 0, scope: !1383)
!1389 = !DILocation(line: 44, column: 23, scope: !1383)
!1390 = !DILocation(line: 45, column: 22, scope: !1383)
!1391 = !DILocation(line: 46, column: 17, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !406, line: 46, column: 7)
!1393 = !DILocation(line: 46, column: 9, scope: !1392)
!1394 = !DILocation(line: 46, column: 25, scope: !1392)
!1395 = !DILocation(line: 46, column: 40, scope: !1392)
!1396 = !DILocalVariable(name: "__s1", arg: 1, scope: !1397, file: !839, line: 974, type: !974)
!1397 = distinct !DISubprogram(name: "memeq", scope: !839, file: !839, line: 974, type: !1398, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!129, !974, !974, !90}
!1400 = !{!1396, !1401, !1402}
!1401 = !DILocalVariable(name: "__s2", arg: 2, scope: !1397, file: !839, line: 974, type: !974)
!1402 = !DILocalVariable(name: "__n", arg: 3, scope: !1397, file: !839, line: 974, type: !90)
!1403 = !DILocation(line: 0, scope: !1397, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 46, column: 28, scope: !1392)
!1405 = !DILocation(line: 976, column: 11, scope: !1397, inlinedAt: !1404)
!1406 = !DILocation(line: 976, column: 10, scope: !1397, inlinedAt: !1404)
!1407 = !DILocation(line: 46, column: 7, scope: !1383)
!1408 = !DILocation(line: 49, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !406, line: 49, column: 11)
!1410 = distinct !DILexicalBlock(scope: !1392, file: !406, line: 47, column: 5)
!1411 = !DILocation(line: 49, column: 36, scope: !1409)
!1412 = !DILocation(line: 49, column: 11, scope: !1410)
!1413 = !DILocation(line: 65, column: 16, scope: !1383)
!1414 = !DILocation(line: 71, column: 27, scope: !1383)
!1415 = !DILocation(line: 74, column: 33, scope: !1383)
!1416 = !DILocation(line: 76, column: 1, scope: !1383)
!1417 = !DISubprogram(name: "strrchr", scope: !943, file: !943, line: 273, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = distinct !DIAssignID()
!1419 = !DILocation(line: 0, scope: !415)
!1420 = distinct !DIAssignID()
!1421 = !DILocation(line: 40, column: 29, scope: !415)
!1422 = !DILocation(line: 41, column: 19, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !415, file: !416, line: 41, column: 7)
!1424 = !DILocation(line: 41, column: 7, scope: !415)
!1425 = !DILocation(line: 47, column: 3, scope: !415)
!1426 = !DILocation(line: 48, column: 3, scope: !415)
!1427 = !DILocalVariable(name: "ps", arg: 1, scope: !1428, file: !1429, line: 1135, type: !1432)
!1428 = distinct !DISubprogram(name: "mbszero", scope: !1429, file: !1429, line: 1135, type: !1430, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1433)
!1429 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1433 = !{!1427}
!1434 = !DILocation(line: 0, scope: !1428, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 48, column: 18, scope: !415)
!1436 = !DILocalVariable(name: "__dest", arg: 1, scope: !1437, file: !1438, line: 57, type: !88)
!1437 = distinct !DISubprogram(name: "memset", scope: !1438, file: !1438, line: 57, type: !1439, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1441)
!1438 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!88, !88, !67, !90}
!1441 = !{!1436, !1442, !1443}
!1442 = !DILocalVariable(name: "__ch", arg: 2, scope: !1437, file: !1438, line: 57, type: !67)
!1443 = !DILocalVariable(name: "__len", arg: 3, scope: !1437, file: !1438, line: 57, type: !90)
!1444 = !DILocation(line: 0, scope: !1437, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 1137, column: 3, scope: !1428, inlinedAt: !1435)
!1446 = !DILocation(line: 59, column: 10, scope: !1437, inlinedAt: !1445)
!1447 = !DILocation(line: 49, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !415, file: !416, line: 49, column: 7)
!1449 = !DILocation(line: 49, column: 39, scope: !1448)
!1450 = !DILocation(line: 49, column: 44, scope: !1448)
!1451 = !DILocation(line: 54, column: 1, scope: !415)
!1452 = !DISubprogram(name: "mbrtoc32", scope: !427, file: !427, line: 57, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!90, !1455, !820, !90, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1432)
!1458 = distinct !DISubprogram(name: "clone_quoting_options", scope: !446, file: !446, line: 113, type: !1459, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1462)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1461, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1462 = !{!1463, !1464, !1465}
!1463 = !DILocalVariable(name: "o", arg: 1, scope: !1458, file: !446, line: 113, type: !1461)
!1464 = !DILocalVariable(name: "saved_errno", scope: !1458, file: !446, line: 115, type: !67)
!1465 = !DILocalVariable(name: "p", scope: !1458, file: !446, line: 116, type: !1461)
!1466 = !DILocation(line: 0, scope: !1458)
!1467 = !DILocation(line: 115, column: 21, scope: !1458)
!1468 = !DILocation(line: 116, column: 40, scope: !1458)
!1469 = !DILocation(line: 116, column: 31, scope: !1458)
!1470 = !DILocation(line: 118, column: 9, scope: !1458)
!1471 = !DILocation(line: 119, column: 3, scope: !1458)
!1472 = distinct !DISubprogram(name: "get_quoting_style", scope: !446, file: !446, line: 124, type: !1473, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1477)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!472, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "o", arg: 1, scope: !1472, file: !446, line: 124, type: !1475)
!1479 = !DILocation(line: 0, scope: !1472)
!1480 = !DILocation(line: 126, column: 11, scope: !1472)
!1481 = !DILocation(line: 126, column: 46, scope: !1472)
!1482 = !{!1483, !827, i64 0}
!1483 = !{!"quoting_options", !827, i64 0, !827, i64 4, !770, i64 8, !769, i64 40, !769, i64 48}
!1484 = !DILocation(line: 126, column: 3, scope: !1472)
!1485 = distinct !DISubprogram(name: "set_quoting_style", scope: !446, file: !446, line: 132, type: !1486, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1461, !472}
!1488 = !{!1489, !1490}
!1489 = !DILocalVariable(name: "o", arg: 1, scope: !1485, file: !446, line: 132, type: !1461)
!1490 = !DILocalVariable(name: "s", arg: 2, scope: !1485, file: !446, line: 132, type: !472)
!1491 = !DILocation(line: 0, scope: !1485)
!1492 = !DILocation(line: 134, column: 4, scope: !1485)
!1493 = !DILocation(line: 134, column: 45, scope: !1485)
!1494 = !DILocation(line: 135, column: 1, scope: !1485)
!1495 = distinct !DISubprogram(name: "set_char_quoting", scope: !446, file: !446, line: 143, type: !1496, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!67, !1461, !4, !67}
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1505, !1506}
!1499 = !DILocalVariable(name: "o", arg: 1, scope: !1495, file: !446, line: 143, type: !1461)
!1500 = !DILocalVariable(name: "c", arg: 2, scope: !1495, file: !446, line: 143, type: !4)
!1501 = !DILocalVariable(name: "i", arg: 3, scope: !1495, file: !446, line: 143, type: !67)
!1502 = !DILocalVariable(name: "uc", scope: !1495, file: !446, line: 145, type: !95)
!1503 = !DILocalVariable(name: "p", scope: !1495, file: !446, line: 146, type: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1505 = !DILocalVariable(name: "shift", scope: !1495, file: !446, line: 148, type: !67)
!1506 = !DILocalVariable(name: "r", scope: !1495, file: !446, line: 149, type: !62)
!1507 = !DILocation(line: 0, scope: !1495)
!1508 = !DILocation(line: 147, column: 6, scope: !1495)
!1509 = !DILocation(line: 147, column: 41, scope: !1495)
!1510 = !DILocation(line: 147, column: 62, scope: !1495)
!1511 = !DILocation(line: 147, column: 57, scope: !1495)
!1512 = !DILocation(line: 148, column: 15, scope: !1495)
!1513 = !DILocation(line: 149, column: 21, scope: !1495)
!1514 = !DILocation(line: 149, column: 24, scope: !1495)
!1515 = !DILocation(line: 149, column: 34, scope: !1495)
!1516 = !DILocation(line: 150, column: 19, scope: !1495)
!1517 = !DILocation(line: 150, column: 24, scope: !1495)
!1518 = !DILocation(line: 150, column: 6, scope: !1495)
!1519 = !DILocation(line: 151, column: 3, scope: !1495)
!1520 = distinct !DISubprogram(name: "set_quoting_flags", scope: !446, file: !446, line: 159, type: !1521, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!67, !1461, !67}
!1523 = !{!1524, !1525, !1526}
!1524 = !DILocalVariable(name: "o", arg: 1, scope: !1520, file: !446, line: 159, type: !1461)
!1525 = !DILocalVariable(name: "i", arg: 2, scope: !1520, file: !446, line: 159, type: !67)
!1526 = !DILocalVariable(name: "r", scope: !1520, file: !446, line: 163, type: !67)
!1527 = !DILocation(line: 0, scope: !1520)
!1528 = !DILocation(line: 161, column: 8, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1520, file: !446, line: 161, column: 7)
!1530 = !DILocation(line: 161, column: 7, scope: !1520)
!1531 = !DILocation(line: 163, column: 14, scope: !1520)
!1532 = !{!1483, !827, i64 4}
!1533 = !DILocation(line: 164, column: 12, scope: !1520)
!1534 = !DILocation(line: 165, column: 3, scope: !1520)
!1535 = distinct !DISubprogram(name: "set_custom_quoting", scope: !446, file: !446, line: 169, type: !1536, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1461, !93, !93}
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "o", arg: 1, scope: !1535, file: !446, line: 169, type: !1461)
!1540 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1535, file: !446, line: 170, type: !93)
!1541 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1535, file: !446, line: 170, type: !93)
!1542 = !DILocation(line: 0, scope: !1535)
!1543 = !DILocation(line: 172, column: 8, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1535, file: !446, line: 172, column: 7)
!1545 = !DILocation(line: 172, column: 7, scope: !1535)
!1546 = !DILocation(line: 174, column: 12, scope: !1535)
!1547 = !DILocation(line: 175, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1535, file: !446, line: 175, column: 7)
!1549 = !DILocation(line: 175, column: 19, scope: !1548)
!1550 = !DILocation(line: 176, column: 5, scope: !1548)
!1551 = !DILocation(line: 177, column: 6, scope: !1535)
!1552 = !DILocation(line: 177, column: 17, scope: !1535)
!1553 = !{!1483, !769, i64 40}
!1554 = !DILocation(line: 178, column: 6, scope: !1535)
!1555 = !DILocation(line: 178, column: 18, scope: !1535)
!1556 = !{!1483, !769, i64 48}
!1557 = !DILocation(line: 179, column: 1, scope: !1535)
!1558 = !DISubprogram(name: "abort", scope: !950, file: !950, line: 598, type: !401, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1559 = distinct !DISubprogram(name: "quotearg_buffer", scope: !446, file: !446, line: 774, type: !1560, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!90, !87, !90, !93, !90, !1475}
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1563 = !DILocalVariable(name: "buffer", arg: 1, scope: !1559, file: !446, line: 774, type: !87)
!1564 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1559, file: !446, line: 774, type: !90)
!1565 = !DILocalVariable(name: "arg", arg: 3, scope: !1559, file: !446, line: 775, type: !93)
!1566 = !DILocalVariable(name: "argsize", arg: 4, scope: !1559, file: !446, line: 775, type: !90)
!1567 = !DILocalVariable(name: "o", arg: 5, scope: !1559, file: !446, line: 776, type: !1475)
!1568 = !DILocalVariable(name: "p", scope: !1559, file: !446, line: 778, type: !1475)
!1569 = !DILocalVariable(name: "saved_errno", scope: !1559, file: !446, line: 779, type: !67)
!1570 = !DILocalVariable(name: "r", scope: !1559, file: !446, line: 780, type: !90)
!1571 = !DILocation(line: 0, scope: !1559)
!1572 = !DILocation(line: 778, column: 37, scope: !1559)
!1573 = !DILocation(line: 779, column: 21, scope: !1559)
!1574 = !DILocation(line: 781, column: 43, scope: !1559)
!1575 = !DILocation(line: 781, column: 53, scope: !1559)
!1576 = !DILocation(line: 781, column: 63, scope: !1559)
!1577 = !DILocation(line: 782, column: 43, scope: !1559)
!1578 = !DILocation(line: 782, column: 58, scope: !1559)
!1579 = !DILocation(line: 780, column: 14, scope: !1559)
!1580 = !DILocation(line: 783, column: 9, scope: !1559)
!1581 = !DILocation(line: 784, column: 3, scope: !1559)
!1582 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !446, file: !446, line: 251, type: !1583, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1587)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!90, !87, !90, !93, !90, !472, !67, !1585, !93, !93}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1613, !1615, !1618, !1619, !1620, !1621, !1624, !1625, !1627, !1628, !1631, !1635, !1636, !1644, !1647, !1648, !1649}
!1588 = !DILocalVariable(name: "buffer", arg: 1, scope: !1582, file: !446, line: 251, type: !87)
!1589 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1582, file: !446, line: 251, type: !90)
!1590 = !DILocalVariable(name: "arg", arg: 3, scope: !1582, file: !446, line: 252, type: !93)
!1591 = !DILocalVariable(name: "argsize", arg: 4, scope: !1582, file: !446, line: 252, type: !90)
!1592 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1582, file: !446, line: 253, type: !472)
!1593 = !DILocalVariable(name: "flags", arg: 6, scope: !1582, file: !446, line: 253, type: !67)
!1594 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1582, file: !446, line: 254, type: !1585)
!1595 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1582, file: !446, line: 255, type: !93)
!1596 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1582, file: !446, line: 256, type: !93)
!1597 = !DILocalVariable(name: "unibyte_locale", scope: !1582, file: !446, line: 258, type: !129)
!1598 = !DILocalVariable(name: "len", scope: !1582, file: !446, line: 260, type: !90)
!1599 = !DILocalVariable(name: "orig_buffersize", scope: !1582, file: !446, line: 261, type: !90)
!1600 = !DILocalVariable(name: "quote_string", scope: !1582, file: !446, line: 262, type: !93)
!1601 = !DILocalVariable(name: "quote_string_len", scope: !1582, file: !446, line: 263, type: !90)
!1602 = !DILocalVariable(name: "backslash_escapes", scope: !1582, file: !446, line: 264, type: !129)
!1603 = !DILocalVariable(name: "elide_outer_quotes", scope: !1582, file: !446, line: 265, type: !129)
!1604 = !DILocalVariable(name: "encountered_single_quote", scope: !1582, file: !446, line: 266, type: !129)
!1605 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1582, file: !446, line: 267, type: !129)
!1606 = !DILabel(scope: !1582, name: "process_input", file: !446, line: 308)
!1607 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1582, file: !446, line: 309, type: !129)
!1608 = !DILocalVariable(name: "lq", scope: !1609, file: !446, line: 361, type: !93)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !446, line: 361, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !446, line: 360, column: 13)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !446, line: 333, column: 7)
!1612 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 312, column: 5)
!1613 = !DILocalVariable(name: "i", scope: !1614, file: !446, line: 395, type: !90)
!1614 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 395, column: 3)
!1615 = !DILocalVariable(name: "is_right_quote", scope: !1616, file: !446, line: 397, type: !129)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 396, column: 5)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !446, line: 395, column: 3)
!1618 = !DILocalVariable(name: "escaping", scope: !1616, file: !446, line: 398, type: !129)
!1619 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1616, file: !446, line: 399, type: !129)
!1620 = !DILocalVariable(name: "c", scope: !1616, file: !446, line: 417, type: !95)
!1621 = !DILabel(scope: !1622, name: "c_and_shell_escape", file: !446, line: 502)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 478, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !446, line: 419, column: 9)
!1624 = !DILabel(scope: !1622, name: "c_escape", file: !446, line: 507)
!1625 = !DILocalVariable(name: "m", scope: !1626, file: !446, line: 598, type: !90)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 596, column: 11)
!1627 = !DILocalVariable(name: "printable", scope: !1626, file: !446, line: 600, type: !129)
!1628 = !DILocalVariable(name: "mbs", scope: !1629, file: !446, line: 609, type: !533)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !446, line: 608, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !446, line: 602, column: 17)
!1631 = !DILocalVariable(name: "w", scope: !1632, file: !446, line: 618, type: !426)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !446, line: 617, column: 19)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !446, line: 616, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !446, line: 616, column: 17)
!1635 = !DILocalVariable(name: "bytes", scope: !1632, file: !446, line: 619, type: !90)
!1636 = !DILocalVariable(name: "j", scope: !1637, file: !446, line: 648, type: !90)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !446, line: 648, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !446, line: 647, column: 27)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !446, line: 645, column: 29)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !446, line: 636, column: 23)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !446, line: 628, column: 30)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !446, line: 623, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1632, file: !446, line: 621, column: 25)
!1644 = !DILocalVariable(name: "ilim", scope: !1645, file: !446, line: 674, type: !90)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !446, line: 671, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1626, file: !446, line: 670, column: 17)
!1647 = !DILabel(scope: !1616, name: "store_escape", file: !446, line: 709)
!1648 = !DILabel(scope: !1616, name: "store_c", file: !446, line: 712)
!1649 = !DILabel(scope: !1582, name: "force_outer_quoting_style", file: !446, line: 753)
!1650 = distinct !DIAssignID()
!1651 = distinct !DIAssignID()
!1652 = distinct !DIAssignID()
!1653 = distinct !DIAssignID()
!1654 = distinct !DIAssignID()
!1655 = !DILocation(line: 0, scope: !1629)
!1656 = distinct !DIAssignID()
!1657 = !DILocation(line: 0, scope: !1632)
!1658 = !DILocation(line: 0, scope: !1582)
!1659 = !DILocation(line: 258, column: 25, scope: !1582)
!1660 = !DILocation(line: 258, column: 36, scope: !1582)
!1661 = !DILocation(line: 267, column: 3, scope: !1582)
!1662 = !DILocation(line: 261, column: 10, scope: !1582)
!1663 = !DILocation(line: 262, column: 15, scope: !1582)
!1664 = !DILocation(line: 263, column: 10, scope: !1582)
!1665 = !DILocation(line: 308, column: 2, scope: !1582)
!1666 = !DILocation(line: 311, column: 3, scope: !1582)
!1667 = !DILocation(line: 318, column: 11, scope: !1612)
!1668 = !DILocation(line: 319, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !446, line: 319, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !446, line: 319, column: 9)
!1671 = distinct !DILexicalBlock(scope: !1612, file: !446, line: 318, column: 11)
!1672 = !DILocation(line: 319, column: 9, scope: !1670)
!1673 = !DILocation(line: 0, scope: !524, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 357, column: 26, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !446, line: 335, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1611, file: !446, line: 334, column: 13)
!1677 = !DILocation(line: 199, column: 29, scope: !524, inlinedAt: !1674)
!1678 = !DILocation(line: 201, column: 19, scope: !1679, inlinedAt: !1674)
!1679 = distinct !DILexicalBlock(scope: !524, file: !446, line: 201, column: 7)
!1680 = !DILocation(line: 201, column: 7, scope: !524, inlinedAt: !1674)
!1681 = !DILocation(line: 229, column: 3, scope: !524, inlinedAt: !1674)
!1682 = !DILocation(line: 230, column: 3, scope: !524, inlinedAt: !1674)
!1683 = !DILocalVariable(name: "ps", arg: 1, scope: !1684, file: !1429, line: 1135, type: !1687)
!1684 = distinct !DISubprogram(name: "mbszero", scope: !1429, file: !1429, line: 1135, type: !1685, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1688)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!1688 = !{!1683}
!1689 = !DILocation(line: 0, scope: !1684, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 230, column: 18, scope: !524, inlinedAt: !1674)
!1691 = !DILocalVariable(name: "__dest", arg: 1, scope: !1692, file: !1438, line: 57, type: !88)
!1692 = distinct !DISubprogram(name: "memset", scope: !1438, file: !1438, line: 57, type: !1439, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1693)
!1693 = !{!1691, !1694, !1695}
!1694 = !DILocalVariable(name: "__ch", arg: 2, scope: !1692, file: !1438, line: 57, type: !67)
!1695 = !DILocalVariable(name: "__len", arg: 3, scope: !1692, file: !1438, line: 57, type: !90)
!1696 = !DILocation(line: 0, scope: !1692, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 1137, column: 3, scope: !1684, inlinedAt: !1690)
!1698 = !DILocation(line: 59, column: 10, scope: !1692, inlinedAt: !1697)
!1699 = !DILocation(line: 231, column: 7, scope: !1700, inlinedAt: !1674)
!1700 = distinct !DILexicalBlock(scope: !524, file: !446, line: 231, column: 7)
!1701 = !DILocation(line: 231, column: 40, scope: !1700, inlinedAt: !1674)
!1702 = !DILocation(line: 231, column: 45, scope: !1700, inlinedAt: !1674)
!1703 = !DILocation(line: 235, column: 1, scope: !524, inlinedAt: !1674)
!1704 = !DILocation(line: 0, scope: !524, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 358, column: 27, scope: !1675)
!1706 = !DILocation(line: 199, column: 29, scope: !524, inlinedAt: !1705)
!1707 = !DILocation(line: 201, column: 19, scope: !1679, inlinedAt: !1705)
!1708 = !DILocation(line: 201, column: 7, scope: !524, inlinedAt: !1705)
!1709 = !DILocation(line: 229, column: 3, scope: !524, inlinedAt: !1705)
!1710 = !DILocation(line: 230, column: 3, scope: !524, inlinedAt: !1705)
!1711 = !DILocation(line: 0, scope: !1684, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 230, column: 18, scope: !524, inlinedAt: !1705)
!1713 = !DILocation(line: 0, scope: !1692, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 1137, column: 3, scope: !1684, inlinedAt: !1712)
!1715 = !DILocation(line: 59, column: 10, scope: !1692, inlinedAt: !1714)
!1716 = !DILocation(line: 231, column: 7, scope: !1700, inlinedAt: !1705)
!1717 = !DILocation(line: 231, column: 40, scope: !1700, inlinedAt: !1705)
!1718 = !DILocation(line: 231, column: 45, scope: !1700, inlinedAt: !1705)
!1719 = !DILocation(line: 235, column: 1, scope: !524, inlinedAt: !1705)
!1720 = !DILocation(line: 360, column: 13, scope: !1611)
!1721 = !DILocation(line: 0, scope: !1609)
!1722 = !DILocation(line: 361, column: 45, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1609, file: !446, line: 361, column: 11)
!1724 = !DILocation(line: 361, column: 11, scope: !1609)
!1725 = !DILocation(line: 362, column: 13, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !446, line: 362, column: 13)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !446, line: 362, column: 13)
!1728 = !DILocation(line: 362, column: 13, scope: !1727)
!1729 = !DILocation(line: 361, column: 52, scope: !1723)
!1730 = distinct !{!1730, !1724, !1731, !873}
!1731 = !DILocation(line: 362, column: 13, scope: !1609)
!1732 = !DILocation(line: 365, column: 28, scope: !1611)
!1733 = !DILocation(line: 260, column: 10, scope: !1582)
!1734 = !DILocation(line: 367, column: 7, scope: !1612)
!1735 = !DILocation(line: 373, column: 7, scope: !1612)
!1736 = !DILocation(line: 381, column: 11, scope: !1612)
!1737 = !DILocation(line: 376, column: 11, scope: !1612)
!1738 = !DILocation(line: 382, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !446, line: 382, column: 9)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !446, line: 382, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1612, file: !446, line: 381, column: 11)
!1742 = !DILocation(line: 382, column: 9, scope: !1740)
!1743 = !DILocation(line: 389, column: 7, scope: !1612)
!1744 = !DILocation(line: 392, column: 7, scope: !1612)
!1745 = !DILocation(line: 0, scope: !1614)
!1746 = !DILocation(line: 395, column: 8, scope: !1614)
!1747 = !DILocation(line: 395, scope: !1614)
!1748 = !DILocation(line: 395, column: 34, scope: !1617)
!1749 = !DILocation(line: 395, column: 26, scope: !1617)
!1750 = !DILocation(line: 395, column: 48, scope: !1617)
!1751 = !DILocation(line: 395, column: 55, scope: !1617)
!1752 = !DILocation(line: 395, column: 3, scope: !1614)
!1753 = !DILocation(line: 395, column: 67, scope: !1617)
!1754 = !DILocation(line: 0, scope: !1616)
!1755 = !DILocation(line: 402, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1616, file: !446, line: 401, column: 11)
!1757 = !DILocation(line: 404, column: 17, scope: !1756)
!1758 = !DILocation(line: 405, column: 39, scope: !1756)
!1759 = !DILocation(line: 409, column: 32, scope: !1756)
!1760 = !DILocation(line: 405, column: 19, scope: !1756)
!1761 = !DILocation(line: 405, column: 15, scope: !1756)
!1762 = !DILocation(line: 410, column: 11, scope: !1756)
!1763 = !DILocation(line: 410, column: 25, scope: !1756)
!1764 = !DILocalVariable(name: "__s1", arg: 1, scope: !1765, file: !839, line: 974, type: !974)
!1765 = distinct !DISubprogram(name: "memeq", scope: !839, file: !839, line: 974, type: !1398, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1766)
!1766 = !{!1764, !1767, !1768}
!1767 = !DILocalVariable(name: "__s2", arg: 2, scope: !1765, file: !839, line: 974, type: !974)
!1768 = !DILocalVariable(name: "__n", arg: 3, scope: !1765, file: !839, line: 974, type: !90)
!1769 = !DILocation(line: 0, scope: !1765, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 410, column: 14, scope: !1756)
!1771 = !DILocation(line: 976, column: 11, scope: !1765, inlinedAt: !1770)
!1772 = !DILocation(line: 976, column: 10, scope: !1765, inlinedAt: !1770)
!1773 = !DILocation(line: 401, column: 11, scope: !1616)
!1774 = !DILocation(line: 417, column: 25, scope: !1616)
!1775 = !DILocation(line: 418, column: 7, scope: !1616)
!1776 = !DILocation(line: 421, column: 15, scope: !1623)
!1777 = !DILocation(line: 423, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !446, line: 423, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !446, line: 422, column: 13)
!1780 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 421, column: 15)
!1781 = !DILocation(line: 423, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !446, line: 423, column: 15)
!1783 = !DILocation(line: 423, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !446, line: 423, column: 15)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !446, line: 423, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !446, line: 423, column: 15)
!1787 = !DILocation(line: 423, column: 15, scope: !1785)
!1788 = !DILocation(line: 423, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !446, line: 423, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !446, line: 423, column: 15)
!1791 = !DILocation(line: 423, column: 15, scope: !1790)
!1792 = !DILocation(line: 423, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !446, line: 423, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1786, file: !446, line: 423, column: 15)
!1795 = !DILocation(line: 423, column: 15, scope: !1794)
!1796 = !DILocation(line: 423, column: 15, scope: !1786)
!1797 = !DILocation(line: 423, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !446, line: 423, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1778, file: !446, line: 423, column: 15)
!1800 = !DILocation(line: 423, column: 15, scope: !1799)
!1801 = !DILocation(line: 431, column: 19, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1779, file: !446, line: 430, column: 19)
!1803 = !DILocation(line: 431, column: 24, scope: !1802)
!1804 = !DILocation(line: 431, column: 28, scope: !1802)
!1805 = !DILocation(line: 431, column: 38, scope: !1802)
!1806 = !DILocation(line: 431, column: 48, scope: !1802)
!1807 = !DILocation(line: 431, column: 59, scope: !1802)
!1808 = !DILocation(line: 433, column: 19, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !446, line: 433, column: 19)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !446, line: 433, column: 19)
!1811 = distinct !DILexicalBlock(scope: !1802, file: !446, line: 432, column: 17)
!1812 = !DILocation(line: 433, column: 19, scope: !1810)
!1813 = !DILocation(line: 434, column: 19, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !446, line: 434, column: 19)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !446, line: 434, column: 19)
!1816 = !DILocation(line: 434, column: 19, scope: !1815)
!1817 = !DILocation(line: 435, column: 17, scope: !1811)
!1818 = !DILocation(line: 442, column: 20, scope: !1780)
!1819 = !DILocation(line: 447, column: 11, scope: !1623)
!1820 = !DILocation(line: 450, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 448, column: 13)
!1822 = !DILocation(line: 456, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1821, file: !446, line: 455, column: 19)
!1824 = !DILocation(line: 456, column: 24, scope: !1823)
!1825 = !DILocation(line: 456, column: 28, scope: !1823)
!1826 = !DILocation(line: 456, column: 38, scope: !1823)
!1827 = !DILocation(line: 456, column: 41, scope: !1823)
!1828 = !DILocation(line: 456, column: 52, scope: !1823)
!1829 = !DILocation(line: 455, column: 19, scope: !1821)
!1830 = !DILocation(line: 457, column: 25, scope: !1823)
!1831 = !DILocation(line: 457, column: 17, scope: !1823)
!1832 = !DILocation(line: 464, column: 25, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1823, file: !446, line: 458, column: 19)
!1834 = !DILocation(line: 468, column: 21, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !446, line: 468, column: 21)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !446, line: 468, column: 21)
!1837 = !DILocation(line: 468, column: 21, scope: !1836)
!1838 = !DILocation(line: 469, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !446, line: 469, column: 21)
!1840 = distinct !DILexicalBlock(scope: !1833, file: !446, line: 469, column: 21)
!1841 = !DILocation(line: 469, column: 21, scope: !1840)
!1842 = !DILocation(line: 470, column: 21, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !446, line: 470, column: 21)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !446, line: 470, column: 21)
!1845 = !DILocation(line: 470, column: 21, scope: !1844)
!1846 = !DILocation(line: 471, column: 21, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !446, line: 471, column: 21)
!1848 = distinct !DILexicalBlock(scope: !1833, file: !446, line: 471, column: 21)
!1849 = !DILocation(line: 471, column: 21, scope: !1848)
!1850 = !DILocation(line: 472, column: 21, scope: !1833)
!1851 = !DILocation(line: 482, column: 33, scope: !1622)
!1852 = !DILocation(line: 483, column: 33, scope: !1622)
!1853 = !DILocation(line: 485, column: 33, scope: !1622)
!1854 = !DILocation(line: 486, column: 33, scope: !1622)
!1855 = !DILocation(line: 487, column: 33, scope: !1622)
!1856 = !DILocation(line: 490, column: 17, scope: !1622)
!1857 = !DILocation(line: 492, column: 21, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !446, line: 491, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1622, file: !446, line: 490, column: 17)
!1860 = !DILocation(line: 499, column: 35, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1622, file: !446, line: 499, column: 17)
!1862 = !DILocation(line: 0, scope: !1622)
!1863 = !DILocation(line: 502, column: 11, scope: !1622)
!1864 = !DILocation(line: 504, column: 17, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1622, file: !446, line: 503, column: 17)
!1866 = !DILocation(line: 507, column: 11, scope: !1622)
!1867 = !DILocation(line: 508, column: 17, scope: !1622)
!1868 = !DILocation(line: 517, column: 15, scope: !1623)
!1869 = !DILocation(line: 517, column: 40, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 517, column: 15)
!1871 = !DILocation(line: 517, column: 47, scope: !1870)
!1872 = !DILocation(line: 517, column: 18, scope: !1870)
!1873 = !DILocation(line: 521, column: 17, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 521, column: 15)
!1875 = !DILocation(line: 521, column: 15, scope: !1623)
!1876 = !DILocation(line: 525, column: 11, scope: !1623)
!1877 = !DILocation(line: 537, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 536, column: 15)
!1879 = !DILocation(line: 536, column: 15, scope: !1623)
!1880 = !DILocation(line: 544, column: 15, scope: !1623)
!1881 = !DILocation(line: 546, column: 19, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !446, line: 545, column: 13)
!1883 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 544, column: 15)
!1884 = !DILocation(line: 549, column: 19, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !446, line: 549, column: 19)
!1886 = !DILocation(line: 549, column: 30, scope: !1885)
!1887 = !DILocation(line: 558, column: 15, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !446, line: 558, column: 15)
!1889 = distinct !DILexicalBlock(scope: !1882, file: !446, line: 558, column: 15)
!1890 = !DILocation(line: 558, column: 15, scope: !1889)
!1891 = !DILocation(line: 559, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !446, line: 559, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1882, file: !446, line: 559, column: 15)
!1894 = !DILocation(line: 559, column: 15, scope: !1893)
!1895 = !DILocation(line: 560, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !446, line: 560, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1882, file: !446, line: 560, column: 15)
!1898 = !DILocation(line: 560, column: 15, scope: !1897)
!1899 = !DILocation(line: 562, column: 13, scope: !1882)
!1900 = !DILocation(line: 602, column: 17, scope: !1626)
!1901 = !DILocation(line: 0, scope: !1626)
!1902 = !DILocation(line: 605, column: 29, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1630, file: !446, line: 603, column: 15)
!1904 = !DILocation(line: 605, column: 41, scope: !1903)
!1905 = !DILocation(line: 606, column: 15, scope: !1903)
!1906 = !DILocation(line: 609, column: 17, scope: !1629)
!1907 = !DILocation(line: 0, scope: !1684, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 609, column: 32, scope: !1629)
!1909 = !DILocation(line: 0, scope: !1692, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 1137, column: 3, scope: !1684, inlinedAt: !1908)
!1911 = !DILocation(line: 59, column: 10, scope: !1692, inlinedAt: !1910)
!1912 = !DILocation(line: 613, column: 29, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1629, file: !446, line: 613, column: 21)
!1914 = !DILocation(line: 613, column: 21, scope: !1629)
!1915 = !DILocation(line: 614, column: 29, scope: !1913)
!1916 = !DILocation(line: 614, column: 19, scope: !1913)
!1917 = !DILocation(line: 618, column: 21, scope: !1632)
!1918 = !DILocation(line: 620, column: 54, scope: !1632)
!1919 = !DILocation(line: 619, column: 36, scope: !1632)
!1920 = !DILocation(line: 621, column: 25, scope: !1632)
!1921 = !DILocation(line: 631, column: 38, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1641, file: !446, line: 629, column: 23)
!1923 = !DILocation(line: 631, column: 48, scope: !1922)
!1924 = !DILocation(line: 631, column: 25, scope: !1922)
!1925 = !DILocation(line: 626, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1642, file: !446, line: 624, column: 23)
!1927 = !DILocation(line: 631, column: 51, scope: !1922)
!1928 = !DILocation(line: 632, column: 28, scope: !1922)
!1929 = !DILocation(line: 631, column: 34, scope: !1922)
!1930 = distinct !{!1930, !1924, !1928, !873}
!1931 = !DILocation(line: 0, scope: !1637)
!1932 = !DILocation(line: 646, column: 29, scope: !1639)
!1933 = !DILocation(line: 648, column: 29, scope: !1637)
!1934 = !DILocation(line: 649, column: 39, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1637, file: !446, line: 648, column: 29)
!1936 = !DILocation(line: 649, column: 31, scope: !1935)
!1937 = !DILocation(line: 648, column: 60, scope: !1935)
!1938 = !DILocation(line: 648, column: 50, scope: !1935)
!1939 = distinct !{!1939, !1933, !1940, !873}
!1940 = !DILocation(line: 654, column: 33, scope: !1637)
!1941 = !DILocation(line: 657, column: 43, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1640, file: !446, line: 657, column: 29)
!1943 = !DILocalVariable(name: "wc", arg: 1, scope: !1944, file: !1945, line: 865, type: !1948)
!1944 = distinct !DISubprogram(name: "c32isprint", scope: !1945, file: !1945, line: 865, type: !1946, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1950)
!1945 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!67, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1949, line: 20, baseType: !62)
!1949 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1950 = !{!1943}
!1951 = !DILocation(line: 0, scope: !1944, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 657, column: 31, scope: !1942)
!1953 = !DILocation(line: 871, column: 10, scope: !1944, inlinedAt: !1952)
!1954 = !DILocation(line: 657, column: 31, scope: !1942)
!1955 = !DILocation(line: 664, column: 23, scope: !1632)
!1956 = !DILocation(line: 665, column: 19, scope: !1633)
!1957 = !DILocation(line: 666, column: 15, scope: !1630)
!1958 = !DILocation(line: 753, column: 2, scope: !1582)
!1959 = !DILocation(line: 756, column: 51, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 756, column: 7)
!1961 = !DILocation(line: 0, scope: !1630)
!1962 = !DILocation(line: 670, column: 19, scope: !1646)
!1963 = !DILocation(line: 670, column: 23, scope: !1646)
!1964 = !DILocation(line: 674, column: 33, scope: !1645)
!1965 = !DILocation(line: 0, scope: !1645)
!1966 = !DILocation(line: 676, column: 17, scope: !1645)
!1967 = !DILocation(line: 678, column: 43, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !446, line: 678, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !446, line: 677, column: 19)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !446, line: 676, column: 17)
!1971 = distinct !DILexicalBlock(scope: !1645, file: !446, line: 676, column: 17)
!1972 = !DILocation(line: 680, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !446, line: 680, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1968, file: !446, line: 679, column: 23)
!1975 = !DILocation(line: 680, column: 25, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !446, line: 680, column: 25)
!1977 = !DILocation(line: 680, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 680, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 680, column: 25)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !446, line: 680, column: 25)
!1981 = !DILocation(line: 680, column: 25, scope: !1979)
!1982 = !DILocation(line: 680, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !446, line: 680, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 680, column: 25)
!1985 = !DILocation(line: 680, column: 25, scope: !1984)
!1986 = !DILocation(line: 680, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !446, line: 680, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 680, column: 25)
!1989 = !DILocation(line: 680, column: 25, scope: !1988)
!1990 = !DILocation(line: 680, column: 25, scope: !1980)
!1991 = !DILocation(line: 680, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !446, line: 680, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1973, file: !446, line: 680, column: 25)
!1994 = !DILocation(line: 680, column: 25, scope: !1993)
!1995 = !DILocation(line: 681, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !446, line: 681, column: 25)
!1997 = distinct !DILexicalBlock(scope: !1974, file: !446, line: 681, column: 25)
!1998 = !DILocation(line: 681, column: 25, scope: !1997)
!1999 = !DILocation(line: 682, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !446, line: 682, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1974, file: !446, line: 682, column: 25)
!2002 = !DILocation(line: 682, column: 25, scope: !2001)
!2003 = !DILocation(line: 683, column: 38, scope: !1974)
!2004 = !DILocation(line: 683, column: 33, scope: !1974)
!2005 = !DILocation(line: 684, column: 23, scope: !1974)
!2006 = !DILocation(line: 685, column: 30, scope: !1968)
!2007 = !DILocation(line: 687, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !446, line: 687, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !446, line: 687, column: 25)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !446, line: 686, column: 23)
!2011 = distinct !DILexicalBlock(scope: !1968, file: !446, line: 685, column: 30)
!2012 = !DILocation(line: 687, column: 25, scope: !2009)
!2013 = !DILocation(line: 689, column: 23, scope: !2010)
!2014 = !DILocation(line: 690, column: 35, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1969, file: !446, line: 690, column: 25)
!2016 = !DILocation(line: 690, column: 30, scope: !2015)
!2017 = !DILocation(line: 690, column: 25, scope: !1969)
!2018 = !DILocation(line: 692, column: 21, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !446, line: 692, column: 21)
!2020 = distinct !DILexicalBlock(scope: !1969, file: !446, line: 692, column: 21)
!2021 = !DILocation(line: 692, column: 21, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !446, line: 692, column: 21)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !446, line: 692, column: 21)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !446, line: 692, column: 21)
!2025 = !DILocation(line: 692, column: 21, scope: !2023)
!2026 = !DILocation(line: 692, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !446, line: 692, column: 21)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !446, line: 692, column: 21)
!2029 = !DILocation(line: 692, column: 21, scope: !2028)
!2030 = !DILocation(line: 692, column: 21, scope: !2024)
!2031 = !DILocation(line: 0, scope: !1969)
!2032 = !DILocation(line: 693, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !446, line: 693, column: 21)
!2034 = distinct !DILexicalBlock(scope: !1969, file: !446, line: 693, column: 21)
!2035 = !DILocation(line: 693, column: 21, scope: !2034)
!2036 = !DILocation(line: 694, column: 25, scope: !1969)
!2037 = !DILocation(line: 676, column: 17, scope: !1970)
!2038 = distinct !{!2038, !2039, !2040}
!2039 = !DILocation(line: 676, column: 17, scope: !1971)
!2040 = !DILocation(line: 695, column: 19, scope: !1971)
!2041 = !DILocation(line: 409, column: 30, scope: !1756)
!2042 = !DILocation(line: 702, column: 34, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1616, file: !446, line: 702, column: 11)
!2044 = !DILocation(line: 704, column: 14, scope: !2043)
!2045 = !DILocation(line: 705, column: 14, scope: !2043)
!2046 = !DILocation(line: 705, column: 35, scope: !2043)
!2047 = !DILocation(line: 705, column: 17, scope: !2043)
!2048 = !DILocation(line: 705, column: 47, scope: !2043)
!2049 = !DILocation(line: 705, column: 65, scope: !2043)
!2050 = !DILocation(line: 706, column: 11, scope: !2043)
!2051 = !DILocation(line: 702, column: 11, scope: !1616)
!2052 = !DILocation(line: 395, column: 15, scope: !1614)
!2053 = !DILocation(line: 709, column: 5, scope: !1616)
!2054 = !DILocation(line: 710, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1616, file: !446, line: 710, column: 7)
!2056 = !DILocation(line: 710, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2055, file: !446, line: 710, column: 7)
!2058 = !DILocation(line: 710, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !446, line: 710, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !446, line: 710, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !446, line: 710, column: 7)
!2062 = !DILocation(line: 710, column: 7, scope: !2060)
!2063 = !DILocation(line: 710, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !446, line: 710, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !446, line: 710, column: 7)
!2066 = !DILocation(line: 710, column: 7, scope: !2065)
!2067 = !DILocation(line: 710, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !446, line: 710, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !446, line: 710, column: 7)
!2070 = !DILocation(line: 710, column: 7, scope: !2069)
!2071 = !DILocation(line: 710, column: 7, scope: !2061)
!2072 = !DILocation(line: 710, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !446, line: 710, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2055, file: !446, line: 710, column: 7)
!2075 = !DILocation(line: 710, column: 7, scope: !2074)
!2076 = !DILocation(line: 712, column: 5, scope: !1616)
!2077 = !DILocation(line: 713, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !446, line: 713, column: 7)
!2079 = distinct !DILexicalBlock(scope: !1616, file: !446, line: 713, column: 7)
!2080 = !DILocation(line: 417, column: 21, scope: !1616)
!2081 = !DILocation(line: 713, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !446, line: 713, column: 7)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !446, line: 713, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2078, file: !446, line: 713, column: 7)
!2085 = !DILocation(line: 713, column: 7, scope: !2083)
!2086 = !DILocation(line: 713, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !446, line: 713, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !446, line: 713, column: 7)
!2089 = !DILocation(line: 713, column: 7, scope: !2088)
!2090 = !DILocation(line: 713, column: 7, scope: !2084)
!2091 = !DILocation(line: 714, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !446, line: 714, column: 7)
!2093 = distinct !DILexicalBlock(scope: !1616, file: !446, line: 714, column: 7)
!2094 = !DILocation(line: 714, column: 7, scope: !2093)
!2095 = !DILocation(line: 716, column: 11, scope: !1616)
!2096 = !DILocation(line: 718, column: 5, scope: !1617)
!2097 = !DILocation(line: 395, column: 82, scope: !1617)
!2098 = !DILocation(line: 395, column: 3, scope: !1617)
!2099 = distinct !{!2099, !1752, !2100, !873}
!2100 = !DILocation(line: 718, column: 5, scope: !1614)
!2101 = !DILocation(line: 720, column: 11, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 720, column: 7)
!2103 = !DILocation(line: 720, column: 16, scope: !2102)
!2104 = !DILocation(line: 728, column: 51, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 728, column: 7)
!2106 = !DILocation(line: 731, column: 11, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2105, file: !446, line: 730, column: 5)
!2108 = !DILocation(line: 732, column: 16, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2107, file: !446, line: 731, column: 11)
!2110 = !DILocation(line: 732, column: 9, scope: !2109)
!2111 = !DILocation(line: 736, column: 18, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !446, line: 736, column: 16)
!2113 = !DILocation(line: 736, column: 29, scope: !2112)
!2114 = !DILocation(line: 745, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 745, column: 7)
!2116 = !DILocation(line: 745, column: 20, scope: !2115)
!2117 = !DILocation(line: 746, column: 12, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !446, line: 746, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !446, line: 746, column: 5)
!2120 = !DILocation(line: 746, column: 5, scope: !2119)
!2121 = !DILocation(line: 747, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !446, line: 747, column: 7)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !446, line: 747, column: 7)
!2124 = !DILocation(line: 747, column: 7, scope: !2123)
!2125 = !DILocation(line: 746, column: 39, scope: !2118)
!2126 = distinct !{!2126, !2120, !2127, !873}
!2127 = !DILocation(line: 747, column: 7, scope: !2119)
!2128 = !DILocation(line: 749, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1582, file: !446, line: 749, column: 7)
!2130 = !DILocation(line: 749, column: 7, scope: !1582)
!2131 = !DILocation(line: 750, column: 5, scope: !2129)
!2132 = !DILocation(line: 750, column: 17, scope: !2129)
!2133 = !DILocation(line: 756, column: 21, scope: !1960)
!2134 = !DILocation(line: 760, column: 42, scope: !1582)
!2135 = !DILocation(line: 758, column: 10, scope: !1582)
!2136 = !DILocation(line: 758, column: 3, scope: !1582)
!2137 = !DILocation(line: 762, column: 1, scope: !1582)
!2138 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !950, file: !950, line: 98, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!90}
!2141 = !DISubprogram(name: "strlen", scope: !943, file: !943, line: 407, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!92, !93}
!2144 = !DISubprogram(name: "iswprint", scope: !2145, file: !2145, line: 120, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2145 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2146 = distinct !DISubprogram(name: "quotearg_alloc", scope: !446, file: !446, line: 788, type: !2147, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!87, !93, !90, !1475}
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "arg", arg: 1, scope: !2146, file: !446, line: 788, type: !93)
!2151 = !DILocalVariable(name: "argsize", arg: 2, scope: !2146, file: !446, line: 788, type: !90)
!2152 = !DILocalVariable(name: "o", arg: 3, scope: !2146, file: !446, line: 789, type: !1475)
!2153 = !DILocation(line: 0, scope: !2146)
!2154 = !DILocalVariable(name: "arg", arg: 1, scope: !2155, file: !446, line: 801, type: !93)
!2155 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !446, file: !446, line: 801, type: !2156, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!87, !93, !90, !702, !1475}
!2158 = !{!2154, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!2159 = !DILocalVariable(name: "argsize", arg: 2, scope: !2155, file: !446, line: 801, type: !90)
!2160 = !DILocalVariable(name: "size", arg: 3, scope: !2155, file: !446, line: 801, type: !702)
!2161 = !DILocalVariable(name: "o", arg: 4, scope: !2155, file: !446, line: 802, type: !1475)
!2162 = !DILocalVariable(name: "p", scope: !2155, file: !446, line: 804, type: !1475)
!2163 = !DILocalVariable(name: "saved_errno", scope: !2155, file: !446, line: 805, type: !67)
!2164 = !DILocalVariable(name: "flags", scope: !2155, file: !446, line: 807, type: !67)
!2165 = !DILocalVariable(name: "bufsize", scope: !2155, file: !446, line: 808, type: !90)
!2166 = !DILocalVariable(name: "buf", scope: !2155, file: !446, line: 812, type: !87)
!2167 = !DILocation(line: 0, scope: !2155, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 791, column: 10, scope: !2146)
!2169 = !DILocation(line: 804, column: 37, scope: !2155, inlinedAt: !2168)
!2170 = !DILocation(line: 805, column: 21, scope: !2155, inlinedAt: !2168)
!2171 = !DILocation(line: 807, column: 18, scope: !2155, inlinedAt: !2168)
!2172 = !DILocation(line: 807, column: 24, scope: !2155, inlinedAt: !2168)
!2173 = !DILocation(line: 808, column: 72, scope: !2155, inlinedAt: !2168)
!2174 = !DILocation(line: 809, column: 56, scope: !2155, inlinedAt: !2168)
!2175 = !DILocation(line: 810, column: 49, scope: !2155, inlinedAt: !2168)
!2176 = !DILocation(line: 811, column: 49, scope: !2155, inlinedAt: !2168)
!2177 = !DILocation(line: 808, column: 20, scope: !2155, inlinedAt: !2168)
!2178 = !DILocation(line: 811, column: 62, scope: !2155, inlinedAt: !2168)
!2179 = !DILocation(line: 812, column: 15, scope: !2155, inlinedAt: !2168)
!2180 = !DILocation(line: 813, column: 60, scope: !2155, inlinedAt: !2168)
!2181 = !DILocation(line: 815, column: 32, scope: !2155, inlinedAt: !2168)
!2182 = !DILocation(line: 815, column: 47, scope: !2155, inlinedAt: !2168)
!2183 = !DILocation(line: 813, column: 3, scope: !2155, inlinedAt: !2168)
!2184 = !DILocation(line: 816, column: 9, scope: !2155, inlinedAt: !2168)
!2185 = !DILocation(line: 791, column: 3, scope: !2146)
!2186 = !DILocation(line: 0, scope: !2155)
!2187 = !DILocation(line: 804, column: 37, scope: !2155)
!2188 = !DILocation(line: 805, column: 21, scope: !2155)
!2189 = !DILocation(line: 807, column: 18, scope: !2155)
!2190 = !DILocation(line: 807, column: 27, scope: !2155)
!2191 = !DILocation(line: 807, column: 24, scope: !2155)
!2192 = !DILocation(line: 808, column: 72, scope: !2155)
!2193 = !DILocation(line: 809, column: 56, scope: !2155)
!2194 = !DILocation(line: 810, column: 49, scope: !2155)
!2195 = !DILocation(line: 811, column: 49, scope: !2155)
!2196 = !DILocation(line: 808, column: 20, scope: !2155)
!2197 = !DILocation(line: 811, column: 62, scope: !2155)
!2198 = !DILocation(line: 812, column: 15, scope: !2155)
!2199 = !DILocation(line: 813, column: 60, scope: !2155)
!2200 = !DILocation(line: 815, column: 32, scope: !2155)
!2201 = !DILocation(line: 815, column: 47, scope: !2155)
!2202 = !DILocation(line: 813, column: 3, scope: !2155)
!2203 = !DILocation(line: 816, column: 9, scope: !2155)
!2204 = !DILocation(line: 817, column: 7, scope: !2155)
!2205 = !DILocation(line: 818, column: 11, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2155, file: !446, line: 817, column: 7)
!2207 = !{!1291, !1291, i64 0}
!2208 = !DILocation(line: 818, column: 5, scope: !2206)
!2209 = !DILocation(line: 819, column: 3, scope: !2155)
!2210 = distinct !DISubprogram(name: "quotearg_free", scope: !446, file: !446, line: 837, type: !401, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2211)
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "sv", scope: !2210, file: !446, line: 839, type: !547)
!2213 = !DILocalVariable(name: "i", scope: !2214, file: !446, line: 840, type: !67)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !446, line: 840, column: 3)
!2215 = !DILocation(line: 839, column: 24, scope: !2210)
!2216 = !DILocation(line: 0, scope: !2210)
!2217 = !DILocation(line: 0, scope: !2214)
!2218 = !DILocation(line: 840, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2214, file: !446, line: 840, column: 3)
!2220 = !DILocation(line: 840, column: 3, scope: !2214)
!2221 = !DILocation(line: 842, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2210, file: !446, line: 842, column: 7)
!2223 = !{!2224, !769, i64 8}
!2224 = !{!"slotvec", !1291, i64 0, !769, i64 8}
!2225 = !DILocation(line: 842, column: 17, scope: !2222)
!2226 = !DILocation(line: 842, column: 7, scope: !2210)
!2227 = !DILocation(line: 841, column: 17, scope: !2219)
!2228 = !DILocation(line: 841, column: 5, scope: !2219)
!2229 = !DILocation(line: 840, column: 32, scope: !2219)
!2230 = distinct !{!2230, !2220, !2231, !873}
!2231 = !DILocation(line: 841, column: 20, scope: !2214)
!2232 = !DILocation(line: 844, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2222, file: !446, line: 843, column: 5)
!2234 = !DILocation(line: 845, column: 21, scope: !2233)
!2235 = !{!2224, !1291, i64 0}
!2236 = !DILocation(line: 846, column: 20, scope: !2233)
!2237 = !DILocation(line: 847, column: 5, scope: !2233)
!2238 = !DILocation(line: 848, column: 10, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2210, file: !446, line: 848, column: 7)
!2240 = !DILocation(line: 848, column: 7, scope: !2210)
!2241 = !DILocation(line: 850, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2239, file: !446, line: 849, column: 5)
!2243 = !DILocation(line: 851, column: 15, scope: !2242)
!2244 = !DILocation(line: 852, column: 5, scope: !2242)
!2245 = !DILocation(line: 853, column: 10, scope: !2210)
!2246 = !DILocation(line: 854, column: 1, scope: !2210)
!2247 = !DISubprogram(name: "free", scope: !1429, file: !1429, line: 786, type: !2248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !88}
!2250 = distinct !DISubprogram(name: "quotearg_n", scope: !446, file: !446, line: 919, type: !940, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2251)
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "n", arg: 1, scope: !2250, file: !446, line: 919, type: !67)
!2253 = !DILocalVariable(name: "arg", arg: 2, scope: !2250, file: !446, line: 919, type: !93)
!2254 = !DILocation(line: 0, scope: !2250)
!2255 = !DILocation(line: 921, column: 10, scope: !2250)
!2256 = !DILocation(line: 921, column: 3, scope: !2250)
!2257 = distinct !DISubprogram(name: "quotearg_n_options", scope: !446, file: !446, line: 866, type: !2258, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!87, !67, !93, !90, !1475}
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2271, !2272, !2274, !2275, !2276}
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2257, file: !446, line: 866, type: !67)
!2262 = !DILocalVariable(name: "arg", arg: 2, scope: !2257, file: !446, line: 866, type: !93)
!2263 = !DILocalVariable(name: "argsize", arg: 3, scope: !2257, file: !446, line: 866, type: !90)
!2264 = !DILocalVariable(name: "options", arg: 4, scope: !2257, file: !446, line: 867, type: !1475)
!2265 = !DILocalVariable(name: "saved_errno", scope: !2257, file: !446, line: 869, type: !67)
!2266 = !DILocalVariable(name: "sv", scope: !2257, file: !446, line: 871, type: !547)
!2267 = !DILocalVariable(name: "nslots_max", scope: !2257, file: !446, line: 873, type: !67)
!2268 = !DILocalVariable(name: "preallocated", scope: !2269, file: !446, line: 879, type: !129)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !446, line: 878, column: 5)
!2270 = distinct !DILexicalBlock(scope: !2257, file: !446, line: 877, column: 7)
!2271 = !DILocalVariable(name: "new_nslots", scope: !2269, file: !446, line: 880, type: !715)
!2272 = !DILocalVariable(name: "size", scope: !2273, file: !446, line: 891, type: !90)
!2273 = distinct !DILexicalBlock(scope: !2257, file: !446, line: 890, column: 3)
!2274 = !DILocalVariable(name: "val", scope: !2273, file: !446, line: 892, type: !87)
!2275 = !DILocalVariable(name: "flags", scope: !2273, file: !446, line: 894, type: !67)
!2276 = !DILocalVariable(name: "qsize", scope: !2273, file: !446, line: 895, type: !90)
!2277 = distinct !DIAssignID()
!2278 = !DILocation(line: 0, scope: !2269)
!2279 = !DILocation(line: 0, scope: !2257)
!2280 = !DILocation(line: 869, column: 21, scope: !2257)
!2281 = !DILocation(line: 871, column: 24, scope: !2257)
!2282 = !DILocation(line: 874, column: 17, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2257, file: !446, line: 874, column: 7)
!2284 = !DILocation(line: 875, column: 5, scope: !2283)
!2285 = !DILocation(line: 877, column: 7, scope: !2270)
!2286 = !DILocation(line: 877, column: 14, scope: !2270)
!2287 = !DILocation(line: 877, column: 7, scope: !2257)
!2288 = !DILocation(line: 879, column: 31, scope: !2269)
!2289 = !DILocation(line: 880, column: 7, scope: !2269)
!2290 = !DILocation(line: 880, column: 26, scope: !2269)
!2291 = !DILocation(line: 880, column: 13, scope: !2269)
!2292 = distinct !DIAssignID()
!2293 = !DILocation(line: 882, column: 31, scope: !2269)
!2294 = !DILocation(line: 883, column: 33, scope: !2269)
!2295 = !DILocation(line: 883, column: 42, scope: !2269)
!2296 = !DILocation(line: 883, column: 31, scope: !2269)
!2297 = !DILocation(line: 882, column: 22, scope: !2269)
!2298 = !DILocation(line: 882, column: 15, scope: !2269)
!2299 = !DILocation(line: 884, column: 11, scope: !2269)
!2300 = !DILocation(line: 885, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2269, file: !446, line: 884, column: 11)
!2302 = !{i64 0, i64 8, !2207, i64 8, i64 8, !768}
!2303 = !DILocation(line: 885, column: 9, scope: !2301)
!2304 = !DILocation(line: 886, column: 20, scope: !2269)
!2305 = !DILocation(line: 886, column: 18, scope: !2269)
!2306 = !DILocation(line: 886, column: 32, scope: !2269)
!2307 = !DILocation(line: 886, column: 43, scope: !2269)
!2308 = !DILocation(line: 886, column: 53, scope: !2269)
!2309 = !DILocation(line: 0, scope: !1692, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 886, column: 7, scope: !2269)
!2311 = !DILocation(line: 59, column: 10, scope: !1692, inlinedAt: !2310)
!2312 = !DILocation(line: 887, column: 16, scope: !2269)
!2313 = !DILocation(line: 887, column: 14, scope: !2269)
!2314 = !DILocation(line: 888, column: 5, scope: !2270)
!2315 = !DILocation(line: 888, column: 5, scope: !2269)
!2316 = !DILocation(line: 891, column: 19, scope: !2273)
!2317 = !DILocation(line: 891, column: 25, scope: !2273)
!2318 = !DILocation(line: 0, scope: !2273)
!2319 = !DILocation(line: 892, column: 23, scope: !2273)
!2320 = !DILocation(line: 894, column: 26, scope: !2273)
!2321 = !DILocation(line: 894, column: 32, scope: !2273)
!2322 = !DILocation(line: 896, column: 55, scope: !2273)
!2323 = !DILocation(line: 897, column: 55, scope: !2273)
!2324 = !DILocation(line: 898, column: 55, scope: !2273)
!2325 = !DILocation(line: 899, column: 55, scope: !2273)
!2326 = !DILocation(line: 895, column: 20, scope: !2273)
!2327 = !DILocation(line: 901, column: 14, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2273, file: !446, line: 901, column: 9)
!2329 = !DILocation(line: 901, column: 9, scope: !2273)
!2330 = !DILocation(line: 903, column: 35, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !446, line: 902, column: 7)
!2332 = !DILocation(line: 903, column: 20, scope: !2331)
!2333 = !DILocation(line: 904, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !446, line: 904, column: 13)
!2335 = !DILocation(line: 904, column: 13, scope: !2331)
!2336 = !DILocation(line: 905, column: 11, scope: !2334)
!2337 = !DILocation(line: 906, column: 27, scope: !2331)
!2338 = !DILocation(line: 906, column: 19, scope: !2331)
!2339 = !DILocation(line: 907, column: 69, scope: !2331)
!2340 = !DILocation(line: 909, column: 44, scope: !2331)
!2341 = !DILocation(line: 910, column: 44, scope: !2331)
!2342 = !DILocation(line: 907, column: 9, scope: !2331)
!2343 = !DILocation(line: 911, column: 7, scope: !2331)
!2344 = !DILocation(line: 913, column: 11, scope: !2273)
!2345 = !DILocation(line: 914, column: 5, scope: !2273)
!2346 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !446, file: !446, line: 925, type: !2347, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!87, !67, !93, !90}
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2346, file: !446, line: 925, type: !67)
!2351 = !DILocalVariable(name: "arg", arg: 2, scope: !2346, file: !446, line: 925, type: !93)
!2352 = !DILocalVariable(name: "argsize", arg: 3, scope: !2346, file: !446, line: 925, type: !90)
!2353 = !DILocation(line: 0, scope: !2346)
!2354 = !DILocation(line: 927, column: 10, scope: !2346)
!2355 = !DILocation(line: 927, column: 3, scope: !2346)
!2356 = distinct !DISubprogram(name: "quotearg", scope: !446, file: !446, line: 931, type: !952, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2357)
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2356, file: !446, line: 931, type: !93)
!2359 = !DILocation(line: 0, scope: !2356)
!2360 = !DILocation(line: 0, scope: !2250, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 933, column: 10, scope: !2356)
!2362 = !DILocation(line: 921, column: 10, scope: !2250, inlinedAt: !2361)
!2363 = !DILocation(line: 933, column: 3, scope: !2356)
!2364 = distinct !DISubprogram(name: "quotearg_mem", scope: !446, file: !446, line: 937, type: !2365, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!87, !93, !90}
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "arg", arg: 1, scope: !2364, file: !446, line: 937, type: !93)
!2369 = !DILocalVariable(name: "argsize", arg: 2, scope: !2364, file: !446, line: 937, type: !90)
!2370 = !DILocation(line: 0, scope: !2364)
!2371 = !DILocation(line: 0, scope: !2346, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 939, column: 10, scope: !2364)
!2373 = !DILocation(line: 927, column: 10, scope: !2346, inlinedAt: !2372)
!2374 = !DILocation(line: 939, column: 3, scope: !2364)
!2375 = distinct !DISubprogram(name: "quotearg_n_style", scope: !446, file: !446, line: 943, type: !2376, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!87, !67, !472, !93}
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !446, line: 943, type: !67)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2375, file: !446, line: 943, type: !472)
!2381 = !DILocalVariable(name: "arg", arg: 3, scope: !2375, file: !446, line: 943, type: !93)
!2382 = !DILocalVariable(name: "o", scope: !2375, file: !446, line: 945, type: !1476)
!2383 = distinct !DIAssignID()
!2384 = !DILocation(line: 0, scope: !2375)
!2385 = !DILocation(line: 945, column: 3, scope: !2375)
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"quoting_options_from_style: argument 0"}
!2388 = distinct !{!2388, !"quoting_options_from_style"}
!2389 = !DILocation(line: 945, column: 36, scope: !2375)
!2390 = !DILocalVariable(name: "style", arg: 1, scope: !2391, file: !446, line: 183, type: !472)
!2391 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !446, file: !446, line: 183, type: !2392, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!499, !472}
!2394 = !{!2390, !2395}
!2395 = !DILocalVariable(name: "o", scope: !2391, file: !446, line: 185, type: !499)
!2396 = !DILocation(line: 0, scope: !2391, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 945, column: 36, scope: !2375)
!2398 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2397)
!2399 = distinct !DIAssignID()
!2400 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2397)
!2401 = distinct !DILexicalBlock(scope: !2391, file: !446, line: 186, column: 7)
!2402 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2397)
!2403 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2397)
!2404 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2397)
!2405 = distinct !DIAssignID()
!2406 = !DILocation(line: 946, column: 10, scope: !2375)
!2407 = !DILocation(line: 947, column: 1, scope: !2375)
!2408 = !DILocation(line: 946, column: 3, scope: !2375)
!2409 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !446, file: !446, line: 950, type: !2410, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!87, !67, !472, !93, !90}
!2412 = !{!2413, !2414, !2415, !2416, !2417}
!2413 = !DILocalVariable(name: "n", arg: 1, scope: !2409, file: !446, line: 950, type: !67)
!2414 = !DILocalVariable(name: "s", arg: 2, scope: !2409, file: !446, line: 950, type: !472)
!2415 = !DILocalVariable(name: "arg", arg: 3, scope: !2409, file: !446, line: 951, type: !93)
!2416 = !DILocalVariable(name: "argsize", arg: 4, scope: !2409, file: !446, line: 951, type: !90)
!2417 = !DILocalVariable(name: "o", scope: !2409, file: !446, line: 953, type: !1476)
!2418 = distinct !DIAssignID()
!2419 = !DILocation(line: 0, scope: !2409)
!2420 = !DILocation(line: 953, column: 3, scope: !2409)
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"quoting_options_from_style: argument 0"}
!2423 = distinct !{!2423, !"quoting_options_from_style"}
!2424 = !DILocation(line: 953, column: 36, scope: !2409)
!2425 = !DILocation(line: 0, scope: !2391, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 953, column: 36, scope: !2409)
!2427 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2426)
!2428 = distinct !DIAssignID()
!2429 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2426)
!2430 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2426)
!2431 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2426)
!2432 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2426)
!2433 = distinct !DIAssignID()
!2434 = !DILocation(line: 954, column: 10, scope: !2409)
!2435 = !DILocation(line: 955, column: 1, scope: !2409)
!2436 = !DILocation(line: 954, column: 3, scope: !2409)
!2437 = distinct !DISubprogram(name: "quotearg_style", scope: !446, file: !446, line: 958, type: !2438, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!87, !472, !93}
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "s", arg: 1, scope: !2437, file: !446, line: 958, type: !472)
!2442 = !DILocalVariable(name: "arg", arg: 2, scope: !2437, file: !446, line: 958, type: !93)
!2443 = distinct !DIAssignID()
!2444 = !DILocation(line: 0, scope: !2437)
!2445 = !DILocation(line: 0, scope: !2375, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 960, column: 10, scope: !2437)
!2447 = !DILocation(line: 945, column: 3, scope: !2375, inlinedAt: !2446)
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"quoting_options_from_style: argument 0"}
!2450 = distinct !{!2450, !"quoting_options_from_style"}
!2451 = !DILocation(line: 945, column: 36, scope: !2375, inlinedAt: !2446)
!2452 = !DILocation(line: 0, scope: !2391, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 945, column: 36, scope: !2375, inlinedAt: !2446)
!2454 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2453)
!2455 = distinct !DIAssignID()
!2456 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2453)
!2457 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2453)
!2458 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2453)
!2459 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2453)
!2460 = distinct !DIAssignID()
!2461 = !DILocation(line: 946, column: 10, scope: !2375, inlinedAt: !2446)
!2462 = !DILocation(line: 947, column: 1, scope: !2375, inlinedAt: !2446)
!2463 = !DILocation(line: 960, column: 3, scope: !2437)
!2464 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !446, file: !446, line: 964, type: !2465, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!87, !472, !93, !90}
!2467 = !{!2468, !2469, !2470}
!2468 = !DILocalVariable(name: "s", arg: 1, scope: !2464, file: !446, line: 964, type: !472)
!2469 = !DILocalVariable(name: "arg", arg: 2, scope: !2464, file: !446, line: 964, type: !93)
!2470 = !DILocalVariable(name: "argsize", arg: 3, scope: !2464, file: !446, line: 964, type: !90)
!2471 = distinct !DIAssignID()
!2472 = !DILocation(line: 0, scope: !2464)
!2473 = !DILocation(line: 0, scope: !2409, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 966, column: 10, scope: !2464)
!2475 = !DILocation(line: 953, column: 3, scope: !2409, inlinedAt: !2474)
!2476 = !{!2477}
!2477 = distinct !{!2477, !2478, !"quoting_options_from_style: argument 0"}
!2478 = distinct !{!2478, !"quoting_options_from_style"}
!2479 = !DILocation(line: 953, column: 36, scope: !2409, inlinedAt: !2474)
!2480 = !DILocation(line: 0, scope: !2391, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 953, column: 36, scope: !2409, inlinedAt: !2474)
!2482 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2481)
!2483 = distinct !DIAssignID()
!2484 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2481)
!2485 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2481)
!2486 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2481)
!2487 = !DILocation(line: 188, column: 11, scope: !2391, inlinedAt: !2481)
!2488 = distinct !DIAssignID()
!2489 = !DILocation(line: 954, column: 10, scope: !2409, inlinedAt: !2474)
!2490 = !DILocation(line: 955, column: 1, scope: !2409, inlinedAt: !2474)
!2491 = !DILocation(line: 966, column: 3, scope: !2464)
!2492 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !446, file: !446, line: 970, type: !2493, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!87, !93, !90, !4}
!2495 = !{!2496, !2497, !2498, !2499}
!2496 = !DILocalVariable(name: "arg", arg: 1, scope: !2492, file: !446, line: 970, type: !93)
!2497 = !DILocalVariable(name: "argsize", arg: 2, scope: !2492, file: !446, line: 970, type: !90)
!2498 = !DILocalVariable(name: "ch", arg: 3, scope: !2492, file: !446, line: 970, type: !4)
!2499 = !DILocalVariable(name: "options", scope: !2492, file: !446, line: 972, type: !499)
!2500 = distinct !DIAssignID()
!2501 = !DILocation(line: 0, scope: !2492)
!2502 = !DILocation(line: 972, column: 3, scope: !2492)
!2503 = !DILocation(line: 973, column: 13, scope: !2492)
!2504 = !{i64 0, i64 4, !826, i64 4, i64 4, !826, i64 8, i64 32, !835, i64 40, i64 8, !768, i64 48, i64 8, !768}
!2505 = distinct !DIAssignID()
!2506 = !DILocation(line: 0, scope: !1495, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 974, column: 3, scope: !2492)
!2508 = !DILocation(line: 147, column: 41, scope: !1495, inlinedAt: !2507)
!2509 = !DILocation(line: 147, column: 62, scope: !1495, inlinedAt: !2507)
!2510 = !DILocation(line: 147, column: 57, scope: !1495, inlinedAt: !2507)
!2511 = !DILocation(line: 148, column: 15, scope: !1495, inlinedAt: !2507)
!2512 = !DILocation(line: 149, column: 21, scope: !1495, inlinedAt: !2507)
!2513 = !DILocation(line: 149, column: 24, scope: !1495, inlinedAt: !2507)
!2514 = !DILocation(line: 150, column: 19, scope: !1495, inlinedAt: !2507)
!2515 = !DILocation(line: 150, column: 24, scope: !1495, inlinedAt: !2507)
!2516 = !DILocation(line: 150, column: 6, scope: !1495, inlinedAt: !2507)
!2517 = !DILocation(line: 975, column: 10, scope: !2492)
!2518 = !DILocation(line: 976, column: 1, scope: !2492)
!2519 = !DILocation(line: 975, column: 3, scope: !2492)
!2520 = distinct !DISubprogram(name: "quotearg_char", scope: !446, file: !446, line: 979, type: !2521, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!87, !93, !4}
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2520, file: !446, line: 979, type: !93)
!2525 = !DILocalVariable(name: "ch", arg: 2, scope: !2520, file: !446, line: 979, type: !4)
!2526 = distinct !DIAssignID()
!2527 = !DILocation(line: 0, scope: !2520)
!2528 = !DILocation(line: 0, scope: !2492, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 981, column: 10, scope: !2520)
!2530 = !DILocation(line: 972, column: 3, scope: !2492, inlinedAt: !2529)
!2531 = !DILocation(line: 973, column: 13, scope: !2492, inlinedAt: !2529)
!2532 = distinct !DIAssignID()
!2533 = !DILocation(line: 0, scope: !1495, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 974, column: 3, scope: !2492, inlinedAt: !2529)
!2535 = !DILocation(line: 147, column: 41, scope: !1495, inlinedAt: !2534)
!2536 = !DILocation(line: 147, column: 62, scope: !1495, inlinedAt: !2534)
!2537 = !DILocation(line: 147, column: 57, scope: !1495, inlinedAt: !2534)
!2538 = !DILocation(line: 148, column: 15, scope: !1495, inlinedAt: !2534)
!2539 = !DILocation(line: 149, column: 21, scope: !1495, inlinedAt: !2534)
!2540 = !DILocation(line: 149, column: 24, scope: !1495, inlinedAt: !2534)
!2541 = !DILocation(line: 150, column: 19, scope: !1495, inlinedAt: !2534)
!2542 = !DILocation(line: 150, column: 24, scope: !1495, inlinedAt: !2534)
!2543 = !DILocation(line: 150, column: 6, scope: !1495, inlinedAt: !2534)
!2544 = !DILocation(line: 975, column: 10, scope: !2492, inlinedAt: !2529)
!2545 = !DILocation(line: 976, column: 1, scope: !2492, inlinedAt: !2529)
!2546 = !DILocation(line: 981, column: 3, scope: !2520)
!2547 = distinct !DISubprogram(name: "quotearg_colon", scope: !446, file: !446, line: 985, type: !952, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2548)
!2548 = !{!2549}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !446, line: 985, type: !93)
!2550 = distinct !DIAssignID()
!2551 = !DILocation(line: 0, scope: !2547)
!2552 = !DILocation(line: 0, scope: !2520, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 987, column: 10, scope: !2547)
!2554 = !DILocation(line: 0, scope: !2492, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 981, column: 10, scope: !2520, inlinedAt: !2553)
!2556 = !DILocation(line: 972, column: 3, scope: !2492, inlinedAt: !2555)
!2557 = !DILocation(line: 973, column: 13, scope: !2492, inlinedAt: !2555)
!2558 = distinct !DIAssignID()
!2559 = !DILocation(line: 0, scope: !1495, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 974, column: 3, scope: !2492, inlinedAt: !2555)
!2561 = !DILocation(line: 147, column: 57, scope: !1495, inlinedAt: !2560)
!2562 = !DILocation(line: 149, column: 21, scope: !1495, inlinedAt: !2560)
!2563 = !DILocation(line: 150, column: 6, scope: !1495, inlinedAt: !2560)
!2564 = !DILocation(line: 975, column: 10, scope: !2492, inlinedAt: !2555)
!2565 = !DILocation(line: 976, column: 1, scope: !2492, inlinedAt: !2555)
!2566 = !DILocation(line: 987, column: 3, scope: !2547)
!2567 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !446, file: !446, line: 991, type: !2365, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2568)
!2568 = !{!2569, !2570}
!2569 = !DILocalVariable(name: "arg", arg: 1, scope: !2567, file: !446, line: 991, type: !93)
!2570 = !DILocalVariable(name: "argsize", arg: 2, scope: !2567, file: !446, line: 991, type: !90)
!2571 = distinct !DIAssignID()
!2572 = !DILocation(line: 0, scope: !2567)
!2573 = !DILocation(line: 0, scope: !2492, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 993, column: 10, scope: !2567)
!2575 = !DILocation(line: 972, column: 3, scope: !2492, inlinedAt: !2574)
!2576 = !DILocation(line: 973, column: 13, scope: !2492, inlinedAt: !2574)
!2577 = distinct !DIAssignID()
!2578 = !DILocation(line: 0, scope: !1495, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 974, column: 3, scope: !2492, inlinedAt: !2574)
!2580 = !DILocation(line: 147, column: 57, scope: !1495, inlinedAt: !2579)
!2581 = !DILocation(line: 149, column: 21, scope: !1495, inlinedAt: !2579)
!2582 = !DILocation(line: 150, column: 6, scope: !1495, inlinedAt: !2579)
!2583 = !DILocation(line: 975, column: 10, scope: !2492, inlinedAt: !2574)
!2584 = !DILocation(line: 976, column: 1, scope: !2492, inlinedAt: !2574)
!2585 = !DILocation(line: 993, column: 3, scope: !2567)
!2586 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !446, file: !446, line: 997, type: !2376, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2587)
!2587 = !{!2588, !2589, !2590, !2591}
!2588 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !446, line: 997, type: !67)
!2589 = !DILocalVariable(name: "s", arg: 2, scope: !2586, file: !446, line: 997, type: !472)
!2590 = !DILocalVariable(name: "arg", arg: 3, scope: !2586, file: !446, line: 997, type: !93)
!2591 = !DILocalVariable(name: "options", scope: !2586, file: !446, line: 999, type: !499)
!2592 = distinct !DIAssignID()
!2593 = !DILocation(line: 0, scope: !2586)
!2594 = !DILocation(line: 185, column: 26, scope: !2391, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1000, column: 13, scope: !2586)
!2596 = !DILocation(line: 999, column: 3, scope: !2586)
!2597 = !DILocation(line: 0, scope: !2391, inlinedAt: !2595)
!2598 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2595)
!2599 = !DILocation(line: 186, column: 7, scope: !2391, inlinedAt: !2595)
!2600 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2595)
!2601 = !{!2602}
!2602 = distinct !{!2602, !2603, !"quoting_options_from_style: argument 0"}
!2603 = distinct !{!2603, !"quoting_options_from_style"}
!2604 = !DILocation(line: 1000, column: 13, scope: !2586)
!2605 = distinct !DIAssignID()
!2606 = distinct !DIAssignID()
!2607 = !DILocation(line: 0, scope: !1495, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1001, column: 3, scope: !2586)
!2609 = !DILocation(line: 147, column: 57, scope: !1495, inlinedAt: !2608)
!2610 = !DILocation(line: 149, column: 21, scope: !1495, inlinedAt: !2608)
!2611 = !DILocation(line: 150, column: 6, scope: !1495, inlinedAt: !2608)
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 1002, column: 10, scope: !2586)
!2614 = !DILocation(line: 1003, column: 1, scope: !2586)
!2615 = !DILocation(line: 1002, column: 3, scope: !2586)
!2616 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !446, file: !446, line: 1006, type: !2617, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!87, !67, !93, !93, !93}
!2619 = !{!2620, !2621, !2622, !2623}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !446, line: 1006, type: !67)
!2621 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2616, file: !446, line: 1006, type: !93)
!2622 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2616, file: !446, line: 1007, type: !93)
!2623 = !DILocalVariable(name: "arg", arg: 4, scope: !2616, file: !446, line: 1007, type: !93)
!2624 = distinct !DIAssignID()
!2625 = !DILocation(line: 0, scope: !2616)
!2626 = !DILocalVariable(name: "o", scope: !2627, file: !446, line: 1018, type: !499)
!2627 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !446, file: !446, line: 1014, type: !2628, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!87, !67, !93, !93, !93, !90}
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2626}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !446, line: 1014, type: !67)
!2632 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2627, file: !446, line: 1014, type: !93)
!2633 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2627, file: !446, line: 1015, type: !93)
!2634 = !DILocalVariable(name: "arg", arg: 4, scope: !2627, file: !446, line: 1016, type: !93)
!2635 = !DILocalVariable(name: "argsize", arg: 5, scope: !2627, file: !446, line: 1016, type: !90)
!2636 = !DILocation(line: 0, scope: !2627, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1009, column: 10, scope: !2616)
!2638 = !DILocation(line: 1018, column: 3, scope: !2627, inlinedAt: !2637)
!2639 = !DILocation(line: 1018, column: 30, scope: !2627, inlinedAt: !2637)
!2640 = distinct !DIAssignID()
!2641 = distinct !DIAssignID()
!2642 = !DILocation(line: 0, scope: !1535, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1019, column: 3, scope: !2627, inlinedAt: !2637)
!2644 = !DILocation(line: 174, column: 12, scope: !1535, inlinedAt: !2643)
!2645 = distinct !DIAssignID()
!2646 = !DILocation(line: 175, column: 8, scope: !1548, inlinedAt: !2643)
!2647 = !DILocation(line: 175, column: 19, scope: !1548, inlinedAt: !2643)
!2648 = !DILocation(line: 176, column: 5, scope: !1548, inlinedAt: !2643)
!2649 = !DILocation(line: 177, column: 6, scope: !1535, inlinedAt: !2643)
!2650 = !DILocation(line: 177, column: 17, scope: !1535, inlinedAt: !2643)
!2651 = distinct !DIAssignID()
!2652 = !DILocation(line: 178, column: 6, scope: !1535, inlinedAt: !2643)
!2653 = !DILocation(line: 178, column: 18, scope: !1535, inlinedAt: !2643)
!2654 = distinct !DIAssignID()
!2655 = !DILocation(line: 1020, column: 10, scope: !2627, inlinedAt: !2637)
!2656 = !DILocation(line: 1021, column: 1, scope: !2627, inlinedAt: !2637)
!2657 = !DILocation(line: 1009, column: 3, scope: !2616)
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 0, scope: !2627)
!2660 = !DILocation(line: 1018, column: 3, scope: !2627)
!2661 = !DILocation(line: 1018, column: 30, scope: !2627)
!2662 = distinct !DIAssignID()
!2663 = distinct !DIAssignID()
!2664 = !DILocation(line: 0, scope: !1535, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1019, column: 3, scope: !2627)
!2666 = !DILocation(line: 174, column: 12, scope: !1535, inlinedAt: !2665)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 175, column: 8, scope: !1548, inlinedAt: !2665)
!2669 = !DILocation(line: 175, column: 19, scope: !1548, inlinedAt: !2665)
!2670 = !DILocation(line: 176, column: 5, scope: !1548, inlinedAt: !2665)
!2671 = !DILocation(line: 177, column: 6, scope: !1535, inlinedAt: !2665)
!2672 = !DILocation(line: 177, column: 17, scope: !1535, inlinedAt: !2665)
!2673 = distinct !DIAssignID()
!2674 = !DILocation(line: 178, column: 6, scope: !1535, inlinedAt: !2665)
!2675 = !DILocation(line: 178, column: 18, scope: !1535, inlinedAt: !2665)
!2676 = distinct !DIAssignID()
!2677 = !DILocation(line: 1020, column: 10, scope: !2627)
!2678 = !DILocation(line: 1021, column: 1, scope: !2627)
!2679 = !DILocation(line: 1020, column: 3, scope: !2627)
!2680 = distinct !DISubprogram(name: "quotearg_custom", scope: !446, file: !446, line: 1024, type: !2681, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!87, !93, !93, !93}
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2680, file: !446, line: 1024, type: !93)
!2685 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2680, file: !446, line: 1024, type: !93)
!2686 = !DILocalVariable(name: "arg", arg: 3, scope: !2680, file: !446, line: 1025, type: !93)
!2687 = distinct !DIAssignID()
!2688 = !DILocation(line: 0, scope: !2680)
!2689 = !DILocation(line: 0, scope: !2616, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1027, column: 10, scope: !2680)
!2691 = !DILocation(line: 0, scope: !2627, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1009, column: 10, scope: !2616, inlinedAt: !2690)
!2693 = !DILocation(line: 1018, column: 3, scope: !2627, inlinedAt: !2692)
!2694 = !DILocation(line: 1018, column: 30, scope: !2627, inlinedAt: !2692)
!2695 = distinct !DIAssignID()
!2696 = distinct !DIAssignID()
!2697 = !DILocation(line: 0, scope: !1535, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1019, column: 3, scope: !2627, inlinedAt: !2692)
!2699 = !DILocation(line: 174, column: 12, scope: !1535, inlinedAt: !2698)
!2700 = distinct !DIAssignID()
!2701 = !DILocation(line: 175, column: 8, scope: !1548, inlinedAt: !2698)
!2702 = !DILocation(line: 175, column: 19, scope: !1548, inlinedAt: !2698)
!2703 = !DILocation(line: 176, column: 5, scope: !1548, inlinedAt: !2698)
!2704 = !DILocation(line: 177, column: 6, scope: !1535, inlinedAt: !2698)
!2705 = !DILocation(line: 177, column: 17, scope: !1535, inlinedAt: !2698)
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 178, column: 6, scope: !1535, inlinedAt: !2698)
!2708 = !DILocation(line: 178, column: 18, scope: !1535, inlinedAt: !2698)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 1020, column: 10, scope: !2627, inlinedAt: !2692)
!2711 = !DILocation(line: 1021, column: 1, scope: !2627, inlinedAt: !2692)
!2712 = !DILocation(line: 1027, column: 3, scope: !2680)
!2713 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !446, file: !446, line: 1031, type: !2714, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!87, !93, !93, !93, !90}
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2713, file: !446, line: 1031, type: !93)
!2718 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2713, file: !446, line: 1031, type: !93)
!2719 = !DILocalVariable(name: "arg", arg: 3, scope: !2713, file: !446, line: 1032, type: !93)
!2720 = !DILocalVariable(name: "argsize", arg: 4, scope: !2713, file: !446, line: 1032, type: !90)
!2721 = distinct !DIAssignID()
!2722 = !DILocation(line: 0, scope: !2713)
!2723 = !DILocation(line: 0, scope: !2627, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1034, column: 10, scope: !2713)
!2725 = !DILocation(line: 1018, column: 3, scope: !2627, inlinedAt: !2724)
!2726 = !DILocation(line: 1018, column: 30, scope: !2627, inlinedAt: !2724)
!2727 = distinct !DIAssignID()
!2728 = distinct !DIAssignID()
!2729 = !DILocation(line: 0, scope: !1535, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1019, column: 3, scope: !2627, inlinedAt: !2724)
!2731 = !DILocation(line: 174, column: 12, scope: !1535, inlinedAt: !2730)
!2732 = distinct !DIAssignID()
!2733 = !DILocation(line: 175, column: 8, scope: !1548, inlinedAt: !2730)
!2734 = !DILocation(line: 175, column: 19, scope: !1548, inlinedAt: !2730)
!2735 = !DILocation(line: 176, column: 5, scope: !1548, inlinedAt: !2730)
!2736 = !DILocation(line: 177, column: 6, scope: !1535, inlinedAt: !2730)
!2737 = !DILocation(line: 177, column: 17, scope: !1535, inlinedAt: !2730)
!2738 = distinct !DIAssignID()
!2739 = !DILocation(line: 178, column: 6, scope: !1535, inlinedAt: !2730)
!2740 = !DILocation(line: 178, column: 18, scope: !1535, inlinedAt: !2730)
!2741 = distinct !DIAssignID()
!2742 = !DILocation(line: 1020, column: 10, scope: !2627, inlinedAt: !2724)
!2743 = !DILocation(line: 1021, column: 1, scope: !2627, inlinedAt: !2724)
!2744 = !DILocation(line: 1034, column: 3, scope: !2713)
!2745 = distinct !DISubprogram(name: "quote_n_mem", scope: !446, file: !446, line: 1049, type: !2746, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!93, !67, !93, !90}
!2748 = !{!2749, !2750, !2751}
!2749 = !DILocalVariable(name: "n", arg: 1, scope: !2745, file: !446, line: 1049, type: !67)
!2750 = !DILocalVariable(name: "arg", arg: 2, scope: !2745, file: !446, line: 1049, type: !93)
!2751 = !DILocalVariable(name: "argsize", arg: 3, scope: !2745, file: !446, line: 1049, type: !90)
!2752 = !DILocation(line: 0, scope: !2745)
!2753 = !DILocation(line: 1051, column: 10, scope: !2745)
!2754 = !DILocation(line: 1051, column: 3, scope: !2745)
!2755 = distinct !DISubprogram(name: "quote_mem", scope: !446, file: !446, line: 1055, type: !2756, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!93, !93, !90}
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !446, line: 1055, type: !93)
!2760 = !DILocalVariable(name: "argsize", arg: 2, scope: !2755, file: !446, line: 1055, type: !90)
!2761 = !DILocation(line: 0, scope: !2755)
!2762 = !DILocation(line: 0, scope: !2745, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 1057, column: 10, scope: !2755)
!2764 = !DILocation(line: 1051, column: 10, scope: !2745, inlinedAt: !2763)
!2765 = !DILocation(line: 1057, column: 3, scope: !2755)
!2766 = distinct !DISubprogram(name: "quote_n", scope: !446, file: !446, line: 1061, type: !2767, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!93, !67, !93}
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !446, line: 1061, type: !67)
!2771 = !DILocalVariable(name: "arg", arg: 2, scope: !2766, file: !446, line: 1061, type: !93)
!2772 = !DILocation(line: 0, scope: !2766)
!2773 = !DILocation(line: 0, scope: !2745, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1063, column: 10, scope: !2766)
!2775 = !DILocation(line: 1051, column: 10, scope: !2745, inlinedAt: !2774)
!2776 = !DILocation(line: 1063, column: 3, scope: !2766)
!2777 = distinct !DISubprogram(name: "quote", scope: !446, file: !446, line: 1067, type: !2778, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!93, !93}
!2780 = !{!2781}
!2781 = !DILocalVariable(name: "arg", arg: 1, scope: !2777, file: !446, line: 1067, type: !93)
!2782 = !DILocation(line: 0, scope: !2777)
!2783 = !DILocation(line: 0, scope: !2766, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1069, column: 10, scope: !2777)
!2785 = !DILocation(line: 0, scope: !2745, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 1063, column: 10, scope: !2766, inlinedAt: !2784)
!2787 = !DILocation(line: 1051, column: 10, scope: !2745, inlinedAt: !2786)
!2788 = !DILocation(line: 1069, column: 3, scope: !2777)
!2789 = distinct !DISubprogram(name: "version_etc_arn", scope: !562, file: !562, line: 61, type: !2790, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2827)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !2792, !93, !93, !93, !2826, !90}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !2794)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2794, file: !146, line: 51, baseType: !67, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2794, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2794, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2794, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2794, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2794, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2794, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2794, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2794, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2794, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2794, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2794, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2794, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2794, file: !146, line: 70, baseType: !2810, size: 64, offset: 832)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2794, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2794, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2794, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2794, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2794, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2794, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2794, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2794, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2794, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2794, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2794, file: !146, line: 93, baseType: !2810, size: 64, offset: 1344)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2794, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2794, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2794, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2794, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833}
!2828 = !DILocalVariable(name: "stream", arg: 1, scope: !2789, file: !562, line: 61, type: !2792)
!2829 = !DILocalVariable(name: "command_name", arg: 2, scope: !2789, file: !562, line: 62, type: !93)
!2830 = !DILocalVariable(name: "package", arg: 3, scope: !2789, file: !562, line: 62, type: !93)
!2831 = !DILocalVariable(name: "version", arg: 4, scope: !2789, file: !562, line: 63, type: !93)
!2832 = !DILocalVariable(name: "authors", arg: 5, scope: !2789, file: !562, line: 64, type: !2826)
!2833 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2789, file: !562, line: 64, type: !90)
!2834 = !DILocation(line: 0, scope: !2789)
!2835 = !DILocation(line: 66, column: 7, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2789, file: !562, line: 66, column: 7)
!2837 = !DILocation(line: 66, column: 7, scope: !2789)
!2838 = !DILocation(line: 67, column: 5, scope: !2836)
!2839 = !DILocation(line: 69, column: 5, scope: !2836)
!2840 = !DILocation(line: 83, column: 3, scope: !2789)
!2841 = !DILocation(line: 85, column: 3, scope: !2789)
!2842 = !DILocation(line: 88, column: 3, scope: !2789)
!2843 = !DILocation(line: 95, column: 3, scope: !2789)
!2844 = !DILocation(line: 97, column: 3, scope: !2789)
!2845 = !DILocation(line: 105, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2789, file: !562, line: 98, column: 5)
!2847 = !DILocation(line: 106, column: 7, scope: !2846)
!2848 = !DILocation(line: 109, column: 7, scope: !2846)
!2849 = !DILocation(line: 110, column: 7, scope: !2846)
!2850 = !DILocation(line: 113, column: 7, scope: !2846)
!2851 = !DILocation(line: 115, column: 7, scope: !2846)
!2852 = !DILocation(line: 120, column: 7, scope: !2846)
!2853 = !DILocation(line: 122, column: 7, scope: !2846)
!2854 = !DILocation(line: 127, column: 7, scope: !2846)
!2855 = !DILocation(line: 129, column: 7, scope: !2846)
!2856 = !DILocation(line: 134, column: 7, scope: !2846)
!2857 = !DILocation(line: 137, column: 7, scope: !2846)
!2858 = !DILocation(line: 142, column: 7, scope: !2846)
!2859 = !DILocation(line: 145, column: 7, scope: !2846)
!2860 = !DILocation(line: 150, column: 7, scope: !2846)
!2861 = !DILocation(line: 154, column: 7, scope: !2846)
!2862 = !DILocation(line: 159, column: 7, scope: !2846)
!2863 = !DILocation(line: 163, column: 7, scope: !2846)
!2864 = !DILocation(line: 170, column: 7, scope: !2846)
!2865 = !DILocation(line: 174, column: 7, scope: !2846)
!2866 = !DILocation(line: 176, column: 1, scope: !2789)
!2867 = distinct !DISubprogram(name: "version_etc_ar", scope: !562, file: !562, line: 183, type: !2868, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !2792, !93, !93, !93, !2826}
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876}
!2871 = !DILocalVariable(name: "stream", arg: 1, scope: !2867, file: !562, line: 183, type: !2792)
!2872 = !DILocalVariable(name: "command_name", arg: 2, scope: !2867, file: !562, line: 184, type: !93)
!2873 = !DILocalVariable(name: "package", arg: 3, scope: !2867, file: !562, line: 184, type: !93)
!2874 = !DILocalVariable(name: "version", arg: 4, scope: !2867, file: !562, line: 185, type: !93)
!2875 = !DILocalVariable(name: "authors", arg: 5, scope: !2867, file: !562, line: 185, type: !2826)
!2876 = !DILocalVariable(name: "n_authors", scope: !2867, file: !562, line: 187, type: !90)
!2877 = !DILocation(line: 0, scope: !2867)
!2878 = !DILocation(line: 189, column: 8, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2867, file: !562, line: 189, column: 3)
!2880 = !DILocation(line: 189, scope: !2879)
!2881 = !DILocation(line: 189, column: 23, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !562, line: 189, column: 3)
!2883 = !DILocation(line: 189, column: 3, scope: !2879)
!2884 = !DILocation(line: 189, column: 52, scope: !2882)
!2885 = distinct !{!2885, !2883, !2886, !873}
!2886 = !DILocation(line: 190, column: 5, scope: !2879)
!2887 = !DILocation(line: 191, column: 3, scope: !2867)
!2888 = !DILocation(line: 192, column: 1, scope: !2867)
!2889 = distinct !DISubprogram(name: "version_etc_va", scope: !562, file: !562, line: 199, type: !2890, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2902)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2792, !93, !93, !93, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !361, line: 52, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !363, line: 12, baseType: !2894)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !562, baseType: !2895)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900, !2901}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2895, file: !562, line: 192, baseType: !88, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2895, file: !562, line: 192, baseType: !88, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2895, file: !562, line: 192, baseType: !88, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2895, file: !562, line: 192, baseType: !67, size: 32, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2895, file: !562, line: 192, baseType: !67, size: 32, offset: 224)
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909}
!2903 = !DILocalVariable(name: "stream", arg: 1, scope: !2889, file: !562, line: 199, type: !2792)
!2904 = !DILocalVariable(name: "command_name", arg: 2, scope: !2889, file: !562, line: 200, type: !93)
!2905 = !DILocalVariable(name: "package", arg: 3, scope: !2889, file: !562, line: 200, type: !93)
!2906 = !DILocalVariable(name: "version", arg: 4, scope: !2889, file: !562, line: 201, type: !93)
!2907 = !DILocalVariable(name: "authors", arg: 5, scope: !2889, file: !562, line: 201, type: !2892)
!2908 = !DILocalVariable(name: "n_authors", scope: !2889, file: !562, line: 203, type: !90)
!2909 = !DILocalVariable(name: "authtab", scope: !2889, file: !562, line: 204, type: !2910)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !45)
!2911 = distinct !DIAssignID()
!2912 = !DILocation(line: 0, scope: !2889)
!2913 = !DILocation(line: 204, column: 3, scope: !2889)
!2914 = !DILocation(line: 208, column: 35, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !562, line: 206, column: 3)
!2916 = distinct !DILexicalBlock(scope: !2889, file: !562, line: 206, column: 3)
!2917 = !DILocation(line: 208, column: 33, scope: !2915)
!2918 = !DILocation(line: 208, column: 67, scope: !2915)
!2919 = !DILocation(line: 206, column: 3, scope: !2916)
!2920 = !DILocation(line: 208, column: 14, scope: !2915)
!2921 = !DILocation(line: 0, scope: !2916)
!2922 = !DILocation(line: 211, column: 3, scope: !2889)
!2923 = !DILocation(line: 213, column: 1, scope: !2889)
!2924 = distinct !DISubprogram(name: "version_etc", scope: !562, file: !562, line: 230, type: !2925, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2792, !93, !93, !93, null}
!2927 = !{!2928, !2929, !2930, !2931, !2932}
!2928 = !DILocalVariable(name: "stream", arg: 1, scope: !2924, file: !562, line: 230, type: !2792)
!2929 = !DILocalVariable(name: "command_name", arg: 2, scope: !2924, file: !562, line: 231, type: !93)
!2930 = !DILocalVariable(name: "package", arg: 3, scope: !2924, file: !562, line: 231, type: !93)
!2931 = !DILocalVariable(name: "version", arg: 4, scope: !2924, file: !562, line: 232, type: !93)
!2932 = !DILocalVariable(name: "authors", scope: !2924, file: !562, line: 234, type: !2892)
!2933 = distinct !DIAssignID()
!2934 = !DILocation(line: 0, scope: !2924)
!2935 = !DILocation(line: 234, column: 3, scope: !2924)
!2936 = !DILocation(line: 235, column: 3, scope: !2924)
!2937 = !DILocation(line: 236, column: 3, scope: !2924)
!2938 = !DILocation(line: 237, column: 3, scope: !2924)
!2939 = !DILocation(line: 238, column: 1, scope: !2924)
!2940 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !562, file: !562, line: 241, type: !401, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688)
!2941 = !DILocation(line: 243, column: 3, scope: !2940)
!2942 = !DILocation(line: 248, column: 3, scope: !2940)
!2943 = !DILocation(line: 254, column: 3, scope: !2940)
!2944 = !DILocation(line: 259, column: 3, scope: !2940)
!2945 = !DILocation(line: 261, column: 1, scope: !2940)
!2946 = distinct !DISubprogram(name: "xnrealloc", scope: !2947, file: !2947, line: 147, type: !2948, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2950)
!2947 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!88, !88, !90, !90}
!2950 = !{!2951, !2952, !2953}
!2951 = !DILocalVariable(name: "p", arg: 1, scope: !2946, file: !2947, line: 147, type: !88)
!2952 = !DILocalVariable(name: "n", arg: 2, scope: !2946, file: !2947, line: 147, type: !90)
!2953 = !DILocalVariable(name: "s", arg: 3, scope: !2946, file: !2947, line: 147, type: !90)
!2954 = !DILocation(line: 0, scope: !2946)
!2955 = !DILocalVariable(name: "p", arg: 1, scope: !2956, file: !696, line: 83, type: !88)
!2956 = distinct !DISubprogram(name: "xreallocarray", scope: !696, file: !696, line: 83, type: !2948, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2957)
!2957 = !{!2955, !2958, !2959}
!2958 = !DILocalVariable(name: "n", arg: 2, scope: !2956, file: !696, line: 83, type: !90)
!2959 = !DILocalVariable(name: "s", arg: 3, scope: !2956, file: !696, line: 83, type: !90)
!2960 = !DILocation(line: 0, scope: !2956, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 149, column: 10, scope: !2946)
!2962 = !DILocation(line: 85, column: 25, scope: !2956, inlinedAt: !2961)
!2963 = !DILocalVariable(name: "p", arg: 1, scope: !2964, file: !696, line: 37, type: !88)
!2964 = distinct !DISubprogram(name: "check_nonnull", scope: !696, file: !696, line: 37, type: !2965, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!88, !88}
!2967 = !{!2963}
!2968 = !DILocation(line: 0, scope: !2964, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 85, column: 10, scope: !2956, inlinedAt: !2961)
!2970 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !2969)
!2971 = distinct !DILexicalBlock(scope: !2964, file: !696, line: 39, column: 7)
!2972 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !2969)
!2973 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !2969)
!2974 = !DILocation(line: 149, column: 3, scope: !2946)
!2975 = !DILocation(line: 0, scope: !2956)
!2976 = !DILocation(line: 85, column: 25, scope: !2956)
!2977 = !DILocation(line: 0, scope: !2964, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 85, column: 10, scope: !2956)
!2979 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !2978)
!2980 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !2978)
!2981 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !2978)
!2982 = !DILocation(line: 85, column: 3, scope: !2956)
!2983 = distinct !DISubprogram(name: "xmalloc", scope: !696, file: !696, line: 47, type: !2984, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!88, !90}
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "s", arg: 1, scope: !2983, file: !696, line: 47, type: !90)
!2988 = !DILocation(line: 0, scope: !2983)
!2989 = !DILocation(line: 49, column: 25, scope: !2983)
!2990 = !DILocation(line: 0, scope: !2964, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 49, column: 10, scope: !2983)
!2992 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !2991)
!2993 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !2991)
!2994 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !2991)
!2995 = !DILocation(line: 49, column: 3, scope: !2983)
!2996 = !DISubprogram(name: "malloc", scope: !950, file: !950, line: 540, type: !2984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2997 = distinct !DISubprogram(name: "ximalloc", scope: !696, file: !696, line: 53, type: !2998, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!88, !715}
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "s", arg: 1, scope: !2997, file: !696, line: 53, type: !715)
!3002 = !DILocation(line: 0, scope: !2997)
!3003 = !DILocalVariable(name: "s", arg: 1, scope: !3004, file: !3005, line: 55, type: !715)
!3004 = distinct !DISubprogram(name: "imalloc", scope: !3005, file: !3005, line: 55, type: !2998, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3006)
!3005 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3006 = !{!3003}
!3007 = !DILocation(line: 0, scope: !3004, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 55, column: 25, scope: !2997)
!3009 = !DILocation(line: 57, column: 26, scope: !3004, inlinedAt: !3008)
!3010 = !DILocation(line: 0, scope: !2964, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 55, column: 10, scope: !2997)
!3012 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3011)
!3013 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3011)
!3014 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3011)
!3015 = !DILocation(line: 55, column: 3, scope: !2997)
!3016 = distinct !DISubprogram(name: "xcharalloc", scope: !696, file: !696, line: 59, type: !3017, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!87, !90}
!3019 = !{!3020}
!3020 = !DILocalVariable(name: "n", arg: 1, scope: !3016, file: !696, line: 59, type: !90)
!3021 = !DILocation(line: 0, scope: !3016)
!3022 = !DILocation(line: 0, scope: !2983, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 61, column: 10, scope: !3016)
!3024 = !DILocation(line: 49, column: 25, scope: !2983, inlinedAt: !3023)
!3025 = !DILocation(line: 0, scope: !2964, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 49, column: 10, scope: !2983, inlinedAt: !3023)
!3027 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3026)
!3028 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3026)
!3029 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3026)
!3030 = !DILocation(line: 61, column: 3, scope: !3016)
!3031 = distinct !DISubprogram(name: "xrealloc", scope: !696, file: !696, line: 68, type: !3032, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!88, !88, !90}
!3034 = !{!3035, !3036}
!3035 = !DILocalVariable(name: "p", arg: 1, scope: !3031, file: !696, line: 68, type: !88)
!3036 = !DILocalVariable(name: "s", arg: 2, scope: !3031, file: !696, line: 68, type: !90)
!3037 = !DILocation(line: 0, scope: !3031)
!3038 = !DILocalVariable(name: "ptr", arg: 1, scope: !3039, file: !3040, line: 2057, type: !88)
!3039 = distinct !DISubprogram(name: "rpl_realloc", scope: !3040, file: !3040, line: 2057, type: !3032, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3041)
!3040 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3041 = !{!3038, !3042}
!3042 = !DILocalVariable(name: "size", arg: 2, scope: !3039, file: !3040, line: 2057, type: !90)
!3043 = !DILocation(line: 0, scope: !3039, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 70, column: 25, scope: !3031)
!3045 = !DILocation(line: 2059, column: 24, scope: !3039, inlinedAt: !3044)
!3046 = !DILocation(line: 2059, column: 10, scope: !3039, inlinedAt: !3044)
!3047 = !DILocation(line: 0, scope: !2964, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 70, column: 10, scope: !3031)
!3049 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3048)
!3050 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3048)
!3051 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3048)
!3052 = !DILocation(line: 70, column: 3, scope: !3031)
!3053 = !DISubprogram(name: "realloc", scope: !950, file: !950, line: 551, type: !3032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3054 = distinct !DISubprogram(name: "xirealloc", scope: !696, file: !696, line: 74, type: !3055, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!88, !88, !715}
!3057 = !{!3058, !3059}
!3058 = !DILocalVariable(name: "p", arg: 1, scope: !3054, file: !696, line: 74, type: !88)
!3059 = !DILocalVariable(name: "s", arg: 2, scope: !3054, file: !696, line: 74, type: !715)
!3060 = !DILocation(line: 0, scope: !3054)
!3061 = !DILocalVariable(name: "p", arg: 1, scope: !3062, file: !3005, line: 66, type: !88)
!3062 = distinct !DISubprogram(name: "irealloc", scope: !3005, file: !3005, line: 66, type: !3055, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3063)
!3063 = !{!3061, !3064}
!3064 = !DILocalVariable(name: "s", arg: 2, scope: !3062, file: !3005, line: 66, type: !715)
!3065 = !DILocation(line: 0, scope: !3062, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 76, column: 25, scope: !3054)
!3067 = !DILocation(line: 0, scope: !3039, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 68, column: 26, scope: !3062, inlinedAt: !3066)
!3069 = !DILocation(line: 2059, column: 24, scope: !3039, inlinedAt: !3068)
!3070 = !DILocation(line: 2059, column: 10, scope: !3039, inlinedAt: !3068)
!3071 = !DILocation(line: 0, scope: !2964, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 76, column: 10, scope: !3054)
!3073 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3072)
!3075 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3072)
!3076 = !DILocation(line: 76, column: 3, scope: !3054)
!3077 = distinct !DISubprogram(name: "xireallocarray", scope: !696, file: !696, line: 89, type: !3078, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!88, !88, !715, !715}
!3080 = !{!3081, !3082, !3083}
!3081 = !DILocalVariable(name: "p", arg: 1, scope: !3077, file: !696, line: 89, type: !88)
!3082 = !DILocalVariable(name: "n", arg: 2, scope: !3077, file: !696, line: 89, type: !715)
!3083 = !DILocalVariable(name: "s", arg: 3, scope: !3077, file: !696, line: 89, type: !715)
!3084 = !DILocation(line: 0, scope: !3077)
!3085 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !3005, line: 98, type: !88)
!3086 = distinct !DISubprogram(name: "ireallocarray", scope: !3005, file: !3005, line: 98, type: !3078, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3087)
!3087 = !{!3085, !3088, !3089}
!3088 = !DILocalVariable(name: "n", arg: 2, scope: !3086, file: !3005, line: 98, type: !715)
!3089 = !DILocalVariable(name: "s", arg: 3, scope: !3086, file: !3005, line: 98, type: !715)
!3090 = !DILocation(line: 0, scope: !3086, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 91, column: 25, scope: !3077)
!3092 = !DILocation(line: 101, column: 13, scope: !3086, inlinedAt: !3091)
!3093 = !DILocation(line: 0, scope: !2964, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 91, column: 10, scope: !3077)
!3095 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3094)
!3096 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3094)
!3097 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3094)
!3098 = !DILocation(line: 91, column: 3, scope: !3077)
!3099 = distinct !DISubprogram(name: "xnmalloc", scope: !696, file: !696, line: 98, type: !3100, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!88, !90, !90}
!3102 = !{!3103, !3104}
!3103 = !DILocalVariable(name: "n", arg: 1, scope: !3099, file: !696, line: 98, type: !90)
!3104 = !DILocalVariable(name: "s", arg: 2, scope: !3099, file: !696, line: 98, type: !90)
!3105 = !DILocation(line: 0, scope: !3099)
!3106 = !DILocation(line: 0, scope: !2956, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 100, column: 10, scope: !3099)
!3108 = !DILocation(line: 85, column: 25, scope: !2956, inlinedAt: !3107)
!3109 = !DILocation(line: 0, scope: !2964, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 85, column: 10, scope: !2956, inlinedAt: !3107)
!3111 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3110)
!3112 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3110)
!3113 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3110)
!3114 = !DILocation(line: 100, column: 3, scope: !3099)
!3115 = distinct !DISubprogram(name: "xinmalloc", scope: !696, file: !696, line: 104, type: !3116, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!88, !715, !715}
!3118 = !{!3119, !3120}
!3119 = !DILocalVariable(name: "n", arg: 1, scope: !3115, file: !696, line: 104, type: !715)
!3120 = !DILocalVariable(name: "s", arg: 2, scope: !3115, file: !696, line: 104, type: !715)
!3121 = !DILocation(line: 0, scope: !3115)
!3122 = !DILocation(line: 0, scope: !3077, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 106, column: 10, scope: !3115)
!3124 = !DILocation(line: 0, scope: !3086, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 91, column: 25, scope: !3077, inlinedAt: !3123)
!3126 = !DILocation(line: 101, column: 13, scope: !3086, inlinedAt: !3125)
!3127 = !DILocation(line: 0, scope: !2964, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 91, column: 10, scope: !3077, inlinedAt: !3123)
!3129 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3128)
!3130 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3128)
!3131 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3128)
!3132 = !DILocation(line: 106, column: 3, scope: !3115)
!3133 = distinct !DISubprogram(name: "x2realloc", scope: !696, file: !696, line: 116, type: !3134, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!88, !88, !702}
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "p", arg: 1, scope: !3133, file: !696, line: 116, type: !88)
!3138 = !DILocalVariable(name: "ps", arg: 2, scope: !3133, file: !696, line: 116, type: !702)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 0, scope: !699, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 118, column: 10, scope: !3133)
!3142 = !DILocation(line: 178, column: 14, scope: !699, inlinedAt: !3141)
!3143 = !DILocation(line: 180, column: 9, scope: !3144, inlinedAt: !3141)
!3144 = distinct !DILexicalBlock(scope: !699, file: !696, line: 180, column: 7)
!3145 = !DILocation(line: 180, column: 7, scope: !699, inlinedAt: !3141)
!3146 = !DILocation(line: 182, column: 13, scope: !3147, inlinedAt: !3141)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !696, line: 182, column: 11)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !696, line: 181, column: 5)
!3149 = !DILocation(line: 182, column: 11, scope: !3148, inlinedAt: !3141)
!3150 = !DILocation(line: 197, column: 11, scope: !3151, inlinedAt: !3141)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !696, line: 197, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !696, line: 195, column: 5)
!3153 = !DILocation(line: 197, column: 11, scope: !3152, inlinedAt: !3141)
!3154 = !DILocation(line: 198, column: 9, scope: !3151, inlinedAt: !3141)
!3155 = !DILocation(line: 0, scope: !2956, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 201, column: 7, scope: !699, inlinedAt: !3141)
!3157 = !DILocation(line: 85, column: 25, scope: !2956, inlinedAt: !3156)
!3158 = !DILocation(line: 0, scope: !2964, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 85, column: 10, scope: !2956, inlinedAt: !3156)
!3160 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3159)
!3161 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3159)
!3162 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3159)
!3163 = !DILocation(line: 202, column: 7, scope: !699, inlinedAt: !3141)
!3164 = !DILocation(line: 118, column: 3, scope: !3133)
!3165 = !DILocation(line: 0, scope: !699)
!3166 = !DILocation(line: 178, column: 14, scope: !699)
!3167 = !DILocation(line: 180, column: 9, scope: !3144)
!3168 = !DILocation(line: 180, column: 7, scope: !699)
!3169 = !DILocation(line: 182, column: 13, scope: !3147)
!3170 = !DILocation(line: 182, column: 11, scope: !3148)
!3171 = !DILocation(line: 190, column: 30, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3147, file: !696, line: 183, column: 9)
!3173 = !DILocation(line: 191, column: 16, scope: !3172)
!3174 = !DILocation(line: 191, column: 13, scope: !3172)
!3175 = !DILocation(line: 192, column: 9, scope: !3172)
!3176 = !DILocation(line: 197, column: 11, scope: !3151)
!3177 = !DILocation(line: 197, column: 11, scope: !3152)
!3178 = !DILocation(line: 198, column: 9, scope: !3151)
!3179 = !DILocation(line: 0, scope: !2956, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 201, column: 7, scope: !699)
!3181 = !DILocation(line: 85, column: 25, scope: !2956, inlinedAt: !3180)
!3182 = !DILocation(line: 0, scope: !2964, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 85, column: 10, scope: !2956, inlinedAt: !3180)
!3184 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3183)
!3185 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3183)
!3186 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3183)
!3187 = !DILocation(line: 202, column: 7, scope: !699)
!3188 = !DILocation(line: 203, column: 3, scope: !699)
!3189 = !DILocation(line: 0, scope: !711)
!3190 = !DILocation(line: 230, column: 14, scope: !711)
!3191 = !DILocation(line: 238, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !711, file: !696, line: 238, column: 7)
!3193 = !DILocation(line: 238, column: 7, scope: !711)
!3194 = !DILocation(line: 240, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !711, file: !696, line: 240, column: 7)
!3196 = !DILocation(line: 240, column: 18, scope: !3195)
!3197 = !DILocation(line: 253, column: 8, scope: !711)
!3198 = !DILocation(line: 256, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !711, file: !696, line: 256, column: 7)
!3200 = !DILocation(line: 256, column: 7, scope: !711)
!3201 = !DILocation(line: 258, column: 27, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !696, line: 257, column: 5)
!3203 = !DILocation(line: 259, column: 32, scope: !3202)
!3204 = !DILocation(line: 260, column: 5, scope: !3202)
!3205 = !DILocation(line: 262, column: 9, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !711, file: !696, line: 262, column: 7)
!3207 = !DILocation(line: 262, column: 7, scope: !711)
!3208 = !DILocation(line: 263, column: 9, scope: !3206)
!3209 = !DILocation(line: 263, column: 5, scope: !3206)
!3210 = !DILocation(line: 264, column: 9, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !711, file: !696, line: 264, column: 7)
!3212 = !DILocation(line: 264, column: 14, scope: !3211)
!3213 = !DILocation(line: 265, column: 7, scope: !3211)
!3214 = !DILocation(line: 265, column: 11, scope: !3211)
!3215 = !DILocation(line: 266, column: 11, scope: !3211)
!3216 = !DILocation(line: 267, column: 14, scope: !3211)
!3217 = !DILocation(line: 264, column: 7, scope: !711)
!3218 = !DILocation(line: 268, column: 5, scope: !3211)
!3219 = !DILocation(line: 0, scope: !3031, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 269, column: 8, scope: !711)
!3221 = !DILocation(line: 0, scope: !3039, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 70, column: 25, scope: !3031, inlinedAt: !3220)
!3223 = !DILocation(line: 2059, column: 24, scope: !3039, inlinedAt: !3222)
!3224 = !DILocation(line: 2059, column: 10, scope: !3039, inlinedAt: !3222)
!3225 = !DILocation(line: 0, scope: !2964, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 70, column: 10, scope: !3031, inlinedAt: !3220)
!3227 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3226)
!3228 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3226)
!3229 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3226)
!3230 = !DILocation(line: 270, column: 7, scope: !711)
!3231 = !DILocation(line: 271, column: 3, scope: !711)
!3232 = distinct !DISubprogram(name: "xzalloc", scope: !696, file: !696, line: 279, type: !2984, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3233)
!3233 = !{!3234}
!3234 = !DILocalVariable(name: "s", arg: 1, scope: !3232, file: !696, line: 279, type: !90)
!3235 = !DILocation(line: 0, scope: !3232)
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !696, line: 294, type: !90)
!3237 = distinct !DISubprogram(name: "xcalloc", scope: !696, file: !696, line: 294, type: !3100, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3238)
!3238 = !{!3236, !3239}
!3239 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !696, line: 294, type: !90)
!3240 = !DILocation(line: 0, scope: !3237, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 281, column: 10, scope: !3232)
!3242 = !DILocation(line: 296, column: 25, scope: !3237, inlinedAt: !3241)
!3243 = !DILocation(line: 0, scope: !2964, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 296, column: 10, scope: !3237, inlinedAt: !3241)
!3245 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3244)
!3246 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3244)
!3247 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3244)
!3248 = !DILocation(line: 281, column: 3, scope: !3232)
!3249 = !DISubprogram(name: "calloc", scope: !950, file: !950, line: 543, type: !3100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3250 = !DILocation(line: 0, scope: !3237)
!3251 = !DILocation(line: 296, column: 25, scope: !3237)
!3252 = !DILocation(line: 0, scope: !2964, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 296, column: 10, scope: !3237)
!3254 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3253)
!3257 = !DILocation(line: 296, column: 3, scope: !3237)
!3258 = distinct !DISubprogram(name: "xizalloc", scope: !696, file: !696, line: 285, type: !2998, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3259)
!3259 = !{!3260}
!3260 = !DILocalVariable(name: "s", arg: 1, scope: !3258, file: !696, line: 285, type: !715)
!3261 = !DILocation(line: 0, scope: !3258)
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3263, file: !696, line: 300, type: !715)
!3263 = distinct !DISubprogram(name: "xicalloc", scope: !696, file: !696, line: 300, type: !3116, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3264)
!3264 = !{!3262, !3265}
!3265 = !DILocalVariable(name: "s", arg: 2, scope: !3263, file: !696, line: 300, type: !715)
!3266 = !DILocation(line: 0, scope: !3263, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 287, column: 10, scope: !3258)
!3268 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !3005, line: 77, type: !715)
!3269 = distinct !DISubprogram(name: "icalloc", scope: !3005, file: !3005, line: 77, type: !3116, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3270)
!3270 = !{!3268, !3271}
!3271 = !DILocalVariable(name: "s", arg: 2, scope: !3269, file: !3005, line: 77, type: !715)
!3272 = !DILocation(line: 0, scope: !3269, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 302, column: 25, scope: !3263, inlinedAt: !3267)
!3274 = !DILocation(line: 91, column: 10, scope: !3269, inlinedAt: !3273)
!3275 = !DILocation(line: 0, scope: !2964, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 302, column: 10, scope: !3263, inlinedAt: !3267)
!3277 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3276)
!3278 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3276)
!3279 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3276)
!3280 = !DILocation(line: 287, column: 3, scope: !3258)
!3281 = !DILocation(line: 0, scope: !3263)
!3282 = !DILocation(line: 0, scope: !3269, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 302, column: 25, scope: !3263)
!3284 = !DILocation(line: 91, column: 10, scope: !3269, inlinedAt: !3283)
!3285 = !DILocation(line: 0, scope: !2964, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 302, column: 10, scope: !3263)
!3287 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3286)
!3288 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3286)
!3289 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3286)
!3290 = !DILocation(line: 302, column: 3, scope: !3263)
!3291 = distinct !DISubprogram(name: "xmemdup", scope: !696, file: !696, line: 310, type: !3292, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!88, !974, !90}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "p", arg: 1, scope: !3291, file: !696, line: 310, type: !974)
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !696, line: 310, type: !90)
!3297 = !DILocation(line: 0, scope: !3291)
!3298 = !DILocation(line: 0, scope: !2983, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 312, column: 18, scope: !3291)
!3300 = !DILocation(line: 49, column: 25, scope: !2983, inlinedAt: !3299)
!3301 = !DILocation(line: 0, scope: !2964, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 49, column: 10, scope: !2983, inlinedAt: !3299)
!3303 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3302)
!3304 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3302)
!3305 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3302)
!3306 = !DILocalVariable(name: "__dest", arg: 1, scope: !3307, file: !1438, line: 26, type: !3310)
!3307 = distinct !DISubprogram(name: "memcpy", scope: !1438, file: !1438, line: 26, type: !3308, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3311)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!88, !3310, !973, !90}
!3310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3311 = !{!3306, !3312, !3313}
!3312 = !DILocalVariable(name: "__src", arg: 2, scope: !3307, file: !1438, line: 26, type: !973)
!3313 = !DILocalVariable(name: "__len", arg: 3, scope: !3307, file: !1438, line: 26, type: !90)
!3314 = !DILocation(line: 0, scope: !3307, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 312, column: 10, scope: !3291)
!3316 = !DILocation(line: 29, column: 10, scope: !3307, inlinedAt: !3315)
!3317 = !DILocation(line: 312, column: 3, scope: !3291)
!3318 = distinct !DISubprogram(name: "ximemdup", scope: !696, file: !696, line: 316, type: !3319, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!88, !974, !715}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "p", arg: 1, scope: !3318, file: !696, line: 316, type: !974)
!3323 = !DILocalVariable(name: "s", arg: 2, scope: !3318, file: !696, line: 316, type: !715)
!3324 = !DILocation(line: 0, scope: !3318)
!3325 = !DILocation(line: 0, scope: !2997, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 318, column: 18, scope: !3318)
!3327 = !DILocation(line: 0, scope: !3004, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 55, column: 25, scope: !2997, inlinedAt: !3326)
!3329 = !DILocation(line: 57, column: 26, scope: !3004, inlinedAt: !3328)
!3330 = !DILocation(line: 0, scope: !2964, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 55, column: 10, scope: !2997, inlinedAt: !3326)
!3332 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3331)
!3333 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3331)
!3334 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3331)
!3335 = !DILocation(line: 0, scope: !3307, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 318, column: 10, scope: !3318)
!3337 = !DILocation(line: 29, column: 10, scope: !3307, inlinedAt: !3336)
!3338 = !DILocation(line: 318, column: 3, scope: !3318)
!3339 = distinct !DISubprogram(name: "ximemdup0", scope: !696, file: !696, line: 325, type: !3340, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!87, !974, !715}
!3342 = !{!3343, !3344, !3345}
!3343 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !696, line: 325, type: !974)
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !696, line: 325, type: !715)
!3345 = !DILocalVariable(name: "result", scope: !3339, file: !696, line: 327, type: !87)
!3346 = !DILocation(line: 0, scope: !3339)
!3347 = !DILocation(line: 327, column: 30, scope: !3339)
!3348 = !DILocation(line: 0, scope: !2997, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 327, column: 18, scope: !3339)
!3350 = !DILocation(line: 0, scope: !3004, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 55, column: 25, scope: !2997, inlinedAt: !3349)
!3352 = !DILocation(line: 57, column: 26, scope: !3004, inlinedAt: !3351)
!3353 = !DILocation(line: 0, scope: !2964, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 55, column: 10, scope: !2997, inlinedAt: !3349)
!3355 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3354)
!3356 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3354)
!3357 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3354)
!3358 = !DILocation(line: 328, column: 3, scope: !3339)
!3359 = !DILocation(line: 328, column: 13, scope: !3339)
!3360 = !DILocation(line: 0, scope: !3307, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 329, column: 10, scope: !3339)
!3362 = !DILocation(line: 29, column: 10, scope: !3307, inlinedAt: !3361)
!3363 = !DILocation(line: 329, column: 3, scope: !3339)
!3364 = distinct !DISubprogram(name: "xstrdup", scope: !696, file: !696, line: 335, type: !952, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3365)
!3365 = !{!3366}
!3366 = !DILocalVariable(name: "string", arg: 1, scope: !3364, file: !696, line: 335, type: !93)
!3367 = !DILocation(line: 0, scope: !3364)
!3368 = !DILocation(line: 337, column: 27, scope: !3364)
!3369 = !DILocation(line: 337, column: 43, scope: !3364)
!3370 = !DILocation(line: 0, scope: !3291, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 337, column: 10, scope: !3364)
!3372 = !DILocation(line: 0, scope: !2983, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 312, column: 18, scope: !3291, inlinedAt: !3371)
!3374 = !DILocation(line: 49, column: 25, scope: !2983, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !2964, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 49, column: 10, scope: !2983, inlinedAt: !3373)
!3377 = !DILocation(line: 39, column: 8, scope: !2971, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !2964, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !2971, inlinedAt: !3376)
!3380 = !DILocation(line: 0, scope: !3307, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 312, column: 10, scope: !3291, inlinedAt: !3371)
!3382 = !DILocation(line: 29, column: 10, scope: !3307, inlinedAt: !3381)
!3383 = !DILocation(line: 337, column: 3, scope: !3364)
!3384 = distinct !DISubprogram(name: "xalloc_die", scope: !658, file: !658, line: 32, type: !401, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3385)
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "__errstatus", scope: !3387, file: !658, line: 34, type: !3388)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !658, line: 34, column: 3)
!3388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3389 = !DILocation(line: 34, column: 3, scope: !3387)
!3390 = !DILocation(line: 0, scope: !3387)
!3391 = !DILocation(line: 40, column: 3, scope: !3384)
!3392 = distinct !DISubprogram(name: "close_stream", scope: !733, file: !733, line: 55, type: !3393, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3429)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!67, !3395}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3397, file: !146, line: 51, baseType: !67, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3397, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3397, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3397, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3397, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3397, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3397, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3397, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3397, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3397, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3397, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3397, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3397, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3397, file: !146, line: 70, baseType: !3413, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3397, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3397, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3397, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3397, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3397, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3397, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3397, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3397, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3397, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3397, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3397, file: !146, line: 93, baseType: !3413, size: 64, offset: 1344)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3397, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3397, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3397, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3397, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3429 = !{!3430, !3431, !3433, !3434}
!3430 = !DILocalVariable(name: "stream", arg: 1, scope: !3392, file: !733, line: 55, type: !3395)
!3431 = !DILocalVariable(name: "some_pending", scope: !3392, file: !733, line: 57, type: !3432)
!3432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!3433 = !DILocalVariable(name: "prev_fail", scope: !3392, file: !733, line: 58, type: !3432)
!3434 = !DILocalVariable(name: "fclose_fail", scope: !3392, file: !733, line: 59, type: !3432)
!3435 = !DILocation(line: 0, scope: !3392)
!3436 = !DILocation(line: 57, column: 30, scope: !3392)
!3437 = !DILocalVariable(name: "__stream", arg: 1, scope: !3438, file: !1281, line: 135, type: !3395)
!3438 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1281, file: !1281, line: 135, type: !3393, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3439)
!3439 = !{!3437}
!3440 = !DILocation(line: 0, scope: !3438, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 58, column: 27, scope: !3392)
!3442 = !DILocation(line: 137, column: 10, scope: !3438, inlinedAt: !3441)
!3443 = !{!1290, !827, i64 0}
!3444 = !DILocation(line: 58, column: 43, scope: !3392)
!3445 = !DILocation(line: 59, column: 29, scope: !3392)
!3446 = !DILocation(line: 59, column: 45, scope: !3392)
!3447 = !DILocation(line: 69, column: 17, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3392, file: !733, line: 69, column: 7)
!3449 = !DILocation(line: 57, column: 50, scope: !3392)
!3450 = !DILocation(line: 69, column: 33, scope: !3448)
!3451 = !DILocation(line: 69, column: 53, scope: !3448)
!3452 = !DILocation(line: 69, column: 59, scope: !3448)
!3453 = !DILocation(line: 69, column: 7, scope: !3392)
!3454 = !DILocation(line: 71, column: 11, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3448, file: !733, line: 70, column: 5)
!3456 = !DILocation(line: 72, column: 9, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3455, file: !733, line: 71, column: 11)
!3458 = !DILocation(line: 72, column: 15, scope: !3457)
!3459 = !DILocation(line: 77, column: 1, scope: !3392)
!3460 = !DISubprogram(name: "__fpending", scope: !3461, file: !3461, line: 75, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3461 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!90, !3395}
!3464 = distinct !DISubprogram(name: "rpl_fclose", scope: !735, file: !735, line: 58, type: !3465, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3501)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!67, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3469)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3469, file: !146, line: 51, baseType: !67, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3469, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3469, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3469, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3469, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3469, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3469, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3469, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3469, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3469, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3469, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3469, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3469, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3469, file: !146, line: 70, baseType: !3485, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3469, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3469, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3469, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3469, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3469, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3469, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3469, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3469, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3469, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3469, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3469, file: !146, line: 93, baseType: !3485, size: 64, offset: 1344)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3469, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3469, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3469, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3469, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3501 = !{!3502, !3503, !3504, !3505}
!3502 = !DILocalVariable(name: "fp", arg: 1, scope: !3464, file: !735, line: 58, type: !3467)
!3503 = !DILocalVariable(name: "saved_errno", scope: !3464, file: !735, line: 60, type: !67)
!3504 = !DILocalVariable(name: "fd", scope: !3464, file: !735, line: 63, type: !67)
!3505 = !DILocalVariable(name: "result", scope: !3464, file: !735, line: 74, type: !67)
!3506 = !DILocation(line: 0, scope: !3464)
!3507 = !DILocation(line: 63, column: 12, scope: !3464)
!3508 = !DILocation(line: 64, column: 10, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3464, file: !735, line: 64, column: 7)
!3510 = !DILocation(line: 64, column: 7, scope: !3464)
!3511 = !DILocation(line: 65, column: 12, scope: !3509)
!3512 = !DILocation(line: 65, column: 5, scope: !3509)
!3513 = !DILocation(line: 70, column: 9, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3464, file: !735, line: 70, column: 7)
!3515 = !DILocation(line: 70, column: 23, scope: !3514)
!3516 = !DILocation(line: 70, column: 33, scope: !3514)
!3517 = !DILocation(line: 70, column: 26, scope: !3514)
!3518 = !DILocation(line: 70, column: 59, scope: !3514)
!3519 = !DILocation(line: 71, column: 7, scope: !3514)
!3520 = !DILocation(line: 71, column: 10, scope: !3514)
!3521 = !DILocation(line: 70, column: 7, scope: !3464)
!3522 = !DILocation(line: 100, column: 12, scope: !3464)
!3523 = !DILocation(line: 105, column: 7, scope: !3464)
!3524 = !DILocation(line: 72, column: 19, scope: !3514)
!3525 = !DILocation(line: 105, column: 19, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3464, file: !735, line: 105, column: 7)
!3527 = !DILocation(line: 107, column: 13, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3526, file: !735, line: 106, column: 5)
!3529 = !DILocation(line: 109, column: 5, scope: !3528)
!3530 = !DILocation(line: 112, column: 1, scope: !3464)
!3531 = !DISubprogram(name: "fileno", scope: !361, file: !361, line: 809, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3532 = !DISubprogram(name: "fclose", scope: !361, file: !361, line: 178, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3533 = !DISubprogram(name: "__freading", scope: !3461, file: !3461, line: 51, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3534 = !DISubprogram(name: "lseek", scope: !1158, file: !1158, line: 339, type: !3535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!168, !67, !168, !67}
!3537 = distinct !DISubprogram(name: "rpl_fflush", scope: !737, file: !737, line: 130, type: !3538, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3574)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!67, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3542)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3542, file: !146, line: 51, baseType: !67, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3542, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3542, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3542, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3542, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3542, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3542, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3542, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3542, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3542, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3542, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3542, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3542, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3542, file: !146, line: 70, baseType: !3558, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3542, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3542, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3542, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3542, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3542, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3542, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3542, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3542, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3542, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3542, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3542, file: !146, line: 93, baseType: !3558, size: 64, offset: 1344)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3542, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3542, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3542, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3542, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3574 = !{!3575}
!3575 = !DILocalVariable(name: "stream", arg: 1, scope: !3537, file: !737, line: 130, type: !3540)
!3576 = !DILocation(line: 0, scope: !3537)
!3577 = !DILocation(line: 151, column: 14, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3537, file: !737, line: 151, column: 7)
!3579 = !DILocation(line: 151, column: 22, scope: !3578)
!3580 = !DILocation(line: 151, column: 27, scope: !3578)
!3581 = !DILocation(line: 151, column: 7, scope: !3537)
!3582 = !DILocation(line: 152, column: 12, scope: !3578)
!3583 = !DILocation(line: 152, column: 5, scope: !3578)
!3584 = !DILocalVariable(name: "fp", arg: 1, scope: !3585, file: !737, line: 42, type: !3540)
!3585 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !737, file: !737, line: 42, type: !3586, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{null, !3540}
!3588 = !{!3584}
!3589 = !DILocation(line: 0, scope: !3585, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 157, column: 3, scope: !3537)
!3591 = !DILocation(line: 44, column: 12, scope: !3592, inlinedAt: !3590)
!3592 = distinct !DILexicalBlock(scope: !3585, file: !737, line: 44, column: 7)
!3593 = !DILocation(line: 44, column: 19, scope: !3592, inlinedAt: !3590)
!3594 = !DILocation(line: 44, column: 7, scope: !3585, inlinedAt: !3590)
!3595 = !DILocation(line: 46, column: 5, scope: !3592, inlinedAt: !3590)
!3596 = !DILocation(line: 159, column: 10, scope: !3537)
!3597 = !DILocation(line: 159, column: 3, scope: !3537)
!3598 = !DILocation(line: 236, column: 1, scope: !3537)
!3599 = !DISubprogram(name: "fflush", scope: !361, file: !361, line: 230, type: !3538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3600 = distinct !DISubprogram(name: "rpl_fseeko", scope: !739, file: !739, line: 28, type: !3601, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3638)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!67, !3603, !3637, !67}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3605, file: !146, line: 51, baseType: !67, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3605, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3605, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3605, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3605, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3605, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3605, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3605, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3605, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3605, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3605, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3605, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3605, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3605, file: !146, line: 70, baseType: !3621, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3605, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3605, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3605, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3605, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3605, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3605, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3605, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3605, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3605, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3605, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3605, file: !146, line: 93, baseType: !3621, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3605, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3605, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3605, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3605, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !361, line: 63, baseType: !168)
!3638 = !{!3639, !3640, !3641, !3642}
!3639 = !DILocalVariable(name: "fp", arg: 1, scope: !3600, file: !739, line: 28, type: !3603)
!3640 = !DILocalVariable(name: "offset", arg: 2, scope: !3600, file: !739, line: 28, type: !3637)
!3641 = !DILocalVariable(name: "whence", arg: 3, scope: !3600, file: !739, line: 28, type: !67)
!3642 = !DILocalVariable(name: "pos", scope: !3643, file: !739, line: 123, type: !3637)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !739, line: 119, column: 5)
!3644 = distinct !DILexicalBlock(scope: !3600, file: !739, line: 55, column: 7)
!3645 = !DILocation(line: 0, scope: !3600)
!3646 = !DILocation(line: 55, column: 12, scope: !3644)
!3647 = !{!1290, !769, i64 16}
!3648 = !DILocation(line: 55, column: 33, scope: !3644)
!3649 = !{!1290, !769, i64 8}
!3650 = !DILocation(line: 55, column: 25, scope: !3644)
!3651 = !DILocation(line: 56, column: 7, scope: !3644)
!3652 = !DILocation(line: 56, column: 15, scope: !3644)
!3653 = !DILocation(line: 56, column: 37, scope: !3644)
!3654 = !{!1290, !769, i64 32}
!3655 = !DILocation(line: 56, column: 29, scope: !3644)
!3656 = !DILocation(line: 57, column: 7, scope: !3644)
!3657 = !DILocation(line: 57, column: 15, scope: !3644)
!3658 = !{!1290, !769, i64 72}
!3659 = !DILocation(line: 57, column: 29, scope: !3644)
!3660 = !DILocation(line: 55, column: 7, scope: !3600)
!3661 = !DILocation(line: 123, column: 26, scope: !3643)
!3662 = !DILocation(line: 123, column: 19, scope: !3643)
!3663 = !DILocation(line: 0, scope: !3643)
!3664 = !DILocation(line: 124, column: 15, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3643, file: !739, line: 124, column: 11)
!3666 = !DILocation(line: 124, column: 11, scope: !3643)
!3667 = !DILocation(line: 135, column: 19, scope: !3643)
!3668 = !DILocation(line: 136, column: 12, scope: !3643)
!3669 = !DILocation(line: 136, column: 20, scope: !3643)
!3670 = !{!1290, !1291, i64 144}
!3671 = !DILocation(line: 167, column: 7, scope: !3643)
!3672 = !DILocation(line: 169, column: 10, scope: !3600)
!3673 = !DILocation(line: 169, column: 3, scope: !3600)
!3674 = !DILocation(line: 170, column: 1, scope: !3600)
!3675 = !DISubprogram(name: "fseeko", scope: !361, file: !361, line: 736, type: !3676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!67, !3603, !168, !67}
!3678 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !665, file: !665, line: 100, type: !3679, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3682)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!90, !1456, !93, !90, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!3682 = !{!3683, !3684, !3685, !3686, !3687}
!3683 = !DILocalVariable(name: "pwc", arg: 1, scope: !3678, file: !665, line: 100, type: !1456)
!3684 = !DILocalVariable(name: "s", arg: 2, scope: !3678, file: !665, line: 100, type: !93)
!3685 = !DILocalVariable(name: "n", arg: 3, scope: !3678, file: !665, line: 100, type: !90)
!3686 = !DILocalVariable(name: "ps", arg: 4, scope: !3678, file: !665, line: 100, type: !3681)
!3687 = !DILocalVariable(name: "ret", scope: !3678, file: !665, line: 130, type: !90)
!3688 = !DILocation(line: 0, scope: !3678)
!3689 = !DILocation(line: 105, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3678, file: !665, line: 105, column: 7)
!3691 = !DILocation(line: 105, column: 7, scope: !3678)
!3692 = !DILocation(line: 117, column: 10, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3678, file: !665, line: 117, column: 7)
!3694 = !DILocation(line: 117, column: 7, scope: !3678)
!3695 = !DILocation(line: 130, column: 16, scope: !3678)
!3696 = !DILocation(line: 135, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3678, file: !665, line: 135, column: 7)
!3698 = !DILocation(line: 135, column: 25, scope: !3697)
!3699 = !DILocation(line: 135, column: 30, scope: !3697)
!3700 = !DILocation(line: 135, column: 7, scope: !3678)
!3701 = !DILocalVariable(name: "ps", arg: 1, scope: !3702, file: !1429, line: 1135, type: !3681)
!3702 = distinct !DISubprogram(name: "mbszero", scope: !1429, file: !1429, line: 1135, type: !3703, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3681}
!3705 = !{!3701}
!3706 = !DILocation(line: 0, scope: !3702, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 137, column: 5, scope: !3697)
!3708 = !DILocalVariable(name: "__dest", arg: 1, scope: !3709, file: !1438, line: 57, type: !88)
!3709 = distinct !DISubprogram(name: "memset", scope: !1438, file: !1438, line: 57, type: !1439, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3710)
!3710 = !{!3708, !3711, !3712}
!3711 = !DILocalVariable(name: "__ch", arg: 2, scope: !3709, file: !1438, line: 57, type: !67)
!3712 = !DILocalVariable(name: "__len", arg: 3, scope: !3709, file: !1438, line: 57, type: !90)
!3713 = !DILocation(line: 0, scope: !3709, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 1137, column: 3, scope: !3702, inlinedAt: !3707)
!3715 = !DILocation(line: 59, column: 10, scope: !3709, inlinedAt: !3714)
!3716 = !DILocation(line: 137, column: 5, scope: !3697)
!3717 = !DILocation(line: 138, column: 11, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3678, file: !665, line: 138, column: 7)
!3719 = !DILocation(line: 138, column: 7, scope: !3678)
!3720 = !DILocation(line: 139, column: 5, scope: !3718)
!3721 = !DILocation(line: 143, column: 26, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3678, file: !665, line: 143, column: 7)
!3723 = !DILocation(line: 143, column: 41, scope: !3722)
!3724 = !DILocation(line: 143, column: 7, scope: !3678)
!3725 = !DILocation(line: 145, column: 15, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !665, line: 145, column: 11)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !665, line: 144, column: 5)
!3728 = !DILocation(line: 145, column: 11, scope: !3727)
!3729 = !DILocation(line: 146, column: 32, scope: !3726)
!3730 = !DILocation(line: 146, column: 16, scope: !3726)
!3731 = !DILocation(line: 146, column: 14, scope: !3726)
!3732 = !DILocation(line: 146, column: 9, scope: !3726)
!3733 = !DILocation(line: 286, column: 1, scope: !3678)
!3734 = !DISubprogram(name: "mbsinit", scope: !3735, file: !3735, line: 293, type: !3736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3735 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!67, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!3740 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !741, file: !741, line: 27, type: !2948, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3741)
!3741 = !{!3742, !3743, !3744, !3745}
!3742 = !DILocalVariable(name: "ptr", arg: 1, scope: !3740, file: !741, line: 27, type: !88)
!3743 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3740, file: !741, line: 27, type: !90)
!3744 = !DILocalVariable(name: "size", arg: 3, scope: !3740, file: !741, line: 27, type: !90)
!3745 = !DILocalVariable(name: "nbytes", scope: !3740, file: !741, line: 29, type: !90)
!3746 = !DILocation(line: 0, scope: !3740)
!3747 = !DILocation(line: 30, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3740, file: !741, line: 30, column: 7)
!3749 = !DILocation(line: 30, column: 7, scope: !3740)
!3750 = !DILocation(line: 32, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !741, line: 31, column: 5)
!3752 = !DILocation(line: 32, column: 13, scope: !3751)
!3753 = !DILocation(line: 33, column: 7, scope: !3751)
!3754 = !DILocalVariable(name: "ptr", arg: 1, scope: !3755, file: !3040, line: 2057, type: !88)
!3755 = distinct !DISubprogram(name: "rpl_realloc", scope: !3040, file: !3040, line: 2057, type: !3032, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3756)
!3756 = !{!3754, !3757}
!3757 = !DILocalVariable(name: "size", arg: 2, scope: !3755, file: !3040, line: 2057, type: !90)
!3758 = !DILocation(line: 0, scope: !3755, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 37, column: 10, scope: !3740)
!3760 = !DILocation(line: 2059, column: 24, scope: !3755, inlinedAt: !3759)
!3761 = !DILocation(line: 2059, column: 10, scope: !3755, inlinedAt: !3759)
!3762 = !DILocation(line: 37, column: 3, scope: !3740)
!3763 = !DILocation(line: 38, column: 1, scope: !3740)
!3764 = distinct !DISubprogram(name: "hard_locale", scope: !683, file: !683, line: 28, type: !3765, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!129, !67}
!3767 = !{!3768, !3769}
!3768 = !DILocalVariable(name: "category", arg: 1, scope: !3764, file: !683, line: 28, type: !67)
!3769 = !DILocalVariable(name: "locale", scope: !3764, file: !683, line: 30, type: !3770)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3771)
!3771 = !{!3772}
!3772 = !DISubrange(count: 257)
!3773 = distinct !DIAssignID()
!3774 = !DILocation(line: 0, scope: !3764)
!3775 = !DILocation(line: 30, column: 3, scope: !3764)
!3776 = !DILocation(line: 32, column: 7, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3764, file: !683, line: 32, column: 7)
!3778 = !DILocation(line: 32, column: 7, scope: !3764)
!3779 = !DILocalVariable(name: "__s1", arg: 1, scope: !3780, file: !839, line: 1359, type: !93)
!3780 = distinct !DISubprogram(name: "streq", scope: !839, file: !839, line: 1359, type: !840, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3781)
!3781 = !{!3779, !3782}
!3782 = !DILocalVariable(name: "__s2", arg: 2, scope: !3780, file: !839, line: 1359, type: !93)
!3783 = !DILocation(line: 0, scope: !3780, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 35, column: 9, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3764, file: !683, line: 35, column: 7)
!3786 = !DILocation(line: 1361, column: 11, scope: !3780, inlinedAt: !3784)
!3787 = !DILocation(line: 1361, column: 10, scope: !3780, inlinedAt: !3784)
!3788 = !DILocation(line: 35, column: 29, scope: !3785)
!3789 = !DILocation(line: 0, scope: !3780, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 35, column: 32, scope: !3785)
!3791 = !DILocation(line: 1361, column: 11, scope: !3780, inlinedAt: !3790)
!3792 = !DILocation(line: 1361, column: 10, scope: !3780, inlinedAt: !3790)
!3793 = !DILocation(line: 35, column: 7, scope: !3764)
!3794 = !DILocation(line: 46, column: 3, scope: !3764)
!3795 = !DILocation(line: 47, column: 1, scope: !3764)
!3796 = distinct !DISubprogram(name: "setlocale_null_r", scope: !745, file: !745, line: 154, type: !3797, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3799)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!67, !67, !87, !90}
!3799 = !{!3800, !3801, !3802}
!3800 = !DILocalVariable(name: "category", arg: 1, scope: !3796, file: !745, line: 154, type: !67)
!3801 = !DILocalVariable(name: "buf", arg: 2, scope: !3796, file: !745, line: 154, type: !87)
!3802 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3796, file: !745, line: 154, type: !90)
!3803 = !DILocation(line: 0, scope: !3796)
!3804 = !DILocation(line: 159, column: 10, scope: !3796)
!3805 = !DILocation(line: 159, column: 3, scope: !3796)
!3806 = distinct !DISubprogram(name: "setlocale_null", scope: !745, file: !745, line: 186, type: !3807, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!93, !67}
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "category", arg: 1, scope: !3806, file: !745, line: 186, type: !67)
!3811 = !DILocation(line: 0, scope: !3806)
!3812 = !DILocation(line: 189, column: 10, scope: !3806)
!3813 = !DILocation(line: 189, column: 3, scope: !3806)
!3814 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !747, file: !747, line: 35, type: !3807, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3815)
!3815 = !{!3816, !3817}
!3816 = !DILocalVariable(name: "category", arg: 1, scope: !3814, file: !747, line: 35, type: !67)
!3817 = !DILocalVariable(name: "result", scope: !3814, file: !747, line: 37, type: !93)
!3818 = !DILocation(line: 0, scope: !3814)
!3819 = !DILocation(line: 37, column: 24, scope: !3814)
!3820 = !DILocation(line: 62, column: 3, scope: !3814)
!3821 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !747, file: !747, line: 66, type: !3797, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827}
!3823 = !DILocalVariable(name: "category", arg: 1, scope: !3821, file: !747, line: 66, type: !67)
!3824 = !DILocalVariable(name: "buf", arg: 2, scope: !3821, file: !747, line: 66, type: !87)
!3825 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3821, file: !747, line: 66, type: !90)
!3826 = !DILocalVariable(name: "result", scope: !3821, file: !747, line: 111, type: !93)
!3827 = !DILocalVariable(name: "length", scope: !3828, file: !747, line: 125, type: !90)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !747, line: 124, column: 5)
!3829 = distinct !DILexicalBlock(scope: !3821, file: !747, line: 113, column: 7)
!3830 = !DILocation(line: 0, scope: !3821)
!3831 = !DILocation(line: 0, scope: !3814, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 111, column: 24, scope: !3821)
!3833 = !DILocation(line: 37, column: 24, scope: !3814, inlinedAt: !3832)
!3834 = !DILocation(line: 113, column: 14, scope: !3829)
!3835 = !DILocation(line: 113, column: 7, scope: !3821)
!3836 = !DILocation(line: 116, column: 19, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !747, line: 116, column: 11)
!3838 = distinct !DILexicalBlock(scope: !3829, file: !747, line: 114, column: 5)
!3839 = !DILocation(line: 116, column: 11, scope: !3838)
!3840 = !DILocation(line: 120, column: 16, scope: !3837)
!3841 = !DILocation(line: 120, column: 9, scope: !3837)
!3842 = !DILocation(line: 125, column: 23, scope: !3828)
!3843 = !DILocation(line: 0, scope: !3828)
!3844 = !DILocation(line: 126, column: 18, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3828, file: !747, line: 126, column: 11)
!3846 = !DILocation(line: 126, column: 11, scope: !3828)
!3847 = !DILocation(line: 128, column: 39, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3845, file: !747, line: 127, column: 9)
!3849 = !DILocalVariable(name: "__dest", arg: 1, scope: !3850, file: !1438, line: 26, type: !3310)
!3850 = distinct !DISubprogram(name: "memcpy", scope: !1438, file: !1438, line: 26, type: !3308, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3851)
!3851 = !{!3849, !3852, !3853}
!3852 = !DILocalVariable(name: "__src", arg: 2, scope: !3850, file: !1438, line: 26, type: !973)
!3853 = !DILocalVariable(name: "__len", arg: 3, scope: !3850, file: !1438, line: 26, type: !90)
!3854 = !DILocation(line: 0, scope: !3850, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 128, column: 11, scope: !3848)
!3856 = !DILocation(line: 29, column: 10, scope: !3850, inlinedAt: !3855)
!3857 = !DILocation(line: 129, column: 11, scope: !3848)
!3858 = !DILocation(line: 133, column: 23, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !747, line: 133, column: 15)
!3860 = distinct !DILexicalBlock(scope: !3845, file: !747, line: 132, column: 9)
!3861 = !DILocation(line: 133, column: 15, scope: !3860)
!3862 = !DILocation(line: 138, column: 44, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3859, file: !747, line: 134, column: 13)
!3864 = !DILocation(line: 0, scope: !3850, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 138, column: 15, scope: !3863)
!3866 = !DILocation(line: 29, column: 10, scope: !3850, inlinedAt: !3865)
!3867 = !DILocation(line: 139, column: 15, scope: !3863)
!3868 = !DILocation(line: 139, column: 32, scope: !3863)
!3869 = !DILocation(line: 140, column: 13, scope: !3863)
!3870 = !DILocation(line: 0, scope: !3829)
!3871 = !DILocation(line: 145, column: 1, scope: !3821)
