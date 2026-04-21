; ModuleID = 'src/dirname.bc'
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1, !dbg !57
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !62
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !99
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !104
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !109
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !114
@main.dot = internal constant i8 46, align 1, !dbg !116
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !193
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !223
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !228
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !230
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !235
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !272
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !274
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !276
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !281
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !286
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !291
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !296
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !298
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !300
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !302
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !313
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !315
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !320
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !325
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !330
@.str.51 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !335
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !337
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !339
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !351
@Version = dso_local local_unnamed_addr global ptr @.str.20, align 8, !dbg !354
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !358
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !371
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !363
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !365
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !367
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !369
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !373
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !379
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !411
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !381
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !401
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !403
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !405
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !407
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !409
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !413
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !415
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !420
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !425
@.str.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !431
@.str.1.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !433
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !435
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !466
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !469
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !471
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !473
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !475
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !477
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !479
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !481
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !483
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !485
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.58, ptr @.str.1.59, ptr @.str.2.60, ptr @.str.3.61, ptr @.str.4.62, ptr @.str.5.63, ptr @.str.6.64, ptr @.str.7.65, ptr @.str.8.66, ptr @.str.9.67, ptr null], align 16, !dbg !487
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !512
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !526
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !564
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !571
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !528
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !573
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !516
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !533
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !535
@.str.12.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !537
@.str.13.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !539
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !541
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !579
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !582
@.str.2.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !584
@.str.3.77 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !586
@.str.4.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !588
@.str.5.79 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !590
@.str.6.80 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !595
@.str.7.81 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !600
@.str.8.82 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !602
@.str.9.83 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !607
@.str.10.84 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !609
@.str.11.85 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !614
@.str.12.86 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !619
@.str.13.87 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !621
@.str.14.88 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !626
@.str.15.89 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !631
@.str.16.90 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !636
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.95 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !641
@.str.18.96 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !643
@.str.19.97 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !645
@.str.20.98 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !647
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !649
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !651
@.str.23.99 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !653
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !658
@exit_failure = dso_local global i32 1, align 4, !dbg !666
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !672
@.str.1.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.2.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !677
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !679
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !682
@.str.1.130 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !697

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !776, metadata !DIExpression()), !dbg !777
  %2 = icmp eq i32 %0, 0, !dbg !778
  br i1 %2, label %8, label %3, !dbg !780

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !781, !tbaa !783
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !781
  %6 = load ptr, ptr @program_name, align 8, !dbg !781, !tbaa !783
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !781
  br label %35, !dbg !781

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !787
  %10 = load ptr, ptr @program_name, align 8, !dbg !787, !tbaa !783
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !787
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !789
  %13 = load ptr, ptr @stdout, align 8, !dbg !789, !tbaa !783
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !789
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !790
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !790
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !791
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !791
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !792
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !792
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !793
  %19 = load ptr, ptr @program_name, align 8, !dbg !793, !tbaa !783
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %18, ptr noundef %19, ptr noundef %19, ptr noundef %19) #39, !dbg !793
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !794, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !806, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr poison, metadata !806, metadata !DIExpression()), !dbg !811
  tail call void @emit_bug_reporting_address() #39, !dbg !813
  %21 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !814
  call void @llvm.dbg.value(metadata ptr %21, metadata !809, metadata !DIExpression()), !dbg !811
  %22 = icmp eq ptr %21, null, !dbg !815
  br i1 %22, label %30, label %23, !dbg !817

23:                                               ; preds = %8
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #40, !dbg !818
  %25 = icmp eq i32 %24, 0, !dbg !818
  br i1 %25, label %30, label %26, !dbg !819

26:                                               ; preds = %23
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !820
  %28 = load ptr, ptr @stdout, align 8, !dbg !820, !tbaa !783
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !820
  br label %30, !dbg !822

30:                                               ; preds = %8, %23, %26
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !806, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !810, metadata !DIExpression()), !dbg !811
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !823
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #39, !dbg !823
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #39, !dbg !824
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #39, !dbg !824
  br label %35

35:                                               ; preds = %30, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !825
  unreachable, !dbg !825
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !826 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !831 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !837 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !840 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !195 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !199, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata ptr %0, metadata !200, metadata !DIExpression()), !dbg !844
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !845, !tbaa !846
  %3 = icmp eq i32 %2, -1, !dbg !848
  br i1 %3, label %4, label %16, !dbg !849

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #39, !dbg !850
  call void @llvm.dbg.value(metadata ptr %5, metadata !201, metadata !DIExpression()), !dbg !851
  %6 = icmp eq ptr %5, null, !dbg !852
  br i1 %6, label %14, label %7, !dbg !853

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !854, !tbaa !855
  %9 = icmp eq i8 %8, 0, !dbg !854
  br i1 %9, label %14, label %10, !dbg !856

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !857, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !863, metadata !DIExpression()), !dbg !864
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #40, !dbg !866
  %12 = icmp eq i32 %11, 0, !dbg !867
  %13 = zext i1 %12 to i32, !dbg !856
  br label %14, !dbg !856

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !868, !tbaa !846
  br label %16, !dbg !869

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !870
  %18 = icmp eq i32 %17, 0, !dbg !870
  br i1 %18, label %22, label %19, !dbg !872

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !873, !tbaa !783
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !873
  br label %128, !dbg !875

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !204, metadata !DIExpression()), !dbg !844
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #40, !dbg !876
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !877
  call void @llvm.dbg.value(metadata ptr %24, metadata !205, metadata !DIExpression()), !dbg !844
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !878
  call void @llvm.dbg.value(metadata ptr %25, metadata !206, metadata !DIExpression()), !dbg !844
  %26 = icmp eq ptr %25, null, !dbg !879
  br i1 %26, label %58, label %27, !dbg !880

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !881
  br i1 %28, label %58, label %29, !dbg !882

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !207, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 0, metadata !211, metadata !DIExpression()), !dbg !883
  %30 = icmp ult ptr %24, %25, !dbg !884
  br i1 %30, label %31, label %52, !dbg !885

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !844
  %33 = load ptr, ptr %32, align 8, !tbaa !783
  br label %34, !dbg !885

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !207, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %36, metadata !211, metadata !DIExpression()), !dbg !883
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !886
  call void @llvm.dbg.value(metadata ptr %37, metadata !207, metadata !DIExpression()), !dbg !883
  %38 = load i8, ptr %35, align 1, !dbg !886, !tbaa !855
  %39 = sext i8 %38 to i64, !dbg !886
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !886
  %41 = load i16, ptr %40, align 2, !dbg !886, !tbaa !887
  %42 = freeze i16 %41, !dbg !889
  %43 = lshr i16 %42, 13, !dbg !889
  %44 = and i16 %43, 1, !dbg !889
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !890
  call void @llvm.dbg.value(metadata i64 %46, metadata !211, metadata !DIExpression()), !dbg !883
  %47 = icmp ult ptr %37, %25, !dbg !884
  %48 = icmp ult i64 %46, 2, !dbg !891
  %49 = select i1 %47, i1 %48, i1 false, !dbg !891
  br i1 %49, label %34, label %50, !dbg !885, !llvm.loop !892

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !894
  br i1 %51, label %52, label %54, !dbg !896

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !896

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !896
  call void @llvm.dbg.value(metadata i8 %57, metadata !204, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata ptr %56, metadata !206, metadata !DIExpression()), !dbg !844
  br label %58, !dbg !897

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !844
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !844
  call void @llvm.dbg.value(metadata i8 %60, metadata !204, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata ptr %59, metadata !206, metadata !DIExpression()), !dbg !844
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.19) #40, !dbg !898
  call void @llvm.dbg.value(metadata i64 %61, metadata !212, metadata !DIExpression()), !dbg !844
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !899
  call void @llvm.dbg.value(metadata ptr %62, metadata !213, metadata !DIExpression()), !dbg !844
  br label %63, !dbg !900

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !844
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !844
  call void @llvm.dbg.value(metadata i8 %65, metadata !204, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata ptr %64, metadata !213, metadata !DIExpression()), !dbg !844
  %66 = load i8, ptr %64, align 1, !dbg !901, !tbaa !855
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !902

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !903
  %69 = load i8, ptr %68, align 1, !dbg !906, !tbaa !855
  %70 = icmp eq i8 %69, 45, !dbg !907
  %71 = select i1 %70, i8 0, i8 %65, !dbg !908
  br label %72, !dbg !908

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !844
  call void @llvm.dbg.value(metadata i8 %73, metadata !204, metadata !DIExpression()), !dbg !844
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !909
  %75 = load ptr, ptr %74, align 8, !dbg !909, !tbaa !783
  %76 = sext i8 %66 to i64, !dbg !909
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !909
  %78 = load i16, ptr %77, align 2, !dbg !909, !tbaa !887
  %79 = and i16 %78, 8192, !dbg !909
  %80 = icmp eq i16 %79, 0, !dbg !909
  br i1 %80, label %96, label %81, !dbg !911

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !912
  br i1 %82, label %98, label %83, !dbg !915

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !916
  %85 = load i8, ptr %84, align 1, !dbg !916, !tbaa !855
  %86 = sext i8 %85 to i64, !dbg !916
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !916
  %88 = load i16, ptr %87, align 2, !dbg !916, !tbaa !887
  %89 = and i16 %88, 8192, !dbg !916
  %90 = icmp eq i16 %89, 0, !dbg !916
  br i1 %90, label %91, label %98, !dbg !917

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !918
  %93 = icmp ne i8 %92, 0, !dbg !918
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !920
  br i1 %95, label %96, label %98, !dbg !920

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !921
  call void @llvm.dbg.value(metadata ptr %97, metadata !213, metadata !DIExpression()), !dbg !844
  br label %63, !dbg !900, !llvm.loop !922

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !924
  %100 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !783
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !924
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !857, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !218, metadata !DIExpression()), !dbg !844
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #40, !dbg !945
  %103 = icmp eq i32 %102, 0, !dbg !945
  br i1 %103, label %107, label %104, !dbg !947

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #40, !dbg !948
  %106 = icmp eq i32 %105, 0, !dbg !948
  br i1 %106, label %107, label %110, !dbg !949

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !950
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !950
  br label %113, !dbg !952

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !953
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !953
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !783
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %114), !dbg !955
  %116 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !783
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !956
  %118 = ptrtoint ptr %64 to i64, !dbg !957
  %119 = sub i64 %118, %99, !dbg !957
  %120 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !783
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !957
  %122 = load ptr, ptr @stdout, align 8, !dbg !958, !tbaa !783
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %122), !dbg !958
  %124 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !783
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %124), !dbg !959
  %126 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !783
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !960
  br label %128, !dbg !961

128:                                              ; preds = %113, %19
  ret void, !dbg !961
}

; Function Attrs: nounwind
declare !dbg !962 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !966 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !970 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !972 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !975 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !978 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !981 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !984 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !990 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !991 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %1, metadata !124, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8 0, metadata !125, metadata !DIExpression()), !dbg !997
  %3 = load ptr, ptr %1, align 8, !dbg !998, !tbaa !783
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !999
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1000
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1001
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1002
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1003
  call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !997
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !1005
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 122, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1006

9:                                                ; preds = %2, %9
  call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !997
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %10, metadata !127, metadata !DIExpression()), !dbg !1005
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 122, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1006, !llvm.loop !1007

11:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 0) #43, !dbg !1009
  unreachable, !dbg !1009

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1011, !tbaa !783
  %14 = load ptr, ptr @Version, align 8, !dbg !1011, !tbaa !783
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1011
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #39, !dbg !1011
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #39, !dbg !1011
  tail call void @exit(i32 noundef 0) #41, !dbg !1011
  unreachable, !dbg !1011

17:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 1) #43, !dbg !1012
  unreachable, !dbg !1012

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !997
  %20 = load i32, ptr @optind, align 4, !dbg !1013, !tbaa !846
  %21 = icmp slt i32 %20, %0, !dbg !1015
  br i1 %21, label %22, label %24, !dbg !1016

22:                                               ; preds = %18
  %23 = trunc i32 %19 to i8
  br label %26, !dbg !1017

24:                                               ; preds = %18
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1018
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #39, !dbg !1018
  tail call void @usage(i32 noundef 1) #43, !dbg !1020
  unreachable, !dbg !1020

26:                                               ; preds = %47, %22
  %27 = phi i32 [ %20, %22 ], [ %49, %47 ]
  call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1021
  %28 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !783
  %29 = sext i32 %27 to i64, !dbg !1023
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29, !dbg !1023
  %31 = load ptr, ptr %30, align 8, !dbg !1023, !tbaa !783
  call void @llvm.dbg.value(metadata ptr %31, metadata !129, metadata !DIExpression()), !dbg !1021
  %32 = tail call i64 @dir_len(ptr noundef %31) #40, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %32, metadata !133, metadata !DIExpression()), !dbg !1021
  %33 = icmp eq i64 %32, 0, !dbg !1025
  %34 = select i1 %33, i64 1, i64 %32, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %34, metadata !133, metadata !DIExpression()), !dbg !1021
  %35 = select i1 %33, ptr @main.dot, ptr %31, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %35, metadata !129, metadata !DIExpression()), !dbg !1021
  %36 = tail call i64 @fwrite_unlocked(ptr noundef %35, i64 noundef 1, i64 noundef %34, ptr noundef %28), !dbg !1022
  call void @llvm.dbg.value(metadata i32 %19, metadata !1028, metadata !DIExpression()), !dbg !1034
  %37 = load ptr, ptr @stdout, align 8, !dbg !1036, !tbaa !783
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 5, !dbg !1036
  %39 = load ptr, ptr %38, align 8, !dbg !1036, !tbaa !1037
  %40 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 6, !dbg !1036
  %41 = load ptr, ptr %40, align 8, !dbg !1036, !tbaa !1040
  %42 = icmp ult ptr %39, %41, !dbg !1036
  br i1 %42, label %45, label %43, !dbg !1036, !prof !1041

43:                                               ; preds = %26
  %44 = tail call i32 @__overflow(ptr noundef nonnull %37, i32 noundef %19) #39, !dbg !1036
  br label %47, !dbg !1036

45:                                               ; preds = %26
  %46 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1036
  store ptr %46, ptr %38, align 8, !dbg !1036, !tbaa !1037
  store i8 %23, ptr %39, align 1, !dbg !1036, !tbaa !855
  br label %47, !dbg !1036

47:                                               ; preds = %43, %45
  %48 = load i32, ptr @optind, align 4, !dbg !1042, !tbaa !846
  %49 = add nsw i32 %48, 1, !dbg !1042
  store i32 %49, ptr @optind, align 4, !dbg !1042, !tbaa !846
  %50 = icmp slt i32 %49, %0, !dbg !1043
  br i1 %50, label %26, label %51, !dbg !1017, !llvm.loop !1044

51:                                               ; preds = %47
  ret i32 0, !dbg !1046
}

; Function Attrs: nounwind
declare !dbg !1047 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1050 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1051 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1054 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1060 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1063 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1065, metadata !DIExpression()), !dbg !1066
  store ptr %0, ptr @file_name, align 8, !dbg !1067, !tbaa !783
  ret void, !dbg !1068
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1069 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1073, metadata !DIExpression()), !dbg !1074
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1075, !tbaa !1076
  ret void, !dbg !1078
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1079 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !783
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1085
  %3 = icmp eq i32 %2, 0, !dbg !1086
  br i1 %3, label %22, label %4, !dbg !1087

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1088, !tbaa !1076, !range !1089, !noundef !830
  %6 = icmp eq i8 %5, 0, !dbg !1088
  br i1 %6, label %11, label %7, !dbg !1090

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1091
  %9 = load i32, ptr %8, align 4, !dbg !1091, !tbaa !846
  %10 = icmp eq i32 %9, 32, !dbg !1092
  br i1 %10, label %22, label %11, !dbg !1093

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1094
  call void @llvm.dbg.value(metadata ptr %12, metadata !1081, metadata !DIExpression()), !dbg !1095
  %13 = load ptr, ptr @file_name, align 8, !dbg !1096, !tbaa !783
  %14 = icmp eq ptr %13, null, !dbg !1096
  %15 = tail call ptr @__errno_location() #42, !dbg !1098
  %16 = load i32, ptr %15, align 4, !dbg !1098, !tbaa !846
  br i1 %14, label %19, label %17, !dbg !1099

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1100
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #39, !dbg !1100
  br label %20, !dbg !1100

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #39, !dbg !1101
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1102, !tbaa !846
  tail call void @_exit(i32 noundef %21) #41, !dbg !1103
  unreachable, !dbg !1103

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1104, !tbaa !783
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1106
  %25 = icmp eq i32 %24, 0, !dbg !1107
  br i1 %25, label %28, label %26, !dbg !1108

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1109, !tbaa !846
  tail call void @_exit(i32 noundef %27) #41, !dbg !1110
  unreachable, !dbg !1110

28:                                               ; preds = %22
  ret void, !dbg !1111
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1112 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1116 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @dir_len(ptr noundef %0) local_unnamed_addr #13 !dbg !1118 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1122, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 0, metadata !1123, metadata !DIExpression()), !dbg !1125
  %2 = load i8, ptr %0, align 1, !dbg !1126, !tbaa !855
  %3 = icmp eq i8 %2, 47, !dbg !1126
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1123, metadata !DIExpression()), !dbg !1125
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #40, !dbg !1127
  %6 = ptrtoint ptr %5 to i64, !dbg !1129
  %7 = ptrtoint ptr %0 to i64, !dbg !1129
  %8 = sub i64 %6, %7, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %8, metadata !1124, metadata !DIExpression()), !dbg !1125
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %4), !dbg !1130
  br label %10, !dbg !1130

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ], !dbg !1131
  call void @llvm.dbg.value(metadata i64 %11, metadata !1124, metadata !DIExpression()), !dbg !1125
  %12 = icmp ugt i64 %11, %4, !dbg !1132
  br i1 %12, label %13, label %18, !dbg !1134

13:                                               ; preds = %10
  %14 = add i64 %11, -1, !dbg !1135
  %15 = getelementptr inbounds i8, ptr %0, i64 %14, !dbg !1135
  %16 = load i8, ptr %15, align 1, !dbg !1135, !tbaa !855
  %17 = icmp eq i8 %16, 47, !dbg !1135
  br i1 %17, label %10, label %18, !dbg !1137, !llvm.loop !1138

18:                                               ; preds = %13, %10
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ], !dbg !1131
  ret i64 %19, !dbg !1140
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @mdir_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1143, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %0, metadata !1122, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i64 0, metadata !1123, metadata !DIExpression()), !dbg !1148
  %2 = load i8, ptr %0, align 1, !dbg !1150, !tbaa !855
  %3 = icmp eq i8 %2, 47, !dbg !1150
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1123, metadata !DIExpression()), !dbg !1148
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #40, !dbg !1151
  %6 = ptrtoint ptr %5 to i64, !dbg !1152
  %7 = ptrtoint ptr %0 to i64, !dbg !1152
  %8 = sub i64 %6, %7, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %8, metadata !1124, metadata !DIExpression()), !dbg !1148
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %4), !dbg !1153
  br label %10, !dbg !1153

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ], !dbg !1154
  call void @llvm.dbg.value(metadata i64 %11, metadata !1124, metadata !DIExpression()), !dbg !1148
  %12 = icmp ugt i64 %11, %4, !dbg !1155
  br i1 %12, label %13, label %18, !dbg !1156

13:                                               ; preds = %10
  %14 = add i64 %11, -1, !dbg !1157
  %15 = getelementptr inbounds i8, ptr %0, i64 %14, !dbg !1157
  %16 = load i8, ptr %15, align 1, !dbg !1157, !tbaa !855
  %17 = icmp eq i8 %16, 47, !dbg !1157
  br i1 %17, label %10, label %18, !dbg !1158, !llvm.loop !1159

18:                                               ; preds = %10, %13
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ], !dbg !1154
  call void @llvm.dbg.value(metadata i64 %19, metadata !1144, metadata !DIExpression()), !dbg !1147
  %20 = icmp eq i64 %19, 0, !dbg !1161
  call void @llvm.dbg.value(metadata i1 %20, metadata !1145, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1147
  %21 = zext i1 %20 to i64, !dbg !1162
  %22 = add i64 %19, 1, !dbg !1163
  %23 = add i64 %22, %21, !dbg !1164
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #44, !dbg !1165
  call void @llvm.dbg.value(metadata ptr %24, metadata !1146, metadata !DIExpression()), !dbg !1147
  %25 = icmp eq ptr %24, null, !dbg !1166
  br i1 %25, label %31, label %26, !dbg !1168

26:                                               ; preds = %18
  call void @llvm.dbg.value(metadata ptr %24, metadata !1169, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata ptr %0, metadata !1176, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %19, metadata !1177, metadata !DIExpression()), !dbg !1178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %24, ptr noundef nonnull align 1 %0, i64 noundef %19, i1 noundef false) #39, !dbg !1180
  br i1 %20, label %27, label %28, !dbg !1181

27:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 1, metadata !1144, metadata !DIExpression()), !dbg !1147
  store i8 46, ptr %24, align 1, !dbg !1182, !tbaa !855
  br label %28, !dbg !1184

28:                                               ; preds = %27, %26
  %29 = phi i64 [ 1, %27 ], [ %19, %26 ], !dbg !1147
  call void @llvm.dbg.value(metadata i64 %29, metadata !1144, metadata !DIExpression()), !dbg !1147
  %30 = getelementptr inbounds i8, ptr %24, i64 %29, !dbg !1185
  store i8 0, ptr %30, align 1, !dbg !1186, !tbaa !855
  br label %31, !dbg !1187

31:                                               ; preds = %18, %28
  ret ptr %24, !dbg !1188
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1189 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 %1, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %2, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %3, metadata !1199, metadata !DIExpression()), !dbg !1200
  tail call fastcc void @flush_stdout(), !dbg !1201
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1202, !tbaa !783
  %6 = icmp eq ptr %5, null, !dbg !1202
  br i1 %6, label %8, label %7, !dbg !1204

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1205
  br label %12, !dbg !1205

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1206, !tbaa !783
  %10 = tail call ptr @getprogname() #40, !dbg !1206
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %10) #39, !dbg !1206
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1210 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 1, metadata !1214, metadata !DIExpression()), !dbg !1217
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1220
  %2 = icmp slt i32 %1, 0, !dbg !1221
  br i1 %2, label %6, label %3, !dbg !1222

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1223, !tbaa !783
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1223
  br label %6, !dbg !1223

6:                                                ; preds = %3, %0
  ret void, !dbg !1224
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1225 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1227, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %1, metadata !1228, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr %2, metadata !1229, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr %3, metadata !1230, metadata !DIExpression()), !dbg !1231
  %6 = load ptr, ptr @stderr, align 8, !dbg !1232, !tbaa !783
  call void @llvm.dbg.value(metadata ptr %6, metadata !1233, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata ptr %2, metadata !1273, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata ptr %3, metadata !1274, metadata !DIExpression()), !dbg !1275
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1277
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1278, !tbaa !846
  %9 = add i32 %8, 1, !dbg !1278
  store i32 %9, ptr @error_message_count, align 4, !dbg !1278, !tbaa !846
  %10 = icmp eq i32 %1, 0, !dbg !1279
  br i1 %10, label %20, label %11, !dbg !1281

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1282, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1286, metadata !DIExpression()), !dbg !1293
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %12, metadata !1285, metadata !DIExpression()), !dbg !1290
  %13 = icmp eq ptr %12, null, !dbg !1295
  br i1 %13, label %14, label %16, !dbg !1297

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #39, !dbg !1298
  call void @llvm.dbg.value(metadata ptr %15, metadata !1285, metadata !DIExpression()), !dbg !1290
  br label %16, !dbg !1299

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1290
  call void @llvm.dbg.value(metadata ptr %17, metadata !1285, metadata !DIExpression()), !dbg !1290
  %18 = load ptr, ptr @stderr, align 8, !dbg !1300, !tbaa !783
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %17) #39, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1301
  br label %20, !dbg !1302

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1303, !tbaa !783
  call void @llvm.dbg.value(metadata i32 10, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %21, metadata !1309, metadata !DIExpression()), !dbg !1310
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1312
  %23 = load ptr, ptr %22, align 8, !dbg !1312, !tbaa !1037
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1312
  %25 = load ptr, ptr %24, align 8, !dbg !1312, !tbaa !1040
  %26 = icmp ult ptr %23, %25, !dbg !1312
  br i1 %26, label %29, label %27, !dbg !1312, !prof !1041

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1312
  br label %31, !dbg !1312

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1312
  store ptr %30, ptr %22, align 8, !dbg !1312, !tbaa !1037
  store i8 10, ptr %23, align 1, !dbg !1312, !tbaa !855
  br label %31, !dbg !1312

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1313, !tbaa !783
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1313
  %34 = icmp eq i32 %0, 0, !dbg !1314
  br i1 %34, label %36, label %35, !dbg !1316

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1317
  unreachable, !dbg !1317

36:                                               ; preds = %31
  ret void, !dbg !1318
}

declare !dbg !1319 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1322 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1325 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1328 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1332 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1336, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %1, metadata !1337, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %2, metadata !1338, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1339, metadata !DIExpression()), !dbg !1347
  call void @llvm.va_start(ptr nonnull %4), !dbg !1348
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1349
  call void @llvm.va_end(ptr nonnull %4), !dbg !1350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1351
  ret void, !dbg !1351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !395, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %1, metadata !396, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %3, metadata !398, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %4, metadata !399, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %5, metadata !400, metadata !DIExpression()), !dbg !1352
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1353, !tbaa !846
  %8 = icmp eq i32 %7, 0, !dbg !1353
  br i1 %8, label %23, label %9, !dbg !1355

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1356, !tbaa !846
  %11 = icmp eq i32 %10, %3, !dbg !1359
  br i1 %11, label %12, label %22, !dbg !1360

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1361, !tbaa !783
  %14 = icmp eq ptr %13, %2, !dbg !1362
  br i1 %14, label %36, label %15, !dbg !1363

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1364
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1365
  br i1 %18, label %19, label %22, !dbg !1365

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1366
  %21 = icmp eq i32 %20, 0, !dbg !1367
  br i1 %21, label %36, label %22, !dbg !1368

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1369, !tbaa !783
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1370, !tbaa !846
  br label %23, !dbg !1371

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1372
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1373, !tbaa !783
  %25 = icmp eq ptr %24, null, !dbg !1373
  br i1 %25, label %27, label %26, !dbg !1375

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1376
  br label %31, !dbg !1376

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1377, !tbaa !783
  %29 = tail call ptr @getprogname() #40, !dbg !1377
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %29) #39, !dbg !1377
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1379, !tbaa !783
  %33 = icmp eq ptr %2, null, !dbg !1379
  %34 = select i1 %33, ptr @.str.3.36, ptr @.str.2.37, !dbg !1379
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1379
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1380
  br label %36, !dbg !1381

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1381
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1382 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1386, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %1, metadata !1387, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %2, metadata !1388, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %3, metadata !1389, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %4, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1391, metadata !DIExpression()), !dbg !1394
  call void @llvm.va_start(ptr nonnull %6), !dbg !1395
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1396
  call void @llvm.va_end(ptr nonnull %6), !dbg !1397
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1398
  ret void, !dbg !1398
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1399 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1402, !tbaa !783
  ret ptr %1, !dbg !1403
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !1404 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1406, metadata !DIExpression()), !dbg !1409
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1410
  call void @llvm.dbg.value(metadata ptr %2, metadata !1407, metadata !DIExpression()), !dbg !1409
  %3 = icmp eq ptr %2, null, !dbg !1411
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1411
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1411
  call void @llvm.dbg.value(metadata ptr %5, metadata !1408, metadata !DIExpression()), !dbg !1409
  %6 = ptrtoint ptr %5 to i64, !dbg !1412
  %7 = ptrtoint ptr %0 to i64, !dbg !1412
  %8 = sub i64 %6, %7, !dbg !1412
  %9 = icmp sgt i64 %8, 6, !dbg !1414
  br i1 %9, label %10, label %19, !dbg !1415

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %11, metadata !1417, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata ptr @.str.54, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i64 7, metadata !1423, metadata !DIExpression()), !dbg !1424
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.54, i64 7), !dbg !1426
  %13 = icmp eq i32 %12, 0, !dbg !1427
  br i1 %13, label %14, label %19, !dbg !1428

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1406, metadata !DIExpression()), !dbg !1409
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.55, i64 noundef 3) #40, !dbg !1429
  %16 = icmp eq i32 %15, 0, !dbg !1432
  %17 = select i1 %16, i64 3, i64 0, !dbg !1433
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1433
  br label %19, !dbg !1433

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1409
  call void @llvm.dbg.value(metadata ptr %21, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr %20, metadata !1406, metadata !DIExpression()), !dbg !1409
  store ptr %20, ptr @program_name, align 8, !dbg !1434, !tbaa !783
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1435, !tbaa !783
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1436, !tbaa !783
  ret void, !dbg !1437
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1438 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !437 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !444, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata ptr %1, metadata !445, metadata !DIExpression()), !dbg !1439
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1440
  call void @llvm.dbg.value(metadata ptr %5, metadata !446, metadata !DIExpression()), !dbg !1439
  %6 = icmp eq ptr %5, %0, !dbg !1441
  br i1 %6, label %7, label %14, !dbg !1443

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %4, metadata !452, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %4, metadata !1447, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %4, metadata !1456, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i32 0, metadata !1461, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 8, metadata !1462, metadata !DIExpression()), !dbg !1463
  store i64 0, ptr %4, align 8, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %3, metadata !447, metadata !DIExpression(DW_OP_deref)), !dbg !1439
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1466
  %9 = icmp eq i64 %8, 2, !dbg !1468
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !447, metadata !DIExpression()), !dbg !1439
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1469
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1439
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1470
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1470
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1439
  ret ptr %15, !dbg !1470
}

; Function Attrs: nounwind
declare !dbg !1471 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1485
  %2 = tail call ptr @__errno_location() #42, !dbg !1486
  %3 = load i32, ptr %2, align 4, !dbg !1486, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %3, metadata !1483, metadata !DIExpression()), !dbg !1485
  %4 = icmp eq ptr %0, null, !dbg !1487
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1487
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %6, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i32 %3, ptr %2, align 4, !dbg !1489, !tbaa !846
  ret ptr %6, !dbg !1490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !1491 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1497, metadata !DIExpression()), !dbg !1498
  %2 = icmp eq ptr %0, null, !dbg !1499
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1499
  %4 = load i32, ptr %3, align 8, !dbg !1500, !tbaa !1501
  ret i32 %4, !dbg !1503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1504 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1508, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %1, metadata !1509, metadata !DIExpression()), !dbg !1510
  %3 = icmp eq ptr %0, null, !dbg !1511
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1511
  store i32 %1, ptr %4, align 8, !dbg !1512, !tbaa !1501
  ret void, !dbg !1513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !1514 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1518, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %1, metadata !1519, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %2, metadata !1520, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %1, metadata !1521, metadata !DIExpression()), !dbg !1526
  %4 = icmp eq ptr %0, null, !dbg !1527
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1527
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1528
  %7 = lshr i8 %1, 5, !dbg !1529
  %8 = zext i8 %7 to i64, !dbg !1529
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1530
  call void @llvm.dbg.value(metadata ptr %9, metadata !1522, metadata !DIExpression()), !dbg !1526
  %10 = and i8 %1, 31, !dbg !1531
  %11 = zext i8 %10 to i32, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %11, metadata !1524, metadata !DIExpression()), !dbg !1526
  %12 = load i32, ptr %9, align 4, !dbg !1532, !tbaa !846
  %13 = lshr i32 %12, %11, !dbg !1533
  %14 = and i32 %13, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %14, metadata !1525, metadata !DIExpression()), !dbg !1526
  %15 = xor i32 %13, %2, !dbg !1535
  %16 = and i32 %15, 1, !dbg !1535
  %17 = shl nuw i32 %16, %11, !dbg !1536
  %18 = xor i32 %17, %12, !dbg !1537
  store i32 %18, ptr %9, align 4, !dbg !1537, !tbaa !846
  ret i32 %14, !dbg !1538
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1539 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %1, metadata !1544, metadata !DIExpression()), !dbg !1546
  %3 = icmp eq ptr %0, null, !dbg !1547
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !1546
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1550
  %6 = load i32, ptr %5, align 4, !dbg !1550, !tbaa !1551
  call void @llvm.dbg.value(metadata i32 %6, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i32 %1, ptr %5, align 4, !dbg !1552, !tbaa !1551
  ret i32 %6, !dbg !1553
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1558, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata ptr %1, metadata !1559, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata ptr %2, metadata !1560, metadata !DIExpression()), !dbg !1561
  %4 = icmp eq ptr %0, null, !dbg !1562
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1564
  call void @llvm.dbg.value(metadata ptr %5, metadata !1558, metadata !DIExpression()), !dbg !1561
  store i32 10, ptr %5, align 8, !dbg !1565, !tbaa !1501
  %6 = icmp ne ptr %1, null, !dbg !1566
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1568
  br i1 %8, label %10, label %9, !dbg !1568

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1569
  unreachable, !dbg !1569

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1570
  store ptr %1, ptr %11, align 8, !dbg !1571, !tbaa !1572
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1573
  store ptr %2, ptr %12, align 8, !dbg !1574, !tbaa !1575
  ret void, !dbg !1576
}

; Function Attrs: noreturn nounwind
declare !dbg !1577 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1578 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1582, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %1, metadata !1583, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata ptr %2, metadata !1584, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %3, metadata !1585, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata ptr %4, metadata !1586, metadata !DIExpression()), !dbg !1590
  %6 = icmp eq ptr %4, null, !dbg !1591
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %7, metadata !1587, metadata !DIExpression()), !dbg !1590
  %8 = tail call ptr @__errno_location() #42, !dbg !1592
  %9 = load i32, ptr %8, align 4, !dbg !1592, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %9, metadata !1588, metadata !DIExpression()), !dbg !1590
  %10 = load i32, ptr %7, align 8, !dbg !1593, !tbaa !1501
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1594
  %12 = load i32, ptr %11, align 4, !dbg !1594, !tbaa !1551
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1595
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1596
  %15 = load ptr, ptr %14, align 8, !dbg !1596, !tbaa !1572
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1597
  %17 = load ptr, ptr %16, align 8, !dbg !1597, !tbaa !1575
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %18, metadata !1589, metadata !DIExpression()), !dbg !1590
  store i32 %9, ptr %8, align 4, !dbg !1599, !tbaa !846
  ret i64 %18, !dbg !1600
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1601 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1607, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %1, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %2, metadata !1609, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %3, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %4, metadata !1611, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %5, metadata !1612, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %6, metadata !1613, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %7, metadata !1614, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %8, metadata !1615, metadata !DIExpression()), !dbg !1669
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1670
  %17 = icmp eq i64 %16, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i1 %17, metadata !1616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1669
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr null, metadata !1619, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1669
  %18 = trunc i32 %5 to i8, !dbg !1672
  %19 = lshr i8 %18, 1, !dbg !1672
  %20 = and i8 %19, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i8 %20, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1624, metadata !DIExpression()), !dbg !1669
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1673

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1674
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1675
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1676
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1677
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1669
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1678
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1679
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %39, metadata !1624, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %38, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %37, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %36, metadata !1621, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %35, metadata !1620, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %34, metadata !1619, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %33, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %32, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %31, metadata !1615, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %30, metadata !1614, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %29, metadata !1611, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.label(metadata !1662), !dbg !1680
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1669
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
  ], !dbg !1681

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 5, metadata !1611, metadata !DIExpression()), !dbg !1669
  br label %115, !dbg !1682

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 5, metadata !1611, metadata !DIExpression()), !dbg !1669
  %43 = and i8 %37, 1, !dbg !1683
  %44 = icmp eq i8 %43, 0, !dbg !1683
  br i1 %44, label %45, label %115, !dbg !1682

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1685
  br i1 %46, label %115, label %47, !dbg !1688

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1685, !tbaa !855
  br label %115, !dbg !1685

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.68, metadata !547, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %29, metadata !548, metadata !DIExpression()), !dbg !1689
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.11.68, i32 noundef 5) #39, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %49, metadata !549, metadata !DIExpression()), !dbg !1689
  %50 = icmp eq ptr %49, @.str.11.68, !dbg !1694
  br i1 %50, label %51, label %60, !dbg !1696

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1697
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %13, metadata !551, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %13, metadata !1700, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %13, metadata !1708, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 8, metadata !1712, metadata !DIExpression()), !dbg !1713
  store i64 0, ptr %13, align 8, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %12, metadata !550, metadata !DIExpression(DW_OP_deref)), !dbg !1689
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1716
  %53 = icmp eq i64 %52, 3, !dbg !1718
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !550, metadata !DIExpression()), !dbg !1689
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1719
  %57 = icmp eq i32 %29, 9, !dbg !1719
  %58 = select i1 %57, ptr @.str.10.70, ptr @.str.12.71, !dbg !1719
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1720
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1720
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1689
  call void @llvm.dbg.value(metadata ptr %61, metadata !1614, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr @.str.12.71, metadata !547, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %29, metadata !548, metadata !DIExpression()), !dbg !1721
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.12.71, i32 noundef 5) #39, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %62, metadata !549, metadata !DIExpression()), !dbg !1721
  %63 = icmp eq ptr %62, @.str.12.71, !dbg !1724
  br i1 %63, label %64, label %73, !dbg !1725

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1726
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1727
  call void @llvm.dbg.declare(metadata ptr %11, metadata !551, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %11, metadata !1700, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %11, metadata !1708, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i64 8, metadata !1712, metadata !DIExpression()), !dbg !1731
  store i64 0, ptr %11, align 8, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %10, metadata !550, metadata !DIExpression(DW_OP_deref)), !dbg !1721
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1734
  %66 = icmp eq i64 %65, 3, !dbg !1735
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !550, metadata !DIExpression()), !dbg !1721
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1736
  %70 = icmp eq i32 %29, 9, !dbg !1736
  %71 = select i1 %70, ptr @.str.10.70, ptr @.str.12.71, !dbg !1736
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1736
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1737
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1737
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1615, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %74, metadata !1614, metadata !DIExpression()), !dbg !1669
  %76 = and i8 %37, 1, !dbg !1738
  %77 = icmp eq i8 %76, 0, !dbg !1738
  br i1 %77, label %78, label %93, !dbg !1739

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1626, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1669
  %79 = load i8, ptr %74, align 1, !dbg !1741, !tbaa !855
  %80 = icmp eq i8 %79, 0, !dbg !1743
  br i1 %80, label %93, label %81, !dbg !1743

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1626, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %84, metadata !1617, metadata !DIExpression()), !dbg !1669
  %85 = icmp ult i64 %84, %40, !dbg !1744
  br i1 %85, label %86, label %88, !dbg !1747

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1744
  store i8 %82, ptr %87, align 1, !dbg !1744, !tbaa !855
  br label %88, !dbg !1744

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %89, metadata !1617, metadata !DIExpression()), !dbg !1669
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %90, metadata !1626, metadata !DIExpression()), !dbg !1740
  %91 = load i8, ptr %90, align 1, !dbg !1741, !tbaa !855
  %92 = icmp eq i8 %91, 0, !dbg !1743
  br i1 %92, label %93, label %81, !dbg !1743, !llvm.loop !1749

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %94, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %75, metadata !1619, metadata !DIExpression()), !dbg !1669
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %95, metadata !1620, metadata !DIExpression()), !dbg !1669
  br label %115, !dbg !1753

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1669
  br label %97, !dbg !1754

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %98, metadata !1621, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1669
  br label %99, !dbg !1755

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1677
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %101, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %100, metadata !1621, metadata !DIExpression()), !dbg !1669
  %102 = and i8 %101, 1, !dbg !1756
  %103 = icmp eq i8 %102, 0, !dbg !1756
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1758
  br label %105, !dbg !1758

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1669
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1672
  call void @llvm.dbg.value(metadata i8 %107, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %106, metadata !1621, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 2, metadata !1611, metadata !DIExpression()), !dbg !1669
  %108 = and i8 %107, 1, !dbg !1759
  %109 = icmp eq i8 %108, 0, !dbg !1759
  br i1 %109, label %110, label %115, !dbg !1761

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1762
  br i1 %111, label %115, label %112, !dbg !1765

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1762, !tbaa !855
  br label %115, !dbg !1762

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1669
  br label %115, !dbg !1766

114:                                              ; preds = %28
  call void @abort() #41, !dbg !1767
  unreachable, !dbg !1767

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1751
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.70, %45 ], [ @.str.10.70, %47 ], [ @.str.10.70, %42 ], [ %34, %28 ], [ @.str.12.71, %110 ], [ @.str.12.71, %112 ], [ @.str.12.71, %105 ], [ @.str.10.70, %41 ], !dbg !1669
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1669
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1669
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %123, metadata !1622, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %122, metadata !1621, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %121, metadata !1620, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %120, metadata !1619, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %119, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %118, metadata !1615, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %117, metadata !1614, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %116, metadata !1611, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1768
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
  br label %138, !dbg !1769

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1751
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1674
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1678
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1679
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1770
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1771
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %145, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %144, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %143, metadata !1624, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %142, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %141, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %140, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %139, metadata !1610, metadata !DIExpression()), !dbg !1669
  %147 = icmp eq i64 %139, -1, !dbg !1772
  br i1 %147, label %148, label %152, !dbg !1773

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1774
  %150 = load i8, ptr %149, align 1, !dbg !1774, !tbaa !855
  %151 = icmp eq i8 %150, 0, !dbg !1775
  br i1 %151, label %627, label %154, !dbg !1776

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1777
  br i1 %153, label %627, label %154, !dbg !1776

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1778
  br i1 %129, label %155, label %170, !dbg !1779

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1781
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1782
  br i1 %157, label %158, label %160, !dbg !1782

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %159, metadata !1610, metadata !DIExpression()), !dbg !1669
  br label %160, !dbg !1784

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1784
  call void @llvm.dbg.value(metadata i64 %161, metadata !1610, metadata !DIExpression()), !dbg !1669
  %162 = icmp ugt i64 %156, %161, !dbg !1785
  br i1 %162, label %170, label %163, !dbg !1786

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %164, metadata !1788, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %120, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %121, metadata !1792, metadata !DIExpression()), !dbg !1793
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1795
  %166 = icmp ne i32 %165, 0, !dbg !1796
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1797
  %168 = xor i1 %166, true, !dbg !1797
  %169 = zext i1 %168 to i8, !dbg !1797
  br i1 %167, label %170, label %688, !dbg !1797

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1778
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1778
  call void @llvm.dbg.value(metadata i8 %173, metadata !1633, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %171, metadata !1610, metadata !DIExpression()), !dbg !1669
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1798
  %175 = load i8, ptr %174, align 1, !dbg !1798, !tbaa !855
  call void @llvm.dbg.value(metadata i8 %175, metadata !1638, metadata !DIExpression()), !dbg !1778
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
  ], !dbg !1799

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1800

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1801

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1778
  %179 = and i8 %144, 1, !dbg !1805
  %180 = icmp eq i8 %179, 0, !dbg !1805
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1805
  br i1 %181, label %182, label %198, !dbg !1805

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1807
  br i1 %183, label %184, label %186, !dbg !1811

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1807
  store i8 39, ptr %185, align 1, !dbg !1807, !tbaa !855
  br label %186, !dbg !1807

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %187, metadata !1617, metadata !DIExpression()), !dbg !1669
  %188 = icmp ult i64 %187, %146, !dbg !1812
  br i1 %188, label %189, label %191, !dbg !1815

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1812
  store i8 36, ptr %190, align 1, !dbg !1812, !tbaa !855
  br label %191, !dbg !1812

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %192, metadata !1617, metadata !DIExpression()), !dbg !1669
  %193 = icmp ult i64 %192, %146, !dbg !1816
  br i1 %193, label %194, label %196, !dbg !1819

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1816
  store i8 39, ptr %195, align 1, !dbg !1816, !tbaa !855
  br label %196, !dbg !1816

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %197, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1625, metadata !DIExpression()), !dbg !1669
  br label %198, !dbg !1820

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1669
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %200, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %199, metadata !1617, metadata !DIExpression()), !dbg !1669
  %201 = icmp ult i64 %199, %146, !dbg !1821
  br i1 %201, label %202, label %204, !dbg !1824

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1821
  store i8 92, ptr %203, align 1, !dbg !1821, !tbaa !855
  br label %204, !dbg !1821

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %205, metadata !1617, metadata !DIExpression()), !dbg !1669
  br i1 %126, label %206, label %491, !dbg !1825

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1827
  %208 = icmp ult i64 %207, %171, !dbg !1828
  br i1 %208, label %209, label %480, !dbg !1829

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1830
  %211 = load i8, ptr %210, align 1, !dbg !1830, !tbaa !855
  %212 = add i8 %211, -48, !dbg !1831
  %213 = icmp ult i8 %212, 10, !dbg !1831
  br i1 %213, label %214, label %480, !dbg !1831

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1832
  br i1 %215, label %216, label %218, !dbg !1836

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1832
  store i8 48, ptr %217, align 1, !dbg !1832, !tbaa !855
  br label %218, !dbg !1832

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %219, metadata !1617, metadata !DIExpression()), !dbg !1669
  %220 = icmp ult i64 %219, %146, !dbg !1837
  br i1 %220, label %221, label %223, !dbg !1840

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1837
  store i8 48, ptr %222, align 1, !dbg !1837, !tbaa !855
  br label %223, !dbg !1837

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %224, metadata !1617, metadata !DIExpression()), !dbg !1669
  br label %480, !dbg !1841

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1842

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1843

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1844

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1846

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1848
  %231 = icmp ult i64 %230, %171, !dbg !1849
  br i1 %231, label %232, label %480, !dbg !1850

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1851
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1852
  %235 = load i8, ptr %234, align 1, !dbg !1852, !tbaa !855
  %236 = icmp eq i8 %235, 63, !dbg !1853
  br i1 %236, label %237, label %480, !dbg !1854

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1855
  %239 = load i8, ptr %238, align 1, !dbg !1855, !tbaa !855
  %240 = sext i8 %239 to i32, !dbg !1855
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
  ], !dbg !1856

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1857

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %230, metadata !1631, metadata !DIExpression()), !dbg !1768
  %243 = icmp ult i64 %140, %146, !dbg !1859
  br i1 %243, label %244, label %246, !dbg !1862

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1859
  store i8 63, ptr %245, align 1, !dbg !1859, !tbaa !855
  br label %246, !dbg !1859

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %247, metadata !1617, metadata !DIExpression()), !dbg !1669
  %248 = icmp ult i64 %247, %146, !dbg !1863
  br i1 %248, label %249, label %251, !dbg !1866

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1863
  store i8 34, ptr %250, align 1, !dbg !1863, !tbaa !855
  br label %251, !dbg !1863

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %252, metadata !1617, metadata !DIExpression()), !dbg !1669
  %253 = icmp ult i64 %252, %146, !dbg !1867
  br i1 %253, label %254, label %256, !dbg !1870

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1867
  store i8 34, ptr %255, align 1, !dbg !1867, !tbaa !855
  br label %256, !dbg !1867

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %257, metadata !1617, metadata !DIExpression()), !dbg !1669
  %258 = icmp ult i64 %257, %146, !dbg !1871
  br i1 %258, label %259, label %261, !dbg !1874

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1871
  store i8 63, ptr %260, align 1, !dbg !1871, !tbaa !855
  br label %261, !dbg !1871

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %262, metadata !1617, metadata !DIExpression()), !dbg !1669
  br label %480, !dbg !1875

263:                                              ; preds = %170
  br label %274, !dbg !1876

264:                                              ; preds = %170
  br label %274, !dbg !1877

265:                                              ; preds = %170
  br label %272, !dbg !1878

266:                                              ; preds = %170
  br label %272, !dbg !1879

267:                                              ; preds = %170
  br label %274, !dbg !1880

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1881

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1882

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1885

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1887

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1888
  call void @llvm.dbg.label(metadata !1663), !dbg !1889
  br i1 %134, label %274, label %670, !dbg !1890

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1888
  call void @llvm.dbg.label(metadata !1665), !dbg !1892
  br i1 %125, label %535, label %491, !dbg !1893

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1894

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1895, !tbaa !855
  %279 = icmp eq i8 %278, 0, !dbg !1897
  br i1 %279, label %280, label %480, !dbg !1898

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1899
  br i1 %281, label %282, label %480, !dbg !1901

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1778
  br label %283, !dbg !1902

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1778
  call void @llvm.dbg.value(metadata i8 %284, metadata !1637, metadata !DIExpression()), !dbg !1778
  br i1 %134, label %480, label %670, !dbg !1903

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1778
  br i1 %133, label %286, label %480, !dbg !1905

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1906

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1909
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1911
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1911
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %292, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %291, metadata !1618, metadata !DIExpression()), !dbg !1669
  %293 = icmp ult i64 %140, %292, !dbg !1912
  br i1 %293, label %294, label %296, !dbg !1915

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1912
  store i8 39, ptr %295, align 1, !dbg !1912, !tbaa !855
  br label %296, !dbg !1912

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %297, metadata !1617, metadata !DIExpression()), !dbg !1669
  %298 = icmp ult i64 %297, %292, !dbg !1916
  br i1 %298, label %299, label %301, !dbg !1919

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1916
  store i8 92, ptr %300, align 1, !dbg !1916, !tbaa !855
  br label %301, !dbg !1916

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %302, metadata !1617, metadata !DIExpression()), !dbg !1669
  %303 = icmp ult i64 %302, %292, !dbg !1920
  br i1 %303, label %304, label %306, !dbg !1923

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1920
  store i8 39, ptr %305, align 1, !dbg !1920, !tbaa !855
  br label %306, !dbg !1920

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %307, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1669
  br label %480, !dbg !1924

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1925

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1639, metadata !DIExpression()), !dbg !1926
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !1927
  %311 = load ptr, ptr %310, align 8, !dbg !1927, !tbaa !783
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1927
  %314 = load i16, ptr %313, align 2, !dbg !1927, !tbaa !887
  %315 = lshr i16 %314, 14, !dbg !1929
  %316 = trunc i16 %315 to i8, !dbg !1929
  %317 = and i8 %316, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i8 %317, metadata !1642, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %171, metadata !1610, metadata !DIExpression()), !dbg !1669
  %318 = icmp eq i8 %317, 0, !dbg !1930
  call void @llvm.dbg.value(metadata i1 %318, metadata !1637, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  br label %368, !dbg !1931

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1643, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata ptr %14, metadata !1700, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %14, metadata !1708, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 8, metadata !1712, metadata !DIExpression()), !dbg !1936
  store i64 0, ptr %14, align 8, !dbg !1938
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1926
  %320 = icmp eq i64 %171, -1, !dbg !1939
  br i1 %320, label %321, label %323, !dbg !1941

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %322, metadata !1610, metadata !DIExpression()), !dbg !1669
  br label %323, !dbg !1943

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1778
  call void @llvm.dbg.value(metadata i64 %324, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !1944
  %325 = sub i64 %324, %145, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %15, metadata !1646, metadata !DIExpression(DW_OP_deref)), !dbg !1946
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %326, metadata !1650, metadata !DIExpression()), !dbg !1946
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1948

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1926
  %328 = icmp ugt i64 %324, %145, !dbg !1949
  br i1 %328, label %331, label %329, !dbg !1951

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %324, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i1 true, metadata !1637, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  br label %368, !dbg !1931

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1926
  br label %360, !dbg !1954

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1639, metadata !DIExpression()), !dbg !1926
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1956
  %335 = load i8, ptr %334, align 1, !dbg !1956, !tbaa !855
  %336 = icmp eq i8 %335, 0, !dbg !1951
  br i1 %336, label %363, label %337, !dbg !1957

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %338, metadata !1639, metadata !DIExpression()), !dbg !1926
  %339 = add i64 %338, %145, !dbg !1959
  %340 = icmp eq i64 %338, %325, !dbg !1949
  br i1 %340, label %363, label %331, !dbg !1951, !llvm.loop !1960

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1961
  %344 = and i1 %343, %133, !dbg !1961
  call void @llvm.dbg.value(metadata i64 1, metadata !1651, metadata !DIExpression()), !dbg !1962
  br i1 %344, label %345, label %354, !dbg !1961

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1651, metadata !DIExpression()), !dbg !1962
  %347 = add i64 %346, %145, !dbg !1963
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1965
  %349 = load i8, ptr %348, align 1, !dbg !1965, !tbaa !855
  %350 = sext i8 %349 to i32, !dbg !1965
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1966

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %352, metadata !1651, metadata !DIExpression()), !dbg !1962
  %353 = icmp eq i64 %352, %326, !dbg !1968
  br i1 %353, label %354, label %345, !dbg !1969, !llvm.loop !1970

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1972, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %355, metadata !1646, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 %355, metadata !1974, metadata !DIExpression()), !dbg !1982
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !1984
  %357 = icmp ne i32 %356, 0, !dbg !1985
  %358 = zext i1 %357 to i8, !dbg !1986
  call void @llvm.dbg.value(metadata i8 %358, metadata !1642, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %326, metadata !1639, metadata !DIExpression()), !dbg !1926
  br label %363, !dbg !1987

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !1953
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1642, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %324, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i1 %361, metadata !1637, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  br label %368, !dbg !1931

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1642, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %364, metadata !1639, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %324, metadata !1610, metadata !DIExpression()), !dbg !1669
  %366 = icmp eq i8 %365, 0, !dbg !1930
  call void @llvm.dbg.value(metadata i1 %366, metadata !1637, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  %367 = icmp ugt i64 %364, 1, !dbg !1988
  br i1 %367, label %374, label %368, !dbg !1931

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1989
  br i1 %373, label %374, label %480, !dbg !1989

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %379, metadata !1659, metadata !DIExpression()), !dbg !1991
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1992

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1669
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1770
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1768
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1778
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1993
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1778
  call void @llvm.dbg.value(metadata i8 %387, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %386, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %385, metadata !1633, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %384, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %383, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %382, metadata !1617, metadata !DIExpression()), !dbg !1669
  br i1 %380, label %388, label %434, !dbg !1994

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1999

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1778
  %390 = and i8 %383, 1, !dbg !2002
  %391 = icmp eq i8 %390, 0, !dbg !2002
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2002
  br i1 %392, label %393, label %409, !dbg !2002

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2004
  br i1 %394, label %395, label %397, !dbg !2008

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2004
  store i8 39, ptr %396, align 1, !dbg !2004, !tbaa !855
  br label %397, !dbg !2004

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %398, metadata !1617, metadata !DIExpression()), !dbg !1669
  %399 = icmp ult i64 %398, %146, !dbg !2009
  br i1 %399, label %400, label %402, !dbg !2012

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2009
  store i8 36, ptr %401, align 1, !dbg !2009, !tbaa !855
  br label %402, !dbg !2009

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %403, metadata !1617, metadata !DIExpression()), !dbg !1669
  %404 = icmp ult i64 %403, %146, !dbg !2013
  br i1 %404, label %405, label %407, !dbg !2016

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2013
  store i8 39, ptr %406, align 1, !dbg !2013, !tbaa !855
  br label %407, !dbg !2013

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %408, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1625, metadata !DIExpression()), !dbg !1669
  br label %409, !dbg !2017

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1669
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %411, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %410, metadata !1617, metadata !DIExpression()), !dbg !1669
  %412 = icmp ult i64 %410, %146, !dbg !2018
  br i1 %412, label %413, label %415, !dbg !2021

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2018
  store i8 92, ptr %414, align 1, !dbg !2018, !tbaa !855
  br label %415, !dbg !2018

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %416, metadata !1617, metadata !DIExpression()), !dbg !1669
  %417 = icmp ult i64 %416, %146, !dbg !2022
  br i1 %417, label %418, label %422, !dbg !2025

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2022
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2022
  store i8 %420, ptr %421, align 1, !dbg !2022, !tbaa !855
  br label %422, !dbg !2022

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %423, metadata !1617, metadata !DIExpression()), !dbg !1669
  %424 = icmp ult i64 %423, %146, !dbg !2026
  br i1 %424, label %425, label %430, !dbg !2029

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2026
  %428 = or i8 %427, 48, !dbg !2026
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2026
  store i8 %428, ptr %429, align 1, !dbg !2026, !tbaa !855
  br label %430, !dbg !2026

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %431, metadata !1617, metadata !DIExpression()), !dbg !1669
  %432 = and i8 %387, 7, !dbg !2030
  %433 = or i8 %432, 48, !dbg !2031
  call void @llvm.dbg.value(metadata i8 %433, metadata !1638, metadata !DIExpression()), !dbg !1778
  br label %443, !dbg !2032

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2033
  %436 = icmp eq i8 %435, 0, !dbg !2033
  br i1 %436, label %443, label %437, !dbg !2035

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2036
  br i1 %438, label %439, label %441, !dbg !2040

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2036
  store i8 92, ptr %440, align 1, !dbg !2036, !tbaa !855
  br label %441, !dbg !2036

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %442, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1778
  br label %443, !dbg !2041

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1669
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1770
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1778
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1778
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1778
  call void @llvm.dbg.value(metadata i8 %448, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %447, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %446, metadata !1633, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %445, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %444, metadata !1617, metadata !DIExpression()), !dbg !1669
  %449 = add i64 %384, 1, !dbg !2042
  %450 = icmp ugt i64 %379, %449, !dbg !2044
  br i1 %450, label %451, label %478, !dbg !2045

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2046
  %453 = icmp ne i8 %452, 0, !dbg !2046
  %454 = and i8 %447, 1, !dbg !2046
  %455 = icmp eq i8 %454, 0, !dbg !2046
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2046
  br i1 %456, label %457, label %468, !dbg !2046

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2049
  br i1 %458, label %459, label %461, !dbg !2053

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2049
  store i8 39, ptr %460, align 1, !dbg !2049, !tbaa !855
  br label %461, !dbg !2049

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %462, metadata !1617, metadata !DIExpression()), !dbg !1669
  %463 = icmp ult i64 %462, %146, !dbg !2054
  br i1 %463, label %464, label %466, !dbg !2057

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2054
  store i8 39, ptr %465, align 1, !dbg !2054, !tbaa !855
  br label %466, !dbg !2054

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %467, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1669
  br label %468, !dbg !2058

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2059
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %470, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %469, metadata !1617, metadata !DIExpression()), !dbg !1669
  %471 = icmp ult i64 %469, %146, !dbg !2060
  br i1 %471, label %472, label %474, !dbg !2063

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2060
  store i8 %448, ptr %473, align 1, !dbg !2060, !tbaa !855
  br label %474, !dbg !2060

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %475, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %449, metadata !1631, metadata !DIExpression()), !dbg !1768
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2064
  %477 = load i8, ptr %476, align 1, !dbg !2064, !tbaa !855
  call void @llvm.dbg.value(metadata i8 %477, metadata !1638, metadata !DIExpression()), !dbg !1778
  br label %381, !dbg !2065, !llvm.loop !2066

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i8 %448, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %479, metadata !1637, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %447, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %446, metadata !1633, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %384, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %445, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %444, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %378, metadata !1610, metadata !DIExpression()), !dbg !1669
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2069
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1669
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1674
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1669
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1669
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1768
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1778
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1778
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1778
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %489, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %488, metadata !1637, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %487, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %173, metadata !1633, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %486, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %485, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %484, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %483, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %482, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %481, metadata !1610, metadata !DIExpression()), !dbg !1669
  br i1 %127, label %502, label %491, !dbg !2070

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
  br i1 %137, label %503, label %524, !dbg !2072

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2073

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
  %514 = lshr i8 %505, 5, !dbg !2074
  %515 = zext i8 %514 to i64, !dbg !2074
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2075
  %517 = load i32, ptr %516, align 4, !dbg !2075, !tbaa !846
  %518 = and i8 %505, 31, !dbg !2076
  %519 = zext i8 %518 to i32, !dbg !2076
  %520 = shl nuw i32 1, %519, !dbg !2077
  %521 = and i32 %517, %520, !dbg !2077
  %522 = icmp eq i32 %521, 0, !dbg !2077
  %523 = and i1 %172, %522, !dbg !2078
  br i1 %523, label %573, label %535, !dbg !2078

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
  br i1 %172, label %573, label %535, !dbg !2079

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2069
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1669
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1674
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1678
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1770
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2080
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1778
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1778
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %543, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %542, metadata !1637, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %541, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %540, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %539, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %538, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %537, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %536, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.label(metadata !1666), !dbg !2081
  br i1 %132, label %545, label %674, !dbg !2082

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1778
  %546 = and i8 %540, 1, !dbg !2084
  %547 = icmp eq i8 %546, 0, !dbg !2084
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2084
  br i1 %548, label %549, label %565, !dbg !2084

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2086
  br i1 %550, label %551, label %553, !dbg !2090

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2086
  store i8 39, ptr %552, align 1, !dbg !2086, !tbaa !855
  br label %553, !dbg !2086

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %554, metadata !1617, metadata !DIExpression()), !dbg !1669
  %555 = icmp ult i64 %554, %544, !dbg !2091
  br i1 %555, label %556, label %558, !dbg !2094

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2091
  store i8 36, ptr %557, align 1, !dbg !2091, !tbaa !855
  br label %558, !dbg !2091

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %559, metadata !1617, metadata !DIExpression()), !dbg !1669
  %560 = icmp ult i64 %559, %544, !dbg !2095
  br i1 %560, label %561, label %563, !dbg !2098

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2095
  store i8 39, ptr %562, align 1, !dbg !2095, !tbaa !855
  br label %563, !dbg !2095

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %564, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 1, metadata !1625, metadata !DIExpression()), !dbg !1669
  br label %565, !dbg !2099

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1778
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %567, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %566, metadata !1617, metadata !DIExpression()), !dbg !1669
  %568 = icmp ult i64 %566, %544, !dbg !2100
  br i1 %568, label %569, label %571, !dbg !2103

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2100
  store i8 92, ptr %570, align 1, !dbg !2100, !tbaa !855
  br label %571, !dbg !2100

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %544, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %543, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %542, metadata !1637, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %541, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %567, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %539, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %538, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %572, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %536, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.label(metadata !1667), !dbg !2104
  br label %600, !dbg !2105

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2069
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1669
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1674
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1678
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1770
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2080
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1778
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1778
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2108
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %582, metadata !1638, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %581, metadata !1637, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %580, metadata !1636, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %579, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %578, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %577, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %576, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %575, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %574, metadata !1610, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.label(metadata !1667), !dbg !2104
  %584 = and i8 %578, 1, !dbg !2105
  %585 = icmp ne i8 %584, 0, !dbg !2105
  %586 = and i8 %580, 1, !dbg !2105
  %587 = icmp eq i8 %586, 0, !dbg !2105
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2105
  br i1 %588, label %589, label %600, !dbg !2105

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2109
  br i1 %590, label %591, label %593, !dbg !2113

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2109
  store i8 39, ptr %592, align 1, !dbg !2109, !tbaa !855
  br label %593, !dbg !2109

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %594, metadata !1617, metadata !DIExpression()), !dbg !1669
  %595 = icmp ult i64 %594, %583, !dbg !2114
  br i1 %595, label %596, label %598, !dbg !2117

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2114
  store i8 39, ptr %597, align 1, !dbg !2114, !tbaa !855
  br label %598, !dbg !2114

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %599, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1669
  br label %600, !dbg !2118

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1778
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %609, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %608, metadata !1617, metadata !DIExpression()), !dbg !1669
  %610 = icmp ult i64 %608, %601, !dbg !2119
  br i1 %610, label %611, label %613, !dbg !2122

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2119
  store i8 %602, ptr %612, align 1, !dbg !2119, !tbaa !855
  br label %613, !dbg !2119

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %614, metadata !1617, metadata !DIExpression()), !dbg !1669
  %615 = icmp eq i8 %603, 0, !dbg !2123
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2125
  call void @llvm.dbg.value(metadata i8 %616, metadata !1624, metadata !DIExpression()), !dbg !1669
  br label %617, !dbg !2126

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2069
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1669
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1674
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1678
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1679
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1770
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2080
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %624, metadata !1631, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %623, metadata !1625, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %622, metadata !1624, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %621, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %620, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %619, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %618, metadata !1610, metadata !DIExpression()), !dbg !1669
  %626 = add i64 %624, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %626, metadata !1631, metadata !DIExpression()), !dbg !1768
  br label %138, !dbg !2128, !llvm.loop !2129

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1608, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %143, metadata !1624, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 %142, metadata !1623, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %141, metadata !1618, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %140, metadata !1617, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %139, metadata !1610, metadata !DIExpression()), !dbg !1669
  %628 = icmp eq i64 %140, 0, !dbg !2131
  %629 = and i1 %133, %628, !dbg !2133
  %630 = xor i1 %629, true, !dbg !2133
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2133
  br i1 %631, label %632, label %670, !dbg !2133

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2134
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2134
  br i1 %636, label %637, label %646, !dbg !2134

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2136
  %639 = icmp eq i8 %638, 0, !dbg !2136
  br i1 %639, label %642, label %640, !dbg !2139

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2140
  br label %694, !dbg !2141

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2142
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2144
  br i1 %645, label %28, label %646, !dbg !2144

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2145
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2147
  br i1 %649, label %650, label %665, !dbg !2147

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1619, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %140, metadata !1617, metadata !DIExpression()), !dbg !1669
  %651 = load i8, ptr %120, align 1, !dbg !2148, !tbaa !855
  %652 = icmp eq i8 %651, 0, !dbg !2151
  br i1 %652, label %665, label %653, !dbg !2151

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1619, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %656, metadata !1617, metadata !DIExpression()), !dbg !1669
  %657 = icmp ult i64 %656, %146, !dbg !2152
  br i1 %657, label %658, label %660, !dbg !2155

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2152
  store i8 %654, ptr %659, align 1, !dbg !2152, !tbaa !855
  br label %660, !dbg !2152

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %661, metadata !1617, metadata !DIExpression()), !dbg !1669
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2156
  call void @llvm.dbg.value(metadata ptr %662, metadata !1619, metadata !DIExpression()), !dbg !1669
  %663 = load i8, ptr %662, align 1, !dbg !2148, !tbaa !855
  %664 = icmp eq i8 %663, 0, !dbg !2151
  br i1 %664, label %665, label %653, !dbg !2151, !llvm.loop !2157

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %666, metadata !1617, metadata !DIExpression()), !dbg !1669
  %667 = icmp ult i64 %666, %146, !dbg !2159
  br i1 %667, label %668, label %694, !dbg !2161

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2162
  store i8 0, ptr %669, align 1, !dbg !2163, !tbaa !855
  br label %694, !dbg !2162

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1668), !dbg !2164
  %672 = icmp eq i8 %124, 0, !dbg !2165
  %673 = select i1 %672, i32 2, i32 4, !dbg !2165
  br label %684, !dbg !2165

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2165
  %678 = select i1 %677, i32 2, i32 4, !dbg !2165
  br label %679, !dbg !2167

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1668), !dbg !2164
  %683 = icmp eq i32 %116, 2, !dbg !2167
  br i1 %683, label %684, label %688, !dbg !2165

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2165

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1611, metadata !DIExpression()), !dbg !1669
  %692 = and i32 %5, -3, !dbg !2168
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2169
  br label %694, !dbg !2170

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2171
}

; Function Attrs: nounwind
declare !dbg !2172 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2175 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2178 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2180 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %1, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata ptr %2, metadata !2186, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata ptr %0, metadata !2188, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i64 %1, metadata !2193, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata ptr null, metadata !2194, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata ptr %2, metadata !2195, metadata !DIExpression()), !dbg !2201
  %4 = icmp eq ptr %2, null, !dbg !2203
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2203
  call void @llvm.dbg.value(metadata ptr %5, metadata !2196, metadata !DIExpression()), !dbg !2201
  %6 = tail call ptr @__errno_location() #42, !dbg !2204
  %7 = load i32, ptr %6, align 4, !dbg !2204, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %7, metadata !2197, metadata !DIExpression()), !dbg !2201
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2205
  %9 = load i32, ptr %8, align 4, !dbg !2205, !tbaa !1551
  %10 = or i32 %9, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %10, metadata !2198, metadata !DIExpression()), !dbg !2201
  %11 = load i32, ptr %5, align 8, !dbg !2207, !tbaa !1501
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2208
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2209
  %14 = load ptr, ptr %13, align 8, !dbg !2209, !tbaa !1572
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2210
  %16 = load ptr, ptr %15, align 8, !dbg !2210, !tbaa !1575
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2211
  %18 = add i64 %17, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %18, metadata !2199, metadata !DIExpression()), !dbg !2201
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2213
  call void @llvm.dbg.value(metadata ptr %19, metadata !2200, metadata !DIExpression()), !dbg !2201
  %20 = load i32, ptr %5, align 8, !dbg !2214, !tbaa !1501
  %21 = load ptr, ptr %13, align 8, !dbg !2215, !tbaa !1572
  %22 = load ptr, ptr %15, align 8, !dbg !2216, !tbaa !1575
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2217
  store i32 %7, ptr %6, align 4, !dbg !2218, !tbaa !846
  ret ptr %19, !dbg !2219
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2189 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2188, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2193, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %2, metadata !2194, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %3, metadata !2195, metadata !DIExpression()), !dbg !2220
  %5 = icmp eq ptr %3, null, !dbg !2221
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %6, metadata !2196, metadata !DIExpression()), !dbg !2220
  %7 = tail call ptr @__errno_location() #42, !dbg !2222
  %8 = load i32, ptr %7, align 4, !dbg !2222, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %8, metadata !2197, metadata !DIExpression()), !dbg !2220
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2223
  %10 = load i32, ptr %9, align 4, !dbg !2223, !tbaa !1551
  %11 = icmp eq ptr %2, null, !dbg !2224
  %12 = zext i1 %11 to i32, !dbg !2224
  %13 = or i32 %10, %12, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %13, metadata !2198, metadata !DIExpression()), !dbg !2220
  %14 = load i32, ptr %6, align 8, !dbg !2226, !tbaa !1501
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2227
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2228
  %17 = load ptr, ptr %16, align 8, !dbg !2228, !tbaa !1572
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2229
  %19 = load ptr, ptr %18, align 8, !dbg !2229, !tbaa !1575
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2230
  %21 = add i64 %20, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %21, metadata !2199, metadata !DIExpression()), !dbg !2220
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2232
  call void @llvm.dbg.value(metadata ptr %22, metadata !2200, metadata !DIExpression()), !dbg !2220
  %23 = load i32, ptr %6, align 8, !dbg !2233, !tbaa !1501
  %24 = load ptr, ptr %16, align 8, !dbg !2234, !tbaa !1572
  %25 = load ptr, ptr %18, align 8, !dbg !2235, !tbaa !1575
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2236
  store i32 %8, ptr %7, align 4, !dbg !2237, !tbaa !846
  br i1 %11, label %28, label %27, !dbg !2238

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2239, !tbaa !2241
  br label %28, !dbg !2242

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2243
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2244 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2249, !tbaa !783
  call void @llvm.dbg.value(metadata ptr %1, metadata !2246, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 1, metadata !2247, metadata !DIExpression()), !dbg !2251
  %2 = load i32, ptr @nslots, align 4, !tbaa !846
  call void @llvm.dbg.value(metadata i32 1, metadata !2247, metadata !DIExpression()), !dbg !2251
  %3 = icmp sgt i32 %2, 1, !dbg !2252
  br i1 %3, label %4, label %6, !dbg !2254

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2252
  br label %10, !dbg !2254

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2255
  %8 = load ptr, ptr %7, align 8, !dbg !2255, !tbaa !2257
  %9 = icmp eq ptr %8, @slot0, !dbg !2259
  br i1 %9, label %17, label %16, !dbg !2260

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2247, metadata !DIExpression()), !dbg !2251
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2261
  %13 = load ptr, ptr %12, align 8, !dbg !2261, !tbaa !2257
  tail call void @free(ptr noundef %13) #39, !dbg !2262
  %14 = add nuw nsw i64 %11, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %14, metadata !2247, metadata !DIExpression()), !dbg !2251
  %15 = icmp eq i64 %14, %5, !dbg !2252
  br i1 %15, label %6, label %10, !dbg !2254, !llvm.loop !2264

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2266
  store i64 256, ptr @slotvec0, align 8, !dbg !2268, !tbaa !2269
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2270, !tbaa !2257
  br label %17, !dbg !2271

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2272
  br i1 %18, label %20, label %19, !dbg !2274

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2275
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2277, !tbaa !783
  br label %20, !dbg !2278

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2279, !tbaa !846
  ret void, !dbg !2280
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2281 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2284 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %1, metadata !2287, metadata !DIExpression()), !dbg !2288
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2289
  ret ptr %3, !dbg !2290
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2291 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2295, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %1, metadata !2296, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %2, metadata !2297, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %3, metadata !2298, metadata !DIExpression()), !dbg !2311
  %6 = tail call ptr @__errno_location() #42, !dbg !2312
  %7 = load i32, ptr %6, align 4, !dbg !2312, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %7, metadata !2299, metadata !DIExpression()), !dbg !2311
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2313, !tbaa !783
  call void @llvm.dbg.value(metadata ptr %8, metadata !2300, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2301, metadata !DIExpression()), !dbg !2311
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2314
  br i1 %9, label %10, label %11, !dbg !2314

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2316
  unreachable, !dbg !2316

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2317, !tbaa !846
  %13 = icmp sgt i32 %12, %0, !dbg !2318
  br i1 %13, label %32, label %14, !dbg !2319

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2320
  call void @llvm.dbg.value(metadata i1 %15, metadata !2302, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2322
  %16 = sext i32 %12 to i64, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %16, metadata !2305, metadata !DIExpression()), !dbg !2321
  store i64 %16, ptr %5, align 8, !dbg !2324, !tbaa !2241
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2325
  %18 = add nuw nsw i32 %0, 1, !dbg !2326
  %19 = sub i32 %18, %12, !dbg !2327
  %20 = sext i32 %19 to i64, !dbg !2328
  call void @llvm.dbg.value(metadata ptr %5, metadata !2305, metadata !DIExpression(DW_OP_deref)), !dbg !2321
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %21, metadata !2300, metadata !DIExpression()), !dbg !2311
  store ptr %21, ptr @slotvec, align 8, !dbg !2330, !tbaa !783
  br i1 %15, label %22, label %23, !dbg !2331

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2332, !tbaa.struct !2334
  br label %23, !dbg !2335

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2336, !tbaa !846
  %25 = sext i32 %24 to i64, !dbg !2337
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2337
  %27 = load i64, ptr %5, align 8, !dbg !2338, !tbaa !2241
  call void @llvm.dbg.value(metadata i64 %27, metadata !2305, metadata !DIExpression()), !dbg !2321
  %28 = sub nsw i64 %27, %25, !dbg !2339
  %29 = shl i64 %28, 4, !dbg !2340
  call void @llvm.dbg.value(metadata ptr %26, metadata !1708, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %29, metadata !1712, metadata !DIExpression()), !dbg !2341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2343
  %30 = load i64, ptr %5, align 8, !dbg !2344, !tbaa !2241
  call void @llvm.dbg.value(metadata i64 %30, metadata !2305, metadata !DIExpression()), !dbg !2321
  %31 = trunc i64 %30 to i32, !dbg !2344
  store i32 %31, ptr @nslots, align 4, !dbg !2345, !tbaa !846
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2346
  br label %32, !dbg !2347

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2311
  call void @llvm.dbg.value(metadata ptr %33, metadata !2300, metadata !DIExpression()), !dbg !2311
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2348
  %36 = load i64, ptr %35, align 8, !dbg !2349, !tbaa !2269
  call void @llvm.dbg.value(metadata i64 %36, metadata !2306, metadata !DIExpression()), !dbg !2350
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2351
  %38 = load ptr, ptr %37, align 8, !dbg !2351, !tbaa !2257
  call void @llvm.dbg.value(metadata ptr %38, metadata !2308, metadata !DIExpression()), !dbg !2350
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2352
  %40 = load i32, ptr %39, align 4, !dbg !2352, !tbaa !1551
  %41 = or i32 %40, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %41, metadata !2309, metadata !DIExpression()), !dbg !2350
  %42 = load i32, ptr %3, align 8, !dbg !2354, !tbaa !1501
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2355
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2356
  %45 = load ptr, ptr %44, align 8, !dbg !2356, !tbaa !1572
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2357
  %47 = load ptr, ptr %46, align 8, !dbg !2357, !tbaa !1575
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %48, metadata !2310, metadata !DIExpression()), !dbg !2350
  %49 = icmp ugt i64 %36, %48, !dbg !2359
  br i1 %49, label %60, label %50, !dbg !2361

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %51, metadata !2306, metadata !DIExpression()), !dbg !2350
  store i64 %51, ptr %35, align 8, !dbg !2364, !tbaa !2269
  %52 = icmp eq ptr %38, @slot0, !dbg !2365
  br i1 %52, label %54, label %53, !dbg !2367

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2368
  br label %54, !dbg !2368

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %55, metadata !2308, metadata !DIExpression()), !dbg !2350
  store ptr %55, ptr %37, align 8, !dbg !2370, !tbaa !2257
  %56 = load i32, ptr %3, align 8, !dbg !2371, !tbaa !1501
  %57 = load ptr, ptr %44, align 8, !dbg !2372, !tbaa !1572
  %58 = load ptr, ptr %46, align 8, !dbg !2373, !tbaa !1575
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2374
  br label %60, !dbg !2375

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2350
  call void @llvm.dbg.value(metadata ptr %61, metadata !2308, metadata !DIExpression()), !dbg !2350
  store i32 %7, ptr %6, align 4, !dbg !2376, !tbaa !846
  ret ptr %61, !dbg !2377
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata ptr %1, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %2, metadata !2384, metadata !DIExpression()), !dbg !2385
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2386
  ret ptr %4, !dbg !2387
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2388 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2390, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 0, metadata !2286, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata ptr %0, metadata !2287, metadata !DIExpression()), !dbg !2392
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2394
  ret ptr %2, !dbg !2395
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2396 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i64 %1, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 0, metadata !2382, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()), !dbg !2403
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2405
  ret ptr %3, !dbg !2406
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2407 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata ptr %2, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2414, metadata !DIExpression()), !dbg !2417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418), !dbg !2421
  call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2427, metadata !DIExpression()), !dbg !2430
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2430, !alias.scope !2418
  %5 = icmp eq i32 %1, 10, !dbg !2431
  br i1 %5, label %6, label %7, !dbg !2433

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2434, !noalias !2418
  unreachable, !dbg !2434

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2435, !tbaa !1501, !alias.scope !2418
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2436
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2437
  ret ptr %8, !dbg !2438
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2439 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2443, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %1, metadata !2444, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %2, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %3, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2447, metadata !DIExpression()), !dbg !2450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2427, metadata !DIExpression()), !dbg !2457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2457, !alias.scope !2451
  %6 = icmp eq i32 %1, 10, !dbg !2458
  br i1 %6, label %7, label %8, !dbg !2459

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2460, !noalias !2451
  unreachable, !dbg !2460

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2461, !tbaa !1501, !alias.scope !2451
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2462
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2463
  ret ptr %9, !dbg !2464
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2465 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata ptr %1, metadata !2470, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %1, metadata !2413, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2414, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2476), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2427, metadata !DIExpression()), !dbg !2482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2482, !alias.scope !2476
  %4 = icmp eq i32 %0, 10, !dbg !2483
  br i1 %4, label %5, label %6, !dbg !2484

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2485, !noalias !2476
  unreachable, !dbg !2485

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2486, !tbaa !1501, !alias.scope !2476
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2487
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2488
  ret ptr %7, !dbg !2489
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2490 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %2, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %1, metadata !2445, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %2, metadata !2446, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2447, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2427, metadata !DIExpression()), !dbg !2508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2508, !alias.scope !2502
  %5 = icmp eq i32 %0, 10, !dbg !2509
  br i1 %5, label %6, label %7, !dbg !2510

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2511, !noalias !2502
  unreachable, !dbg !2511

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2512, !tbaa !1501, !alias.scope !2502
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2513
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2514
  ret ptr %8, !dbg !2515
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2516 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 %2, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2525
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2527, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %4, metadata !1518, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 %2, metadata !1519, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 %2, metadata !1521, metadata !DIExpression()), !dbg !2529
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2531
  %6 = lshr i8 %2, 5, !dbg !2532
  %7 = zext i8 %6 to i64, !dbg !2532
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2533
  call void @llvm.dbg.value(metadata ptr %8, metadata !1522, metadata !DIExpression()), !dbg !2529
  %9 = and i8 %2, 31, !dbg !2534
  %10 = zext i8 %9 to i32, !dbg !2534
  call void @llvm.dbg.value(metadata i32 %10, metadata !1524, metadata !DIExpression()), !dbg !2529
  %11 = load i32, ptr %8, align 4, !dbg !2535, !tbaa !846
  %12 = lshr i32 %11, %10, !dbg !2536
  call void @llvm.dbg.value(metadata i32 %12, metadata !1525, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2529
  %13 = and i32 %12, 1, !dbg !2537
  %14 = xor i32 %13, 1, !dbg !2537
  %15 = shl nuw i32 %14, %10, !dbg !2538
  %16 = xor i32 %15, %11, !dbg !2539
  store i32 %16, ptr %8, align 4, !dbg !2539, !tbaa !846
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2540
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2541
  ret ptr %17, !dbg !2542
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2543 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 %1, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 -1, metadata !2521, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 %1, metadata !2522, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2523, metadata !DIExpression()), !dbg !2553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2554, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %3, metadata !1518, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1519, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1521, metadata !DIExpression()), !dbg !2555
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2557
  %5 = lshr i8 %1, 5, !dbg !2558
  %6 = zext i8 %5 to i64, !dbg !2558
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %7, metadata !1522, metadata !DIExpression()), !dbg !2555
  %8 = and i8 %1, 31, !dbg !2560
  %9 = zext i8 %8 to i32, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1524, metadata !DIExpression()), !dbg !2555
  %10 = load i32, ptr %7, align 4, !dbg !2561, !tbaa !846
  %11 = lshr i32 %10, %9, !dbg !2562
  call void @llvm.dbg.value(metadata i32 %11, metadata !1525, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2555
  %12 = and i32 %11, 1, !dbg !2563
  %13 = xor i32 %12, 1, !dbg !2563
  %14 = shl nuw i32 %13, %9, !dbg !2564
  %15 = xor i32 %14, %10, !dbg !2565
  store i32 %15, ptr %7, align 4, !dbg !2565, !tbaa !846
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2566
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2567
  ret ptr %16, !dbg !2568
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2569 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2571, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata ptr %0, metadata !2547, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !2548, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 -1, metadata !2521, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 58, metadata !2522, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2523, metadata !DIExpression()), !dbg !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2579, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %2, metadata !1518, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 58, metadata !1519, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 58, metadata !1521, metadata !DIExpression()), !dbg !2580
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2582
  call void @llvm.dbg.value(metadata ptr %3, metadata !1522, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 26, metadata !1524, metadata !DIExpression()), !dbg !2580
  %4 = load i32, ptr %3, align 4, !dbg !2583, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %4, metadata !1525, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2580
  %5 = or i32 %4, 67108864, !dbg !2584
  store i32 %5, ptr %3, align 4, !dbg !2584, !tbaa !846
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2586
  ret ptr %6, !dbg !2587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2588 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 58, metadata !2522, metadata !DIExpression()), !dbg !2593
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2523, metadata !DIExpression()), !dbg !2596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2597, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %3, metadata !1518, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 58, metadata !1519, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 58, metadata !1521, metadata !DIExpression()), !dbg !2598
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2600
  call void @llvm.dbg.value(metadata ptr %4, metadata !1522, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 26, metadata !1524, metadata !DIExpression()), !dbg !2598
  %5 = load i32, ptr %4, align 4, !dbg !2601, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %5, metadata !1525, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2598
  %6 = or i32 %5, 67108864, !dbg !2602
  store i32 %6, ptr %4, align 4, !dbg !2602, !tbaa !846
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2603
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2604
  ret ptr %7, !dbg !2605
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2606 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2427, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %1, metadata !2609, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2615
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2611, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 0, metadata !2427, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2617
  %5 = icmp eq i32 %1, 10, !dbg !2618
  br i1 %5, label %6, label %7, !dbg !2619

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2620, !noalias !2621
  unreachable, !dbg !2620

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2617
  store i32 %1, ptr %4, align 8, !dbg !2624, !tbaa.struct !2528
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %4, metadata !1518, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 58, metadata !1519, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 1, metadata !1520, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 58, metadata !1521, metadata !DIExpression()), !dbg !2625
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %9, metadata !1522, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 26, metadata !1524, metadata !DIExpression()), !dbg !2625
  %10 = load i32, ptr %9, align 4, !dbg !2628, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %10, metadata !1525, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2625
  %11 = or i32 %10, 67108864, !dbg !2629
  store i32 %11, ptr %9, align 4, !dbg !2629, !tbaa !846
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2630
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2631
  ret ptr %12, !dbg !2632
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2633 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %3, metadata !2640, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %1, metadata !2647, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %2, metadata !2648, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %3, metadata !2649, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i64 -1, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2651, metadata !DIExpression()), !dbg !2655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2656, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %5, metadata !1558, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %1, metadata !1559, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %2, metadata !1560, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %5, metadata !1558, metadata !DIExpression()), !dbg !2657
  store i32 10, ptr %5, align 8, !dbg !2659, !tbaa !1501
  %6 = icmp ne ptr %1, null, !dbg !2660
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2661
  br i1 %8, label %10, label %9, !dbg !2661

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2662
  unreachable, !dbg !2662

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2663
  store ptr %1, ptr %11, align 8, !dbg !2664, !tbaa !1572
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2665
  store ptr %2, ptr %12, align 8, !dbg !2666, !tbaa !1575
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2667
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2668
  ret ptr %13, !dbg !2669
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2643 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %1, metadata !2647, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %2, metadata !2648, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %3, metadata !2649, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i64 %4, metadata !2650, metadata !DIExpression()), !dbg !2670
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2651, metadata !DIExpression()), !dbg !2672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2673, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %6, metadata !1558, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %1, metadata !1559, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %2, metadata !1560, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %6, metadata !1558, metadata !DIExpression()), !dbg !2674
  store i32 10, ptr %6, align 8, !dbg !2676, !tbaa !1501
  %7 = icmp ne ptr %1, null, !dbg !2677
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2678
  br i1 %9, label %11, label %10, !dbg !2678

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2679
  unreachable, !dbg !2679

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2680
  store ptr %1, ptr %12, align 8, !dbg !2681, !tbaa !1572
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2682
  store ptr %2, ptr %13, align 8, !dbg !2683, !tbaa !1575
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2684
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2685
  ret ptr %14, !dbg !2686
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2687 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %1, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %2, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %2, metadata !2640, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %0, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %1, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata ptr %2, metadata !2649, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 -1, metadata !2650, metadata !DIExpression()), !dbg !2697
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2699
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2651, metadata !DIExpression()), !dbg !2700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2701, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %4, metadata !1558, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %0, metadata !1559, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %1, metadata !1560, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %4, metadata !1558, metadata !DIExpression()), !dbg !2702
  store i32 10, ptr %4, align 8, !dbg !2704, !tbaa !1501
  %5 = icmp ne ptr %0, null, !dbg !2705
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2706
  br i1 %7, label %9, label %8, !dbg !2706

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2707
  unreachable, !dbg !2707

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2708
  store ptr %0, ptr %10, align 8, !dbg !2709, !tbaa !1572
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2710
  store ptr %1, ptr %11, align 8, !dbg !2711, !tbaa !1575
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2712
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2713
  ret ptr %12, !dbg !2714
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2715 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %1, metadata !2720, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %3, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %0, metadata !2647, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %1, metadata !2648, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %2, metadata !2649, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %3, metadata !2650, metadata !DIExpression()), !dbg !2724
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2726
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2651, metadata !DIExpression()), !dbg !2727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2728, !tbaa.struct !2528
  call void @llvm.dbg.value(metadata ptr %5, metadata !1558, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %0, metadata !1559, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %1, metadata !1560, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %5, metadata !1558, metadata !DIExpression()), !dbg !2729
  store i32 10, ptr %5, align 8, !dbg !2731, !tbaa !1501
  %6 = icmp ne ptr %0, null, !dbg !2732
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2733
  br i1 %8, label %10, label %9, !dbg !2733

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2734
  unreachable, !dbg !2734

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2735
  store ptr %0, ptr %11, align 8, !dbg !2736, !tbaa !1572
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2737
  store ptr %1, ptr %12, align 8, !dbg !2738, !tbaa !1575
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2740
  ret ptr %13, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2742 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %2, metadata !2748, metadata !DIExpression()), !dbg !2749
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2750
  ret ptr %4, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2752 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2748, metadata !DIExpression()), !dbg !2759
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2761
  ret ptr %3, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %1, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 -1, metadata !2748, metadata !DIExpression()), !dbg !2770
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2772
  ret ptr %3, !dbg !2773
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2774 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %0, metadata !2768, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 -1, metadata !2748, metadata !DIExpression()), !dbg !2782
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2784
  ret ptr %2, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2825, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %3, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %4, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 %5, metadata !2830, metadata !DIExpression()), !dbg !2831
  %7 = icmp eq ptr %1, null, !dbg !2832
  br i1 %7, label %10, label %8, !dbg !2834

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2835
  br label %12, !dbg !2835

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.75, ptr noundef %2, ptr noundef %3) #39, !dbg !2836
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.3.77, i32 noundef 5) #39, !dbg !2837
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2837
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2838
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.5.79, i32 noundef 5) #39, !dbg !2839
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.80) #39, !dbg !2839
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2840
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
  ], !dbg !2841

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.7.81, i32 noundef 5) #39, !dbg !2842
  %21 = load ptr, ptr %4, align 8, !dbg !2842, !tbaa !783
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !2842
  br label %147, !dbg !2844

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.8.82, i32 noundef 5) #39, !dbg !2845
  %25 = load ptr, ptr %4, align 8, !dbg !2845, !tbaa !783
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2845
  %27 = load ptr, ptr %26, align 8, !dbg !2845, !tbaa !783
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !2845
  br label %147, !dbg !2846

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.9.83, i32 noundef 5) #39, !dbg !2847
  %31 = load ptr, ptr %4, align 8, !dbg !2847, !tbaa !783
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2847
  %33 = load ptr, ptr %32, align 8, !dbg !2847, !tbaa !783
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2847
  %35 = load ptr, ptr %34, align 8, !dbg !2847, !tbaa !783
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !2847
  br label %147, !dbg !2848

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.10.84, i32 noundef 5) #39, !dbg !2849
  %39 = load ptr, ptr %4, align 8, !dbg !2849, !tbaa !783
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2849
  %41 = load ptr, ptr %40, align 8, !dbg !2849, !tbaa !783
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2849
  %43 = load ptr, ptr %42, align 8, !dbg !2849, !tbaa !783
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2849
  %45 = load ptr, ptr %44, align 8, !dbg !2849, !tbaa !783
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !2849
  br label %147, !dbg !2850

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.11.85, i32 noundef 5) #39, !dbg !2851
  %49 = load ptr, ptr %4, align 8, !dbg !2851, !tbaa !783
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2851
  %51 = load ptr, ptr %50, align 8, !dbg !2851, !tbaa !783
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2851
  %53 = load ptr, ptr %52, align 8, !dbg !2851, !tbaa !783
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2851
  %55 = load ptr, ptr %54, align 8, !dbg !2851, !tbaa !783
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2851
  %57 = load ptr, ptr %56, align 8, !dbg !2851, !tbaa !783
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !2851
  br label %147, !dbg !2852

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.12.86, i32 noundef 5) #39, !dbg !2853
  %61 = load ptr, ptr %4, align 8, !dbg !2853, !tbaa !783
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2853
  %63 = load ptr, ptr %62, align 8, !dbg !2853, !tbaa !783
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2853
  %65 = load ptr, ptr %64, align 8, !dbg !2853, !tbaa !783
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2853
  %67 = load ptr, ptr %66, align 8, !dbg !2853, !tbaa !783
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2853
  %69 = load ptr, ptr %68, align 8, !dbg !2853, !tbaa !783
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2853
  %71 = load ptr, ptr %70, align 8, !dbg !2853, !tbaa !783
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !2853
  br label %147, !dbg !2854

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.13.87, i32 noundef 5) #39, !dbg !2855
  %75 = load ptr, ptr %4, align 8, !dbg !2855, !tbaa !783
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2855
  %77 = load ptr, ptr %76, align 8, !dbg !2855, !tbaa !783
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2855
  %79 = load ptr, ptr %78, align 8, !dbg !2855, !tbaa !783
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2855
  %81 = load ptr, ptr %80, align 8, !dbg !2855, !tbaa !783
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2855
  %83 = load ptr, ptr %82, align 8, !dbg !2855, !tbaa !783
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2855
  %85 = load ptr, ptr %84, align 8, !dbg !2855, !tbaa !783
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2855
  %87 = load ptr, ptr %86, align 8, !dbg !2855, !tbaa !783
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !2855
  br label %147, !dbg !2856

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.14.88, i32 noundef 5) #39, !dbg !2857
  %91 = load ptr, ptr %4, align 8, !dbg !2857, !tbaa !783
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2857
  %93 = load ptr, ptr %92, align 8, !dbg !2857, !tbaa !783
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2857
  %95 = load ptr, ptr %94, align 8, !dbg !2857, !tbaa !783
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2857
  %97 = load ptr, ptr %96, align 8, !dbg !2857, !tbaa !783
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2857
  %99 = load ptr, ptr %98, align 8, !dbg !2857, !tbaa !783
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2857
  %101 = load ptr, ptr %100, align 8, !dbg !2857, !tbaa !783
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2857
  %103 = load ptr, ptr %102, align 8, !dbg !2857, !tbaa !783
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2857
  %105 = load ptr, ptr %104, align 8, !dbg !2857, !tbaa !783
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !2857
  br label %147, !dbg !2858

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.15.89, i32 noundef 5) #39, !dbg !2859
  %109 = load ptr, ptr %4, align 8, !dbg !2859, !tbaa !783
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2859
  %111 = load ptr, ptr %110, align 8, !dbg !2859, !tbaa !783
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2859
  %113 = load ptr, ptr %112, align 8, !dbg !2859, !tbaa !783
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2859
  %115 = load ptr, ptr %114, align 8, !dbg !2859, !tbaa !783
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2859
  %117 = load ptr, ptr %116, align 8, !dbg !2859, !tbaa !783
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2859
  %119 = load ptr, ptr %118, align 8, !dbg !2859, !tbaa !783
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2859
  %121 = load ptr, ptr %120, align 8, !dbg !2859, !tbaa !783
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2859
  %123 = load ptr, ptr %122, align 8, !dbg !2859, !tbaa !783
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2859
  %125 = load ptr, ptr %124, align 8, !dbg !2859, !tbaa !783
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !2859
  br label %147, !dbg !2860

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.16.90, i32 noundef 5) #39, !dbg !2861
  %129 = load ptr, ptr %4, align 8, !dbg !2861, !tbaa !783
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2861
  %131 = load ptr, ptr %130, align 8, !dbg !2861, !tbaa !783
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2861
  %133 = load ptr, ptr %132, align 8, !dbg !2861, !tbaa !783
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2861
  %135 = load ptr, ptr %134, align 8, !dbg !2861, !tbaa !783
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2861
  %137 = load ptr, ptr %136, align 8, !dbg !2861, !tbaa !783
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2861
  %139 = load ptr, ptr %138, align 8, !dbg !2861, !tbaa !783
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2861
  %141 = load ptr, ptr %140, align 8, !dbg !2861, !tbaa !783
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2861
  %143 = load ptr, ptr %142, align 8, !dbg !2861, !tbaa !783
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2861
  %145 = load ptr, ptr %144, align 8, !dbg !2861, !tbaa !783
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !2861
  br label %147, !dbg !2862

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2864 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2868, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %1, metadata !2869, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %2, metadata !2870, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %3, metadata !2871, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %4, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 0, metadata !2873, metadata !DIExpression()), !dbg !2874
  br label %6, !dbg !2875

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2877
  call void @llvm.dbg.value(metadata i64 %7, metadata !2873, metadata !DIExpression()), !dbg !2874
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2878
  %9 = load ptr, ptr %8, align 8, !dbg !2878, !tbaa !783
  %10 = icmp eq ptr %9, null, !dbg !2880
  %11 = add i64 %7, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %11, metadata !2873, metadata !DIExpression()), !dbg !2874
  br i1 %10, label %12, label %6, !dbg !2880, !llvm.loop !2882

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2886 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %1, metadata !2899, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %2, metadata !2900, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %3, metadata !2901, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %4, metadata !2902, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 0, metadata !2903, metadata !DIExpression()), !dbg !2906
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2903, metadata !DIExpression()), !dbg !2906
  %10 = icmp ult i32 %9, 41, !dbg !2909
  br i1 %10, label %11, label %16, !dbg !2909

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2909
  %13 = zext i32 %9 to i64, !dbg !2909
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2909
  %15 = add nuw nsw i32 %9, 8, !dbg !2909
  store i32 %15, ptr %4, align 8, !dbg !2909
  br label %19, !dbg !2909

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2909
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2909
  store ptr %18, ptr %7, align 8, !dbg !2909
  br label %19, !dbg !2909

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2909
  %22 = load ptr, ptr %21, align 8, !dbg !2909
  store ptr %22, ptr %6, align 16, !dbg !2912, !tbaa !783
  %23 = icmp eq ptr %22, null, !dbg !2913
  br i1 %23, label %128, label %24, !dbg !2914

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 1, metadata !2903, metadata !DIExpression()), !dbg !2906
  %25 = icmp ult i32 %20, 41, !dbg !2909
  br i1 %25, label %29, label %26, !dbg !2909

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2909
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2909
  store ptr %28, ptr %7, align 8, !dbg !2909
  br label %34, !dbg !2909

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2909
  %31 = zext i32 %20 to i64, !dbg !2909
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2909
  %33 = add nuw nsw i32 %20, 8, !dbg !2909
  store i32 %33, ptr %4, align 8, !dbg !2909
  br label %34, !dbg !2909

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2909
  %37 = load ptr, ptr %36, align 8, !dbg !2909
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2915
  store ptr %37, ptr %38, align 8, !dbg !2912, !tbaa !783
  %39 = icmp eq ptr %37, null, !dbg !2913
  br i1 %39, label %128, label %40, !dbg !2914

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 2, metadata !2903, metadata !DIExpression()), !dbg !2906
  %41 = icmp ult i32 %35, 41, !dbg !2909
  br i1 %41, label %45, label %42, !dbg !2909

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2909
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2909
  store ptr %44, ptr %7, align 8, !dbg !2909
  br label %50, !dbg !2909

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2909
  %47 = zext i32 %35 to i64, !dbg !2909
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2909
  %49 = add nuw nsw i32 %35, 8, !dbg !2909
  store i32 %49, ptr %4, align 8, !dbg !2909
  br label %50, !dbg !2909

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2909
  %53 = load ptr, ptr %52, align 8, !dbg !2909
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2915
  store ptr %53, ptr %54, align 16, !dbg !2912, !tbaa !783
  %55 = icmp eq ptr %53, null, !dbg !2913
  br i1 %55, label %128, label %56, !dbg !2914

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 3, metadata !2903, metadata !DIExpression()), !dbg !2906
  %57 = icmp ult i32 %51, 41, !dbg !2909
  br i1 %57, label %61, label %58, !dbg !2909

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2909
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2909
  store ptr %60, ptr %7, align 8, !dbg !2909
  br label %66, !dbg !2909

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2909
  %63 = zext i32 %51 to i64, !dbg !2909
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2909
  %65 = add nuw nsw i32 %51, 8, !dbg !2909
  store i32 %65, ptr %4, align 8, !dbg !2909
  br label %66, !dbg !2909

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2909
  %69 = load ptr, ptr %68, align 8, !dbg !2909
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2915
  store ptr %69, ptr %70, align 8, !dbg !2912, !tbaa !783
  %71 = icmp eq ptr %69, null, !dbg !2913
  br i1 %71, label %128, label %72, !dbg !2914

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 4, metadata !2903, metadata !DIExpression()), !dbg !2906
  %73 = icmp ult i32 %67, 41, !dbg !2909
  br i1 %73, label %77, label %74, !dbg !2909

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2909
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2909
  store ptr %76, ptr %7, align 8, !dbg !2909
  br label %82, !dbg !2909

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2909
  %79 = zext i32 %67 to i64, !dbg !2909
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2909
  %81 = add nuw nsw i32 %67, 8, !dbg !2909
  store i32 %81, ptr %4, align 8, !dbg !2909
  br label %82, !dbg !2909

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2909
  %85 = load ptr, ptr %84, align 8, !dbg !2909
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2915
  store ptr %85, ptr %86, align 16, !dbg !2912, !tbaa !783
  %87 = icmp eq ptr %85, null, !dbg !2913
  br i1 %87, label %128, label %88, !dbg !2914

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 5, metadata !2903, metadata !DIExpression()), !dbg !2906
  %89 = icmp ult i32 %83, 41, !dbg !2909
  br i1 %89, label %93, label %90, !dbg !2909

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2909
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2909
  store ptr %92, ptr %7, align 8, !dbg !2909
  br label %98, !dbg !2909

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2909
  %95 = zext i32 %83 to i64, !dbg !2909
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2909
  %97 = add nuw nsw i32 %83, 8, !dbg !2909
  store i32 %97, ptr %4, align 8, !dbg !2909
  br label %98, !dbg !2909

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2909
  %100 = load ptr, ptr %99, align 8, !dbg !2909
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2915
  store ptr %100, ptr %101, align 8, !dbg !2912, !tbaa !783
  %102 = icmp eq ptr %100, null, !dbg !2913
  br i1 %102, label %128, label %103, !dbg !2914

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2903, metadata !DIExpression()), !dbg !2906
  %104 = load ptr, ptr %7, align 8, !dbg !2909
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2909
  store ptr %105, ptr %7, align 8, !dbg !2909
  %106 = load ptr, ptr %104, align 8, !dbg !2909
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2915
  store ptr %106, ptr %107, align 16, !dbg !2912, !tbaa !783
  %108 = icmp eq ptr %106, null, !dbg !2913
  br i1 %108, label %128, label %109, !dbg !2914

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2903, metadata !DIExpression()), !dbg !2906
  %110 = load ptr, ptr %7, align 8, !dbg !2909
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2909
  store ptr %111, ptr %7, align 8, !dbg !2909
  %112 = load ptr, ptr %110, align 8, !dbg !2909
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2915
  store ptr %112, ptr %113, align 8, !dbg !2912, !tbaa !783
  %114 = icmp eq ptr %112, null, !dbg !2913
  br i1 %114, label %128, label %115, !dbg !2914

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2903, metadata !DIExpression()), !dbg !2906
  %116 = load ptr, ptr %7, align 8, !dbg !2909
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2909
  store ptr %117, ptr %7, align 8, !dbg !2909
  %118 = load ptr, ptr %116, align 8, !dbg !2909
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2915
  store ptr %118, ptr %119, align 16, !dbg !2912, !tbaa !783
  %120 = icmp eq ptr %118, null, !dbg !2913
  br i1 %120, label %128, label %121, !dbg !2914

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2903, metadata !DIExpression()), !dbg !2906
  %122 = load ptr, ptr %7, align 8, !dbg !2909
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2909
  store ptr %123, ptr %7, align 8, !dbg !2909
  %124 = load ptr, ptr %122, align 8, !dbg !2909
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2915
  store ptr %124, ptr %125, align 8, !dbg !2912, !tbaa !783
  %126 = icmp eq ptr %124, null, !dbg !2913
  %127 = select i1 %126, i64 9, i64 10, !dbg !2914
  br label %128, !dbg !2914

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2916
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2917
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !2918
  ret void, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2919 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %2, metadata !2925, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %3, metadata !2926, metadata !DIExpression()), !dbg !2932
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !2933
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2927, metadata !DIExpression()), !dbg !2934
  call void @llvm.va_start(ptr nonnull %5), !dbg !2935
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2936
  call void @llvm.va_end(ptr nonnull %5), !dbg !2937
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !2938
  ret void, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2939 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2940, !tbaa !783
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %1), !dbg !2940
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.17.95, i32 noundef 5) #39, !dbg !2941
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.96) #39, !dbg !2941
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.19.97, i32 noundef 5) #39, !dbg !2942
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.98, ptr noundef nonnull @.str.21) #39, !dbg !2942
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !2943
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.99) #39, !dbg !2943
  ret void, !dbg !2944
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !2945 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2950, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %2, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %2, metadata !2958, metadata !DIExpression()), !dbg !2959
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !2961
  call void @llvm.dbg.value(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !2967
  %5 = icmp eq ptr %4, null, !dbg !2969
  br i1 %5, label %6, label %7, !dbg !2971

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !2972
  unreachable, !dbg !2972

7:                                                ; preds = %3
  ret ptr %4, !dbg !2973
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !2955 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %2, metadata !2958, metadata !DIExpression()), !dbg !2974
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !2975
  call void @llvm.dbg.value(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !2976
  %5 = icmp eq ptr %4, null, !dbg !2978
  br i1 %5, label %6, label %7, !dbg !2979

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !2980
  unreachable, !dbg !2980

7:                                                ; preds = %3
  ret ptr %4, !dbg !2981
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !2982 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2984, metadata !DIExpression()), !dbg !2985
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2986
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !2987
  %3 = icmp eq ptr %2, null, !dbg !2989
  br i1 %3, label %4, label %5, !dbg !2990

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !2991
  unreachable, !dbg !2991

5:                                                ; preds = %1
  ret ptr %2, !dbg !2992
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !2993 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %0, metadata !2999, metadata !DIExpression()), !dbg !3003
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !3006
  %3 = icmp eq ptr %2, null, !dbg !3008
  br i1 %3, label %4, label %5, !dbg !3009

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3010
  unreachable, !dbg !3010

5:                                                ; preds = %1
  ret ptr %2, !dbg !3011
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3012 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %0, metadata !2984, metadata !DIExpression()), !dbg !3018
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !3021
  %3 = icmp eq ptr %2, null, !dbg !3023
  br i1 %3, label %4, label %5, !dbg !3024

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3025
  unreachable, !dbg !3025

5:                                                ; preds = %1
  ret ptr %2, !dbg !3026
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3027 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()), !dbg !3039
  %3 = icmp eq i64 %1, 0, !dbg !3041
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3041
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %5, metadata !2962, metadata !DIExpression()), !dbg !3043
  %6 = icmp eq ptr %5, null, !dbg !3045
  br i1 %6, label %7, label %8, !dbg !3046

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3047
  unreachable, !dbg !3047

8:                                                ; preds = %2
  ret ptr %5, !dbg !3048
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3049 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3050 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()), !dbg !3063
  %3 = icmp eq i64 %1, 0, !dbg !3065
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3065
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3066
  call void @llvm.dbg.value(metadata ptr %5, metadata !2962, metadata !DIExpression()), !dbg !3067
  %6 = icmp eq ptr %5, null, !dbg !3069
  br i1 %6, label %7, label %8, !dbg !3070

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3071
  unreachable, !dbg !3071

8:                                                ; preds = %2
  ret ptr %5, !dbg !3072
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3073 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %2, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %1, metadata !3084, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %2, metadata !3085, metadata !DIExpression()), !dbg !3086
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3088
  call void @llvm.dbg.value(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !3089
  %5 = icmp eq ptr %4, null, !dbg !3091
  br i1 %5, label %6, label %7, !dbg !3092

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3093
  unreachable, !dbg !3093

7:                                                ; preds = %3
  ret ptr %4, !dbg !3094
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3095 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3099, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata ptr null, metadata !2954, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %0, metadata !2957, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !3102
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !3105
  %4 = icmp eq ptr %3, null, !dbg !3107
  br i1 %4, label %5, label %6, !dbg !3108

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3109
  unreachable, !dbg !3109

6:                                                ; preds = %2
  ret ptr %3, !dbg !3110
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3111 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr null, metadata !3077, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %0, metadata !3078, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr null, metadata !3081, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %0, metadata !3084, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()), !dbg !3120
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !3123
  %4 = icmp eq ptr %3, null, !dbg !3125
  br i1 %4, label %5, label %6, !dbg !3126

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3127
  unreachable, !dbg !3127

6:                                                ; preds = %2
  ret ptr %3, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3133, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %1, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 1, metadata !722, metadata !DIExpression()), !dbg !3136
  %3 = load i64, ptr %1, align 8, !dbg !3138, !tbaa !2241
  call void @llvm.dbg.value(metadata i64 %3, metadata !723, metadata !DIExpression()), !dbg !3136
  %4 = icmp eq ptr %0, null, !dbg !3139
  br i1 %4, label %5, label %8, !dbg !3141

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3142
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3145
  br label %15, !dbg !3145

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3146
  %10 = add nuw i64 %9, 1, !dbg !3146
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3146
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3146
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %13, metadata !723, metadata !DIExpression()), !dbg !3136
  br i1 %12, label %14, label %15, !dbg !3149

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3150
  unreachable, !dbg !3150

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3136
  call void @llvm.dbg.value(metadata i64 %16, metadata !723, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %16, metadata !2957, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 1, metadata !2958, metadata !DIExpression()), !dbg !3151
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3153
  call void @llvm.dbg.value(metadata ptr %17, metadata !2962, metadata !DIExpression()), !dbg !3154
  %18 = icmp eq ptr %17, null, !dbg !3156
  br i1 %18, label %19, label %20, !dbg !3157

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3158
  unreachable, !dbg !3158

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !720, metadata !DIExpression()), !dbg !3136
  store i64 %16, ptr %1, align 8, !dbg !3159, !tbaa !2241
  ret ptr %17, !dbg !3160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !715 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %2, metadata !722, metadata !DIExpression()), !dbg !3161
  %4 = load i64, ptr %1, align 8, !dbg !3162, !tbaa !2241
  call void @llvm.dbg.value(metadata i64 %4, metadata !723, metadata !DIExpression()), !dbg !3161
  %5 = icmp eq ptr %0, null, !dbg !3163
  br i1 %5, label %6, label %13, !dbg !3164

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3165
  br i1 %7, label %8, label %20, !dbg !3166

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %9, metadata !723, metadata !DIExpression()), !dbg !3161
  %10 = icmp ugt i64 %2, 128, !dbg !3169
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %12, metadata !723, metadata !DIExpression()), !dbg !3161
  br label %20, !dbg !3171

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3172
  %15 = add nuw i64 %14, 1, !dbg !3172
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3172
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3172
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %18, metadata !723, metadata !DIExpression()), !dbg !3161
  br i1 %17, label %19, label %20, !dbg !3173

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3174
  unreachable, !dbg !3174

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3161
  call void @llvm.dbg.value(metadata i64 %21, metadata !723, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %21, metadata !2957, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %2, metadata !2958, metadata !DIExpression()), !dbg !3175
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %22, metadata !2962, metadata !DIExpression()), !dbg !3178
  %23 = icmp eq ptr %22, null, !dbg !3180
  br i1 %23, label %24, label %25, !dbg !3181

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3182
  unreachable, !dbg !3182

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !720, metadata !DIExpression()), !dbg !3161
  store i64 %21, ptr %1, align 8, !dbg !3183, !tbaa !2241
  ret ptr %22, !dbg !3184
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !732, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %1, metadata !733, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %2, metadata !734, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %3, metadata !735, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %4, metadata !736, metadata !DIExpression()), !dbg !3185
  %6 = load i64, ptr %1, align 8, !dbg !3186, !tbaa !2241
  call void @llvm.dbg.value(metadata i64 %6, metadata !737, metadata !DIExpression()), !dbg !3185
  %7 = ashr i64 %6, 1, !dbg !3187
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3187
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3187
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %10, metadata !738, metadata !DIExpression()), !dbg !3185
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %11, metadata !738, metadata !DIExpression()), !dbg !3185
  %12 = icmp sgt i64 %3, -1, !dbg !3190
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3192
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %15, metadata !738, metadata !DIExpression()), !dbg !3185
  %16 = icmp slt i64 %4, 0, !dbg !3193
  br i1 %16, label %17, label %30, !dbg !3193

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3193
  br i1 %18, label %19, label %24, !dbg !3193

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3193
  %21 = udiv i64 9223372036854775807, %20, !dbg !3193
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3193
  br i1 %23, label %46, label %43, !dbg !3193

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3193
  br i1 %25, label %43, label %26, !dbg !3193

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3193
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3193
  %29 = icmp ult i64 %28, %15, !dbg !3193
  br i1 %29, label %46, label %43, !dbg !3193

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3193
  br i1 %31, label %43, label %32, !dbg !3193

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3193
  br i1 %33, label %34, label %40, !dbg !3193

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3193
  br i1 %35, label %43, label %36, !dbg !3193

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3193
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3193
  %39 = icmp ult i64 %38, %4, !dbg !3193
  br i1 %39, label %46, label %43, !dbg !3193

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3193
  br i1 %42, label %46, label %43, !dbg !3193

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3185
  %44 = mul i64 %15, %4, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %44, metadata !739, metadata !DIExpression()), !dbg !3185
  %45 = icmp slt i64 %44, 128, !dbg !3193
  br i1 %45, label %46, label %51, !dbg !3193

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !740, metadata !DIExpression()), !dbg !3185
  %48 = sdiv i64 %47, %4, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %48, metadata !738, metadata !DIExpression()), !dbg !3185
  %49 = srem i64 %47, %4, !dbg !3197
  %50 = sub nsw i64 %47, %49, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %50, metadata !739, metadata !DIExpression()), !dbg !3185
  br label %51, !dbg !3199

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3185
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3185
  call void @llvm.dbg.value(metadata i64 %53, metadata !739, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %52, metadata !738, metadata !DIExpression()), !dbg !3185
  %54 = icmp eq ptr %0, null, !dbg !3200
  br i1 %54, label %55, label %56, !dbg !3202

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3203, !tbaa !2241
  br label %56, !dbg !3204

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3205
  %58 = icmp slt i64 %57, %2, !dbg !3207
  br i1 %58, label %59, label %96, !dbg !3208

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3209
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3209
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %62, metadata !738, metadata !DIExpression()), !dbg !3185
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3210
  br i1 %65, label %95, label %66, !dbg !3210

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3211

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3211
  br i1 %68, label %69, label %74, !dbg !3211

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3211
  %71 = udiv i64 9223372036854775807, %70, !dbg !3211
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3211
  br i1 %73, label %95, label %93, !dbg !3211

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3211
  br i1 %75, label %93, label %76, !dbg !3211

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3211
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3211
  %79 = icmp ult i64 %78, %62, !dbg !3211
  br i1 %79, label %95, label %93, !dbg !3211

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3211
  br i1 %81, label %93, label %82, !dbg !3211

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3211
  br i1 %83, label %84, label %90, !dbg !3211

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3211
  br i1 %85, label %93, label %86, !dbg !3211

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3211
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3211
  %89 = icmp ult i64 %88, %4, !dbg !3211
  br i1 %89, label %95, label %93, !dbg !3211

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3211
  br i1 %92, label %95, label %93, !dbg !3211

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3185
  %94 = mul i64 %62, %4, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %94, metadata !739, metadata !DIExpression()), !dbg !3185
  br label %96, !dbg !3212

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !3213
  unreachable, !dbg !3213

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3185
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3185
  call void @llvm.dbg.value(metadata i64 %98, metadata !739, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %97, metadata !738, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %98, metadata !3032, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %98, metadata !3038, metadata !DIExpression()), !dbg !3216
  %99 = icmp eq i64 %98, 0, !dbg !3218
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3218
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %101, metadata !2962, metadata !DIExpression()), !dbg !3220
  %102 = icmp eq ptr %101, null, !dbg !3222
  br i1 %102, label %103, label %104, !dbg !3223

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !3224
  unreachable, !dbg !3224

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !732, metadata !DIExpression()), !dbg !3185
  store i64 %97, ptr %1, align 8, !dbg !3225, !tbaa !2241
  ret ptr %101, !dbg !3226
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3227 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %0, metadata !3231, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 1, metadata !3234, metadata !DIExpression()), !dbg !3235
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !3238
  %3 = icmp eq ptr %2, null, !dbg !3240
  br i1 %3, label %4, label %5, !dbg !3241

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3242
  unreachable, !dbg !3242

5:                                                ; preds = %1
  ret ptr %2, !dbg !3243
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3244 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3232 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3231, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3234, metadata !DIExpression()), !dbg !3245
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !3247
  %4 = icmp eq ptr %3, null, !dbg !3249
  br i1 %4, label %5, label %6, !dbg !3250

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3251
  unreachable, !dbg !3251

6:                                                ; preds = %2
  ret ptr %3, !dbg !3252
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3253 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %0, metadata !3257, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 1, metadata !3260, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %0, metadata !3263, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 1, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %0, metadata !3263, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 1, metadata !3266, metadata !DIExpression()), !dbg !3267
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3269
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !3270
  %3 = icmp eq ptr %2, null, !dbg !3272
  br i1 %3, label %4, label %5, !dbg !3273

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3274
  unreachable, !dbg !3274

5:                                                ; preds = %1
  ret ptr %2, !dbg !3275
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3258 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3257, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3260, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %0, metadata !3263, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %0, metadata !3263, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()), !dbg !3277
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !3280
  %4 = icmp eq ptr %3, null, !dbg !3282
  br i1 %4, label %5, label %6, !dbg !3283

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3284
  unreachable, !dbg !3284

6:                                                ; preds = %2
  ret ptr %3, !dbg !3285
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3286 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !3293
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3295
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !3296
  %4 = icmp eq ptr %3, null, !dbg !3298
  br i1 %4, label %5, label %6, !dbg !3299

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3300
  unreachable, !dbg !3300

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3308
  ret ptr %3, !dbg !3309
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3310 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3314, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !2997, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !2999, metadata !DIExpression()), !dbg !3319
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3321
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !3322
  %4 = icmp eq ptr %3, null, !dbg !3324
  br i1 %4, label %5, label %6, !dbg !3325

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3326
  unreachable, !dbg !3326

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3327
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3329
  ret ptr %3, !dbg !3330
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3331 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3338
  %3 = add nsw i64 %1, 1, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %3, metadata !2997, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %3, metadata !2999, metadata !DIExpression()), !dbg !3342
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3344
  call void @llvm.dbg.value(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !3345
  %5 = icmp eq ptr %4, null, !dbg !3347
  br i1 %5, label %6, label %7, !dbg !3348

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3349
  unreachable, !dbg !3349

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3337, metadata !DIExpression()), !dbg !3338
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3350
  store i8 0, ptr %8, align 1, !dbg !3351, !tbaa !855
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3354
  ret ptr %4, !dbg !3355
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3358, metadata !DIExpression()), !dbg !3359
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3360
  %3 = add i64 %2, 1, !dbg !3361
  call void @llvm.dbg.value(metadata ptr %0, metadata !3290, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %3, metadata !3291, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %3, metadata !2984, metadata !DIExpression()), !dbg !3364
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3366
  call void @llvm.dbg.value(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !3367
  %5 = icmp eq ptr %4, null, !dbg !3369
  br i1 %5, label %6, label %7, !dbg !3370

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3371
  unreachable, !dbg !3371

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %3, metadata !3305, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3374
  ret ptr %4, !dbg !3375
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3376 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3381, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %1, metadata !3378, metadata !DIExpression()), !dbg !3382
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.110, ptr noundef nonnull @.str.2.111, i32 noundef 5) #39, !dbg !3381
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.112, ptr noundef %2) #39, !dbg !3381
  %3 = icmp eq i32 %1, 0, !dbg !3381
  tail call void @llvm.assume(i1 %3), !dbg !3381
  tail call void @abort() #41, !dbg !3383
  unreachable, !dbg !3383
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !3384 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3386, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  br label %2, !dbg !3392

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3391
  call void @llvm.dbg.value(metadata ptr %3, metadata !3387, metadata !DIExpression()), !dbg !3391
  %4 = load i8, ptr %3, align 1, !dbg !3393, !tbaa !855
  %5 = icmp eq i8 %4, 47, !dbg !3393
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %6, metadata !3387, metadata !DIExpression()), !dbg !3391
  br i1 %5, label %2, label %7, !dbg !3392, !llvm.loop !3395

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3396
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3398
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3391
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3399
  call void @llvm.dbg.value(metadata ptr %11, metadata !3389, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8 %10, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata ptr %9, metadata !3387, metadata !DIExpression()), !dbg !3391
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3401

12:                                               ; preds = %7
  ret ptr %9, !dbg !3402

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3403
  %15 = icmp eq i8 %14, 0, !dbg !3403
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3407
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3407
  br label %18, !dbg !3407

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3391
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3391
  call void @llvm.dbg.value(metadata i8 %20, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata ptr %19, metadata !3387, metadata !DIExpression()), !dbg !3391
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %21, metadata !3389, metadata !DIExpression()), !dbg !3400
  %22 = load i8, ptr %21, align 1, !dbg !3396, !tbaa !855
  br label %7, !dbg !3409, !llvm.loop !3410
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3412 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3417
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %2, metadata !3415, metadata !DIExpression()), !dbg !3417
  %3 = icmp ne i64 %2, 0, !dbg !3420
  %4 = zext i1 %3 to i64, !dbg !3420
  br label %5, !dbg !3420

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3421
  call void @llvm.dbg.value(metadata i64 %6, metadata !3415, metadata !DIExpression()), !dbg !3417
  %7 = icmp ugt i64 %6, 1, !dbg !3422
  br i1 %7, label %8, label %13, !dbg !3424

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3425
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3425
  %11 = load i8, ptr %10, align 1, !dbg !3425, !tbaa !855
  %12 = icmp eq i8 %11, 47, !dbg !3425
  br i1 %12, label %5, label %13, !dbg !3426, !llvm.loop !3427

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3421
  call void @llvm.dbg.value(metadata i64 0, metadata !3416, metadata !DIExpression()), !dbg !3417
  ret i64 %14, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3430 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3473
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3474
  call void @llvm.dbg.value(metadata i1 poison, metadata !3469, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3478
  %3 = load i32, ptr %0, align 8, !dbg !3480, !tbaa !3481
  %4 = and i32 %3, 32, !dbg !3482
  %5 = icmp eq i32 %4, 0, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %5, metadata !3471, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3473
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3483
  %7 = icmp eq i32 %6, 0, !dbg !3484
  call void @llvm.dbg.value(metadata i1 %7, metadata !3472, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3473
  br i1 %5, label %8, label %18, !dbg !3485

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3487
  call void @llvm.dbg.value(metadata i1 %9, metadata !3469, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3473
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3488
  %11 = xor i1 %7, true, !dbg !3488
  %12 = sext i1 %11 to i32, !dbg !3488
  br i1 %10, label %21, label %13, !dbg !3488

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3489
  %15 = load i32, ptr %14, align 4, !dbg !3489, !tbaa !846
  %16 = icmp ne i32 %15, 9, !dbg !3490
  %17 = sext i1 %16 to i32, !dbg !3491
  br label %21, !dbg !3491

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3492

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3494
  store i32 0, ptr %20, align 4, !dbg !3496, !tbaa !846
  br label %21, !dbg !3494

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3473
  ret i32 %22, !dbg !3497
}

; Function Attrs: nounwind
declare !dbg !3498 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3502 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3540, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3541, metadata !DIExpression()), !dbg !3544
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %2, metadata !3542, metadata !DIExpression()), !dbg !3544
  %3 = icmp slt i32 %2, 0, !dbg !3546
  br i1 %3, label %4, label %6, !dbg !3548

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3549
  br label %24, !dbg !3550

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3551
  %8 = icmp eq i32 %7, 0, !dbg !3551
  br i1 %8, label %13, label %9, !dbg !3553

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3554
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3555
  %12 = icmp eq i64 %11, -1, !dbg !3556
  br i1 %12, label %16, label %13, !dbg !3557

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3558
  %15 = icmp eq i32 %14, 0, !dbg !3558
  br i1 %15, label %16, label %18, !dbg !3559

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3544
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %17, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %24, !dbg !3561

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3562
  %20 = load i32, ptr %19, align 4, !dbg !3562, !tbaa !846
  call void @llvm.dbg.value(metadata i32 %20, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3544
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %21, metadata !3543, metadata !DIExpression()), !dbg !3544
  %22 = icmp eq i32 %20, 0, !dbg !3563
  br i1 %22, label %24, label %23, !dbg !3561

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3565, !tbaa !846
  call void @llvm.dbg.value(metadata i32 -1, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %24, !dbg !3567

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3544
  ret i32 %25, !dbg !3568
}

; Function Attrs: nofree nounwind
declare !dbg !3569 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3570 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3571 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3572 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3575 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3614
  %2 = icmp eq ptr %0, null, !dbg !3615
  br i1 %2, label %6, label %3, !dbg !3617

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3618
  %5 = icmp eq i32 %4, 0, !dbg !3618
  br i1 %5, label %6, label %8, !dbg !3619

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3620
  br label %16, !dbg !3621

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3622, metadata !DIExpression()), !dbg !3627
  %9 = load i32, ptr %0, align 8, !dbg !3629, !tbaa !3481
  %10 = and i32 %9, 256, !dbg !3631
  %11 = icmp eq i32 %10, 0, !dbg !3631
  br i1 %11, label %14, label %12, !dbg !3632

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3633
  br label %14, !dbg !3633

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3634
  br label %16, !dbg !3635

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3614
  ret i32 %17, !dbg !3636
}

; Function Attrs: nofree nounwind
declare !dbg !3637 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 %2, metadata !3679, metadata !DIExpression()), !dbg !3683
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3684
  %5 = load ptr, ptr %4, align 8, !dbg !3684, !tbaa !3685
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3686
  %7 = load ptr, ptr %6, align 8, !dbg !3686, !tbaa !3687
  %8 = icmp eq ptr %5, %7, !dbg !3688
  br i1 %8, label %9, label %27, !dbg !3689

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3690
  %11 = load ptr, ptr %10, align 8, !dbg !3690, !tbaa !1037
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3691
  %13 = load ptr, ptr %12, align 8, !dbg !3691, !tbaa !3692
  %14 = icmp eq ptr %11, %13, !dbg !3693
  br i1 %14, label %15, label %27, !dbg !3694

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3695
  %17 = load ptr, ptr %16, align 8, !dbg !3695, !tbaa !3696
  %18 = icmp eq ptr %17, null, !dbg !3697
  br i1 %18, label %19, label %27, !dbg !3698

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3699
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %21, metadata !3680, metadata !DIExpression()), !dbg !3701
  %22 = icmp eq i64 %21, -1, !dbg !3702
  br i1 %22, label %29, label %23, !dbg !3704

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3705, !tbaa !3481
  %25 = and i32 %24, -17, !dbg !3705
  store i32 %25, ptr %0, align 8, !dbg !3705, !tbaa !3481
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3706
  store i64 %21, ptr %26, align 8, !dbg !3707, !tbaa !3708
  br label %29, !dbg !3709

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3710
  br label %29, !dbg !3711

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3683
  ret i32 %30, !dbg !3712
}

; Function Attrs: nofree nounwind
declare !dbg !3713 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3721, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 %2, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %3, metadata !3724, metadata !DIExpression()), !dbg !3726
  %5 = icmp eq ptr %1, null, !dbg !3727
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3729
  %7 = select i1 %5, ptr @.str.125, ptr %1, !dbg !3729
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %8, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %7, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %6, metadata !3721, metadata !DIExpression()), !dbg !3726
  %9 = icmp eq ptr %3, null, !dbg !3730
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3732
  call void @llvm.dbg.value(metadata ptr %10, metadata !3724, metadata !DIExpression()), !dbg !3726
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %11, metadata !3725, metadata !DIExpression()), !dbg !3726
  %12 = icmp ult i64 %11, -3, !dbg !3734
  br i1 %12, label %13, label %17, !dbg !3736

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !3737
  %15 = icmp eq i32 %14, 0, !dbg !3737
  br i1 %15, label %16, label %29, !dbg !3738

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3739, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata ptr %10, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3749, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 8, metadata !3750, metadata !DIExpression()), !dbg !3751
  store i64 0, ptr %10, align 1, !dbg !3753
  br label %29, !dbg !3754

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3755
  br i1 %18, label %19, label %20, !dbg !3757

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !3758
  unreachable, !dbg !3758

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3759

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !3761
  br i1 %23, label %29, label %24, !dbg !3762

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3763
  br i1 %25, label %29, label %26, !dbg !3766

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3767, !tbaa !855
  %28 = zext i8 %27 to i32, !dbg !3768
  store i32 %28, ptr %6, align 4, !dbg !3769, !tbaa !846
  br label %29, !dbg !3770

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3726
  ret i64 %30, !dbg !3771
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3772 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !3778 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3780, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %2, metadata !3782, metadata !DIExpression()), !dbg !3784
  %4 = icmp eq i64 %2, 0, !dbg !3785
  br i1 %4, label %8, label %5, !dbg !3785

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3785
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3785
  br i1 %7, label %13, label %8, !dbg !3785

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3784
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3784
  %9 = mul i64 %2, %1, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %9, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %0, metadata !3787, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %9, metadata !3790, metadata !DIExpression()), !dbg !3791
  %10 = icmp eq i64 %9, 0, !dbg !3793
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3793
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !3794
  br label %15, !dbg !3795

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3784
  %14 = tail call ptr @__errno_location() #42, !dbg !3796
  store i32 12, ptr %14, align 4, !dbg !3798, !tbaa !846
  br label %15, !dbg !3799

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3784
  ret ptr %16, !dbg !3800
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3801 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !3811
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3806, metadata !DIExpression()), !dbg !3812
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !3813
  %4 = icmp eq i32 %3, 0, !dbg !3813
  br i1 %4, label %5, label %12, !dbg !3815

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3816, metadata !DIExpression()), !dbg !3820
  %6 = load i16, ptr %2, align 16, !dbg !3823
  %7 = icmp eq i16 %6, 67, !dbg !3823
  br i1 %7, label %11, label %8, !dbg !3824

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3816, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr @.str.1.130, metadata !3819, metadata !DIExpression()), !dbg !3825
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.130, i64 6), !dbg !3827
  %10 = icmp eq i32 %9, 0, !dbg !3828
  br i1 %10, label %11, label %12, !dbg !3829

11:                                               ; preds = %8, %5
  br label %12, !dbg !3830

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3810
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !3831
  ret i1 %13, !dbg !3831
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3832 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3836, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %1, metadata !3837, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %2, metadata !3838, metadata !DIExpression()), !dbg !3839
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !3840
  ret i32 %4, !dbg !3841
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3847
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !3848
  ret ptr %2, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3850 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3854
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %2, metadata !3853, metadata !DIExpression()), !dbg !3854
  ret ptr %2, !dbg !3856
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata ptr %1, metadata !3860, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3867
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3869
  call void @llvm.dbg.value(metadata ptr %4, metadata !3853, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata ptr %4, metadata !3862, metadata !DIExpression()), !dbg !3866
  %5 = icmp eq ptr %4, null, !dbg !3870
  br i1 %5, label %6, label %9, !dbg !3871

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3872
  br i1 %7, label %19, label %8, !dbg !3875

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3876, !tbaa !855
  br label %19, !dbg !3877

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %10, metadata !3863, metadata !DIExpression()), !dbg !3879
  %11 = icmp ult i64 %10, %2, !dbg !3880
  br i1 %11, label %12, label %14, !dbg !3882

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3883
  call void @llvm.dbg.value(metadata ptr %1, metadata !3885, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata ptr %4, metadata !3888, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %13, metadata !3889, metadata !DIExpression()), !dbg !3890
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !3892
  br label %19, !dbg !3893

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3894
  br i1 %15, label %19, label %16, !dbg !3897

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %1, metadata !3885, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %4, metadata !3888, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %17, metadata !3889, metadata !DIExpression()), !dbg !3900
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !3902
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3903
  store i8 0, ptr %18, align 1, !dbg !3904, !tbaa !855
  br label %19, !dbg !3905

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3906
  ret i32 %20, !dbg !3907
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
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !356, !360, !700, !375, !668, !702, !427, !441, !489, !704, !660, !711, !742, !744, !746, !748, !750, !752, !684, !754, !757, !761, !763}
!llvm.ident = !{!765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765, !765}
!llvm.module.flags = !{!766, !767, !768, !769, !770, !771}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/dirname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a60dd6e6d60eda028b732002e611b3c7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 28)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1216, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 152)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 66)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 50)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 62)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1040, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 130)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "longopts", scope: !64, file: !2, line: 34, type: !341, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !88, globals: !98, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !72}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 337, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!71 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, baseType: !74, size: 32, elements: !75)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!76 = !DIEnumerator(name: "_ISupper", value: 256)
!77 = !DIEnumerator(name: "_ISlower", value: 512)
!78 = !DIEnumerator(name: "_ISalpha", value: 1024)
!79 = !DIEnumerator(name: "_ISdigit", value: 2048)
!80 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!81 = !DIEnumerator(name: "_ISspace", value: 8192)
!82 = !DIEnumerator(name: "_ISprint", value: 16384)
!83 = !DIEnumerator(name: "_ISgraph", value: 32768)
!84 = !DIEnumerator(name: "_ISblank", value: 1)
!85 = !DIEnumerator(name: "_IScntrl", value: 2)
!86 = !DIEnumerator(name: "_ISpunct", value: 4)
!87 = !DIEnumerator(name: "_ISalnum", value: 8)
!88 = !{!89, !90, !91, !94, !68, !96, !97}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !99, !104, !109, !114, !116, !193, !223, !228, !230, !235, !240, !242, !244, !246, !251, !253, !255, !257, !262, !264, !266, !268, !270, !272, !274, !276, !281, !286, !291, !296, !298, !300, !302, !304, !306, !311, !313, !315, !320, !325, !330, !335, !337, !339, !62}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 14)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 16)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 13)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !106, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "dot", scope: !118, file: !2, line: 124, type: !95, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 78, type: !119, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !122)
!119 = !DISubroutineType(types: !120)
!120 = !{!68, !68, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!122 = !{!123, !124, !125, !127, !129, !133, !138, !140, !192}
!123 = !DILocalVariable(name: "argc", arg: 1, scope: !118, file: !2, line: 78, type: !68)
!124 = !DILocalVariable(name: "argv", arg: 2, scope: !118, file: !2, line: 78, type: !121)
!125 = !DILocalVariable(name: "use_nuls", scope: !118, file: !2, line: 80, type: !126)
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !DILocalVariable(name: "c", scope: !128, file: !2, line: 92, type: !68)
!128 = distinct !DILexicalBlock(scope: !118, file: !2, line: 91, column: 5)
!129 = !DILocalVariable(name: "result", scope: !130, file: !2, line: 119, type: !94)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 118, column: 5)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 117, column: 3)
!132 = distinct !DILexicalBlock(scope: !118, file: !2, line: 117, column: 3)
!133 = !DILocalVariable(name: "len", scope: !130, file: !2, line: 120, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !135, line: 130, baseType: !136)
!135 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !92, line: 35, baseType: !137)
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DILocalVariable(name: "__ptr", scope: !139, file: !2, line: 129, type: !94)
!139 = distinct !DILexicalBlock(scope: !130, file: !2, line: 129, column: 7)
!140 = !DILocalVariable(name: "__stream", scope: !139, file: !2, line: 129, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !144)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !146)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !162, !164, !165, !166, !169, !170, !172, !173, !176, !178, !181, !184, !185, !186, !187, !188}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !144, file: !145, line: 51, baseType: !68, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !144, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !144, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !144, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !144, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !144, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !144, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !144, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !144, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !144, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !144, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !144, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !144, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 36, flags: DIFlagFwdDecl)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !144, file: !145, line: 70, baseType: !163, size: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !144, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !144, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !144, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !168, line: 152, baseType: !137)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !144, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !144, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!171 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !144, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !144, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !145, line: 43, baseType: null)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !144, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !168, line: 153, baseType: !137)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !144, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !145, line: 37, flags: DIFlagFwdDecl)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !144, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !145, line: 38, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !144, file: !145, line: 93, baseType: !163, size: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !144, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !144, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !144, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !144, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 20)
!192 = !DILocalVariable(name: "__cnt", scope: !139, file: !2, line: 129, type: !91)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !195, file: !67, line: 575, type: !68, isLocal: true, isDefinition: true)
!195 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !196, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !198)
!196 = !DISubroutineType(cc: DW_CC_nocall, types: !197)
!197 = !{null, !94, !94}
!198 = !{!199, !200, !201, !204, !205, !206, !207, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222}
!199 = !DILocalVariable(name: "program", arg: 1, scope: !195, file: !67, line: 573, type: !94)
!200 = !DILocalVariable(name: "option", arg: 2, scope: !195, file: !67, line: 573, type: !94)
!201 = !DILocalVariable(name: "term", scope: !202, file: !67, line: 585, type: !94)
!202 = distinct !DILexicalBlock(scope: !203, file: !67, line: 582, column: 5)
!203 = distinct !DILexicalBlock(scope: !195, file: !67, line: 581, column: 7)
!204 = !DILocalVariable(name: "double_space", scope: !195, file: !67, line: 594, type: !126)
!205 = !DILocalVariable(name: "first_word", scope: !195, file: !67, line: 595, type: !94)
!206 = !DILocalVariable(name: "option_text", scope: !195, file: !67, line: 596, type: !94)
!207 = !DILocalVariable(name: "s", scope: !208, file: !67, line: 608, type: !94)
!208 = distinct !DILexicalBlock(scope: !209, file: !67, line: 605, column: 5)
!209 = distinct !DILexicalBlock(scope: !210, file: !67, line: 604, column: 12)
!210 = distinct !DILexicalBlock(scope: !195, file: !67, line: 597, column: 7)
!211 = !DILocalVariable(name: "spaces", scope: !208, file: !67, line: 609, type: !91)
!212 = !DILocalVariable(name: "anchor_len", scope: !195, file: !67, line: 620, type: !91)
!213 = !DILocalVariable(name: "desc_text", scope: !195, file: !67, line: 625, type: !94)
!214 = !DILocalVariable(name: "__ptr", scope: !215, file: !67, line: 644, type: !94)
!215 = distinct !DILexicalBlock(scope: !195, file: !67, line: 644, column: 3)
!216 = !DILocalVariable(name: "__stream", scope: !215, file: !67, line: 644, type: !141)
!217 = !DILocalVariable(name: "__cnt", scope: !215, file: !67, line: 644, type: !91)
!218 = !DILocalVariable(name: "url_program", scope: !195, file: !67, line: 648, type: !94)
!219 = !DILocalVariable(name: "__ptr", scope: !220, file: !67, line: 686, type: !94)
!220 = distinct !DILexicalBlock(scope: !195, file: !67, line: 686, column: 3)
!221 = !DILocalVariable(name: "__stream", scope: !220, file: !67, line: 686, type: !141)
!222 = !DILocalVariable(name: "__cnt", scope: !220, file: !67, line: 686, type: !91)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 5)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !225, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 4)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 6)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !59, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !225, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !232, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 3)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !225, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !237, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !237, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 7)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !19, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !49, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !49, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !49, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !49, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !259, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !49, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 17)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 40)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 15)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 61)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !248, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !225, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !225, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !19, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !106, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 22)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !288, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !232, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 71)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 27)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 51)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 12)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !225, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !225, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 1024, elements: !233)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !344, line: 50, size: 256, elements: !345)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!345 = !{!346, !347, !348, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !344, line: 52, baseType: !94, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !343, file: !344, line: 55, baseType: !68, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !343, file: !344, line: 56, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !344, line: 57, baseType: !68, size: 32, offset: 192)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !353, line: 3, type: !288, isLocal: true, isDefinition: true)
!353 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "Version", scope: !356, file: !353, line: 3, type: !94, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C11, file: !353, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !357, splitDebugInlining: false, nameTableKind: None)
!357 = !{!351, !354}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "file_name", scope: !360, file: !361, line: 45, type: !94, isLocal: true, isDefinition: true)
!360 = distinct !DICompileUnit(language: DW_LANG_C11, file: !361, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !362, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!362 = !{!363, !365, !367, !369, !358, !371}
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !361, line: 121, type: !259, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !361, line: 121, type: !332, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !361, line: 123, type: !259, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !361, line: 126, type: !248, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !360, file: !361, line: 55, type: !126, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !375, file: !376, line: 66, type: !422, isLocal: false, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C11, file: !376, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !377, globals: !378, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!377 = !{!90, !97}
!378 = !{!379, !381, !401, !403, !405, !407, !373, !409, !411, !413, !415, !420}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !376, line: 272, type: !225, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "old_file_name", scope: !383, file: !376, line: 304, type: !94, isLocal: true, isDefinition: true)
!383 = distinct !DISubprogram(name: "verror_at_line", scope: !376, file: !376, line: 298, type: !384, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !394)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !68, !68, !94, !74, !94, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !388)
!388 = !{!389, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !387, file: !390, baseType: !74, size: 32)
!390 = !DIFile(filename: "lib/error.c", directory: "/src")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !387, file: !390, baseType: !74, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !387, file: !390, baseType: !90, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !387, file: !390, baseType: !90, size: 64, offset: 128)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DILocalVariable(name: "status", arg: 1, scope: !383, file: !376, line: 298, type: !68)
!396 = !DILocalVariable(name: "errnum", arg: 2, scope: !383, file: !376, line: 298, type: !68)
!397 = !DILocalVariable(name: "file_name", arg: 3, scope: !383, file: !376, line: 298, type: !94)
!398 = !DILocalVariable(name: "line_number", arg: 4, scope: !383, file: !376, line: 298, type: !74)
!399 = !DILocalVariable(name: "message", arg: 5, scope: !383, file: !376, line: 298, type: !94)
!400 = !DILocalVariable(name: "args", arg: 6, scope: !383, file: !376, line: 298, type: !386)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_line_number", scope: !383, file: !376, line: 305, type: !74, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !376, line: 338, type: !232, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !376, line: 346, type: !19, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !376, line: 346, type: !59, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "error_message_count", scope: !375, file: !376, line: 69, type: !74, isLocal: false, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !375, file: !376, line: 295, type: !68, isLocal: false, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !376, line: 208, type: !259, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !376, line: 208, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 21)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !376, line: 214, type: !225, isLocal: true, isDefinition: true)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null}
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "program_name", scope: !427, file: !428, line: 31, type: !94, isLocal: false, isDefinition: true)
!427 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !429, globals: !430, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!429 = !{!89}
!430 = !{!425, !431, !433}
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !428, line: 46, type: !19, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !428, line: 49, type: !232, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "utf07FF", scope: !437, file: !438, line: 46, type: !465, isLocal: true, isDefinition: true)
!437 = distinct !DISubprogram(name: "proper_name_lite", scope: !438, file: !438, line: 38, type: !439, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !443)
!438 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!439 = !DISubroutineType(types: !440)
!440 = !{!94, !94, !94}
!441 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !442, splitDebugInlining: false, nameTableKind: None)
!442 = !{!435}
!443 = !{!444, !445, !446, !447, !452}
!444 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !437, file: !438, line: 38, type: !94)
!445 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !437, file: !438, line: 38, type: !94)
!446 = !DILocalVariable(name: "translation", scope: !437, file: !438, line: 40, type: !94)
!447 = !DILocalVariable(name: "w", scope: !437, file: !438, line: 47, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !449, line: 37, baseType: !450)
!449 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !168, line: 57, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !168, line: 42, baseType: !74)
!452 = !DILocalVariable(name: "mbs", scope: !437, file: !438, line: 48, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !455)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !457)
!456 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !457, file: !456, line: 15, baseType: !68, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !457, file: !456, line: 20, baseType: !461, size: 32, offset: 32)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !456, line: 16, size: 32, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !461, file: !456, line: 18, baseType: !74, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !461, file: !456, line: 19, baseType: !232, size: 32)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 16, elements: !60)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !468, line: 78, type: !19, isLocal: true, isDefinition: true)
!468 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !468, line: 79, type: !237, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !468, line: 80, type: !111, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !468, line: 81, type: !111, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !468, line: 82, type: !189, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !468, line: 83, type: !59, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !468, line: 84, type: !19, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !468, line: 85, type: !259, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !468, line: 86, type: !259, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !468, line: 87, type: !19, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !489, file: !468, line: 76, type: !575, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C11, file: !468, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !490, retainedTypes: !510, globals: !511, splitDebugInlining: false, nameTableKind: None)
!490 = !{!491, !505, !72}
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !492, line: 42, baseType: !74, size: 32, elements: !493)
!492 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!494 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!495 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!496 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!497 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!498 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!499 = !DIEnumerator(name: "c_quoting_style", value: 5)
!500 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!501 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!502 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!503 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!504 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !492, line: 254, baseType: !74, size: 32, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!508 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!509 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!510 = !{!68, !96, !91}
!511 = !{!466, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !512, !516, !526, !528, !533, !535, !537, !539, !541, !564, !571, !573}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !489, file: !468, line: 92, type: !514, isLocal: false, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 320, elements: !50)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !489, file: !468, line: 1040, type: !518, isLocal: false, isDefinition: true)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !468, line: 56, size: 448, elements: !519)
!519 = !{!520, !521, !522, !524, !525}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !518, file: !468, line: 59, baseType: !491, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !468, line: 62, baseType: !68, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !518, file: !468, line: 66, baseType: !523, size: 256, offset: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !20)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !518, file: !468, line: 69, baseType: !94, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !518, file: !468, line: 72, baseType: !94, size: 64, offset: 384)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !489, file: !468, line: 107, type: !518, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "slot0", scope: !489, file: !468, line: 831, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 256)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !468, line: 321, type: !59, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !468, line: 357, type: !59, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !468, line: 358, type: !59, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !468, line: 199, type: !259, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "quote", scope: !543, file: !468, line: 228, type: !562, isLocal: true, isDefinition: true)
!543 = distinct !DISubprogram(name: "gettext_quote", scope: !468, file: !468, line: 197, type: !544, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!94, !94, !491}
!546 = !{!547, !548, !549, !550, !551}
!547 = !DILocalVariable(name: "msgid", arg: 1, scope: !543, file: !468, line: 197, type: !94)
!548 = !DILocalVariable(name: "s", arg: 2, scope: !543, file: !468, line: 197, type: !491)
!549 = !DILocalVariable(name: "translation", scope: !543, file: !468, line: 199, type: !94)
!550 = !DILocalVariable(name: "w", scope: !543, file: !468, line: 229, type: !448)
!551 = !DILocalVariable(name: "mbs", scope: !543, file: !468, line: 230, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !554, file: !456, line: 15, baseType: !68, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !554, file: !456, line: 20, baseType: !558, size: 32, offset: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !456, line: 16, size: 32, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !558, file: !456, line: 18, baseType: !74, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !558, file: !456, line: 19, baseType: !232, size: 32)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !563)
!563 = !{!61, !234}
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "slotvec", scope: !489, file: !468, line: 834, type: !566, isLocal: true, isDefinition: true)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !468, line: 823, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !567, file: !468, line: 825, baseType: !91, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !567, file: !468, line: 826, baseType: !89, size: 64, offset: 64)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "nslots", scope: !489, file: !468, line: 832, type: !68, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "slotvec0", scope: !489, file: !468, line: 833, type: !567, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 704, elements: !577)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!577 = !{!578}
!578 = !DISubrange(count: 11)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !581, line: 67, type: !332, isLocal: true, isDefinition: true)
!581 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !581, line: 69, type: !259, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !259, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !232, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !581, line: 85, type: !59, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !581, line: 88, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 171)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !581, line: 88, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 34)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !581, line: 105, type: !106, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !581, line: 109, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 23)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !581, line: 113, type: !9, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !581, line: 120, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 32)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !581, line: 127, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 36)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !581, line: 134, type: !283, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !581, line: 142, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 44)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !581, line: 150, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 48)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !581, line: 159, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 52)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !581, line: 170, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 60)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !581, line: 248, type: !189, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !581, line: 248, type: !308, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !189, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !101, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !283, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !581, line: 259, type: !3, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !581, line: 259, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 29)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !660, file: !661, line: 26, type: !663, isLocal: false, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!662 = !{!658}
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 376, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 47)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "exit_failure", scope: !668, file: !669, line: 24, type: !671, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!670 = !{!666}
!671 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !248, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !259, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !278, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 108, type: !44, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "internal_state", scope: !684, file: !681, line: 97, type: !687, isLocal: true, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, globals: !686, splitDebugInlining: false, nameTableKind: None)
!685 = !{!90, !91, !97}
!686 = !{!679, !682}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !454, line: 6, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !456, line: 21, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 13, size: 64, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !689, file: !456, line: 15, baseType: !68, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !689, file: !456, line: 20, baseType: !693, size: 32, offset: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !456, line: 16, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !693, file: !456, line: 18, baseType: !74, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !693, file: !456, line: 19, baseType: !232, size: 32)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !237, isLocal: true, isDefinition: true)
!699 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12591251654a6c6fd0490c627594f543")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !581, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !705, retainedTypes: !709, globals: !710, splitDebugInlining: false, nameTableKind: None)
!705 = !{!706}
!706 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !581, line: 40, baseType: !74, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!709 = !{!90}
!710 = !{!579, !582, !584, !586, !588, !590, !595, !600, !602, !607, !609, !614, !619, !621, !626, !631, !636, !641, !643, !645, !647, !649, !651, !653}
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !713, retainedTypes: !741, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!713 = !{!714, !726}
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !715, file: !712, line: 188, baseType: !74, size: 32, elements: !724)
!715 = distinct !DISubprogram(name: "x2nrealloc", scope: !712, file: !712, line: 176, type: !716, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !719)
!716 = !DISubroutineType(types: !717)
!717 = !{!90, !90, !718, !91}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!719 = !{!720, !721, !722, !723}
!720 = !DILocalVariable(name: "p", arg: 1, scope: !715, file: !712, line: 176, type: !90)
!721 = !DILocalVariable(name: "pn", arg: 2, scope: !715, file: !712, line: 176, type: !718)
!722 = !DILocalVariable(name: "s", arg: 3, scope: !715, file: !712, line: 176, type: !91)
!723 = !DILocalVariable(name: "n", scope: !715, file: !712, line: 178, type: !91)
!724 = !{!725}
!725 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!726 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !727, file: !712, line: 228, baseType: !74, size: 32, elements: !724)
!727 = distinct !DISubprogram(name: "xpalloc", scope: !712, file: !712, line: 223, type: !728, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !731)
!728 = !DISubroutineType(types: !729)
!729 = !{!90, !90, !730, !134, !136, !134}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740}
!732 = !DILocalVariable(name: "pa", arg: 1, scope: !727, file: !712, line: 223, type: !90)
!733 = !DILocalVariable(name: "pn", arg: 2, scope: !727, file: !712, line: 223, type: !730)
!734 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !727, file: !712, line: 223, type: !134)
!735 = !DILocalVariable(name: "n_max", arg: 4, scope: !727, file: !712, line: 223, type: !136)
!736 = !DILocalVariable(name: "s", arg: 5, scope: !727, file: !712, line: 223, type: !134)
!737 = !DILocalVariable(name: "n0", scope: !727, file: !712, line: 230, type: !134)
!738 = !DILocalVariable(name: "n", scope: !727, file: !712, line: 237, type: !134)
!739 = !DILocalVariable(name: "nbytes", scope: !727, file: !712, line: 248, type: !134)
!740 = !DILocalVariable(name: "adjusted_nbytes", scope: !727, file: !712, line: 252, type: !134)
!741 = !{!89, !90, !126, !137, !93}
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !743, splitDebugInlining: false, nameTableKind: None)
!743 = !{!672, !675, !677}
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !429, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !756, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!756 = !{!126, !93, !90}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !758, splitDebugInlining: false, nameTableKind: None)
!758 = !{!759, !697}
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !59, isLocal: true, isDefinition: true)
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!765 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!766 = !{i32 7, !"Dwarf Version", i32 5}
!767 = !{i32 2, !"Debug Info Version", i32 3}
!768 = !{i32 1, !"wchar_size", i32 4}
!769 = !{i32 8, !"PIC Level", i32 2}
!770 = !{i32 7, !"PIE Level", i32 2}
!771 = !{i32 7, !"uwtable", i32 2}
!772 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !773, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !68}
!775 = !{!776}
!776 = !DILocalVariable(name: "status", arg: 1, scope: !772, file: !2, line: 43, type: !68)
!777 = !DILocation(line: 0, scope: !772)
!778 = !DILocation(line: 45, column: 14, scope: !779)
!779 = distinct !DILexicalBlock(scope: !772, file: !2, line: 45, column: 7)
!780 = !DILocation(line: 45, column: 7, scope: !772)
!781 = !DILocation(line: 46, column: 5, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !2, line: 46, column: 5)
!783 = !{!784, !784, i64 0}
!784 = !{!"any pointer", !785, i64 0}
!785 = !{!"omnipotent char", !786, i64 0}
!786 = !{!"Simple C/C++ TBAA"}
!787 = !DILocation(line: 49, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !779, file: !2, line: 48, column: 5)
!789 = !DILocation(line: 53, column: 7, scope: !788)
!790 = !DILocation(line: 58, column: 7, scope: !788)
!791 = !DILocation(line: 62, column: 7, scope: !788)
!792 = !DILocation(line: 63, column: 7, scope: !788)
!793 = !DILocation(line: 64, column: 7, scope: !788)
!794 = !DILocalVariable(name: "program", arg: 1, scope: !795, file: !67, line: 836, type: !94)
!795 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !796, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !94}
!798 = !{!794, !799, !806, !807, !809, !810}
!799 = !DILocalVariable(name: "infomap", scope: !795, file: !67, line: 838, type: !800)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 896, elements: !260)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !795, file: !67, line: 838, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !802, file: !67, line: 838, baseType: !94, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !802, file: !67, line: 838, baseType: !94, size: 64, offset: 64)
!806 = !DILocalVariable(name: "node", scope: !795, file: !67, line: 848, type: !94)
!807 = !DILocalVariable(name: "map_prog", scope: !795, file: !67, line: 849, type: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!809 = !DILocalVariable(name: "lc_messages", scope: !795, file: !67, line: 861, type: !94)
!810 = !DILocalVariable(name: "url_program", scope: !795, file: !67, line: 874, type: !94)
!811 = !DILocation(line: 0, scope: !795, inlinedAt: !812)
!812 = distinct !DILocation(line: 72, column: 7, scope: !788)
!813 = !DILocation(line: 857, column: 3, scope: !795, inlinedAt: !812)
!814 = !DILocation(line: 861, column: 29, scope: !795, inlinedAt: !812)
!815 = !DILocation(line: 862, column: 7, scope: !816, inlinedAt: !812)
!816 = distinct !DILexicalBlock(scope: !795, file: !67, line: 862, column: 7)
!817 = !DILocation(line: 862, column: 19, scope: !816, inlinedAt: !812)
!818 = !DILocation(line: 862, column: 22, scope: !816, inlinedAt: !812)
!819 = !DILocation(line: 862, column: 7, scope: !795, inlinedAt: !812)
!820 = !DILocation(line: 868, column: 7, scope: !821, inlinedAt: !812)
!821 = distinct !DILexicalBlock(scope: !816, file: !67, line: 863, column: 5)
!822 = !DILocation(line: 870, column: 5, scope: !821, inlinedAt: !812)
!823 = !DILocation(line: 875, column: 3, scope: !795, inlinedAt: !812)
!824 = !DILocation(line: 877, column: 3, scope: !795, inlinedAt: !812)
!825 = !DILocation(line: 74, column: 3, scope: !772)
!826 = !DISubprogram(name: "dcgettext", scope: !827, file: !827, line: 51, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!827 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!828 = !DISubroutineType(types: !829)
!829 = !{!89, !94, !94, !68}
!830 = !{}
!831 = !DISubprogram(name: "__fprintf_chk", scope: !832, file: !832, line: 93, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!832 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!833 = !DISubroutineType(types: !834)
!834 = !{!68, !835, !68, !836, null}
!835 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!837 = !DISubprogram(name: "__printf_chk", scope: !832, file: !832, line: 95, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!838 = !DISubroutineType(types: !839)
!839 = !{!68, !68, !836, null}
!840 = !DISubprogram(name: "fputs_unlocked", scope: !841, file: !841, line: 691, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!841 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!842 = !DISubroutineType(types: !843)
!843 = !{!68, !836, !835}
!844 = !DILocation(line: 0, scope: !195)
!845 = !DILocation(line: 581, column: 7, scope: !203)
!846 = !{!847, !847, i64 0}
!847 = !{!"int", !785, i64 0}
!848 = !DILocation(line: 581, column: 19, scope: !203)
!849 = !DILocation(line: 581, column: 7, scope: !195)
!850 = !DILocation(line: 585, column: 26, scope: !202)
!851 = !DILocation(line: 0, scope: !202)
!852 = !DILocation(line: 586, column: 23, scope: !202)
!853 = !DILocation(line: 586, column: 28, scope: !202)
!854 = !DILocation(line: 586, column: 32, scope: !202)
!855 = !{!785, !785, i64 0}
!856 = !DILocation(line: 586, column: 38, scope: !202)
!857 = !DILocalVariable(name: "__s1", arg: 1, scope: !858, file: !859, line: 1359, type: !94)
!858 = distinct !DISubprogram(name: "streq", scope: !859, file: !859, line: 1359, type: !860, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !862)
!859 = !DIFile(filename: "./lib/string.h", directory: "/src")
!860 = !DISubroutineType(types: !861)
!861 = !{!126, !94, !94}
!862 = !{!857, !863}
!863 = !DILocalVariable(name: "__s2", arg: 2, scope: !858, file: !859, line: 1359, type: !94)
!864 = !DILocation(line: 0, scope: !858, inlinedAt: !865)
!865 = distinct !DILocation(line: 586, column: 41, scope: !202)
!866 = !DILocation(line: 1361, column: 11, scope: !858, inlinedAt: !865)
!867 = !DILocation(line: 1361, column: 10, scope: !858, inlinedAt: !865)
!868 = !DILocation(line: 586, column: 19, scope: !202)
!869 = !DILocation(line: 587, column: 5, scope: !202)
!870 = !DILocation(line: 588, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !195, file: !67, line: 588, column: 7)
!872 = !DILocation(line: 588, column: 7, scope: !195)
!873 = !DILocation(line: 590, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !67, line: 589, column: 5)
!875 = !DILocation(line: 591, column: 7, scope: !874)
!876 = !DILocation(line: 595, column: 37, scope: !195)
!877 = !DILocation(line: 595, column: 35, scope: !195)
!878 = !DILocation(line: 596, column: 29, scope: !195)
!879 = !DILocation(line: 597, column: 8, scope: !210)
!880 = !DILocation(line: 597, column: 7, scope: !195)
!881 = !DILocation(line: 604, column: 24, scope: !209)
!882 = !DILocation(line: 604, column: 12, scope: !210)
!883 = !DILocation(line: 0, scope: !208)
!884 = !DILocation(line: 610, column: 16, scope: !208)
!885 = !DILocation(line: 610, column: 7, scope: !208)
!886 = !DILocation(line: 611, column: 21, scope: !208)
!887 = !{!888, !888, i64 0}
!888 = !{!"short", !785, i64 0}
!889 = !DILocation(line: 611, column: 19, scope: !208)
!890 = !DILocation(line: 611, column: 16, scope: !208)
!891 = !DILocation(line: 610, column: 30, scope: !208)
!892 = distinct !{!892, !885, !886, !893}
!893 = !{!"llvm.loop.mustprogress"}
!894 = !DILocation(line: 612, column: 18, scope: !895)
!895 = distinct !DILexicalBlock(scope: !208, file: !67, line: 612, column: 11)
!896 = !DILocation(line: 612, column: 11, scope: !208)
!897 = !DILocation(line: 618, column: 5, scope: !208)
!898 = !DILocation(line: 620, column: 23, scope: !195)
!899 = !DILocation(line: 625, column: 39, scope: !195)
!900 = !DILocation(line: 626, column: 3, scope: !195)
!901 = !DILocation(line: 626, column: 10, scope: !195)
!902 = !DILocation(line: 626, column: 21, scope: !195)
!903 = !DILocation(line: 628, column: 44, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !67, line: 628, column: 11)
!905 = distinct !DILexicalBlock(scope: !195, file: !67, line: 627, column: 5)
!906 = !DILocation(line: 628, column: 32, scope: !904)
!907 = !DILocation(line: 628, column: 49, scope: !904)
!908 = !DILocation(line: 628, column: 11, scope: !905)
!909 = !DILocation(line: 630, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !67, line: 630, column: 11)
!911 = !DILocation(line: 630, column: 11, scope: !905)
!912 = !DILocation(line: 632, column: 26, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !67, line: 632, column: 15)
!914 = distinct !DILexicalBlock(scope: !910, file: !67, line: 631, column: 9)
!915 = !DILocation(line: 632, column: 34, scope: !913)
!916 = !DILocation(line: 632, column: 37, scope: !913)
!917 = !DILocation(line: 632, column: 15, scope: !914)
!918 = !DILocation(line: 636, column: 16, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !67, line: 636, column: 15)
!920 = !DILocation(line: 636, column: 29, scope: !919)
!921 = !DILocation(line: 640, column: 16, scope: !905)
!922 = distinct !{!922, !900, !923, !893}
!923 = !DILocation(line: 641, column: 5, scope: !195)
!924 = !DILocation(line: 644, column: 3, scope: !195)
!925 = !DILocation(line: 0, scope: !858, inlinedAt: !926)
!926 = distinct !DILocation(line: 648, column: 31, scope: !195)
!927 = !DILocation(line: 0, scope: !858, inlinedAt: !928)
!928 = distinct !DILocation(line: 649, column: 31, scope: !195)
!929 = !DILocation(line: 0, scope: !858, inlinedAt: !930)
!930 = distinct !DILocation(line: 650, column: 31, scope: !195)
!931 = !DILocation(line: 0, scope: !858, inlinedAt: !932)
!932 = distinct !DILocation(line: 651, column: 31, scope: !195)
!933 = !DILocation(line: 0, scope: !858, inlinedAt: !934)
!934 = distinct !DILocation(line: 652, column: 31, scope: !195)
!935 = !DILocation(line: 0, scope: !858, inlinedAt: !936)
!936 = distinct !DILocation(line: 653, column: 31, scope: !195)
!937 = !DILocation(line: 0, scope: !858, inlinedAt: !938)
!938 = distinct !DILocation(line: 654, column: 31, scope: !195)
!939 = !DILocation(line: 0, scope: !858, inlinedAt: !940)
!940 = distinct !DILocation(line: 655, column: 31, scope: !195)
!941 = !DILocation(line: 0, scope: !858, inlinedAt: !942)
!942 = distinct !DILocation(line: 656, column: 31, scope: !195)
!943 = !DILocation(line: 0, scope: !858, inlinedAt: !944)
!944 = distinct !DILocation(line: 657, column: 31, scope: !195)
!945 = !DILocation(line: 663, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !195, file: !67, line: 663, column: 7)
!947 = !DILocation(line: 664, column: 7, scope: !946)
!948 = !DILocation(line: 664, column: 10, scope: !946)
!949 = !DILocation(line: 663, column: 7, scope: !195)
!950 = !DILocation(line: 669, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !67, line: 665, column: 5)
!952 = !DILocation(line: 671, column: 5, scope: !951)
!953 = !DILocation(line: 676, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !67, line: 673, column: 5)
!955 = !DILocation(line: 679, column: 3, scope: !195)
!956 = !DILocation(line: 683, column: 3, scope: !195)
!957 = !DILocation(line: 686, column: 3, scope: !195)
!958 = !DILocation(line: 688, column: 3, scope: !195)
!959 = !DILocation(line: 691, column: 3, scope: !195)
!960 = !DILocation(line: 695, column: 3, scope: !195)
!961 = !DILocation(line: 696, column: 1, scope: !195)
!962 = !DISubprogram(name: "setlocale", scope: !963, file: !963, line: 122, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!963 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!964 = !DISubroutineType(types: !965)
!965 = !{!89, !68, !94}
!966 = !DISubprogram(name: "strncmp", scope: !967, file: !967, line: 159, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!967 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!968 = !DISubroutineType(types: !969)
!969 = !{!68, !94, !94, !91}
!970 = !DISubprogram(name: "exit", scope: !971, file: !971, line: 624, type: !773, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !830)
!971 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!972 = !DISubprogram(name: "getenv", scope: !971, file: !971, line: 641, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!973 = !DISubroutineType(types: !974)
!974 = !{!89, !94}
!975 = !DISubprogram(name: "strcmp", scope: !967, file: !967, line: 156, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!976 = !DISubroutineType(types: !977)
!977 = !{!68, !94, !94}
!978 = !DISubprogram(name: "strspn", scope: !967, file: !967, line: 297, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!979 = !DISubroutineType(types: !980)
!980 = !{!93, !94, !94}
!981 = !DISubprogram(name: "strchr", scope: !967, file: !967, line: 246, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!982 = !DISubroutineType(types: !983)
!983 = !{!89, !94, !68}
!984 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!985 = !DISubroutineType(types: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!990 = !DISubprogram(name: "strcspn", scope: !967, file: !967, line: 293, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!991 = !DISubprogram(name: "fwrite_unlocked", scope: !841, file: !841, line: 704, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!992 = !DISubroutineType(types: !993)
!993 = !{!91, !994, !91, !91, !835}
!994 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!997 = !DILocation(line: 0, scope: !118)
!998 = !DILocation(line: 83, column: 21, scope: !118)
!999 = !DILocation(line: 83, column: 3, scope: !118)
!1000 = !DILocation(line: 84, column: 3, scope: !118)
!1001 = !DILocation(line: 85, column: 3, scope: !118)
!1002 = !DILocation(line: 86, column: 3, scope: !118)
!1003 = !DILocation(line: 88, column: 3, scope: !118)
!1004 = !DILocation(line: 92, column: 15, scope: !128)
!1005 = !DILocation(line: 0, scope: !128)
!1006 = !DILocation(line: 94, column: 11, scope: !128)
!1007 = distinct !{!1007, !1008}
!1008 = !{!"llvm.loop.peeled.count", i32 1}
!1009 = !DILocation(line: 103, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !128, file: !2, line: 98, column: 9)
!1011 = !DILocation(line: 104, column: 9, scope: !1010)
!1012 = !DILocation(line: 107, column: 11, scope: !1010)
!1013 = !DILocation(line: 111, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !118, file: !2, line: 111, column: 7)
!1015 = !DILocation(line: 111, column: 12, scope: !1014)
!1016 = !DILocation(line: 111, column: 7, scope: !118)
!1017 = !DILocation(line: 117, column: 3, scope: !132)
!1018 = !DILocation(line: 113, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 112, column: 5)
!1020 = !DILocation(line: 114, column: 7, scope: !1019)
!1021 = !DILocation(line: 0, scope: !130)
!1022 = !DILocation(line: 129, column: 7, scope: !130)
!1023 = !DILocation(line: 119, column: 28, scope: !130)
!1024 = !DILocation(line: 120, column: 19, scope: !130)
!1025 = !DILocation(line: 122, column: 13, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !130, file: !2, line: 122, column: 11)
!1027 = !DILocation(line: 122, column: 11, scope: !130)
!1028 = !DILocalVariable(name: "__c", arg: 1, scope: !1029, file: !1030, line: 108, type: !68)
!1029 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1030, file: !1030, line: 108, type: !1031, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1033)
!1030 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!68, !68}
!1033 = !{!1028}
!1034 = !DILocation(line: 0, scope: !1029, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 130, column: 7, scope: !130)
!1036 = !DILocation(line: 110, column: 10, scope: !1029, inlinedAt: !1035)
!1037 = !{!1038, !784, i64 40}
!1038 = !{!"_IO_FILE", !847, i64 0, !784, i64 8, !784, i64 16, !784, i64 24, !784, i64 32, !784, i64 40, !784, i64 48, !784, i64 56, !784, i64 64, !784, i64 72, !784, i64 80, !784, i64 88, !784, i64 96, !784, i64 104, !847, i64 112, !847, i64 116, !1039, i64 120, !888, i64 128, !785, i64 130, !785, i64 131, !784, i64 136, !1039, i64 144, !784, i64 152, !784, i64 160, !784, i64 168, !784, i64 176, !1039, i64 184, !847, i64 192, !785, i64 196}
!1039 = !{!"long", !785, i64 0}
!1040 = !{!1038, !784, i64 48}
!1041 = !{!"branch_weights", i32 2000, i32 1}
!1042 = !DILocation(line: 117, column: 31, scope: !131)
!1043 = !DILocation(line: 117, column: 17, scope: !131)
!1044 = distinct !{!1044, !1017, !1045, !893}
!1045 = !DILocation(line: 131, column: 5, scope: !132)
!1046 = !DILocation(line: 134, column: 1, scope: !118)
!1047 = !DISubprogram(name: "bindtextdomain", scope: !827, file: !827, line: 86, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!89, !94, !94}
!1050 = !DISubprogram(name: "textdomain", scope: !827, file: !827, line: 82, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1051 = !DISubprogram(name: "atexit", scope: !971, file: !971, line: 602, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!68, !422}
!1054 = !DISubprogram(name: "getopt_long", scope: !344, file: !344, line: 66, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!68, !68, !1057, !94, !1059, !349}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1060 = !DISubprogram(name: "__overflow", scope: !841, file: !841, line: 886, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!68, !141, !68}
!1063 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !361, file: !361, line: 50, type: !796, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1064)
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "file", arg: 1, scope: !1063, file: !361, line: 50, type: !94)
!1066 = !DILocation(line: 0, scope: !1063)
!1067 = !DILocation(line: 52, column: 13, scope: !1063)
!1068 = !DILocation(line: 53, column: 1, scope: !1063)
!1069 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !361, file: !361, line: 87, type: !1070, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !126}
!1072 = !{!1073}
!1073 = !DILocalVariable(name: "ignore", arg: 1, scope: !1069, file: !361, line: 87, type: !126)
!1074 = !DILocation(line: 0, scope: !1069)
!1075 = !DILocation(line: 89, column: 16, scope: !1069)
!1076 = !{!1077, !1077, i64 0}
!1077 = !{!"_Bool", !785, i64 0}
!1078 = !DILocation(line: 90, column: 1, scope: !1069)
!1079 = distinct !DISubprogram(name: "close_stdout", scope: !361, file: !361, line: 116, type: !423, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1080)
!1080 = !{!1081}
!1081 = !DILocalVariable(name: "write_error", scope: !1082, file: !361, line: 121, type: !94)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !361, line: 120, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !361, line: 118, column: 7)
!1084 = !DILocation(line: 118, column: 21, scope: !1083)
!1085 = !DILocation(line: 118, column: 7, scope: !1083)
!1086 = !DILocation(line: 118, column: 29, scope: !1083)
!1087 = !DILocation(line: 119, column: 7, scope: !1083)
!1088 = !DILocation(line: 119, column: 12, scope: !1083)
!1089 = !{i8 0, i8 2}
!1090 = !DILocation(line: 119, column: 25, scope: !1083)
!1091 = !DILocation(line: 119, column: 28, scope: !1083)
!1092 = !DILocation(line: 119, column: 34, scope: !1083)
!1093 = !DILocation(line: 118, column: 7, scope: !1079)
!1094 = !DILocation(line: 121, column: 33, scope: !1082)
!1095 = !DILocation(line: 0, scope: !1082)
!1096 = !DILocation(line: 122, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1082, file: !361, line: 122, column: 11)
!1098 = !DILocation(line: 0, scope: !1097)
!1099 = !DILocation(line: 122, column: 11, scope: !1082)
!1100 = !DILocation(line: 123, column: 9, scope: !1097)
!1101 = !DILocation(line: 126, column: 9, scope: !1097)
!1102 = !DILocation(line: 128, column: 14, scope: !1082)
!1103 = !DILocation(line: 128, column: 7, scope: !1082)
!1104 = !DILocation(line: 133, column: 42, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1079, file: !361, line: 133, column: 7)
!1106 = !DILocation(line: 133, column: 28, scope: !1105)
!1107 = !DILocation(line: 133, column: 50, scope: !1105)
!1108 = !DILocation(line: 133, column: 7, scope: !1079)
!1109 = !DILocation(line: 134, column: 12, scope: !1105)
!1110 = !DILocation(line: 134, column: 5, scope: !1105)
!1111 = !DILocation(line: 135, column: 1, scope: !1079)
!1112 = !DISubprogram(name: "__errno_location", scope: !1113, file: !1113, line: 37, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1113 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!349}
!1116 = !DISubprogram(name: "_exit", scope: !1117, file: !1117, line: 624, type: !773, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1117 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1118 = distinct !DISubprogram(name: "dir_len", scope: !701, file: !701, line: 32, type: !1119, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!91, !94}
!1121 = !{!1122, !1123, !1124}
!1122 = !DILocalVariable(name: "file", arg: 1, scope: !1118, file: !701, line: 32, type: !94)
!1123 = !DILocalVariable(name: "prefix_length", scope: !1118, file: !701, line: 34, type: !91)
!1124 = !DILocalVariable(name: "length", scope: !1118, file: !701, line: 47, type: !91)
!1125 = !DILocation(line: 0, scope: !1118)
!1126 = !DILocation(line: 40, column: 24, scope: !1118)
!1127 = !DILocation(line: 48, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !701, line: 48, column: 3)
!1129 = !DILocation(line: 48, column: 39, scope: !1128)
!1130 = !DILocation(line: 48, column: 8, scope: !1128)
!1131 = !DILocation(line: 0, scope: !1128)
!1132 = !DILocation(line: 49, column: 22, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !701, line: 48, column: 3)
!1134 = !DILocation(line: 48, column: 3, scope: !1128)
!1135 = !DILocation(line: 51, column: 11, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !701, line: 51, column: 9)
!1137 = !DILocation(line: 51, column: 9, scope: !1133)
!1138 = distinct !{!1138, !1134, !1139, !893}
!1139 = !DILocation(line: 52, column: 7, scope: !1128)
!1140 = !DILocation(line: 53, column: 3, scope: !1118)
!1141 = distinct !DISubprogram(name: "mdir_name", scope: !701, file: !701, line: 72, type: !973, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1142)
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DILocalVariable(name: "file", arg: 1, scope: !1141, file: !701, line: 72, type: !94)
!1144 = !DILocalVariable(name: "length", scope: !1141, file: !701, line: 74, type: !91)
!1145 = !DILocalVariable(name: "append_dot", scope: !1141, file: !701, line: 75, type: !126)
!1146 = !DILocalVariable(name: "dir", scope: !1141, file: !701, line: 79, type: !89)
!1147 = !DILocation(line: 0, scope: !1141)
!1148 = !DILocation(line: 0, scope: !1118, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 74, column: 19, scope: !1141)
!1150 = !DILocation(line: 40, column: 24, scope: !1118, inlinedAt: !1149)
!1151 = !DILocation(line: 48, column: 17, scope: !1128, inlinedAt: !1149)
!1152 = !DILocation(line: 48, column: 39, scope: !1128, inlinedAt: !1149)
!1153 = !DILocation(line: 48, column: 8, scope: !1128, inlinedAt: !1149)
!1154 = !DILocation(line: 0, scope: !1128, inlinedAt: !1149)
!1155 = !DILocation(line: 49, column: 22, scope: !1133, inlinedAt: !1149)
!1156 = !DILocation(line: 48, column: 3, scope: !1128, inlinedAt: !1149)
!1157 = !DILocation(line: 51, column: 11, scope: !1136, inlinedAt: !1149)
!1158 = !DILocation(line: 51, column: 9, scope: !1133, inlinedAt: !1149)
!1159 = distinct !{!1159, !1156, !1160, !893}
!1160 = !DILocation(line: 52, column: 7, scope: !1128, inlinedAt: !1149)
!1161 = !DILocation(line: 75, column: 29, scope: !1141)
!1162 = !DILocation(line: 79, column: 32, scope: !1141)
!1163 = !DILocation(line: 79, column: 30, scope: !1141)
!1164 = !DILocation(line: 79, column: 43, scope: !1141)
!1165 = !DILocation(line: 79, column: 15, scope: !1141)
!1166 = !DILocation(line: 80, column: 8, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1141, file: !701, line: 80, column: 7)
!1168 = !DILocation(line: 80, column: 7, scope: !1141)
!1169 = !DILocalVariable(name: "__dest", arg: 1, scope: !1170, file: !1171, line: 26, type: !1174)
!1170 = distinct !DISubprogram(name: "memcpy", scope: !1171, file: !1171, line: 26, type: !1172, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1175)
!1171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!90, !1174, !994, !91}
!1174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!1175 = !{!1169, !1176, !1177}
!1176 = !DILocalVariable(name: "__src", arg: 2, scope: !1170, file: !1171, line: 26, type: !994)
!1177 = !DILocalVariable(name: "__len", arg: 3, scope: !1170, file: !1171, line: 26, type: !91)
!1178 = !DILocation(line: 0, scope: !1170, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 82, column: 3, scope: !1141)
!1180 = !DILocation(line: 29, column: 10, scope: !1170, inlinedAt: !1179)
!1181 = !DILocation(line: 83, column: 7, scope: !1141)
!1182 = !DILocation(line: 84, column: 19, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1141, file: !701, line: 83, column: 7)
!1184 = !DILocation(line: 84, column: 5, scope: !1183)
!1185 = !DILocation(line: 85, column: 3, scope: !1141)
!1186 = !DILocation(line: 85, column: 15, scope: !1141)
!1187 = !DILocation(line: 86, column: 3, scope: !1141)
!1188 = !DILocation(line: 87, column: 1, scope: !1141)
!1189 = !DISubprogram(name: "malloc", scope: !971, file: !971, line: 540, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!90, !91}
!1192 = distinct !DISubprogram(name: "verror", scope: !376, file: !376, line: 251, type: !1193, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !68, !68, !94, !386}
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DILocalVariable(name: "status", arg: 1, scope: !1192, file: !376, line: 251, type: !68)
!1197 = !DILocalVariable(name: "errnum", arg: 2, scope: !1192, file: !376, line: 251, type: !68)
!1198 = !DILocalVariable(name: "message", arg: 3, scope: !1192, file: !376, line: 251, type: !94)
!1199 = !DILocalVariable(name: "args", arg: 4, scope: !1192, file: !376, line: 251, type: !386)
!1200 = !DILocation(line: 0, scope: !1192)
!1201 = !DILocation(line: 261, column: 3, scope: !1192)
!1202 = !DILocation(line: 265, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !376, line: 265, column: 7)
!1204 = !DILocation(line: 265, column: 7, scope: !1192)
!1205 = !DILocation(line: 266, column: 5, scope: !1203)
!1206 = !DILocation(line: 272, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !376, line: 268, column: 5)
!1208 = !DILocation(line: 276, column: 3, scope: !1192)
!1209 = !DILocation(line: 282, column: 1, scope: !1192)
!1210 = distinct !DISubprogram(name: "flush_stdout", scope: !376, file: !376, line: 163, type: !423, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1211)
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "stdout_fd", scope: !1210, file: !376, line: 166, type: !68)
!1213 = !DILocation(line: 0, scope: !1210)
!1214 = !DILocalVariable(name: "fd", arg: 1, scope: !1215, file: !376, line: 145, type: !68)
!1215 = distinct !DISubprogram(name: "is_open", scope: !376, file: !376, line: 145, type: !1031, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1216)
!1216 = !{!1214}
!1217 = !DILocation(line: 0, scope: !1215, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 182, column: 25, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !376, line: 182, column: 7)
!1220 = !DILocation(line: 157, column: 15, scope: !1215, inlinedAt: !1218)
!1221 = !DILocation(line: 157, column: 12, scope: !1215, inlinedAt: !1218)
!1222 = !DILocation(line: 182, column: 7, scope: !1210)
!1223 = !DILocation(line: 184, column: 5, scope: !1219)
!1224 = !DILocation(line: 185, column: 1, scope: !1210)
!1225 = distinct !DISubprogram(name: "error_tail", scope: !376, file: !376, line: 219, type: !1193, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1226)
!1226 = !{!1227, !1228, !1229, !1230}
!1227 = !DILocalVariable(name: "status", arg: 1, scope: !1225, file: !376, line: 219, type: !68)
!1228 = !DILocalVariable(name: "errnum", arg: 2, scope: !1225, file: !376, line: 219, type: !68)
!1229 = !DILocalVariable(name: "message", arg: 3, scope: !1225, file: !376, line: 219, type: !94)
!1230 = !DILocalVariable(name: "args", arg: 4, scope: !1225, file: !376, line: 219, type: !386)
!1231 = !DILocation(line: 0, scope: !1225)
!1232 = !DILocation(line: 229, column: 13, scope: !1225)
!1233 = !DILocalVariable(name: "__stream", arg: 1, scope: !1234, file: !832, line: 132, type: !1237)
!1234 = distinct !DISubprogram(name: "vfprintf", scope: !832, file: !832, line: 132, type: !1235, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1272)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!68, !1237, !836, !386}
!1237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1240, file: !145, line: 51, baseType: !68, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1240, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1240, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1240, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1240, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1240, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1240, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1240, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1240, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1240, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1240, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1240, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1240, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1240, file: !145, line: 70, baseType: !1256, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1240, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1240, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1240, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1240, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1240, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1240, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1240, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1240, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1240, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1240, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1240, file: !145, line: 93, baseType: !1256, size: 64, offset: 1344)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1240, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1240, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1240, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1240, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!1272 = !{!1233, !1273, !1274}
!1273 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1234, file: !832, line: 133, type: !836)
!1274 = !DILocalVariable(name: "__ap", arg: 3, scope: !1234, file: !832, line: 133, type: !386)
!1275 = !DILocation(line: 0, scope: !1234, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 229, column: 3, scope: !1225)
!1277 = !DILocation(line: 135, column: 10, scope: !1234, inlinedAt: !1276)
!1278 = !DILocation(line: 232, column: 3, scope: !1225)
!1279 = !DILocation(line: 233, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1225, file: !376, line: 233, column: 7)
!1281 = !DILocation(line: 233, column: 7, scope: !1225)
!1282 = !DILocalVariable(name: "errnum", arg: 1, scope: !1283, file: !376, line: 188, type: !68)
!1283 = distinct !DISubprogram(name: "print_errno_message", scope: !376, file: !376, line: 188, type: !773, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1284)
!1284 = !{!1282, !1285, !1286}
!1285 = !DILocalVariable(name: "s", scope: !1283, file: !376, line: 190, type: !94)
!1286 = !DILocalVariable(name: "errbuf", scope: !1283, file: !376, line: 193, type: !1287)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 1024)
!1290 = !DILocation(line: 0, scope: !1283, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 234, column: 5, scope: !1280)
!1292 = !DILocation(line: 193, column: 3, scope: !1283, inlinedAt: !1291)
!1293 = !DILocation(line: 193, column: 8, scope: !1283, inlinedAt: !1291)
!1294 = !DILocation(line: 195, column: 7, scope: !1283, inlinedAt: !1291)
!1295 = !DILocation(line: 207, column: 9, scope: !1296, inlinedAt: !1291)
!1296 = distinct !DILexicalBlock(scope: !1283, file: !376, line: 207, column: 7)
!1297 = !DILocation(line: 207, column: 7, scope: !1283, inlinedAt: !1291)
!1298 = !DILocation(line: 208, column: 9, scope: !1296, inlinedAt: !1291)
!1299 = !DILocation(line: 208, column: 5, scope: !1296, inlinedAt: !1291)
!1300 = !DILocation(line: 214, column: 3, scope: !1283, inlinedAt: !1291)
!1301 = !DILocation(line: 216, column: 1, scope: !1283, inlinedAt: !1291)
!1302 = !DILocation(line: 234, column: 5, scope: !1280)
!1303 = !DILocation(line: 238, column: 3, scope: !1225)
!1304 = !DILocalVariable(name: "__c", arg: 1, scope: !1305, file: !1030, line: 101, type: !68)
!1305 = distinct !DISubprogram(name: "putc_unlocked", scope: !1030, file: !1030, line: 101, type: !1306, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!68, !68, !1238}
!1308 = !{!1304, !1309}
!1309 = !DILocalVariable(name: "__stream", arg: 2, scope: !1305, file: !1030, line: 101, type: !1238)
!1310 = !DILocation(line: 0, scope: !1305, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 238, column: 3, scope: !1225)
!1312 = !DILocation(line: 103, column: 10, scope: !1305, inlinedAt: !1311)
!1313 = !DILocation(line: 240, column: 3, scope: !1225)
!1314 = !DILocation(line: 241, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1225, file: !376, line: 241, column: 7)
!1316 = !DILocation(line: 241, column: 7, scope: !1225)
!1317 = !DILocation(line: 242, column: 5, scope: !1315)
!1318 = !DILocation(line: 243, column: 1, scope: !1225)
!1319 = !DISubprogram(name: "__vfprintf_chk", scope: !832, file: !832, line: 96, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!68, !1237, !68, !836, !386}
!1322 = !DISubprogram(name: "strerror_r", scope: !967, file: !967, line: 444, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!89, !68, !89, !91}
!1325 = !DISubprogram(name: "fflush_unlocked", scope: !841, file: !841, line: 239, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!68, !1238}
!1328 = !DISubprogram(name: "fcntl", scope: !1329, file: !1329, line: 149, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1329 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!68, !68, !68, null}
!1332 = distinct !DISubprogram(name: "error", scope: !376, file: !376, line: 285, type: !1333, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !68, !68, !94, null}
!1335 = !{!1336, !1337, !1338, !1339}
!1336 = !DILocalVariable(name: "status", arg: 1, scope: !1332, file: !376, line: 285, type: !68)
!1337 = !DILocalVariable(name: "errnum", arg: 2, scope: !1332, file: !376, line: 285, type: !68)
!1338 = !DILocalVariable(name: "message", arg: 3, scope: !1332, file: !376, line: 285, type: !94)
!1339 = !DILocalVariable(name: "ap", scope: !1332, file: !376, line: 287, type: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !841, line: 52, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1342, line: 14, baseType: !1343)
!1342 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !390, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 192, elements: !45)
!1345 = !DILocation(line: 0, scope: !1332)
!1346 = !DILocation(line: 287, column: 3, scope: !1332)
!1347 = !DILocation(line: 287, column: 11, scope: !1332)
!1348 = !DILocation(line: 288, column: 3, scope: !1332)
!1349 = !DILocation(line: 289, column: 3, scope: !1332)
!1350 = !DILocation(line: 290, column: 3, scope: !1332)
!1351 = !DILocation(line: 291, column: 1, scope: !1332)
!1352 = !DILocation(line: 0, scope: !383)
!1353 = !DILocation(line: 302, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !383, file: !376, line: 302, column: 7)
!1355 = !DILocation(line: 302, column: 7, scope: !383)
!1356 = !DILocation(line: 307, column: 11, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !376, line: 307, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !376, line: 303, column: 5)
!1359 = !DILocation(line: 307, column: 27, scope: !1357)
!1360 = !DILocation(line: 308, column: 11, scope: !1357)
!1361 = !DILocation(line: 308, column: 28, scope: !1357)
!1362 = !DILocation(line: 308, column: 25, scope: !1357)
!1363 = !DILocation(line: 309, column: 15, scope: !1357)
!1364 = !DILocation(line: 309, column: 33, scope: !1357)
!1365 = !DILocation(line: 310, column: 19, scope: !1357)
!1366 = !DILocation(line: 311, column: 22, scope: !1357)
!1367 = !DILocation(line: 311, column: 56, scope: !1357)
!1368 = !DILocation(line: 307, column: 11, scope: !1358)
!1369 = !DILocation(line: 316, column: 21, scope: !1358)
!1370 = !DILocation(line: 317, column: 23, scope: !1358)
!1371 = !DILocation(line: 318, column: 5, scope: !1358)
!1372 = !DILocation(line: 327, column: 3, scope: !383)
!1373 = !DILocation(line: 331, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !383, file: !376, line: 331, column: 7)
!1375 = !DILocation(line: 331, column: 7, scope: !383)
!1376 = !DILocation(line: 332, column: 5, scope: !1374)
!1377 = !DILocation(line: 338, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !376, line: 334, column: 5)
!1379 = !DILocation(line: 346, column: 3, scope: !383)
!1380 = !DILocation(line: 350, column: 3, scope: !383)
!1381 = !DILocation(line: 356, column: 1, scope: !383)
!1382 = distinct !DISubprogram(name: "error_at_line", scope: !376, file: !376, line: 359, type: !1383, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !68, !68, !94, !74, !94, null}
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391}
!1386 = !DILocalVariable(name: "status", arg: 1, scope: !1382, file: !376, line: 359, type: !68)
!1387 = !DILocalVariable(name: "errnum", arg: 2, scope: !1382, file: !376, line: 359, type: !68)
!1388 = !DILocalVariable(name: "file_name", arg: 3, scope: !1382, file: !376, line: 359, type: !94)
!1389 = !DILocalVariable(name: "line_number", arg: 4, scope: !1382, file: !376, line: 360, type: !74)
!1390 = !DILocalVariable(name: "message", arg: 5, scope: !1382, file: !376, line: 360, type: !94)
!1391 = !DILocalVariable(name: "ap", scope: !1382, file: !376, line: 362, type: !1340)
!1392 = !DILocation(line: 0, scope: !1382)
!1393 = !DILocation(line: 362, column: 3, scope: !1382)
!1394 = !DILocation(line: 362, column: 11, scope: !1382)
!1395 = !DILocation(line: 363, column: 3, scope: !1382)
!1396 = !DILocation(line: 364, column: 3, scope: !1382)
!1397 = !DILocation(line: 366, column: 3, scope: !1382)
!1398 = !DILocation(line: 367, column: 1, scope: !1382)
!1399 = distinct !DISubprogram(name: "getprogname", scope: !703, file: !703, line: 54, type: !1400, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !830)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!94}
!1402 = !DILocation(line: 58, column: 10, scope: !1399)
!1403 = !DILocation(line: 58, column: 3, scope: !1399)
!1404 = distinct !DISubprogram(name: "set_program_name", scope: !428, file: !428, line: 37, type: !796, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DILocalVariable(name: "argv0", arg: 1, scope: !1404, file: !428, line: 37, type: !94)
!1407 = !DILocalVariable(name: "slash", scope: !1404, file: !428, line: 44, type: !94)
!1408 = !DILocalVariable(name: "base", scope: !1404, file: !428, line: 45, type: !94)
!1409 = !DILocation(line: 0, scope: !1404)
!1410 = !DILocation(line: 44, column: 23, scope: !1404)
!1411 = !DILocation(line: 45, column: 22, scope: !1404)
!1412 = !DILocation(line: 46, column: 17, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !428, line: 46, column: 7)
!1414 = !DILocation(line: 46, column: 9, scope: !1413)
!1415 = !DILocation(line: 46, column: 25, scope: !1413)
!1416 = !DILocation(line: 46, column: 40, scope: !1413)
!1417 = !DILocalVariable(name: "__s1", arg: 1, scope: !1418, file: !859, line: 974, type: !995)
!1418 = distinct !DISubprogram(name: "memeq", scope: !859, file: !859, line: 974, type: !1419, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!126, !995, !995, !91}
!1421 = !{!1417, !1422, !1423}
!1422 = !DILocalVariable(name: "__s2", arg: 2, scope: !1418, file: !859, line: 974, type: !995)
!1423 = !DILocalVariable(name: "__n", arg: 3, scope: !1418, file: !859, line: 974, type: !91)
!1424 = !DILocation(line: 0, scope: !1418, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 46, column: 28, scope: !1413)
!1426 = !DILocation(line: 976, column: 11, scope: !1418, inlinedAt: !1425)
!1427 = !DILocation(line: 976, column: 10, scope: !1418, inlinedAt: !1425)
!1428 = !DILocation(line: 46, column: 7, scope: !1404)
!1429 = !DILocation(line: 49, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !428, line: 49, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1413, file: !428, line: 47, column: 5)
!1432 = !DILocation(line: 49, column: 36, scope: !1430)
!1433 = !DILocation(line: 49, column: 11, scope: !1431)
!1434 = !DILocation(line: 65, column: 16, scope: !1404)
!1435 = !DILocation(line: 71, column: 27, scope: !1404)
!1436 = !DILocation(line: 74, column: 33, scope: !1404)
!1437 = !DILocation(line: 76, column: 1, scope: !1404)
!1438 = !DISubprogram(name: "strrchr", scope: !967, file: !967, line: 273, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1439 = !DILocation(line: 0, scope: !437)
!1440 = !DILocation(line: 40, column: 29, scope: !437)
!1441 = !DILocation(line: 41, column: 19, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !437, file: !438, line: 41, column: 7)
!1443 = !DILocation(line: 41, column: 7, scope: !437)
!1444 = !DILocation(line: 47, column: 3, scope: !437)
!1445 = !DILocation(line: 48, column: 3, scope: !437)
!1446 = !DILocation(line: 48, column: 13, scope: !437)
!1447 = !DILocalVariable(name: "ps", arg: 1, scope: !1448, file: !1449, line: 1135, type: !1452)
!1448 = distinct !DISubprogram(name: "mbszero", scope: !1449, file: !1449, line: 1135, type: !1450, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1453)
!1449 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1453 = !{!1447}
!1454 = !DILocation(line: 0, scope: !1448, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 48, column: 18, scope: !437)
!1456 = !DILocalVariable(name: "__dest", arg: 1, scope: !1457, file: !1171, line: 57, type: !90)
!1457 = distinct !DISubprogram(name: "memset", scope: !1171, file: !1171, line: 57, type: !1458, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!90, !90, !68, !91}
!1460 = !{!1456, !1461, !1462}
!1461 = !DILocalVariable(name: "__ch", arg: 2, scope: !1457, file: !1171, line: 57, type: !68)
!1462 = !DILocalVariable(name: "__len", arg: 3, scope: !1457, file: !1171, line: 57, type: !91)
!1463 = !DILocation(line: 0, scope: !1457, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 1137, column: 3, scope: !1448, inlinedAt: !1455)
!1465 = !DILocation(line: 59, column: 10, scope: !1457, inlinedAt: !1464)
!1466 = !DILocation(line: 49, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !437, file: !438, line: 49, column: 7)
!1468 = !DILocation(line: 49, column: 39, scope: !1467)
!1469 = !DILocation(line: 49, column: 44, scope: !1467)
!1470 = !DILocation(line: 54, column: 1, scope: !437)
!1471 = !DISubprogram(name: "mbrtoc32", scope: !449, file: !449, line: 57, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!91, !1474, !836, !91, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1452)
!1477 = distinct !DISubprogram(name: "clone_quoting_options", scope: !468, file: !468, line: 113, type: !1478, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1481)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1480, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1481 = !{!1482, !1483, !1484}
!1482 = !DILocalVariable(name: "o", arg: 1, scope: !1477, file: !468, line: 113, type: !1480)
!1483 = !DILocalVariable(name: "saved_errno", scope: !1477, file: !468, line: 115, type: !68)
!1484 = !DILocalVariable(name: "p", scope: !1477, file: !468, line: 116, type: !1480)
!1485 = !DILocation(line: 0, scope: !1477)
!1486 = !DILocation(line: 115, column: 21, scope: !1477)
!1487 = !DILocation(line: 116, column: 40, scope: !1477)
!1488 = !DILocation(line: 116, column: 31, scope: !1477)
!1489 = !DILocation(line: 118, column: 9, scope: !1477)
!1490 = !DILocation(line: 119, column: 3, scope: !1477)
!1491 = distinct !DISubprogram(name: "get_quoting_style", scope: !468, file: !468, line: 124, type: !1492, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1496)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!491, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!1496 = !{!1497}
!1497 = !DILocalVariable(name: "o", arg: 1, scope: !1491, file: !468, line: 124, type: !1494)
!1498 = !DILocation(line: 0, scope: !1491)
!1499 = !DILocation(line: 126, column: 11, scope: !1491)
!1500 = !DILocation(line: 126, column: 46, scope: !1491)
!1501 = !{!1502, !785, i64 0}
!1502 = !{!"quoting_options", !785, i64 0, !847, i64 4, !785, i64 8, !784, i64 40, !784, i64 48}
!1503 = !DILocation(line: 126, column: 3, scope: !1491)
!1504 = distinct !DISubprogram(name: "set_quoting_style", scope: !468, file: !468, line: 132, type: !1505, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1480, !491}
!1507 = !{!1508, !1509}
!1508 = !DILocalVariable(name: "o", arg: 1, scope: !1504, file: !468, line: 132, type: !1480)
!1509 = !DILocalVariable(name: "s", arg: 2, scope: !1504, file: !468, line: 132, type: !491)
!1510 = !DILocation(line: 0, scope: !1504)
!1511 = !DILocation(line: 134, column: 4, scope: !1504)
!1512 = !DILocation(line: 134, column: 45, scope: !1504)
!1513 = !DILocation(line: 135, column: 1, scope: !1504)
!1514 = distinct !DISubprogram(name: "set_char_quoting", scope: !468, file: !468, line: 143, type: !1515, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!68, !1480, !4, !68}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1524, !1525}
!1518 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !468, line: 143, type: !1480)
!1519 = !DILocalVariable(name: "c", arg: 2, scope: !1514, file: !468, line: 143, type: !4)
!1520 = !DILocalVariable(name: "i", arg: 3, scope: !1514, file: !468, line: 143, type: !68)
!1521 = !DILocalVariable(name: "uc", scope: !1514, file: !468, line: 145, type: !97)
!1522 = !DILocalVariable(name: "p", scope: !1514, file: !468, line: 146, type: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1524 = !DILocalVariable(name: "shift", scope: !1514, file: !468, line: 148, type: !68)
!1525 = !DILocalVariable(name: "r", scope: !1514, file: !468, line: 149, type: !74)
!1526 = !DILocation(line: 0, scope: !1514)
!1527 = !DILocation(line: 147, column: 6, scope: !1514)
!1528 = !DILocation(line: 147, column: 41, scope: !1514)
!1529 = !DILocation(line: 147, column: 62, scope: !1514)
!1530 = !DILocation(line: 147, column: 57, scope: !1514)
!1531 = !DILocation(line: 148, column: 15, scope: !1514)
!1532 = !DILocation(line: 149, column: 21, scope: !1514)
!1533 = !DILocation(line: 149, column: 24, scope: !1514)
!1534 = !DILocation(line: 149, column: 34, scope: !1514)
!1535 = !DILocation(line: 150, column: 19, scope: !1514)
!1536 = !DILocation(line: 150, column: 24, scope: !1514)
!1537 = !DILocation(line: 150, column: 6, scope: !1514)
!1538 = !DILocation(line: 151, column: 3, scope: !1514)
!1539 = distinct !DISubprogram(name: "set_quoting_flags", scope: !468, file: !468, line: 159, type: !1540, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!68, !1480, !68}
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "o", arg: 1, scope: !1539, file: !468, line: 159, type: !1480)
!1544 = !DILocalVariable(name: "i", arg: 2, scope: !1539, file: !468, line: 159, type: !68)
!1545 = !DILocalVariable(name: "r", scope: !1539, file: !468, line: 163, type: !68)
!1546 = !DILocation(line: 0, scope: !1539)
!1547 = !DILocation(line: 161, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !468, line: 161, column: 7)
!1549 = !DILocation(line: 161, column: 7, scope: !1539)
!1550 = !DILocation(line: 163, column: 14, scope: !1539)
!1551 = !{!1502, !847, i64 4}
!1552 = !DILocation(line: 164, column: 12, scope: !1539)
!1553 = !DILocation(line: 165, column: 3, scope: !1539)
!1554 = distinct !DISubprogram(name: "set_custom_quoting", scope: !468, file: !468, line: 169, type: !1555, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1480, !94, !94}
!1557 = !{!1558, !1559, !1560}
!1558 = !DILocalVariable(name: "o", arg: 1, scope: !1554, file: !468, line: 169, type: !1480)
!1559 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1554, file: !468, line: 170, type: !94)
!1560 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1554, file: !468, line: 170, type: !94)
!1561 = !DILocation(line: 0, scope: !1554)
!1562 = !DILocation(line: 172, column: 8, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1554, file: !468, line: 172, column: 7)
!1564 = !DILocation(line: 172, column: 7, scope: !1554)
!1565 = !DILocation(line: 174, column: 12, scope: !1554)
!1566 = !DILocation(line: 175, column: 8, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1554, file: !468, line: 175, column: 7)
!1568 = !DILocation(line: 175, column: 19, scope: !1567)
!1569 = !DILocation(line: 176, column: 5, scope: !1567)
!1570 = !DILocation(line: 177, column: 6, scope: !1554)
!1571 = !DILocation(line: 177, column: 17, scope: !1554)
!1572 = !{!1502, !784, i64 40}
!1573 = !DILocation(line: 178, column: 6, scope: !1554)
!1574 = !DILocation(line: 178, column: 18, scope: !1554)
!1575 = !{!1502, !784, i64 48}
!1576 = !DILocation(line: 179, column: 1, scope: !1554)
!1577 = !DISubprogram(name: "abort", scope: !971, file: !971, line: 598, type: !423, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !830)
!1578 = distinct !DISubprogram(name: "quotearg_buffer", scope: !468, file: !468, line: 774, type: !1579, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!91, !89, !91, !94, !91, !1494}
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1582 = !DILocalVariable(name: "buffer", arg: 1, scope: !1578, file: !468, line: 774, type: !89)
!1583 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1578, file: !468, line: 774, type: !91)
!1584 = !DILocalVariable(name: "arg", arg: 3, scope: !1578, file: !468, line: 775, type: !94)
!1585 = !DILocalVariable(name: "argsize", arg: 4, scope: !1578, file: !468, line: 775, type: !91)
!1586 = !DILocalVariable(name: "o", arg: 5, scope: !1578, file: !468, line: 776, type: !1494)
!1587 = !DILocalVariable(name: "p", scope: !1578, file: !468, line: 778, type: !1494)
!1588 = !DILocalVariable(name: "saved_errno", scope: !1578, file: !468, line: 779, type: !68)
!1589 = !DILocalVariable(name: "r", scope: !1578, file: !468, line: 780, type: !91)
!1590 = !DILocation(line: 0, scope: !1578)
!1591 = !DILocation(line: 778, column: 37, scope: !1578)
!1592 = !DILocation(line: 779, column: 21, scope: !1578)
!1593 = !DILocation(line: 781, column: 43, scope: !1578)
!1594 = !DILocation(line: 781, column: 53, scope: !1578)
!1595 = !DILocation(line: 781, column: 63, scope: !1578)
!1596 = !DILocation(line: 782, column: 43, scope: !1578)
!1597 = !DILocation(line: 782, column: 58, scope: !1578)
!1598 = !DILocation(line: 780, column: 14, scope: !1578)
!1599 = !DILocation(line: 783, column: 9, scope: !1578)
!1600 = !DILocation(line: 784, column: 3, scope: !1578)
!1601 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !468, file: !468, line: 251, type: !1602, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1606)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!91, !89, !91, !94, !91, !491, !68, !1604, !94, !94}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1631, !1633, !1636, !1637, !1638, !1639, !1642, !1643, !1646, !1650, !1651, !1659, !1662, !1663, !1665, !1666, !1667, !1668}
!1607 = !DILocalVariable(name: "buffer", arg: 1, scope: !1601, file: !468, line: 251, type: !89)
!1608 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1601, file: !468, line: 251, type: !91)
!1609 = !DILocalVariable(name: "arg", arg: 3, scope: !1601, file: !468, line: 252, type: !94)
!1610 = !DILocalVariable(name: "argsize", arg: 4, scope: !1601, file: !468, line: 252, type: !91)
!1611 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1601, file: !468, line: 253, type: !491)
!1612 = !DILocalVariable(name: "flags", arg: 6, scope: !1601, file: !468, line: 253, type: !68)
!1613 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1601, file: !468, line: 254, type: !1604)
!1614 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1601, file: !468, line: 255, type: !94)
!1615 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1601, file: !468, line: 256, type: !94)
!1616 = !DILocalVariable(name: "unibyte_locale", scope: !1601, file: !468, line: 258, type: !126)
!1617 = !DILocalVariable(name: "len", scope: !1601, file: !468, line: 260, type: !91)
!1618 = !DILocalVariable(name: "orig_buffersize", scope: !1601, file: !468, line: 261, type: !91)
!1619 = !DILocalVariable(name: "quote_string", scope: !1601, file: !468, line: 262, type: !94)
!1620 = !DILocalVariable(name: "quote_string_len", scope: !1601, file: !468, line: 263, type: !91)
!1621 = !DILocalVariable(name: "backslash_escapes", scope: !1601, file: !468, line: 264, type: !126)
!1622 = !DILocalVariable(name: "elide_outer_quotes", scope: !1601, file: !468, line: 265, type: !126)
!1623 = !DILocalVariable(name: "encountered_single_quote", scope: !1601, file: !468, line: 266, type: !126)
!1624 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1601, file: !468, line: 267, type: !126)
!1625 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1601, file: !468, line: 309, type: !126)
!1626 = !DILocalVariable(name: "lq", scope: !1627, file: !468, line: 361, type: !94)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !468, line: 361, column: 11)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !468, line: 360, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !468, line: 333, column: 7)
!1630 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 312, column: 5)
!1631 = !DILocalVariable(name: "i", scope: !1632, file: !468, line: 395, type: !91)
!1632 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 395, column: 3)
!1633 = !DILocalVariable(name: "is_right_quote", scope: !1634, file: !468, line: 397, type: !126)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !468, line: 396, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !468, line: 395, column: 3)
!1636 = !DILocalVariable(name: "escaping", scope: !1634, file: !468, line: 398, type: !126)
!1637 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1634, file: !468, line: 399, type: !126)
!1638 = !DILocalVariable(name: "c", scope: !1634, file: !468, line: 417, type: !97)
!1639 = !DILocalVariable(name: "m", scope: !1640, file: !468, line: 598, type: !91)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 596, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 419, column: 9)
!1642 = !DILocalVariable(name: "printable", scope: !1640, file: !468, line: 600, type: !126)
!1643 = !DILocalVariable(name: "mbs", scope: !1644, file: !468, line: 609, type: !552)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !468, line: 608, column: 15)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !468, line: 602, column: 17)
!1646 = !DILocalVariable(name: "w", scope: !1647, file: !468, line: 618, type: !448)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !468, line: 617, column: 19)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !468, line: 616, column: 17)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !468, line: 616, column: 17)
!1650 = !DILocalVariable(name: "bytes", scope: !1647, file: !468, line: 619, type: !91)
!1651 = !DILocalVariable(name: "j", scope: !1652, file: !468, line: 648, type: !91)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !468, line: 648, column: 29)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !468, line: 647, column: 27)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !468, line: 645, column: 29)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !468, line: 636, column: 23)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !468, line: 628, column: 30)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !468, line: 623, column: 30)
!1658 = distinct !DILexicalBlock(scope: !1647, file: !468, line: 621, column: 25)
!1659 = !DILocalVariable(name: "ilim", scope: !1660, file: !468, line: 674, type: !91)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !468, line: 671, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1640, file: !468, line: 670, column: 17)
!1662 = !DILabel(scope: !1601, name: "process_input", file: !468, line: 308)
!1663 = !DILabel(scope: !1664, name: "c_and_shell_escape", file: !468, line: 502)
!1664 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 478, column: 9)
!1665 = !DILabel(scope: !1664, name: "c_escape", file: !468, line: 507)
!1666 = !DILabel(scope: !1634, name: "store_escape", file: !468, line: 709)
!1667 = !DILabel(scope: !1634, name: "store_c", file: !468, line: 712)
!1668 = !DILabel(scope: !1601, name: "force_outer_quoting_style", file: !468, line: 753)
!1669 = !DILocation(line: 0, scope: !1601)
!1670 = !DILocation(line: 258, column: 25, scope: !1601)
!1671 = !DILocation(line: 258, column: 36, scope: !1601)
!1672 = !DILocation(line: 265, column: 8, scope: !1601)
!1673 = !DILocation(line: 267, column: 3, scope: !1601)
!1674 = !DILocation(line: 261, column: 10, scope: !1601)
!1675 = !DILocation(line: 262, column: 15, scope: !1601)
!1676 = !DILocation(line: 263, column: 10, scope: !1601)
!1677 = !DILocation(line: 264, column: 8, scope: !1601)
!1678 = !DILocation(line: 266, column: 8, scope: !1601)
!1679 = !DILocation(line: 267, column: 8, scope: !1601)
!1680 = !DILocation(line: 308, column: 2, scope: !1601)
!1681 = !DILocation(line: 311, column: 3, scope: !1601)
!1682 = !DILocation(line: 318, column: 11, scope: !1630)
!1683 = !DILocation(line: 318, column: 12, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1630, file: !468, line: 318, column: 11)
!1685 = !DILocation(line: 319, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !468, line: 319, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !468, line: 319, column: 9)
!1688 = !DILocation(line: 319, column: 9, scope: !1687)
!1689 = !DILocation(line: 0, scope: !543, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 357, column: 26, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !468, line: 335, column: 11)
!1692 = distinct !DILexicalBlock(scope: !1629, file: !468, line: 334, column: 13)
!1693 = !DILocation(line: 199, column: 29, scope: !543, inlinedAt: !1690)
!1694 = !DILocation(line: 201, column: 19, scope: !1695, inlinedAt: !1690)
!1695 = distinct !DILexicalBlock(scope: !543, file: !468, line: 201, column: 7)
!1696 = !DILocation(line: 201, column: 7, scope: !543, inlinedAt: !1690)
!1697 = !DILocation(line: 229, column: 3, scope: !543, inlinedAt: !1690)
!1698 = !DILocation(line: 230, column: 3, scope: !543, inlinedAt: !1690)
!1699 = !DILocation(line: 230, column: 13, scope: !543, inlinedAt: !1690)
!1700 = !DILocalVariable(name: "ps", arg: 1, scope: !1701, file: !1449, line: 1135, type: !1704)
!1701 = distinct !DISubprogram(name: "mbszero", scope: !1449, file: !1449, line: 1135, type: !1702, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1705)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1705 = !{!1700}
!1706 = !DILocation(line: 0, scope: !1701, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 230, column: 18, scope: !543, inlinedAt: !1690)
!1708 = !DILocalVariable(name: "__dest", arg: 1, scope: !1709, file: !1171, line: 57, type: !90)
!1709 = distinct !DISubprogram(name: "memset", scope: !1171, file: !1171, line: 57, type: !1458, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1710)
!1710 = !{!1708, !1711, !1712}
!1711 = !DILocalVariable(name: "__ch", arg: 2, scope: !1709, file: !1171, line: 57, type: !68)
!1712 = !DILocalVariable(name: "__len", arg: 3, scope: !1709, file: !1171, line: 57, type: !91)
!1713 = !DILocation(line: 0, scope: !1709, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 1137, column: 3, scope: !1701, inlinedAt: !1707)
!1715 = !DILocation(line: 59, column: 10, scope: !1709, inlinedAt: !1714)
!1716 = !DILocation(line: 231, column: 7, scope: !1717, inlinedAt: !1690)
!1717 = distinct !DILexicalBlock(scope: !543, file: !468, line: 231, column: 7)
!1718 = !DILocation(line: 231, column: 40, scope: !1717, inlinedAt: !1690)
!1719 = !DILocation(line: 231, column: 45, scope: !1717, inlinedAt: !1690)
!1720 = !DILocation(line: 235, column: 1, scope: !543, inlinedAt: !1690)
!1721 = !DILocation(line: 0, scope: !543, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 358, column: 27, scope: !1691)
!1723 = !DILocation(line: 199, column: 29, scope: !543, inlinedAt: !1722)
!1724 = !DILocation(line: 201, column: 19, scope: !1695, inlinedAt: !1722)
!1725 = !DILocation(line: 201, column: 7, scope: !543, inlinedAt: !1722)
!1726 = !DILocation(line: 229, column: 3, scope: !543, inlinedAt: !1722)
!1727 = !DILocation(line: 230, column: 3, scope: !543, inlinedAt: !1722)
!1728 = !DILocation(line: 230, column: 13, scope: !543, inlinedAt: !1722)
!1729 = !DILocation(line: 0, scope: !1701, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 230, column: 18, scope: !543, inlinedAt: !1722)
!1731 = !DILocation(line: 0, scope: !1709, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 1137, column: 3, scope: !1701, inlinedAt: !1730)
!1733 = !DILocation(line: 59, column: 10, scope: !1709, inlinedAt: !1732)
!1734 = !DILocation(line: 231, column: 7, scope: !1717, inlinedAt: !1722)
!1735 = !DILocation(line: 231, column: 40, scope: !1717, inlinedAt: !1722)
!1736 = !DILocation(line: 231, column: 45, scope: !1717, inlinedAt: !1722)
!1737 = !DILocation(line: 235, column: 1, scope: !543, inlinedAt: !1722)
!1738 = !DILocation(line: 360, column: 14, scope: !1628)
!1739 = !DILocation(line: 360, column: 13, scope: !1629)
!1740 = !DILocation(line: 0, scope: !1627)
!1741 = !DILocation(line: 361, column: 45, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1627, file: !468, line: 361, column: 11)
!1743 = !DILocation(line: 361, column: 11, scope: !1627)
!1744 = !DILocation(line: 362, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !468, line: 362, column: 13)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !468, line: 362, column: 13)
!1747 = !DILocation(line: 362, column: 13, scope: !1746)
!1748 = !DILocation(line: 361, column: 52, scope: !1742)
!1749 = distinct !{!1749, !1743, !1750, !893}
!1750 = !DILocation(line: 362, column: 13, scope: !1627)
!1751 = !DILocation(line: 260, column: 10, scope: !1601)
!1752 = !DILocation(line: 365, column: 28, scope: !1629)
!1753 = !DILocation(line: 367, column: 7, scope: !1630)
!1754 = !DILocation(line: 370, column: 7, scope: !1630)
!1755 = !DILocation(line: 373, column: 7, scope: !1630)
!1756 = !DILocation(line: 376, column: 12, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1630, file: !468, line: 376, column: 11)
!1758 = !DILocation(line: 376, column: 11, scope: !1630)
!1759 = !DILocation(line: 381, column: 12, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1630, file: !468, line: 381, column: 11)
!1761 = !DILocation(line: 381, column: 11, scope: !1630)
!1762 = !DILocation(line: 382, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !468, line: 382, column: 9)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !468, line: 382, column: 9)
!1765 = !DILocation(line: 382, column: 9, scope: !1764)
!1766 = !DILocation(line: 389, column: 7, scope: !1630)
!1767 = !DILocation(line: 392, column: 7, scope: !1630)
!1768 = !DILocation(line: 0, scope: !1632)
!1769 = !DILocation(line: 395, column: 8, scope: !1632)
!1770 = !DILocation(line: 309, column: 8, scope: !1601)
!1771 = !DILocation(line: 395, scope: !1632)
!1772 = !DILocation(line: 395, column: 34, scope: !1635)
!1773 = !DILocation(line: 395, column: 26, scope: !1635)
!1774 = !DILocation(line: 395, column: 48, scope: !1635)
!1775 = !DILocation(line: 395, column: 55, scope: !1635)
!1776 = !DILocation(line: 395, column: 3, scope: !1632)
!1777 = !DILocation(line: 395, column: 67, scope: !1635)
!1778 = !DILocation(line: 0, scope: !1634)
!1779 = !DILocation(line: 402, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 401, column: 11)
!1781 = !DILocation(line: 404, column: 17, scope: !1780)
!1782 = !DILocation(line: 405, column: 39, scope: !1780)
!1783 = !DILocation(line: 409, column: 32, scope: !1780)
!1784 = !DILocation(line: 405, column: 19, scope: !1780)
!1785 = !DILocation(line: 405, column: 15, scope: !1780)
!1786 = !DILocation(line: 410, column: 11, scope: !1780)
!1787 = !DILocation(line: 410, column: 25, scope: !1780)
!1788 = !DILocalVariable(name: "__s1", arg: 1, scope: !1789, file: !859, line: 974, type: !995)
!1789 = distinct !DISubprogram(name: "memeq", scope: !859, file: !859, line: 974, type: !1419, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1790)
!1790 = !{!1788, !1791, !1792}
!1791 = !DILocalVariable(name: "__s2", arg: 2, scope: !1789, file: !859, line: 974, type: !995)
!1792 = !DILocalVariable(name: "__n", arg: 3, scope: !1789, file: !859, line: 974, type: !91)
!1793 = !DILocation(line: 0, scope: !1789, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 410, column: 14, scope: !1780)
!1795 = !DILocation(line: 976, column: 11, scope: !1789, inlinedAt: !1794)
!1796 = !DILocation(line: 976, column: 10, scope: !1789, inlinedAt: !1794)
!1797 = !DILocation(line: 401, column: 11, scope: !1634)
!1798 = !DILocation(line: 417, column: 25, scope: !1634)
!1799 = !DILocation(line: 418, column: 7, scope: !1634)
!1800 = !DILocation(line: 421, column: 15, scope: !1641)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !468, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !468, line: 422, column: 13)
!1804 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 421, column: 15)
!1805 = !DILocation(line: 423, column: 15, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !468, line: 423, column: 15)
!1807 = !DILocation(line: 423, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !468, line: 423, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !468, line: 423, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !468, line: 423, column: 15)
!1811 = !DILocation(line: 423, column: 15, scope: !1809)
!1812 = !DILocation(line: 423, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !468, line: 423, column: 15)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !468, line: 423, column: 15)
!1815 = !DILocation(line: 423, column: 15, scope: !1814)
!1816 = !DILocation(line: 423, column: 15, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !468, line: 423, column: 15)
!1818 = distinct !DILexicalBlock(scope: !1810, file: !468, line: 423, column: 15)
!1819 = !DILocation(line: 423, column: 15, scope: !1818)
!1820 = !DILocation(line: 423, column: 15, scope: !1810)
!1821 = !DILocation(line: 423, column: 15, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !468, line: 423, column: 15)
!1823 = distinct !DILexicalBlock(scope: !1802, file: !468, line: 423, column: 15)
!1824 = !DILocation(line: 423, column: 15, scope: !1823)
!1825 = !DILocation(line: 431, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1803, file: !468, line: 430, column: 19)
!1827 = !DILocation(line: 431, column: 24, scope: !1826)
!1828 = !DILocation(line: 431, column: 28, scope: !1826)
!1829 = !DILocation(line: 431, column: 38, scope: !1826)
!1830 = !DILocation(line: 431, column: 48, scope: !1826)
!1831 = !DILocation(line: 431, column: 59, scope: !1826)
!1832 = !DILocation(line: 433, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !468, line: 433, column: 19)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !468, line: 433, column: 19)
!1835 = distinct !DILexicalBlock(scope: !1826, file: !468, line: 432, column: 17)
!1836 = !DILocation(line: 433, column: 19, scope: !1834)
!1837 = !DILocation(line: 434, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !468, line: 434, column: 19)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !468, line: 434, column: 19)
!1840 = !DILocation(line: 434, column: 19, scope: !1839)
!1841 = !DILocation(line: 435, column: 17, scope: !1835)
!1842 = !DILocation(line: 442, column: 20, scope: !1804)
!1843 = !DILocation(line: 447, column: 11, scope: !1641)
!1844 = !DILocation(line: 450, column: 19, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 448, column: 13)
!1846 = !DILocation(line: 456, column: 19, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !468, line: 455, column: 19)
!1848 = !DILocation(line: 456, column: 24, scope: !1847)
!1849 = !DILocation(line: 456, column: 28, scope: !1847)
!1850 = !DILocation(line: 456, column: 38, scope: !1847)
!1851 = !DILocation(line: 456, column: 47, scope: !1847)
!1852 = !DILocation(line: 456, column: 41, scope: !1847)
!1853 = !DILocation(line: 456, column: 52, scope: !1847)
!1854 = !DILocation(line: 455, column: 19, scope: !1845)
!1855 = !DILocation(line: 457, column: 25, scope: !1847)
!1856 = !DILocation(line: 457, column: 17, scope: !1847)
!1857 = !DILocation(line: 464, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1847, file: !468, line: 458, column: 19)
!1859 = !DILocation(line: 468, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !468, line: 468, column: 21)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !468, line: 468, column: 21)
!1862 = !DILocation(line: 468, column: 21, scope: !1861)
!1863 = !DILocation(line: 469, column: 21, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !468, line: 469, column: 21)
!1865 = distinct !DILexicalBlock(scope: !1858, file: !468, line: 469, column: 21)
!1866 = !DILocation(line: 469, column: 21, scope: !1865)
!1867 = !DILocation(line: 470, column: 21, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !468, line: 470, column: 21)
!1869 = distinct !DILexicalBlock(scope: !1858, file: !468, line: 470, column: 21)
!1870 = !DILocation(line: 470, column: 21, scope: !1869)
!1871 = !DILocation(line: 471, column: 21, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !468, line: 471, column: 21)
!1873 = distinct !DILexicalBlock(scope: !1858, file: !468, line: 471, column: 21)
!1874 = !DILocation(line: 471, column: 21, scope: !1873)
!1875 = !DILocation(line: 472, column: 21, scope: !1858)
!1876 = !DILocation(line: 482, column: 33, scope: !1664)
!1877 = !DILocation(line: 483, column: 33, scope: !1664)
!1878 = !DILocation(line: 485, column: 33, scope: !1664)
!1879 = !DILocation(line: 486, column: 33, scope: !1664)
!1880 = !DILocation(line: 487, column: 33, scope: !1664)
!1881 = !DILocation(line: 490, column: 17, scope: !1664)
!1882 = !DILocation(line: 492, column: 21, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !468, line: 491, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1664, file: !468, line: 490, column: 17)
!1885 = !DILocation(line: 499, column: 35, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1664, file: !468, line: 499, column: 17)
!1887 = !DILocation(line: 499, column: 57, scope: !1886)
!1888 = !DILocation(line: 0, scope: !1664)
!1889 = !DILocation(line: 502, column: 11, scope: !1664)
!1890 = !DILocation(line: 504, column: 17, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1664, file: !468, line: 503, column: 17)
!1892 = !DILocation(line: 507, column: 11, scope: !1664)
!1893 = !DILocation(line: 508, column: 17, scope: !1664)
!1894 = !DILocation(line: 517, column: 15, scope: !1641)
!1895 = !DILocation(line: 517, column: 40, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 517, column: 15)
!1897 = !DILocation(line: 517, column: 47, scope: !1896)
!1898 = !DILocation(line: 517, column: 18, scope: !1896)
!1899 = !DILocation(line: 521, column: 17, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 521, column: 15)
!1901 = !DILocation(line: 521, column: 15, scope: !1641)
!1902 = !DILocation(line: 525, column: 11, scope: !1641)
!1903 = !DILocation(line: 537, column: 15, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 536, column: 15)
!1905 = !DILocation(line: 544, column: 15, scope: !1641)
!1906 = !DILocation(line: 546, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !468, line: 545, column: 13)
!1908 = distinct !DILexicalBlock(scope: !1641, file: !468, line: 544, column: 15)
!1909 = !DILocation(line: 549, column: 19, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !468, line: 549, column: 19)
!1911 = !DILocation(line: 549, column: 30, scope: !1910)
!1912 = !DILocation(line: 558, column: 15, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !468, line: 558, column: 15)
!1914 = distinct !DILexicalBlock(scope: !1907, file: !468, line: 558, column: 15)
!1915 = !DILocation(line: 558, column: 15, scope: !1914)
!1916 = !DILocation(line: 559, column: 15, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !468, line: 559, column: 15)
!1918 = distinct !DILexicalBlock(scope: !1907, file: !468, line: 559, column: 15)
!1919 = !DILocation(line: 559, column: 15, scope: !1918)
!1920 = !DILocation(line: 560, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !468, line: 560, column: 15)
!1922 = distinct !DILexicalBlock(scope: !1907, file: !468, line: 560, column: 15)
!1923 = !DILocation(line: 560, column: 15, scope: !1922)
!1924 = !DILocation(line: 562, column: 13, scope: !1907)
!1925 = !DILocation(line: 602, column: 17, scope: !1640)
!1926 = !DILocation(line: 0, scope: !1640)
!1927 = !DILocation(line: 605, column: 29, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1645, file: !468, line: 603, column: 15)
!1929 = !DILocation(line: 605, column: 27, scope: !1928)
!1930 = !DILocation(line: 668, column: 40, scope: !1640)
!1931 = !DILocation(line: 670, column: 23, scope: !1661)
!1932 = !DILocation(line: 609, column: 17, scope: !1644)
!1933 = !DILocation(line: 609, column: 27, scope: !1644)
!1934 = !DILocation(line: 0, scope: !1701, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 609, column: 32, scope: !1644)
!1936 = !DILocation(line: 0, scope: !1709, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1137, column: 3, scope: !1701, inlinedAt: !1935)
!1938 = !DILocation(line: 59, column: 10, scope: !1709, inlinedAt: !1937)
!1939 = !DILocation(line: 613, column: 29, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1644, file: !468, line: 613, column: 21)
!1941 = !DILocation(line: 613, column: 21, scope: !1644)
!1942 = !DILocation(line: 614, column: 29, scope: !1940)
!1943 = !DILocation(line: 614, column: 19, scope: !1940)
!1944 = !DILocation(line: 618, column: 21, scope: !1647)
!1945 = !DILocation(line: 620, column: 54, scope: !1647)
!1946 = !DILocation(line: 0, scope: !1647)
!1947 = !DILocation(line: 619, column: 36, scope: !1647)
!1948 = !DILocation(line: 621, column: 25, scope: !1647)
!1949 = !DILocation(line: 631, column: 38, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1656, file: !468, line: 629, column: 23)
!1951 = !DILocation(line: 631, column: 48, scope: !1950)
!1952 = !DILocation(line: 665, column: 19, scope: !1648)
!1953 = !DILocation(line: 666, column: 15, scope: !1645)
!1954 = !DILocation(line: 626, column: 25, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1657, file: !468, line: 624, column: 23)
!1956 = !DILocation(line: 631, column: 51, scope: !1950)
!1957 = !DILocation(line: 631, column: 25, scope: !1950)
!1958 = !DILocation(line: 632, column: 28, scope: !1950)
!1959 = !DILocation(line: 631, column: 34, scope: !1950)
!1960 = distinct !{!1960, !1957, !1958, !893}
!1961 = !DILocation(line: 646, column: 29, scope: !1654)
!1962 = !DILocation(line: 0, scope: !1652)
!1963 = !DILocation(line: 649, column: 49, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1652, file: !468, line: 648, column: 29)
!1965 = !DILocation(line: 649, column: 39, scope: !1964)
!1966 = !DILocation(line: 649, column: 31, scope: !1964)
!1967 = !DILocation(line: 648, column: 60, scope: !1964)
!1968 = !DILocation(line: 648, column: 50, scope: !1964)
!1969 = !DILocation(line: 648, column: 29, scope: !1652)
!1970 = distinct !{!1970, !1969, !1971, !893}
!1971 = !DILocation(line: 654, column: 33, scope: !1652)
!1972 = !DILocation(line: 657, column: 43, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1655, file: !468, line: 657, column: 29)
!1974 = !DILocalVariable(name: "wc", arg: 1, scope: !1975, file: !1976, line: 865, type: !1979)
!1975 = distinct !DISubprogram(name: "c32isprint", scope: !1976, file: !1976, line: 865, type: !1977, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1981)
!1976 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!68, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1980, line: 20, baseType: !74)
!1980 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1981 = !{!1974}
!1982 = !DILocation(line: 0, scope: !1975, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 657, column: 31, scope: !1973)
!1984 = !DILocation(line: 871, column: 10, scope: !1975, inlinedAt: !1983)
!1985 = !DILocation(line: 657, column: 31, scope: !1973)
!1986 = !DILocation(line: 657, column: 29, scope: !1655)
!1987 = !DILocation(line: 664, column: 23, scope: !1647)
!1988 = !DILocation(line: 670, column: 19, scope: !1661)
!1989 = !DILocation(line: 670, column: 45, scope: !1661)
!1990 = !DILocation(line: 674, column: 33, scope: !1660)
!1991 = !DILocation(line: 0, scope: !1660)
!1992 = !DILocation(line: 676, column: 17, scope: !1660)
!1993 = !DILocation(line: 398, column: 12, scope: !1634)
!1994 = !DILocation(line: 678, column: 43, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !468, line: 678, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !468, line: 677, column: 19)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !468, line: 676, column: 17)
!1998 = distinct !DILexicalBlock(scope: !1660, file: !468, line: 676, column: 17)
!1999 = !DILocation(line: 680, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !468, line: 680, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1995, file: !468, line: 679, column: 23)
!2002 = !DILocation(line: 680, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2000, file: !468, line: 680, column: 25)
!2004 = !DILocation(line: 680, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !468, line: 680, column: 25)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !468, line: 680, column: 25)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !468, line: 680, column: 25)
!2008 = !DILocation(line: 680, column: 25, scope: !2006)
!2009 = !DILocation(line: 680, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !468, line: 680, column: 25)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !468, line: 680, column: 25)
!2012 = !DILocation(line: 680, column: 25, scope: !2011)
!2013 = !DILocation(line: 680, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !468, line: 680, column: 25)
!2015 = distinct !DILexicalBlock(scope: !2007, file: !468, line: 680, column: 25)
!2016 = !DILocation(line: 680, column: 25, scope: !2015)
!2017 = !DILocation(line: 680, column: 25, scope: !2007)
!2018 = !DILocation(line: 680, column: 25, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !468, line: 680, column: 25)
!2020 = distinct !DILexicalBlock(scope: !2000, file: !468, line: 680, column: 25)
!2021 = !DILocation(line: 680, column: 25, scope: !2020)
!2022 = !DILocation(line: 681, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !468, line: 681, column: 25)
!2024 = distinct !DILexicalBlock(scope: !2001, file: !468, line: 681, column: 25)
!2025 = !DILocation(line: 681, column: 25, scope: !2024)
!2026 = !DILocation(line: 682, column: 25, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !468, line: 682, column: 25)
!2028 = distinct !DILexicalBlock(scope: !2001, file: !468, line: 682, column: 25)
!2029 = !DILocation(line: 682, column: 25, scope: !2028)
!2030 = !DILocation(line: 683, column: 38, scope: !2001)
!2031 = !DILocation(line: 683, column: 33, scope: !2001)
!2032 = !DILocation(line: 684, column: 23, scope: !2001)
!2033 = !DILocation(line: 685, column: 30, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1995, file: !468, line: 685, column: 30)
!2035 = !DILocation(line: 685, column: 30, scope: !1995)
!2036 = !DILocation(line: 687, column: 25, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !468, line: 687, column: 25)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !468, line: 687, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !468, line: 686, column: 23)
!2040 = !DILocation(line: 687, column: 25, scope: !2038)
!2041 = !DILocation(line: 689, column: 23, scope: !2039)
!2042 = !DILocation(line: 690, column: 35, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1996, file: !468, line: 690, column: 25)
!2044 = !DILocation(line: 690, column: 30, scope: !2043)
!2045 = !DILocation(line: 690, column: 25, scope: !1996)
!2046 = !DILocation(line: 692, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !468, line: 692, column: 21)
!2048 = distinct !DILexicalBlock(scope: !1996, file: !468, line: 692, column: 21)
!2049 = !DILocation(line: 692, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !468, line: 692, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !468, line: 692, column: 21)
!2052 = distinct !DILexicalBlock(scope: !2047, file: !468, line: 692, column: 21)
!2053 = !DILocation(line: 692, column: 21, scope: !2051)
!2054 = !DILocation(line: 692, column: 21, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !468, line: 692, column: 21)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !468, line: 692, column: 21)
!2057 = !DILocation(line: 692, column: 21, scope: !2056)
!2058 = !DILocation(line: 692, column: 21, scope: !2052)
!2059 = !DILocation(line: 0, scope: !1996)
!2060 = !DILocation(line: 693, column: 21, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !468, line: 693, column: 21)
!2062 = distinct !DILexicalBlock(scope: !1996, file: !468, line: 693, column: 21)
!2063 = !DILocation(line: 693, column: 21, scope: !2062)
!2064 = !DILocation(line: 694, column: 25, scope: !1996)
!2065 = !DILocation(line: 676, column: 17, scope: !1997)
!2066 = distinct !{!2066, !2067, !2068}
!2067 = !DILocation(line: 676, column: 17, scope: !1998)
!2068 = !DILocation(line: 695, column: 19, scope: !1998)
!2069 = !DILocation(line: 409, column: 30, scope: !1780)
!2070 = !DILocation(line: 702, column: 34, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 702, column: 11)
!2072 = !DILocation(line: 704, column: 14, scope: !2071)
!2073 = !DILocation(line: 705, column: 14, scope: !2071)
!2074 = !DILocation(line: 705, column: 35, scope: !2071)
!2075 = !DILocation(line: 705, column: 17, scope: !2071)
!2076 = !DILocation(line: 705, column: 47, scope: !2071)
!2077 = !DILocation(line: 705, column: 65, scope: !2071)
!2078 = !DILocation(line: 706, column: 11, scope: !2071)
!2079 = !DILocation(line: 702, column: 11, scope: !1634)
!2080 = !DILocation(line: 395, column: 15, scope: !1632)
!2081 = !DILocation(line: 709, column: 5, scope: !1634)
!2082 = !DILocation(line: 710, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 710, column: 7)
!2084 = !DILocation(line: 710, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2083, file: !468, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !468, line: 710, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !468, line: 710, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !468, line: 710, column: 7)
!2090 = !DILocation(line: 710, column: 7, scope: !2088)
!2091 = !DILocation(line: 710, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !468, line: 710, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !468, line: 710, column: 7)
!2094 = !DILocation(line: 710, column: 7, scope: !2093)
!2095 = !DILocation(line: 710, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !468, line: 710, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !468, line: 710, column: 7)
!2098 = !DILocation(line: 710, column: 7, scope: !2097)
!2099 = !DILocation(line: 710, column: 7, scope: !2089)
!2100 = !DILocation(line: 710, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !468, line: 710, column: 7)
!2102 = distinct !DILexicalBlock(scope: !2083, file: !468, line: 710, column: 7)
!2103 = !DILocation(line: 710, column: 7, scope: !2102)
!2104 = !DILocation(line: 712, column: 5, scope: !1634)
!2105 = !DILocation(line: 713, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !468, line: 713, column: 7)
!2107 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 713, column: 7)
!2108 = !DILocation(line: 417, column: 21, scope: !1634)
!2109 = !DILocation(line: 713, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !468, line: 713, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !468, line: 713, column: 7)
!2112 = distinct !DILexicalBlock(scope: !2106, file: !468, line: 713, column: 7)
!2113 = !DILocation(line: 713, column: 7, scope: !2111)
!2114 = !DILocation(line: 713, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !468, line: 713, column: 7)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !468, line: 713, column: 7)
!2117 = !DILocation(line: 713, column: 7, scope: !2116)
!2118 = !DILocation(line: 713, column: 7, scope: !2112)
!2119 = !DILocation(line: 714, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !468, line: 714, column: 7)
!2121 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 714, column: 7)
!2122 = !DILocation(line: 714, column: 7, scope: !2121)
!2123 = !DILocation(line: 716, column: 13, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1634, file: !468, line: 716, column: 11)
!2125 = !DILocation(line: 716, column: 11, scope: !1634)
!2126 = !DILocation(line: 718, column: 5, scope: !1635)
!2127 = !DILocation(line: 395, column: 82, scope: !1635)
!2128 = !DILocation(line: 395, column: 3, scope: !1635)
!2129 = distinct !{!2129, !1776, !2130, !893}
!2130 = !DILocation(line: 718, column: 5, scope: !1632)
!2131 = !DILocation(line: 720, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 720, column: 7)
!2133 = !DILocation(line: 720, column: 16, scope: !2132)
!2134 = !DILocation(line: 728, column: 51, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 728, column: 7)
!2136 = !DILocation(line: 731, column: 11, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !468, line: 731, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !468, line: 730, column: 5)
!2139 = !DILocation(line: 731, column: 11, scope: !2138)
!2140 = !DILocation(line: 732, column: 16, scope: !2137)
!2141 = !DILocation(line: 732, column: 9, scope: !2137)
!2142 = !DILocation(line: 736, column: 18, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2137, file: !468, line: 736, column: 16)
!2144 = !DILocation(line: 736, column: 29, scope: !2143)
!2145 = !DILocation(line: 745, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 745, column: 7)
!2147 = !DILocation(line: 745, column: 20, scope: !2146)
!2148 = !DILocation(line: 746, column: 12, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !468, line: 746, column: 5)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !468, line: 746, column: 5)
!2151 = !DILocation(line: 746, column: 5, scope: !2150)
!2152 = !DILocation(line: 747, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !468, line: 747, column: 7)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !468, line: 747, column: 7)
!2155 = !DILocation(line: 747, column: 7, scope: !2154)
!2156 = !DILocation(line: 746, column: 39, scope: !2149)
!2157 = distinct !{!2157, !2151, !2158, !893}
!2158 = !DILocation(line: 747, column: 7, scope: !2150)
!2159 = !DILocation(line: 749, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 749, column: 7)
!2161 = !DILocation(line: 749, column: 7, scope: !1601)
!2162 = !DILocation(line: 750, column: 5, scope: !2160)
!2163 = !DILocation(line: 750, column: 17, scope: !2160)
!2164 = !DILocation(line: 753, column: 2, scope: !1601)
!2165 = !DILocation(line: 756, column: 51, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1601, file: !468, line: 756, column: 7)
!2167 = !DILocation(line: 756, column: 21, scope: !2166)
!2168 = !DILocation(line: 760, column: 42, scope: !1601)
!2169 = !DILocation(line: 758, column: 10, scope: !1601)
!2170 = !DILocation(line: 758, column: 3, scope: !1601)
!2171 = !DILocation(line: 762, column: 1, scope: !1601)
!2172 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !971, file: !971, line: 98, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!91}
!2175 = !DISubprogram(name: "strlen", scope: !967, file: !967, line: 407, type: !2176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!93, !94}
!2178 = !DISubprogram(name: "iswprint", scope: !2179, file: !2179, line: 120, type: !1977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!2179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2180 = distinct !DISubprogram(name: "quotearg_alloc", scope: !468, file: !468, line: 788, type: !2181, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!89, !94, !91, !1494}
!2183 = !{!2184, !2185, !2186}
!2184 = !DILocalVariable(name: "arg", arg: 1, scope: !2180, file: !468, line: 788, type: !94)
!2185 = !DILocalVariable(name: "argsize", arg: 2, scope: !2180, file: !468, line: 788, type: !91)
!2186 = !DILocalVariable(name: "o", arg: 3, scope: !2180, file: !468, line: 789, type: !1494)
!2187 = !DILocation(line: 0, scope: !2180)
!2188 = !DILocalVariable(name: "arg", arg: 1, scope: !2189, file: !468, line: 801, type: !94)
!2189 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !468, file: !468, line: 801, type: !2190, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!89, !94, !91, !718, !1494}
!2192 = !{!2188, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200}
!2193 = !DILocalVariable(name: "argsize", arg: 2, scope: !2189, file: !468, line: 801, type: !91)
!2194 = !DILocalVariable(name: "size", arg: 3, scope: !2189, file: !468, line: 801, type: !718)
!2195 = !DILocalVariable(name: "o", arg: 4, scope: !2189, file: !468, line: 802, type: !1494)
!2196 = !DILocalVariable(name: "p", scope: !2189, file: !468, line: 804, type: !1494)
!2197 = !DILocalVariable(name: "saved_errno", scope: !2189, file: !468, line: 805, type: !68)
!2198 = !DILocalVariable(name: "flags", scope: !2189, file: !468, line: 807, type: !68)
!2199 = !DILocalVariable(name: "bufsize", scope: !2189, file: !468, line: 808, type: !91)
!2200 = !DILocalVariable(name: "buf", scope: !2189, file: !468, line: 812, type: !89)
!2201 = !DILocation(line: 0, scope: !2189, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 791, column: 10, scope: !2180)
!2203 = !DILocation(line: 804, column: 37, scope: !2189, inlinedAt: !2202)
!2204 = !DILocation(line: 805, column: 21, scope: !2189, inlinedAt: !2202)
!2205 = !DILocation(line: 807, column: 18, scope: !2189, inlinedAt: !2202)
!2206 = !DILocation(line: 807, column: 24, scope: !2189, inlinedAt: !2202)
!2207 = !DILocation(line: 808, column: 72, scope: !2189, inlinedAt: !2202)
!2208 = !DILocation(line: 809, column: 56, scope: !2189, inlinedAt: !2202)
!2209 = !DILocation(line: 810, column: 49, scope: !2189, inlinedAt: !2202)
!2210 = !DILocation(line: 811, column: 49, scope: !2189, inlinedAt: !2202)
!2211 = !DILocation(line: 808, column: 20, scope: !2189, inlinedAt: !2202)
!2212 = !DILocation(line: 811, column: 62, scope: !2189, inlinedAt: !2202)
!2213 = !DILocation(line: 812, column: 15, scope: !2189, inlinedAt: !2202)
!2214 = !DILocation(line: 813, column: 60, scope: !2189, inlinedAt: !2202)
!2215 = !DILocation(line: 815, column: 32, scope: !2189, inlinedAt: !2202)
!2216 = !DILocation(line: 815, column: 47, scope: !2189, inlinedAt: !2202)
!2217 = !DILocation(line: 813, column: 3, scope: !2189, inlinedAt: !2202)
!2218 = !DILocation(line: 816, column: 9, scope: !2189, inlinedAt: !2202)
!2219 = !DILocation(line: 791, column: 3, scope: !2180)
!2220 = !DILocation(line: 0, scope: !2189)
!2221 = !DILocation(line: 804, column: 37, scope: !2189)
!2222 = !DILocation(line: 805, column: 21, scope: !2189)
!2223 = !DILocation(line: 807, column: 18, scope: !2189)
!2224 = !DILocation(line: 807, column: 27, scope: !2189)
!2225 = !DILocation(line: 807, column: 24, scope: !2189)
!2226 = !DILocation(line: 808, column: 72, scope: !2189)
!2227 = !DILocation(line: 809, column: 56, scope: !2189)
!2228 = !DILocation(line: 810, column: 49, scope: !2189)
!2229 = !DILocation(line: 811, column: 49, scope: !2189)
!2230 = !DILocation(line: 808, column: 20, scope: !2189)
!2231 = !DILocation(line: 811, column: 62, scope: !2189)
!2232 = !DILocation(line: 812, column: 15, scope: !2189)
!2233 = !DILocation(line: 813, column: 60, scope: !2189)
!2234 = !DILocation(line: 815, column: 32, scope: !2189)
!2235 = !DILocation(line: 815, column: 47, scope: !2189)
!2236 = !DILocation(line: 813, column: 3, scope: !2189)
!2237 = !DILocation(line: 816, column: 9, scope: !2189)
!2238 = !DILocation(line: 817, column: 7, scope: !2189)
!2239 = !DILocation(line: 818, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2189, file: !468, line: 817, column: 7)
!2241 = !{!1039, !1039, i64 0}
!2242 = !DILocation(line: 818, column: 5, scope: !2240)
!2243 = !DILocation(line: 819, column: 3, scope: !2189)
!2244 = distinct !DISubprogram(name: "quotearg_free", scope: !468, file: !468, line: 837, type: !423, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2245)
!2245 = !{!2246, !2247}
!2246 = !DILocalVariable(name: "sv", scope: !2244, file: !468, line: 839, type: !566)
!2247 = !DILocalVariable(name: "i", scope: !2248, file: !468, line: 840, type: !68)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !468, line: 840, column: 3)
!2249 = !DILocation(line: 839, column: 24, scope: !2244)
!2250 = !DILocation(line: 0, scope: !2244)
!2251 = !DILocation(line: 0, scope: !2248)
!2252 = !DILocation(line: 840, column: 21, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !468, line: 840, column: 3)
!2254 = !DILocation(line: 840, column: 3, scope: !2248)
!2255 = !DILocation(line: 842, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2244, file: !468, line: 842, column: 7)
!2257 = !{!2258, !784, i64 8}
!2258 = !{!"slotvec", !1039, i64 0, !784, i64 8}
!2259 = !DILocation(line: 842, column: 17, scope: !2256)
!2260 = !DILocation(line: 842, column: 7, scope: !2244)
!2261 = !DILocation(line: 841, column: 17, scope: !2253)
!2262 = !DILocation(line: 841, column: 5, scope: !2253)
!2263 = !DILocation(line: 840, column: 32, scope: !2253)
!2264 = distinct !{!2264, !2254, !2265, !893}
!2265 = !DILocation(line: 841, column: 20, scope: !2248)
!2266 = !DILocation(line: 844, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2256, file: !468, line: 843, column: 5)
!2268 = !DILocation(line: 845, column: 21, scope: !2267)
!2269 = !{!2258, !1039, i64 0}
!2270 = !DILocation(line: 846, column: 20, scope: !2267)
!2271 = !DILocation(line: 847, column: 5, scope: !2267)
!2272 = !DILocation(line: 848, column: 10, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2244, file: !468, line: 848, column: 7)
!2274 = !DILocation(line: 848, column: 7, scope: !2244)
!2275 = !DILocation(line: 850, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !468, line: 849, column: 5)
!2277 = !DILocation(line: 851, column: 15, scope: !2276)
!2278 = !DILocation(line: 852, column: 5, scope: !2276)
!2279 = !DILocation(line: 853, column: 10, scope: !2244)
!2280 = !DILocation(line: 854, column: 1, scope: !2244)
!2281 = !DISubprogram(name: "free", scope: !1449, file: !1449, line: 786, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !90}
!2284 = distinct !DISubprogram(name: "quotearg_n", scope: !468, file: !468, line: 919, type: !964, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2285)
!2285 = !{!2286, !2287}
!2286 = !DILocalVariable(name: "n", arg: 1, scope: !2284, file: !468, line: 919, type: !68)
!2287 = !DILocalVariable(name: "arg", arg: 2, scope: !2284, file: !468, line: 919, type: !94)
!2288 = !DILocation(line: 0, scope: !2284)
!2289 = !DILocation(line: 921, column: 10, scope: !2284)
!2290 = !DILocation(line: 921, column: 3, scope: !2284)
!2291 = distinct !DISubprogram(name: "quotearg_n_options", scope: !468, file: !468, line: 866, type: !2292, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!89, !68, !94, !91, !1494}
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2305, !2306, !2308, !2309, !2310}
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !468, line: 866, type: !68)
!2296 = !DILocalVariable(name: "arg", arg: 2, scope: !2291, file: !468, line: 866, type: !94)
!2297 = !DILocalVariable(name: "argsize", arg: 3, scope: !2291, file: !468, line: 866, type: !91)
!2298 = !DILocalVariable(name: "options", arg: 4, scope: !2291, file: !468, line: 867, type: !1494)
!2299 = !DILocalVariable(name: "saved_errno", scope: !2291, file: !468, line: 869, type: !68)
!2300 = !DILocalVariable(name: "sv", scope: !2291, file: !468, line: 871, type: !566)
!2301 = !DILocalVariable(name: "nslots_max", scope: !2291, file: !468, line: 873, type: !68)
!2302 = !DILocalVariable(name: "preallocated", scope: !2303, file: !468, line: 879, type: !126)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !468, line: 878, column: 5)
!2304 = distinct !DILexicalBlock(scope: !2291, file: !468, line: 877, column: 7)
!2305 = !DILocalVariable(name: "new_nslots", scope: !2303, file: !468, line: 880, type: !134)
!2306 = !DILocalVariable(name: "size", scope: !2307, file: !468, line: 891, type: !91)
!2307 = distinct !DILexicalBlock(scope: !2291, file: !468, line: 890, column: 3)
!2308 = !DILocalVariable(name: "val", scope: !2307, file: !468, line: 892, type: !89)
!2309 = !DILocalVariable(name: "flags", scope: !2307, file: !468, line: 894, type: !68)
!2310 = !DILocalVariable(name: "qsize", scope: !2307, file: !468, line: 895, type: !91)
!2311 = !DILocation(line: 0, scope: !2291)
!2312 = !DILocation(line: 869, column: 21, scope: !2291)
!2313 = !DILocation(line: 871, column: 24, scope: !2291)
!2314 = !DILocation(line: 874, column: 17, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2291, file: !468, line: 874, column: 7)
!2316 = !DILocation(line: 875, column: 5, scope: !2315)
!2317 = !DILocation(line: 877, column: 7, scope: !2304)
!2318 = !DILocation(line: 877, column: 14, scope: !2304)
!2319 = !DILocation(line: 877, column: 7, scope: !2291)
!2320 = !DILocation(line: 879, column: 31, scope: !2303)
!2321 = !DILocation(line: 0, scope: !2303)
!2322 = !DILocation(line: 880, column: 7, scope: !2303)
!2323 = !DILocation(line: 880, column: 26, scope: !2303)
!2324 = !DILocation(line: 880, column: 13, scope: !2303)
!2325 = !DILocation(line: 882, column: 31, scope: !2303)
!2326 = !DILocation(line: 883, column: 33, scope: !2303)
!2327 = !DILocation(line: 883, column: 42, scope: !2303)
!2328 = !DILocation(line: 883, column: 31, scope: !2303)
!2329 = !DILocation(line: 882, column: 22, scope: !2303)
!2330 = !DILocation(line: 882, column: 15, scope: !2303)
!2331 = !DILocation(line: 884, column: 11, scope: !2303)
!2332 = !DILocation(line: 885, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2303, file: !468, line: 884, column: 11)
!2334 = !{i64 0, i64 8, !2241, i64 8, i64 8, !783}
!2335 = !DILocation(line: 885, column: 9, scope: !2333)
!2336 = !DILocation(line: 886, column: 20, scope: !2303)
!2337 = !DILocation(line: 886, column: 18, scope: !2303)
!2338 = !DILocation(line: 886, column: 32, scope: !2303)
!2339 = !DILocation(line: 886, column: 43, scope: !2303)
!2340 = !DILocation(line: 886, column: 53, scope: !2303)
!2341 = !DILocation(line: 0, scope: !1709, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 886, column: 7, scope: !2303)
!2343 = !DILocation(line: 59, column: 10, scope: !1709, inlinedAt: !2342)
!2344 = !DILocation(line: 887, column: 16, scope: !2303)
!2345 = !DILocation(line: 887, column: 14, scope: !2303)
!2346 = !DILocation(line: 888, column: 5, scope: !2304)
!2347 = !DILocation(line: 888, column: 5, scope: !2303)
!2348 = !DILocation(line: 891, column: 19, scope: !2307)
!2349 = !DILocation(line: 891, column: 25, scope: !2307)
!2350 = !DILocation(line: 0, scope: !2307)
!2351 = !DILocation(line: 892, column: 23, scope: !2307)
!2352 = !DILocation(line: 894, column: 26, scope: !2307)
!2353 = !DILocation(line: 894, column: 32, scope: !2307)
!2354 = !DILocation(line: 896, column: 55, scope: !2307)
!2355 = !DILocation(line: 897, column: 55, scope: !2307)
!2356 = !DILocation(line: 898, column: 55, scope: !2307)
!2357 = !DILocation(line: 899, column: 55, scope: !2307)
!2358 = !DILocation(line: 895, column: 20, scope: !2307)
!2359 = !DILocation(line: 901, column: 14, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2307, file: !468, line: 901, column: 9)
!2361 = !DILocation(line: 901, column: 9, scope: !2307)
!2362 = !DILocation(line: 903, column: 35, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !468, line: 902, column: 7)
!2364 = !DILocation(line: 903, column: 20, scope: !2363)
!2365 = !DILocation(line: 904, column: 17, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !468, line: 904, column: 13)
!2367 = !DILocation(line: 904, column: 13, scope: !2363)
!2368 = !DILocation(line: 905, column: 11, scope: !2366)
!2369 = !DILocation(line: 906, column: 27, scope: !2363)
!2370 = !DILocation(line: 906, column: 19, scope: !2363)
!2371 = !DILocation(line: 907, column: 69, scope: !2363)
!2372 = !DILocation(line: 909, column: 44, scope: !2363)
!2373 = !DILocation(line: 910, column: 44, scope: !2363)
!2374 = !DILocation(line: 907, column: 9, scope: !2363)
!2375 = !DILocation(line: 911, column: 7, scope: !2363)
!2376 = !DILocation(line: 913, column: 11, scope: !2307)
!2377 = !DILocation(line: 914, column: 5, scope: !2307)
!2378 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !468, file: !468, line: 925, type: !2379, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!89, !68, !94, !91}
!2381 = !{!2382, !2383, !2384}
!2382 = !DILocalVariable(name: "n", arg: 1, scope: !2378, file: !468, line: 925, type: !68)
!2383 = !DILocalVariable(name: "arg", arg: 2, scope: !2378, file: !468, line: 925, type: !94)
!2384 = !DILocalVariable(name: "argsize", arg: 3, scope: !2378, file: !468, line: 925, type: !91)
!2385 = !DILocation(line: 0, scope: !2378)
!2386 = !DILocation(line: 927, column: 10, scope: !2378)
!2387 = !DILocation(line: 927, column: 3, scope: !2378)
!2388 = distinct !DISubprogram(name: "quotearg", scope: !468, file: !468, line: 931, type: !973, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2389)
!2389 = !{!2390}
!2390 = !DILocalVariable(name: "arg", arg: 1, scope: !2388, file: !468, line: 931, type: !94)
!2391 = !DILocation(line: 0, scope: !2388)
!2392 = !DILocation(line: 0, scope: !2284, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 933, column: 10, scope: !2388)
!2394 = !DILocation(line: 921, column: 10, scope: !2284, inlinedAt: !2393)
!2395 = !DILocation(line: 933, column: 3, scope: !2388)
!2396 = distinct !DISubprogram(name: "quotearg_mem", scope: !468, file: !468, line: 937, type: !2397, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!89, !94, !91}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "arg", arg: 1, scope: !2396, file: !468, line: 937, type: !94)
!2401 = !DILocalVariable(name: "argsize", arg: 2, scope: !2396, file: !468, line: 937, type: !91)
!2402 = !DILocation(line: 0, scope: !2396)
!2403 = !DILocation(line: 0, scope: !2378, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 939, column: 10, scope: !2396)
!2405 = !DILocation(line: 927, column: 10, scope: !2378, inlinedAt: !2404)
!2406 = !DILocation(line: 939, column: 3, scope: !2396)
!2407 = distinct !DISubprogram(name: "quotearg_n_style", scope: !468, file: !468, line: 943, type: !2408, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!89, !68, !491, !94}
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2407, file: !468, line: 943, type: !68)
!2412 = !DILocalVariable(name: "s", arg: 2, scope: !2407, file: !468, line: 943, type: !491)
!2413 = !DILocalVariable(name: "arg", arg: 3, scope: !2407, file: !468, line: 943, type: !94)
!2414 = !DILocalVariable(name: "o", scope: !2407, file: !468, line: 945, type: !1495)
!2415 = !DILocation(line: 0, scope: !2407)
!2416 = !DILocation(line: 945, column: 3, scope: !2407)
!2417 = !DILocation(line: 945, column: 32, scope: !2407)
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"quoting_options_from_style: argument 0"}
!2420 = distinct !{!2420, !"quoting_options_from_style"}
!2421 = !DILocation(line: 945, column: 36, scope: !2407)
!2422 = !DILocalVariable(name: "style", arg: 1, scope: !2423, file: !468, line: 183, type: !491)
!2423 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !468, file: !468, line: 183, type: !2424, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!518, !491}
!2426 = !{!2422, !2427}
!2427 = !DILocalVariable(name: "o", scope: !2423, file: !468, line: 185, type: !518)
!2428 = !DILocation(line: 0, scope: !2423, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 945, column: 36, scope: !2407)
!2430 = !DILocation(line: 185, column: 26, scope: !2423, inlinedAt: !2429)
!2431 = !DILocation(line: 186, column: 13, scope: !2432, inlinedAt: !2429)
!2432 = distinct !DILexicalBlock(scope: !2423, file: !468, line: 186, column: 7)
!2433 = !DILocation(line: 186, column: 7, scope: !2423, inlinedAt: !2429)
!2434 = !DILocation(line: 187, column: 5, scope: !2432, inlinedAt: !2429)
!2435 = !DILocation(line: 188, column: 11, scope: !2423, inlinedAt: !2429)
!2436 = !DILocation(line: 946, column: 10, scope: !2407)
!2437 = !DILocation(line: 947, column: 1, scope: !2407)
!2438 = !DILocation(line: 946, column: 3, scope: !2407)
!2439 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !468, file: !468, line: 950, type: !2440, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!89, !68, !491, !94, !91}
!2442 = !{!2443, !2444, !2445, !2446, !2447}
!2443 = !DILocalVariable(name: "n", arg: 1, scope: !2439, file: !468, line: 950, type: !68)
!2444 = !DILocalVariable(name: "s", arg: 2, scope: !2439, file: !468, line: 950, type: !491)
!2445 = !DILocalVariable(name: "arg", arg: 3, scope: !2439, file: !468, line: 951, type: !94)
!2446 = !DILocalVariable(name: "argsize", arg: 4, scope: !2439, file: !468, line: 951, type: !91)
!2447 = !DILocalVariable(name: "o", scope: !2439, file: !468, line: 953, type: !1495)
!2448 = !DILocation(line: 0, scope: !2439)
!2449 = !DILocation(line: 953, column: 3, scope: !2439)
!2450 = !DILocation(line: 953, column: 32, scope: !2439)
!2451 = !{!2452}
!2452 = distinct !{!2452, !2453, !"quoting_options_from_style: argument 0"}
!2453 = distinct !{!2453, !"quoting_options_from_style"}
!2454 = !DILocation(line: 953, column: 36, scope: !2439)
!2455 = !DILocation(line: 0, scope: !2423, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 953, column: 36, scope: !2439)
!2457 = !DILocation(line: 185, column: 26, scope: !2423, inlinedAt: !2456)
!2458 = !DILocation(line: 186, column: 13, scope: !2432, inlinedAt: !2456)
!2459 = !DILocation(line: 186, column: 7, scope: !2423, inlinedAt: !2456)
!2460 = !DILocation(line: 187, column: 5, scope: !2432, inlinedAt: !2456)
!2461 = !DILocation(line: 188, column: 11, scope: !2423, inlinedAt: !2456)
!2462 = !DILocation(line: 954, column: 10, scope: !2439)
!2463 = !DILocation(line: 955, column: 1, scope: !2439)
!2464 = !DILocation(line: 954, column: 3, scope: !2439)
!2465 = distinct !DISubprogram(name: "quotearg_style", scope: !468, file: !468, line: 958, type: !2466, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!89, !491, !94}
!2468 = !{!2469, !2470}
!2469 = !DILocalVariable(name: "s", arg: 1, scope: !2465, file: !468, line: 958, type: !491)
!2470 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !468, line: 958, type: !94)
!2471 = !DILocation(line: 0, scope: !2465)
!2472 = !DILocation(line: 0, scope: !2407, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 960, column: 10, scope: !2465)
!2474 = !DILocation(line: 945, column: 3, scope: !2407, inlinedAt: !2473)
!2475 = !DILocation(line: 945, column: 32, scope: !2407, inlinedAt: !2473)
!2476 = !{!2477}
!2477 = distinct !{!2477, !2478, !"quoting_options_from_style: argument 0"}
!2478 = distinct !{!2478, !"quoting_options_from_style"}
!2479 = !DILocation(line: 945, column: 36, scope: !2407, inlinedAt: !2473)
!2480 = !DILocation(line: 0, scope: !2423, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 945, column: 36, scope: !2407, inlinedAt: !2473)
!2482 = !DILocation(line: 185, column: 26, scope: !2423, inlinedAt: !2481)
!2483 = !DILocation(line: 186, column: 13, scope: !2432, inlinedAt: !2481)
!2484 = !DILocation(line: 186, column: 7, scope: !2423, inlinedAt: !2481)
!2485 = !DILocation(line: 187, column: 5, scope: !2432, inlinedAt: !2481)
!2486 = !DILocation(line: 188, column: 11, scope: !2423, inlinedAt: !2481)
!2487 = !DILocation(line: 946, column: 10, scope: !2407, inlinedAt: !2473)
!2488 = !DILocation(line: 947, column: 1, scope: !2407, inlinedAt: !2473)
!2489 = !DILocation(line: 960, column: 3, scope: !2465)
!2490 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !468, file: !468, line: 964, type: !2491, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!89, !491, !94, !91}
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "s", arg: 1, scope: !2490, file: !468, line: 964, type: !491)
!2495 = !DILocalVariable(name: "arg", arg: 2, scope: !2490, file: !468, line: 964, type: !94)
!2496 = !DILocalVariable(name: "argsize", arg: 3, scope: !2490, file: !468, line: 964, type: !91)
!2497 = !DILocation(line: 0, scope: !2490)
!2498 = !DILocation(line: 0, scope: !2439, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 966, column: 10, scope: !2490)
!2500 = !DILocation(line: 953, column: 3, scope: !2439, inlinedAt: !2499)
!2501 = !DILocation(line: 953, column: 32, scope: !2439, inlinedAt: !2499)
!2502 = !{!2503}
!2503 = distinct !{!2503, !2504, !"quoting_options_from_style: argument 0"}
!2504 = distinct !{!2504, !"quoting_options_from_style"}
!2505 = !DILocation(line: 953, column: 36, scope: !2439, inlinedAt: !2499)
!2506 = !DILocation(line: 0, scope: !2423, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 953, column: 36, scope: !2439, inlinedAt: !2499)
!2508 = !DILocation(line: 185, column: 26, scope: !2423, inlinedAt: !2507)
!2509 = !DILocation(line: 186, column: 13, scope: !2432, inlinedAt: !2507)
!2510 = !DILocation(line: 186, column: 7, scope: !2423, inlinedAt: !2507)
!2511 = !DILocation(line: 187, column: 5, scope: !2432, inlinedAt: !2507)
!2512 = !DILocation(line: 188, column: 11, scope: !2423, inlinedAt: !2507)
!2513 = !DILocation(line: 954, column: 10, scope: !2439, inlinedAt: !2499)
!2514 = !DILocation(line: 955, column: 1, scope: !2439, inlinedAt: !2499)
!2515 = !DILocation(line: 966, column: 3, scope: !2490)
!2516 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !468, file: !468, line: 970, type: !2517, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!89, !94, !91, !4}
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DILocalVariable(name: "arg", arg: 1, scope: !2516, file: !468, line: 970, type: !94)
!2521 = !DILocalVariable(name: "argsize", arg: 2, scope: !2516, file: !468, line: 970, type: !91)
!2522 = !DILocalVariable(name: "ch", arg: 3, scope: !2516, file: !468, line: 970, type: !4)
!2523 = !DILocalVariable(name: "options", scope: !2516, file: !468, line: 972, type: !518)
!2524 = !DILocation(line: 0, scope: !2516)
!2525 = !DILocation(line: 972, column: 3, scope: !2516)
!2526 = !DILocation(line: 972, column: 26, scope: !2516)
!2527 = !DILocation(line: 973, column: 13, scope: !2516)
!2528 = !{i64 0, i64 4, !855, i64 4, i64 4, !846, i64 8, i64 32, !855, i64 40, i64 8, !783, i64 48, i64 8, !783}
!2529 = !DILocation(line: 0, scope: !1514, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 974, column: 3, scope: !2516)
!2531 = !DILocation(line: 147, column: 41, scope: !1514, inlinedAt: !2530)
!2532 = !DILocation(line: 147, column: 62, scope: !1514, inlinedAt: !2530)
!2533 = !DILocation(line: 147, column: 57, scope: !1514, inlinedAt: !2530)
!2534 = !DILocation(line: 148, column: 15, scope: !1514, inlinedAt: !2530)
!2535 = !DILocation(line: 149, column: 21, scope: !1514, inlinedAt: !2530)
!2536 = !DILocation(line: 149, column: 24, scope: !1514, inlinedAt: !2530)
!2537 = !DILocation(line: 150, column: 19, scope: !1514, inlinedAt: !2530)
!2538 = !DILocation(line: 150, column: 24, scope: !1514, inlinedAt: !2530)
!2539 = !DILocation(line: 150, column: 6, scope: !1514, inlinedAt: !2530)
!2540 = !DILocation(line: 975, column: 10, scope: !2516)
!2541 = !DILocation(line: 976, column: 1, scope: !2516)
!2542 = !DILocation(line: 975, column: 3, scope: !2516)
!2543 = distinct !DISubprogram(name: "quotearg_char", scope: !468, file: !468, line: 979, type: !2544, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!89, !94, !4}
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "arg", arg: 1, scope: !2543, file: !468, line: 979, type: !94)
!2548 = !DILocalVariable(name: "ch", arg: 2, scope: !2543, file: !468, line: 979, type: !4)
!2549 = !DILocation(line: 0, scope: !2543)
!2550 = !DILocation(line: 0, scope: !2516, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 981, column: 10, scope: !2543)
!2552 = !DILocation(line: 972, column: 3, scope: !2516, inlinedAt: !2551)
!2553 = !DILocation(line: 972, column: 26, scope: !2516, inlinedAt: !2551)
!2554 = !DILocation(line: 973, column: 13, scope: !2516, inlinedAt: !2551)
!2555 = !DILocation(line: 0, scope: !1514, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 974, column: 3, scope: !2516, inlinedAt: !2551)
!2557 = !DILocation(line: 147, column: 41, scope: !1514, inlinedAt: !2556)
!2558 = !DILocation(line: 147, column: 62, scope: !1514, inlinedAt: !2556)
!2559 = !DILocation(line: 147, column: 57, scope: !1514, inlinedAt: !2556)
!2560 = !DILocation(line: 148, column: 15, scope: !1514, inlinedAt: !2556)
!2561 = !DILocation(line: 149, column: 21, scope: !1514, inlinedAt: !2556)
!2562 = !DILocation(line: 149, column: 24, scope: !1514, inlinedAt: !2556)
!2563 = !DILocation(line: 150, column: 19, scope: !1514, inlinedAt: !2556)
!2564 = !DILocation(line: 150, column: 24, scope: !1514, inlinedAt: !2556)
!2565 = !DILocation(line: 150, column: 6, scope: !1514, inlinedAt: !2556)
!2566 = !DILocation(line: 975, column: 10, scope: !2516, inlinedAt: !2551)
!2567 = !DILocation(line: 976, column: 1, scope: !2516, inlinedAt: !2551)
!2568 = !DILocation(line: 981, column: 3, scope: !2543)
!2569 = distinct !DISubprogram(name: "quotearg_colon", scope: !468, file: !468, line: 985, type: !973, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2570)
!2570 = !{!2571}
!2571 = !DILocalVariable(name: "arg", arg: 1, scope: !2569, file: !468, line: 985, type: !94)
!2572 = !DILocation(line: 0, scope: !2569)
!2573 = !DILocation(line: 0, scope: !2543, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 987, column: 10, scope: !2569)
!2575 = !DILocation(line: 0, scope: !2516, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 981, column: 10, scope: !2543, inlinedAt: !2574)
!2577 = !DILocation(line: 972, column: 3, scope: !2516, inlinedAt: !2576)
!2578 = !DILocation(line: 972, column: 26, scope: !2516, inlinedAt: !2576)
!2579 = !DILocation(line: 973, column: 13, scope: !2516, inlinedAt: !2576)
!2580 = !DILocation(line: 0, scope: !1514, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 974, column: 3, scope: !2516, inlinedAt: !2576)
!2582 = !DILocation(line: 147, column: 57, scope: !1514, inlinedAt: !2581)
!2583 = !DILocation(line: 149, column: 21, scope: !1514, inlinedAt: !2581)
!2584 = !DILocation(line: 150, column: 6, scope: !1514, inlinedAt: !2581)
!2585 = !DILocation(line: 975, column: 10, scope: !2516, inlinedAt: !2576)
!2586 = !DILocation(line: 976, column: 1, scope: !2516, inlinedAt: !2576)
!2587 = !DILocation(line: 987, column: 3, scope: !2569)
!2588 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !468, file: !468, line: 991, type: !2397, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2589)
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2588, file: !468, line: 991, type: !94)
!2591 = !DILocalVariable(name: "argsize", arg: 2, scope: !2588, file: !468, line: 991, type: !91)
!2592 = !DILocation(line: 0, scope: !2588)
!2593 = !DILocation(line: 0, scope: !2516, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 993, column: 10, scope: !2588)
!2595 = !DILocation(line: 972, column: 3, scope: !2516, inlinedAt: !2594)
!2596 = !DILocation(line: 972, column: 26, scope: !2516, inlinedAt: !2594)
!2597 = !DILocation(line: 973, column: 13, scope: !2516, inlinedAt: !2594)
!2598 = !DILocation(line: 0, scope: !1514, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 974, column: 3, scope: !2516, inlinedAt: !2594)
!2600 = !DILocation(line: 147, column: 57, scope: !1514, inlinedAt: !2599)
!2601 = !DILocation(line: 149, column: 21, scope: !1514, inlinedAt: !2599)
!2602 = !DILocation(line: 150, column: 6, scope: !1514, inlinedAt: !2599)
!2603 = !DILocation(line: 975, column: 10, scope: !2516, inlinedAt: !2594)
!2604 = !DILocation(line: 976, column: 1, scope: !2516, inlinedAt: !2594)
!2605 = !DILocation(line: 993, column: 3, scope: !2588)
!2606 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !468, file: !468, line: 997, type: !2408, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2607)
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DILocalVariable(name: "n", arg: 1, scope: !2606, file: !468, line: 997, type: !68)
!2609 = !DILocalVariable(name: "s", arg: 2, scope: !2606, file: !468, line: 997, type: !491)
!2610 = !DILocalVariable(name: "arg", arg: 3, scope: !2606, file: !468, line: 997, type: !94)
!2611 = !DILocalVariable(name: "options", scope: !2606, file: !468, line: 999, type: !518)
!2612 = !DILocation(line: 185, column: 26, scope: !2423, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1000, column: 13, scope: !2606)
!2614 = !DILocation(line: 0, scope: !2606)
!2615 = !DILocation(line: 999, column: 3, scope: !2606)
!2616 = !DILocation(line: 999, column: 26, scope: !2606)
!2617 = !DILocation(line: 0, scope: !2423, inlinedAt: !2613)
!2618 = !DILocation(line: 186, column: 13, scope: !2432, inlinedAt: !2613)
!2619 = !DILocation(line: 186, column: 7, scope: !2423, inlinedAt: !2613)
!2620 = !DILocation(line: 187, column: 5, scope: !2432, inlinedAt: !2613)
!2621 = !{!2622}
!2622 = distinct !{!2622, !2623, !"quoting_options_from_style: argument 0"}
!2623 = distinct !{!2623, !"quoting_options_from_style"}
!2624 = !DILocation(line: 1000, column: 13, scope: !2606)
!2625 = !DILocation(line: 0, scope: !1514, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 1001, column: 3, scope: !2606)
!2627 = !DILocation(line: 147, column: 57, scope: !1514, inlinedAt: !2626)
!2628 = !DILocation(line: 149, column: 21, scope: !1514, inlinedAt: !2626)
!2629 = !DILocation(line: 150, column: 6, scope: !1514, inlinedAt: !2626)
!2630 = !DILocation(line: 1002, column: 10, scope: !2606)
!2631 = !DILocation(line: 1003, column: 1, scope: !2606)
!2632 = !DILocation(line: 1002, column: 3, scope: !2606)
!2633 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !468, file: !468, line: 1006, type: !2634, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!89, !68, !94, !94, !94}
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !468, line: 1006, type: !68)
!2638 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2633, file: !468, line: 1006, type: !94)
!2639 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2633, file: !468, line: 1007, type: !94)
!2640 = !DILocalVariable(name: "arg", arg: 4, scope: !2633, file: !468, line: 1007, type: !94)
!2641 = !DILocation(line: 0, scope: !2633)
!2642 = !DILocalVariable(name: "n", arg: 1, scope: !2643, file: !468, line: 1014, type: !68)
!2643 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !468, file: !468, line: 1014, type: !2644, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!89, !68, !94, !94, !94, !91}
!2646 = !{!2642, !2647, !2648, !2649, !2650, !2651}
!2647 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2643, file: !468, line: 1014, type: !94)
!2648 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2643, file: !468, line: 1015, type: !94)
!2649 = !DILocalVariable(name: "arg", arg: 4, scope: !2643, file: !468, line: 1016, type: !94)
!2650 = !DILocalVariable(name: "argsize", arg: 5, scope: !2643, file: !468, line: 1016, type: !91)
!2651 = !DILocalVariable(name: "o", scope: !2643, file: !468, line: 1018, type: !518)
!2652 = !DILocation(line: 0, scope: !2643, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1009, column: 10, scope: !2633)
!2654 = !DILocation(line: 1018, column: 3, scope: !2643, inlinedAt: !2653)
!2655 = !DILocation(line: 1018, column: 26, scope: !2643, inlinedAt: !2653)
!2656 = !DILocation(line: 1018, column: 30, scope: !2643, inlinedAt: !2653)
!2657 = !DILocation(line: 0, scope: !1554, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1019, column: 3, scope: !2643, inlinedAt: !2653)
!2659 = !DILocation(line: 174, column: 12, scope: !1554, inlinedAt: !2658)
!2660 = !DILocation(line: 175, column: 8, scope: !1567, inlinedAt: !2658)
!2661 = !DILocation(line: 175, column: 19, scope: !1567, inlinedAt: !2658)
!2662 = !DILocation(line: 176, column: 5, scope: !1567, inlinedAt: !2658)
!2663 = !DILocation(line: 177, column: 6, scope: !1554, inlinedAt: !2658)
!2664 = !DILocation(line: 177, column: 17, scope: !1554, inlinedAt: !2658)
!2665 = !DILocation(line: 178, column: 6, scope: !1554, inlinedAt: !2658)
!2666 = !DILocation(line: 178, column: 18, scope: !1554, inlinedAt: !2658)
!2667 = !DILocation(line: 1020, column: 10, scope: !2643, inlinedAt: !2653)
!2668 = !DILocation(line: 1021, column: 1, scope: !2643, inlinedAt: !2653)
!2669 = !DILocation(line: 1009, column: 3, scope: !2633)
!2670 = !DILocation(line: 0, scope: !2643)
!2671 = !DILocation(line: 1018, column: 3, scope: !2643)
!2672 = !DILocation(line: 1018, column: 26, scope: !2643)
!2673 = !DILocation(line: 1018, column: 30, scope: !2643)
!2674 = !DILocation(line: 0, scope: !1554, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1019, column: 3, scope: !2643)
!2676 = !DILocation(line: 174, column: 12, scope: !1554, inlinedAt: !2675)
!2677 = !DILocation(line: 175, column: 8, scope: !1567, inlinedAt: !2675)
!2678 = !DILocation(line: 175, column: 19, scope: !1567, inlinedAt: !2675)
!2679 = !DILocation(line: 176, column: 5, scope: !1567, inlinedAt: !2675)
!2680 = !DILocation(line: 177, column: 6, scope: !1554, inlinedAt: !2675)
!2681 = !DILocation(line: 177, column: 17, scope: !1554, inlinedAt: !2675)
!2682 = !DILocation(line: 178, column: 6, scope: !1554, inlinedAt: !2675)
!2683 = !DILocation(line: 178, column: 18, scope: !1554, inlinedAt: !2675)
!2684 = !DILocation(line: 1020, column: 10, scope: !2643)
!2685 = !DILocation(line: 1021, column: 1, scope: !2643)
!2686 = !DILocation(line: 1020, column: 3, scope: !2643)
!2687 = distinct !DISubprogram(name: "quotearg_custom", scope: !468, file: !468, line: 1024, type: !2688, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!89, !94, !94, !94}
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2687, file: !468, line: 1024, type: !94)
!2692 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2687, file: !468, line: 1024, type: !94)
!2693 = !DILocalVariable(name: "arg", arg: 3, scope: !2687, file: !468, line: 1025, type: !94)
!2694 = !DILocation(line: 0, scope: !2687)
!2695 = !DILocation(line: 0, scope: !2633, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1027, column: 10, scope: !2687)
!2697 = !DILocation(line: 0, scope: !2643, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1009, column: 10, scope: !2633, inlinedAt: !2696)
!2699 = !DILocation(line: 1018, column: 3, scope: !2643, inlinedAt: !2698)
!2700 = !DILocation(line: 1018, column: 26, scope: !2643, inlinedAt: !2698)
!2701 = !DILocation(line: 1018, column: 30, scope: !2643, inlinedAt: !2698)
!2702 = !DILocation(line: 0, scope: !1554, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 1019, column: 3, scope: !2643, inlinedAt: !2698)
!2704 = !DILocation(line: 174, column: 12, scope: !1554, inlinedAt: !2703)
!2705 = !DILocation(line: 175, column: 8, scope: !1567, inlinedAt: !2703)
!2706 = !DILocation(line: 175, column: 19, scope: !1567, inlinedAt: !2703)
!2707 = !DILocation(line: 176, column: 5, scope: !1567, inlinedAt: !2703)
!2708 = !DILocation(line: 177, column: 6, scope: !1554, inlinedAt: !2703)
!2709 = !DILocation(line: 177, column: 17, scope: !1554, inlinedAt: !2703)
!2710 = !DILocation(line: 178, column: 6, scope: !1554, inlinedAt: !2703)
!2711 = !DILocation(line: 178, column: 18, scope: !1554, inlinedAt: !2703)
!2712 = !DILocation(line: 1020, column: 10, scope: !2643, inlinedAt: !2698)
!2713 = !DILocation(line: 1021, column: 1, scope: !2643, inlinedAt: !2698)
!2714 = !DILocation(line: 1027, column: 3, scope: !2687)
!2715 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !468, file: !468, line: 1031, type: !2716, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!89, !94, !94, !94, !91}
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2715, file: !468, line: 1031, type: !94)
!2720 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2715, file: !468, line: 1031, type: !94)
!2721 = !DILocalVariable(name: "arg", arg: 3, scope: !2715, file: !468, line: 1032, type: !94)
!2722 = !DILocalVariable(name: "argsize", arg: 4, scope: !2715, file: !468, line: 1032, type: !91)
!2723 = !DILocation(line: 0, scope: !2715)
!2724 = !DILocation(line: 0, scope: !2643, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1034, column: 10, scope: !2715)
!2726 = !DILocation(line: 1018, column: 3, scope: !2643, inlinedAt: !2725)
!2727 = !DILocation(line: 1018, column: 26, scope: !2643, inlinedAt: !2725)
!2728 = !DILocation(line: 1018, column: 30, scope: !2643, inlinedAt: !2725)
!2729 = !DILocation(line: 0, scope: !1554, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1019, column: 3, scope: !2643, inlinedAt: !2725)
!2731 = !DILocation(line: 174, column: 12, scope: !1554, inlinedAt: !2730)
!2732 = !DILocation(line: 175, column: 8, scope: !1567, inlinedAt: !2730)
!2733 = !DILocation(line: 175, column: 19, scope: !1567, inlinedAt: !2730)
!2734 = !DILocation(line: 176, column: 5, scope: !1567, inlinedAt: !2730)
!2735 = !DILocation(line: 177, column: 6, scope: !1554, inlinedAt: !2730)
!2736 = !DILocation(line: 177, column: 17, scope: !1554, inlinedAt: !2730)
!2737 = !DILocation(line: 178, column: 6, scope: !1554, inlinedAt: !2730)
!2738 = !DILocation(line: 178, column: 18, scope: !1554, inlinedAt: !2730)
!2739 = !DILocation(line: 1020, column: 10, scope: !2643, inlinedAt: !2725)
!2740 = !DILocation(line: 1021, column: 1, scope: !2643, inlinedAt: !2725)
!2741 = !DILocation(line: 1034, column: 3, scope: !2715)
!2742 = distinct !DISubprogram(name: "quote_n_mem", scope: !468, file: !468, line: 1049, type: !2743, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!94, !68, !94, !91}
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !468, line: 1049, type: !68)
!2747 = !DILocalVariable(name: "arg", arg: 2, scope: !2742, file: !468, line: 1049, type: !94)
!2748 = !DILocalVariable(name: "argsize", arg: 3, scope: !2742, file: !468, line: 1049, type: !91)
!2749 = !DILocation(line: 0, scope: !2742)
!2750 = !DILocation(line: 1051, column: 10, scope: !2742)
!2751 = !DILocation(line: 1051, column: 3, scope: !2742)
!2752 = distinct !DISubprogram(name: "quote_mem", scope: !468, file: !468, line: 1055, type: !2753, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!94, !94, !91}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !468, line: 1055, type: !94)
!2757 = !DILocalVariable(name: "argsize", arg: 2, scope: !2752, file: !468, line: 1055, type: !91)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 0, scope: !2742, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1057, column: 10, scope: !2752)
!2761 = !DILocation(line: 1051, column: 10, scope: !2742, inlinedAt: !2760)
!2762 = !DILocation(line: 1057, column: 3, scope: !2752)
!2763 = distinct !DISubprogram(name: "quote_n", scope: !468, file: !468, line: 1061, type: !2764, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!94, !68, !94}
!2766 = !{!2767, !2768}
!2767 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !468, line: 1061, type: !68)
!2768 = !DILocalVariable(name: "arg", arg: 2, scope: !2763, file: !468, line: 1061, type: !94)
!2769 = !DILocation(line: 0, scope: !2763)
!2770 = !DILocation(line: 0, scope: !2742, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1063, column: 10, scope: !2763)
!2772 = !DILocation(line: 1051, column: 10, scope: !2742, inlinedAt: !2771)
!2773 = !DILocation(line: 1063, column: 3, scope: !2763)
!2774 = distinct !DISubprogram(name: "quote", scope: !468, file: !468, line: 1067, type: !2775, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!94, !94}
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "arg", arg: 1, scope: !2774, file: !468, line: 1067, type: !94)
!2779 = !DILocation(line: 0, scope: !2774)
!2780 = !DILocation(line: 0, scope: !2763, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1069, column: 10, scope: !2774)
!2782 = !DILocation(line: 0, scope: !2742, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1063, column: 10, scope: !2763, inlinedAt: !2781)
!2784 = !DILocation(line: 1051, column: 10, scope: !2742, inlinedAt: !2783)
!2785 = !DILocation(line: 1069, column: 3, scope: !2774)
!2786 = distinct !DISubprogram(name: "version_etc_arn", scope: !581, file: !581, line: 61, type: !2787, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2824)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !2789, !94, !94, !94, !2823, !91}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !2791)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2791, file: !145, line: 51, baseType: !68, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2791, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2791, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2791, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2791, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2791, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2791, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2791, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2791, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2791, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2791, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2791, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2791, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2791, file: !145, line: 70, baseType: !2807, size: 64, offset: 832)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2791, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2791, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2791, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2791, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2791, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2791, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2791, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2791, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2791, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2791, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2791, file: !145, line: 93, baseType: !2807, size: 64, offset: 1344)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2791, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2791, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2791, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2791, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830}
!2825 = !DILocalVariable(name: "stream", arg: 1, scope: !2786, file: !581, line: 61, type: !2789)
!2826 = !DILocalVariable(name: "command_name", arg: 2, scope: !2786, file: !581, line: 62, type: !94)
!2827 = !DILocalVariable(name: "package", arg: 3, scope: !2786, file: !581, line: 62, type: !94)
!2828 = !DILocalVariable(name: "version", arg: 4, scope: !2786, file: !581, line: 63, type: !94)
!2829 = !DILocalVariable(name: "authors", arg: 5, scope: !2786, file: !581, line: 64, type: !2823)
!2830 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2786, file: !581, line: 64, type: !91)
!2831 = !DILocation(line: 0, scope: !2786)
!2832 = !DILocation(line: 66, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2786, file: !581, line: 66, column: 7)
!2834 = !DILocation(line: 66, column: 7, scope: !2786)
!2835 = !DILocation(line: 67, column: 5, scope: !2833)
!2836 = !DILocation(line: 69, column: 5, scope: !2833)
!2837 = !DILocation(line: 83, column: 3, scope: !2786)
!2838 = !DILocation(line: 85, column: 3, scope: !2786)
!2839 = !DILocation(line: 88, column: 3, scope: !2786)
!2840 = !DILocation(line: 95, column: 3, scope: !2786)
!2841 = !DILocation(line: 97, column: 3, scope: !2786)
!2842 = !DILocation(line: 105, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2786, file: !581, line: 98, column: 5)
!2844 = !DILocation(line: 106, column: 7, scope: !2843)
!2845 = !DILocation(line: 109, column: 7, scope: !2843)
!2846 = !DILocation(line: 110, column: 7, scope: !2843)
!2847 = !DILocation(line: 113, column: 7, scope: !2843)
!2848 = !DILocation(line: 115, column: 7, scope: !2843)
!2849 = !DILocation(line: 120, column: 7, scope: !2843)
!2850 = !DILocation(line: 122, column: 7, scope: !2843)
!2851 = !DILocation(line: 127, column: 7, scope: !2843)
!2852 = !DILocation(line: 129, column: 7, scope: !2843)
!2853 = !DILocation(line: 134, column: 7, scope: !2843)
!2854 = !DILocation(line: 137, column: 7, scope: !2843)
!2855 = !DILocation(line: 142, column: 7, scope: !2843)
!2856 = !DILocation(line: 145, column: 7, scope: !2843)
!2857 = !DILocation(line: 150, column: 7, scope: !2843)
!2858 = !DILocation(line: 154, column: 7, scope: !2843)
!2859 = !DILocation(line: 159, column: 7, scope: !2843)
!2860 = !DILocation(line: 163, column: 7, scope: !2843)
!2861 = !DILocation(line: 170, column: 7, scope: !2843)
!2862 = !DILocation(line: 174, column: 7, scope: !2843)
!2863 = !DILocation(line: 176, column: 1, scope: !2786)
!2864 = distinct !DISubprogram(name: "version_etc_ar", scope: !581, file: !581, line: 183, type: !2865, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2789, !94, !94, !94, !2823}
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DILocalVariable(name: "stream", arg: 1, scope: !2864, file: !581, line: 183, type: !2789)
!2869 = !DILocalVariable(name: "command_name", arg: 2, scope: !2864, file: !581, line: 184, type: !94)
!2870 = !DILocalVariable(name: "package", arg: 3, scope: !2864, file: !581, line: 184, type: !94)
!2871 = !DILocalVariable(name: "version", arg: 4, scope: !2864, file: !581, line: 185, type: !94)
!2872 = !DILocalVariable(name: "authors", arg: 5, scope: !2864, file: !581, line: 185, type: !2823)
!2873 = !DILocalVariable(name: "n_authors", scope: !2864, file: !581, line: 187, type: !91)
!2874 = !DILocation(line: 0, scope: !2864)
!2875 = !DILocation(line: 189, column: 8, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2864, file: !581, line: 189, column: 3)
!2877 = !DILocation(line: 189, scope: !2876)
!2878 = !DILocation(line: 189, column: 23, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !581, line: 189, column: 3)
!2880 = !DILocation(line: 189, column: 3, scope: !2876)
!2881 = !DILocation(line: 189, column: 52, scope: !2879)
!2882 = distinct !{!2882, !2880, !2883, !893}
!2883 = !DILocation(line: 190, column: 5, scope: !2876)
!2884 = !DILocation(line: 191, column: 3, scope: !2864)
!2885 = !DILocation(line: 192, column: 1, scope: !2864)
!2886 = distinct !DISubprogram(name: "version_etc_va", scope: !581, file: !581, line: 199, type: !2887, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2897)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2789, !94, !94, !94, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2891)
!2891 = !{!2892, !2894, !2895, !2896}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2890, file: !2893, line: 192, baseType: !74, size: 32)
!2893 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2890, file: !2893, line: 192, baseType: !74, size: 32, offset: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2890, file: !2893, line: 192, baseType: !90, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2890, file: !2893, line: 192, baseType: !90, size: 64, offset: 128)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2898 = !DILocalVariable(name: "stream", arg: 1, scope: !2886, file: !581, line: 199, type: !2789)
!2899 = !DILocalVariable(name: "command_name", arg: 2, scope: !2886, file: !581, line: 200, type: !94)
!2900 = !DILocalVariable(name: "package", arg: 3, scope: !2886, file: !581, line: 200, type: !94)
!2901 = !DILocalVariable(name: "version", arg: 4, scope: !2886, file: !581, line: 201, type: !94)
!2902 = !DILocalVariable(name: "authors", arg: 5, scope: !2886, file: !581, line: 201, type: !2889)
!2903 = !DILocalVariable(name: "n_authors", scope: !2886, file: !581, line: 203, type: !91)
!2904 = !DILocalVariable(name: "authtab", scope: !2886, file: !581, line: 204, type: !2905)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 640, elements: !50)
!2906 = !DILocation(line: 0, scope: !2886)
!2907 = !DILocation(line: 204, column: 3, scope: !2886)
!2908 = !DILocation(line: 204, column: 15, scope: !2886)
!2909 = !DILocation(line: 208, column: 35, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !581, line: 206, column: 3)
!2911 = distinct !DILexicalBlock(scope: !2886, file: !581, line: 206, column: 3)
!2912 = !DILocation(line: 208, column: 33, scope: !2910)
!2913 = !DILocation(line: 208, column: 67, scope: !2910)
!2914 = !DILocation(line: 206, column: 3, scope: !2911)
!2915 = !DILocation(line: 208, column: 14, scope: !2910)
!2916 = !DILocation(line: 0, scope: !2911)
!2917 = !DILocation(line: 211, column: 3, scope: !2886)
!2918 = !DILocation(line: 213, column: 1, scope: !2886)
!2919 = distinct !DISubprogram(name: "version_etc", scope: !581, file: !581, line: 230, type: !2920, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2789, !94, !94, !94, null}
!2922 = !{!2923, !2924, !2925, !2926, !2927}
!2923 = !DILocalVariable(name: "stream", arg: 1, scope: !2919, file: !581, line: 230, type: !2789)
!2924 = !DILocalVariable(name: "command_name", arg: 2, scope: !2919, file: !581, line: 231, type: !94)
!2925 = !DILocalVariable(name: "package", arg: 3, scope: !2919, file: !581, line: 231, type: !94)
!2926 = !DILocalVariable(name: "version", arg: 4, scope: !2919, file: !581, line: 232, type: !94)
!2927 = !DILocalVariable(name: "authors", scope: !2919, file: !581, line: 234, type: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !841, line: 52, baseType: !2929)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1342, line: 14, baseType: !2930)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2893, baseType: !2931)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2890, size: 192, elements: !45)
!2932 = !DILocation(line: 0, scope: !2919)
!2933 = !DILocation(line: 234, column: 3, scope: !2919)
!2934 = !DILocation(line: 234, column: 11, scope: !2919)
!2935 = !DILocation(line: 235, column: 3, scope: !2919)
!2936 = !DILocation(line: 236, column: 3, scope: !2919)
!2937 = !DILocation(line: 237, column: 3, scope: !2919)
!2938 = !DILocation(line: 238, column: 1, scope: !2919)
!2939 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !581, file: !581, line: 241, type: !423, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !830)
!2940 = !DILocation(line: 243, column: 3, scope: !2939)
!2941 = !DILocation(line: 248, column: 3, scope: !2939)
!2942 = !DILocation(line: 254, column: 3, scope: !2939)
!2943 = !DILocation(line: 259, column: 3, scope: !2939)
!2944 = !DILocation(line: 261, column: 1, scope: !2939)
!2945 = distinct !DISubprogram(name: "xnrealloc", scope: !2946, file: !2946, line: 147, type: !2947, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2949)
!2946 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!90, !90, !91, !91}
!2949 = !{!2950, !2951, !2952}
!2950 = !DILocalVariable(name: "p", arg: 1, scope: !2945, file: !2946, line: 147, type: !90)
!2951 = !DILocalVariable(name: "n", arg: 2, scope: !2945, file: !2946, line: 147, type: !91)
!2952 = !DILocalVariable(name: "s", arg: 3, scope: !2945, file: !2946, line: 147, type: !91)
!2953 = !DILocation(line: 0, scope: !2945)
!2954 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !712, line: 83, type: !90)
!2955 = distinct !DISubprogram(name: "xreallocarray", scope: !712, file: !712, line: 83, type: !2947, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2956)
!2956 = !{!2954, !2957, !2958}
!2957 = !DILocalVariable(name: "n", arg: 2, scope: !2955, file: !712, line: 83, type: !91)
!2958 = !DILocalVariable(name: "s", arg: 3, scope: !2955, file: !712, line: 83, type: !91)
!2959 = !DILocation(line: 0, scope: !2955, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 149, column: 10, scope: !2945)
!2961 = !DILocation(line: 85, column: 25, scope: !2955, inlinedAt: !2960)
!2962 = !DILocalVariable(name: "p", arg: 1, scope: !2963, file: !712, line: 37, type: !90)
!2963 = distinct !DISubprogram(name: "check_nonnull", scope: !712, file: !712, line: 37, type: !2964, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!90, !90}
!2966 = !{!2962}
!2967 = !DILocation(line: 0, scope: !2963, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 85, column: 10, scope: !2955, inlinedAt: !2960)
!2969 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !2968)
!2970 = distinct !DILexicalBlock(scope: !2963, file: !712, line: 39, column: 7)
!2971 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !2968)
!2972 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !2968)
!2973 = !DILocation(line: 149, column: 3, scope: !2945)
!2974 = !DILocation(line: 0, scope: !2955)
!2975 = !DILocation(line: 85, column: 25, scope: !2955)
!2976 = !DILocation(line: 0, scope: !2963, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 85, column: 10, scope: !2955)
!2978 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !2977)
!2979 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !2977)
!2980 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !2977)
!2981 = !DILocation(line: 85, column: 3, scope: !2955)
!2982 = distinct !DISubprogram(name: "xmalloc", scope: !712, file: !712, line: 47, type: !1190, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2983)
!2983 = !{!2984}
!2984 = !DILocalVariable(name: "s", arg: 1, scope: !2982, file: !712, line: 47, type: !91)
!2985 = !DILocation(line: 0, scope: !2982)
!2986 = !DILocation(line: 49, column: 25, scope: !2982)
!2987 = !DILocation(line: 0, scope: !2963, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 49, column: 10, scope: !2982)
!2989 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !2988)
!2990 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !2988)
!2991 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !2988)
!2992 = !DILocation(line: 49, column: 3, scope: !2982)
!2993 = distinct !DISubprogram(name: "ximalloc", scope: !712, file: !712, line: 53, type: !2994, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!90, !134}
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "s", arg: 1, scope: !2993, file: !712, line: 53, type: !134)
!2998 = !DILocation(line: 0, scope: !2993)
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !3000, file: !3001, line: 55, type: !134)
!3000 = distinct !DISubprogram(name: "imalloc", scope: !3001, file: !3001, line: 55, type: !2994, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3002)
!3001 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3002 = !{!2999}
!3003 = !DILocation(line: 0, scope: !3000, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 55, column: 25, scope: !2993)
!3005 = !DILocation(line: 57, column: 26, scope: !3000, inlinedAt: !3004)
!3006 = !DILocation(line: 0, scope: !2963, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 55, column: 10, scope: !2993)
!3008 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3007)
!3011 = !DILocation(line: 55, column: 3, scope: !2993)
!3012 = distinct !DISubprogram(name: "xcharalloc", scope: !712, file: !712, line: 59, type: !3013, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!89, !91}
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !712, line: 59, type: !91)
!3017 = !DILocation(line: 0, scope: !3012)
!3018 = !DILocation(line: 0, scope: !2982, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 61, column: 10, scope: !3012)
!3020 = !DILocation(line: 49, column: 25, scope: !2982, inlinedAt: !3019)
!3021 = !DILocation(line: 0, scope: !2963, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 49, column: 10, scope: !2982, inlinedAt: !3019)
!3023 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3022)
!3024 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3022)
!3025 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3022)
!3026 = !DILocation(line: 61, column: 3, scope: !3012)
!3027 = distinct !DISubprogram(name: "xrealloc", scope: !712, file: !712, line: 68, type: !3028, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!90, !90, !91}
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !712, line: 68, type: !90)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !712, line: 68, type: !91)
!3033 = !DILocation(line: 0, scope: !3027)
!3034 = !DILocalVariable(name: "ptr", arg: 1, scope: !3035, file: !3036, line: 2057, type: !90)
!3035 = distinct !DISubprogram(name: "rpl_realloc", scope: !3036, file: !3036, line: 2057, type: !3028, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3037)
!3036 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3037 = !{!3034, !3038}
!3038 = !DILocalVariable(name: "size", arg: 2, scope: !3035, file: !3036, line: 2057, type: !91)
!3039 = !DILocation(line: 0, scope: !3035, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 70, column: 25, scope: !3027)
!3041 = !DILocation(line: 2059, column: 24, scope: !3035, inlinedAt: !3040)
!3042 = !DILocation(line: 2059, column: 10, scope: !3035, inlinedAt: !3040)
!3043 = !DILocation(line: 0, scope: !2963, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 70, column: 10, scope: !3027)
!3045 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3044)
!3046 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3044)
!3047 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3044)
!3048 = !DILocation(line: 70, column: 3, scope: !3027)
!3049 = !DISubprogram(name: "realloc", scope: !971, file: !971, line: 551, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3050 = distinct !DISubprogram(name: "xirealloc", scope: !712, file: !712, line: 74, type: !3051, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!90, !90, !134}
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "p", arg: 1, scope: !3050, file: !712, line: 74, type: !90)
!3055 = !DILocalVariable(name: "s", arg: 2, scope: !3050, file: !712, line: 74, type: !134)
!3056 = !DILocation(line: 0, scope: !3050)
!3057 = !DILocalVariable(name: "p", arg: 1, scope: !3058, file: !3001, line: 66, type: !90)
!3058 = distinct !DISubprogram(name: "irealloc", scope: !3001, file: !3001, line: 66, type: !3051, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3059)
!3059 = !{!3057, !3060}
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3058, file: !3001, line: 66, type: !134)
!3061 = !DILocation(line: 0, scope: !3058, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 76, column: 25, scope: !3050)
!3063 = !DILocation(line: 0, scope: !3035, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 68, column: 26, scope: !3058, inlinedAt: !3062)
!3065 = !DILocation(line: 2059, column: 24, scope: !3035, inlinedAt: !3064)
!3066 = !DILocation(line: 2059, column: 10, scope: !3035, inlinedAt: !3064)
!3067 = !DILocation(line: 0, scope: !2963, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 76, column: 10, scope: !3050)
!3069 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3068)
!3070 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3068)
!3071 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3068)
!3072 = !DILocation(line: 76, column: 3, scope: !3050)
!3073 = distinct !DISubprogram(name: "xireallocarray", scope: !712, file: !712, line: 89, type: !3074, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!90, !90, !134, !134}
!3076 = !{!3077, !3078, !3079}
!3077 = !DILocalVariable(name: "p", arg: 1, scope: !3073, file: !712, line: 89, type: !90)
!3078 = !DILocalVariable(name: "n", arg: 2, scope: !3073, file: !712, line: 89, type: !134)
!3079 = !DILocalVariable(name: "s", arg: 3, scope: !3073, file: !712, line: 89, type: !134)
!3080 = !DILocation(line: 0, scope: !3073)
!3081 = !DILocalVariable(name: "p", arg: 1, scope: !3082, file: !3001, line: 98, type: !90)
!3082 = distinct !DISubprogram(name: "ireallocarray", scope: !3001, file: !3001, line: 98, type: !3074, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3083)
!3083 = !{!3081, !3084, !3085}
!3084 = !DILocalVariable(name: "n", arg: 2, scope: !3082, file: !3001, line: 98, type: !134)
!3085 = !DILocalVariable(name: "s", arg: 3, scope: !3082, file: !3001, line: 98, type: !134)
!3086 = !DILocation(line: 0, scope: !3082, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 91, column: 25, scope: !3073)
!3088 = !DILocation(line: 101, column: 13, scope: !3082, inlinedAt: !3087)
!3089 = !DILocation(line: 0, scope: !2963, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 91, column: 10, scope: !3073)
!3091 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3090)
!3092 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3090)
!3093 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3090)
!3094 = !DILocation(line: 91, column: 3, scope: !3073)
!3095 = distinct !DISubprogram(name: "xnmalloc", scope: !712, file: !712, line: 98, type: !3096, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!90, !91, !91}
!3098 = !{!3099, !3100}
!3099 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !712, line: 98, type: !91)
!3100 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !712, line: 98, type: !91)
!3101 = !DILocation(line: 0, scope: !3095)
!3102 = !DILocation(line: 0, scope: !2955, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 100, column: 10, scope: !3095)
!3104 = !DILocation(line: 85, column: 25, scope: !2955, inlinedAt: !3103)
!3105 = !DILocation(line: 0, scope: !2963, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 85, column: 10, scope: !2955, inlinedAt: !3103)
!3107 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3106)
!3108 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3106)
!3109 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3106)
!3110 = !DILocation(line: 100, column: 3, scope: !3095)
!3111 = distinct !DISubprogram(name: "xinmalloc", scope: !712, file: !712, line: 104, type: !3112, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!90, !134, !134}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "n", arg: 1, scope: !3111, file: !712, line: 104, type: !134)
!3116 = !DILocalVariable(name: "s", arg: 2, scope: !3111, file: !712, line: 104, type: !134)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 0, scope: !3073, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 106, column: 10, scope: !3111)
!3120 = !DILocation(line: 0, scope: !3082, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 91, column: 25, scope: !3073, inlinedAt: !3119)
!3122 = !DILocation(line: 101, column: 13, scope: !3082, inlinedAt: !3121)
!3123 = !DILocation(line: 0, scope: !2963, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 91, column: 10, scope: !3073, inlinedAt: !3119)
!3125 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3124)
!3126 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3124)
!3127 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3124)
!3128 = !DILocation(line: 106, column: 3, scope: !3111)
!3129 = distinct !DISubprogram(name: "x2realloc", scope: !712, file: !712, line: 116, type: !3130, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!90, !90, !718}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "p", arg: 1, scope: !3129, file: !712, line: 116, type: !90)
!3134 = !DILocalVariable(name: "ps", arg: 2, scope: !3129, file: !712, line: 116, type: !718)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 0, scope: !715, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 118, column: 10, scope: !3129)
!3138 = !DILocation(line: 178, column: 14, scope: !715, inlinedAt: !3137)
!3139 = !DILocation(line: 180, column: 9, scope: !3140, inlinedAt: !3137)
!3140 = distinct !DILexicalBlock(scope: !715, file: !712, line: 180, column: 7)
!3141 = !DILocation(line: 180, column: 7, scope: !715, inlinedAt: !3137)
!3142 = !DILocation(line: 182, column: 13, scope: !3143, inlinedAt: !3137)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !712, line: 182, column: 11)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !712, line: 181, column: 5)
!3145 = !DILocation(line: 182, column: 11, scope: !3144, inlinedAt: !3137)
!3146 = !DILocation(line: 197, column: 11, scope: !3147, inlinedAt: !3137)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !712, line: 197, column: 11)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !712, line: 195, column: 5)
!3149 = !DILocation(line: 197, column: 11, scope: !3148, inlinedAt: !3137)
!3150 = !DILocation(line: 198, column: 9, scope: !3147, inlinedAt: !3137)
!3151 = !DILocation(line: 0, scope: !2955, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 201, column: 7, scope: !715, inlinedAt: !3137)
!3153 = !DILocation(line: 85, column: 25, scope: !2955, inlinedAt: !3152)
!3154 = !DILocation(line: 0, scope: !2963, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 85, column: 10, scope: !2955, inlinedAt: !3152)
!3156 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3155)
!3157 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3155)
!3158 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3155)
!3159 = !DILocation(line: 202, column: 7, scope: !715, inlinedAt: !3137)
!3160 = !DILocation(line: 118, column: 3, scope: !3129)
!3161 = !DILocation(line: 0, scope: !715)
!3162 = !DILocation(line: 178, column: 14, scope: !715)
!3163 = !DILocation(line: 180, column: 9, scope: !3140)
!3164 = !DILocation(line: 180, column: 7, scope: !715)
!3165 = !DILocation(line: 182, column: 13, scope: !3143)
!3166 = !DILocation(line: 182, column: 11, scope: !3144)
!3167 = !DILocation(line: 190, column: 30, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3143, file: !712, line: 183, column: 9)
!3169 = !DILocation(line: 191, column: 16, scope: !3168)
!3170 = !DILocation(line: 191, column: 13, scope: !3168)
!3171 = !DILocation(line: 192, column: 9, scope: !3168)
!3172 = !DILocation(line: 197, column: 11, scope: !3147)
!3173 = !DILocation(line: 197, column: 11, scope: !3148)
!3174 = !DILocation(line: 198, column: 9, scope: !3147)
!3175 = !DILocation(line: 0, scope: !2955, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 201, column: 7, scope: !715)
!3177 = !DILocation(line: 85, column: 25, scope: !2955, inlinedAt: !3176)
!3178 = !DILocation(line: 0, scope: !2963, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 85, column: 10, scope: !2955, inlinedAt: !3176)
!3180 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3179)
!3181 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3179)
!3182 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3179)
!3183 = !DILocation(line: 202, column: 7, scope: !715)
!3184 = !DILocation(line: 203, column: 3, scope: !715)
!3185 = !DILocation(line: 0, scope: !727)
!3186 = !DILocation(line: 230, column: 14, scope: !727)
!3187 = !DILocation(line: 238, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !727, file: !712, line: 238, column: 7)
!3189 = !DILocation(line: 238, column: 7, scope: !727)
!3190 = !DILocation(line: 240, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !727, file: !712, line: 240, column: 7)
!3192 = !DILocation(line: 240, column: 18, scope: !3191)
!3193 = !DILocation(line: 253, column: 8, scope: !727)
!3194 = !DILocation(line: 258, column: 27, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !712, line: 257, column: 5)
!3196 = distinct !DILexicalBlock(scope: !727, file: !712, line: 256, column: 7)
!3197 = !DILocation(line: 259, column: 50, scope: !3195)
!3198 = !DILocation(line: 259, column: 32, scope: !3195)
!3199 = !DILocation(line: 260, column: 5, scope: !3195)
!3200 = !DILocation(line: 262, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !727, file: !712, line: 262, column: 7)
!3202 = !DILocation(line: 262, column: 7, scope: !727)
!3203 = !DILocation(line: 263, column: 9, scope: !3201)
!3204 = !DILocation(line: 263, column: 5, scope: !3201)
!3205 = !DILocation(line: 264, column: 9, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !727, file: !712, line: 264, column: 7)
!3207 = !DILocation(line: 264, column: 14, scope: !3206)
!3208 = !DILocation(line: 265, column: 7, scope: !3206)
!3209 = !DILocation(line: 265, column: 11, scope: !3206)
!3210 = !DILocation(line: 266, column: 11, scope: !3206)
!3211 = !DILocation(line: 267, column: 14, scope: !3206)
!3212 = !DILocation(line: 264, column: 7, scope: !727)
!3213 = !DILocation(line: 268, column: 5, scope: !3206)
!3214 = !DILocation(line: 0, scope: !3027, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 269, column: 8, scope: !727)
!3216 = !DILocation(line: 0, scope: !3035, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 70, column: 25, scope: !3027, inlinedAt: !3215)
!3218 = !DILocation(line: 2059, column: 24, scope: !3035, inlinedAt: !3217)
!3219 = !DILocation(line: 2059, column: 10, scope: !3035, inlinedAt: !3217)
!3220 = !DILocation(line: 0, scope: !2963, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 70, column: 10, scope: !3027, inlinedAt: !3215)
!3222 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3221)
!3223 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3221)
!3224 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3221)
!3225 = !DILocation(line: 270, column: 7, scope: !727)
!3226 = !DILocation(line: 271, column: 3, scope: !727)
!3227 = distinct !DISubprogram(name: "xzalloc", scope: !712, file: !712, line: 279, type: !1190, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3228)
!3228 = !{!3229}
!3229 = !DILocalVariable(name: "s", arg: 1, scope: !3227, file: !712, line: 279, type: !91)
!3230 = !DILocation(line: 0, scope: !3227)
!3231 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !712, line: 294, type: !91)
!3232 = distinct !DISubprogram(name: "xcalloc", scope: !712, file: !712, line: 294, type: !3096, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3233)
!3233 = !{!3231, !3234}
!3234 = !DILocalVariable(name: "s", arg: 2, scope: !3232, file: !712, line: 294, type: !91)
!3235 = !DILocation(line: 0, scope: !3232, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 281, column: 10, scope: !3227)
!3237 = !DILocation(line: 296, column: 25, scope: !3232, inlinedAt: !3236)
!3238 = !DILocation(line: 0, scope: !2963, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 296, column: 10, scope: !3232, inlinedAt: !3236)
!3240 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3239)
!3241 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3239)
!3242 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3239)
!3243 = !DILocation(line: 281, column: 3, scope: !3227)
!3244 = !DISubprogram(name: "calloc", scope: !971, file: !971, line: 543, type: !3096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3245 = !DILocation(line: 0, scope: !3232)
!3246 = !DILocation(line: 296, column: 25, scope: !3232)
!3247 = !DILocation(line: 0, scope: !2963, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 296, column: 10, scope: !3232)
!3249 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3248)
!3250 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3248)
!3251 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3248)
!3252 = !DILocation(line: 296, column: 3, scope: !3232)
!3253 = distinct !DISubprogram(name: "xizalloc", scope: !712, file: !712, line: 285, type: !2994, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3254)
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "s", arg: 1, scope: !3253, file: !712, line: 285, type: !134)
!3256 = !DILocation(line: 0, scope: !3253)
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3258, file: !712, line: 300, type: !134)
!3258 = distinct !DISubprogram(name: "xicalloc", scope: !712, file: !712, line: 300, type: !3112, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3259)
!3259 = !{!3257, !3260}
!3260 = !DILocalVariable(name: "s", arg: 2, scope: !3258, file: !712, line: 300, type: !134)
!3261 = !DILocation(line: 0, scope: !3258, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 287, column: 10, scope: !3253)
!3263 = !DILocalVariable(name: "n", arg: 1, scope: !3264, file: !3001, line: 77, type: !134)
!3264 = distinct !DISubprogram(name: "icalloc", scope: !3001, file: !3001, line: 77, type: !3112, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3265)
!3265 = !{!3263, !3266}
!3266 = !DILocalVariable(name: "s", arg: 2, scope: !3264, file: !3001, line: 77, type: !134)
!3267 = !DILocation(line: 0, scope: !3264, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 302, column: 25, scope: !3258, inlinedAt: !3262)
!3269 = !DILocation(line: 91, column: 10, scope: !3264, inlinedAt: !3268)
!3270 = !DILocation(line: 0, scope: !2963, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 302, column: 10, scope: !3258, inlinedAt: !3262)
!3272 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3271)
!3273 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3271)
!3274 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3271)
!3275 = !DILocation(line: 287, column: 3, scope: !3253)
!3276 = !DILocation(line: 0, scope: !3258)
!3277 = !DILocation(line: 0, scope: !3264, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 302, column: 25, scope: !3258)
!3279 = !DILocation(line: 91, column: 10, scope: !3264, inlinedAt: !3278)
!3280 = !DILocation(line: 0, scope: !2963, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 302, column: 10, scope: !3258)
!3282 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3281)
!3283 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3281)
!3284 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3281)
!3285 = !DILocation(line: 302, column: 3, scope: !3258)
!3286 = distinct !DISubprogram(name: "xmemdup", scope: !712, file: !712, line: 310, type: !3287, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!90, !995, !91}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3286, file: !712, line: 310, type: !995)
!3291 = !DILocalVariable(name: "s", arg: 2, scope: !3286, file: !712, line: 310, type: !91)
!3292 = !DILocation(line: 0, scope: !3286)
!3293 = !DILocation(line: 0, scope: !2982, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 312, column: 18, scope: !3286)
!3295 = !DILocation(line: 49, column: 25, scope: !2982, inlinedAt: !3294)
!3296 = !DILocation(line: 0, scope: !2963, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 49, column: 10, scope: !2982, inlinedAt: !3294)
!3298 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3297)
!3299 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3297)
!3300 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3297)
!3301 = !DILocalVariable(name: "__dest", arg: 1, scope: !3302, file: !1171, line: 26, type: !1174)
!3302 = distinct !DISubprogram(name: "memcpy", scope: !1171, file: !1171, line: 26, type: !1172, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3303)
!3303 = !{!3301, !3304, !3305}
!3304 = !DILocalVariable(name: "__src", arg: 2, scope: !3302, file: !1171, line: 26, type: !994)
!3305 = !DILocalVariable(name: "__len", arg: 3, scope: !3302, file: !1171, line: 26, type: !91)
!3306 = !DILocation(line: 0, scope: !3302, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 312, column: 10, scope: !3286)
!3308 = !DILocation(line: 29, column: 10, scope: !3302, inlinedAt: !3307)
!3309 = !DILocation(line: 312, column: 3, scope: !3286)
!3310 = distinct !DISubprogram(name: "ximemdup", scope: !712, file: !712, line: 316, type: !3311, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!90, !995, !134}
!3313 = !{!3314, !3315}
!3314 = !DILocalVariable(name: "p", arg: 1, scope: !3310, file: !712, line: 316, type: !995)
!3315 = !DILocalVariable(name: "s", arg: 2, scope: !3310, file: !712, line: 316, type: !134)
!3316 = !DILocation(line: 0, scope: !3310)
!3317 = !DILocation(line: 0, scope: !2993, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 318, column: 18, scope: !3310)
!3319 = !DILocation(line: 0, scope: !3000, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 55, column: 25, scope: !2993, inlinedAt: !3318)
!3321 = !DILocation(line: 57, column: 26, scope: !3000, inlinedAt: !3320)
!3322 = !DILocation(line: 0, scope: !2963, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 55, column: 10, scope: !2993, inlinedAt: !3318)
!3324 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3323)
!3325 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3323)
!3326 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3323)
!3327 = !DILocation(line: 0, scope: !3302, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 318, column: 10, scope: !3310)
!3329 = !DILocation(line: 29, column: 10, scope: !3302, inlinedAt: !3328)
!3330 = !DILocation(line: 318, column: 3, scope: !3310)
!3331 = distinct !DISubprogram(name: "ximemdup0", scope: !712, file: !712, line: 325, type: !3332, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!89, !995, !134}
!3334 = !{!3335, !3336, !3337}
!3335 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !712, line: 325, type: !995)
!3336 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !712, line: 325, type: !134)
!3337 = !DILocalVariable(name: "result", scope: !3331, file: !712, line: 327, type: !89)
!3338 = !DILocation(line: 0, scope: !3331)
!3339 = !DILocation(line: 327, column: 30, scope: !3331)
!3340 = !DILocation(line: 0, scope: !2993, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 327, column: 18, scope: !3331)
!3342 = !DILocation(line: 0, scope: !3000, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 55, column: 25, scope: !2993, inlinedAt: !3341)
!3344 = !DILocation(line: 57, column: 26, scope: !3000, inlinedAt: !3343)
!3345 = !DILocation(line: 0, scope: !2963, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 55, column: 10, scope: !2993, inlinedAt: !3341)
!3347 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3346)
!3348 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3346)
!3349 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3346)
!3350 = !DILocation(line: 328, column: 3, scope: !3331)
!3351 = !DILocation(line: 328, column: 13, scope: !3331)
!3352 = !DILocation(line: 0, scope: !3302, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 329, column: 10, scope: !3331)
!3354 = !DILocation(line: 29, column: 10, scope: !3302, inlinedAt: !3353)
!3355 = !DILocation(line: 329, column: 3, scope: !3331)
!3356 = distinct !DISubprogram(name: "xstrdup", scope: !712, file: !712, line: 335, type: !973, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3357)
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "string", arg: 1, scope: !3356, file: !712, line: 335, type: !94)
!3359 = !DILocation(line: 0, scope: !3356)
!3360 = !DILocation(line: 337, column: 27, scope: !3356)
!3361 = !DILocation(line: 337, column: 43, scope: !3356)
!3362 = !DILocation(line: 0, scope: !3286, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 337, column: 10, scope: !3356)
!3364 = !DILocation(line: 0, scope: !2982, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 312, column: 18, scope: !3286, inlinedAt: !3363)
!3366 = !DILocation(line: 49, column: 25, scope: !2982, inlinedAt: !3365)
!3367 = !DILocation(line: 0, scope: !2963, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 49, column: 10, scope: !2982, inlinedAt: !3365)
!3369 = !DILocation(line: 39, column: 8, scope: !2970, inlinedAt: !3368)
!3370 = !DILocation(line: 39, column: 7, scope: !2963, inlinedAt: !3368)
!3371 = !DILocation(line: 40, column: 5, scope: !2970, inlinedAt: !3368)
!3372 = !DILocation(line: 0, scope: !3302, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 312, column: 10, scope: !3286, inlinedAt: !3363)
!3374 = !DILocation(line: 29, column: 10, scope: !3302, inlinedAt: !3373)
!3375 = !DILocation(line: 337, column: 3, scope: !3356)
!3376 = distinct !DISubprogram(name: "xalloc_die", scope: !674, file: !674, line: 32, type: !423, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3377)
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "__errstatus", scope: !3379, file: !674, line: 34, type: !3380)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !674, line: 34, column: 3)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3381 = !DILocation(line: 34, column: 3, scope: !3379)
!3382 = !DILocation(line: 0, scope: !3379)
!3383 = !DILocation(line: 40, column: 3, scope: !3376)
!3384 = distinct !DISubprogram(name: "last_component", scope: !745, file: !745, line: 29, type: !973, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3385)
!3385 = !{!3386, !3387, !3388, !3389}
!3386 = !DILocalVariable(name: "name", arg: 1, scope: !3384, file: !745, line: 29, type: !94)
!3387 = !DILocalVariable(name: "base", scope: !3384, file: !745, line: 31, type: !94)
!3388 = !DILocalVariable(name: "last_was_slash", scope: !3384, file: !745, line: 35, type: !126)
!3389 = !DILocalVariable(name: "p", scope: !3390, file: !745, line: 36, type: !94)
!3390 = distinct !DILexicalBlock(scope: !3384, file: !745, line: 36, column: 3)
!3391 = !DILocation(line: 0, scope: !3384)
!3392 = !DILocation(line: 32, column: 3, scope: !3384)
!3393 = !DILocation(line: 32, column: 10, scope: !3384)
!3394 = !DILocation(line: 33, column: 9, scope: !3384)
!3395 = distinct !{!3395, !3392, !3394, !893}
!3396 = !DILocation(line: 36, column: 30, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3390, file: !745, line: 36, column: 3)
!3398 = !DILocation(line: 31, column: 15, scope: !3384)
!3399 = !DILocation(line: 36, scope: !3390)
!3400 = !DILocation(line: 0, scope: !3390)
!3401 = !DILocation(line: 36, column: 3, scope: !3390)
!3402 = !DILocation(line: 47, column: 3, scope: !3384)
!3403 = !DILocation(line: 40, column: 16, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !745, line: 40, column: 16)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !745, line: 38, column: 11)
!3406 = distinct !DILexicalBlock(scope: !3397, file: !745, line: 37, column: 5)
!3407 = !DILocation(line: 40, column: 16, scope: !3405)
!3408 = !DILocation(line: 36, column: 35, scope: !3397)
!3409 = !DILocation(line: 36, column: 3, scope: !3397)
!3410 = distinct !{!3410, !3401, !3411, !893}
!3411 = !DILocation(line: 45, column: 5, scope: !3390)
!3412 = distinct !DISubprogram(name: "base_len", scope: !745, file: !745, line: 51, type: !1119, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DILocalVariable(name: "name", arg: 1, scope: !3412, file: !745, line: 51, type: !94)
!3415 = !DILocalVariable(name: "len", scope: !3412, file: !745, line: 53, type: !91)
!3416 = !DILocalVariable(name: "prefix_len", scope: !3412, file: !745, line: 61, type: !91)
!3417 = !DILocation(line: 0, scope: !3412)
!3418 = !DILocation(line: 54, column: 14, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3412, file: !745, line: 54, column: 3)
!3420 = !DILocation(line: 54, column: 8, scope: !3419)
!3421 = !DILocation(line: 54, scope: !3419)
!3422 = !DILocation(line: 54, column: 32, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3419, file: !745, line: 54, column: 3)
!3424 = !DILocation(line: 54, column: 38, scope: !3423)
!3425 = !DILocation(line: 54, column: 41, scope: !3423)
!3426 = !DILocation(line: 54, column: 3, scope: !3419)
!3427 = distinct !{!3427, !3426, !3428, !893}
!3428 = !DILocation(line: 55, column: 5, scope: !3419)
!3429 = !DILocation(line: 66, column: 3, scope: !3412)
!3430 = distinct !DISubprogram(name: "close_stream", scope: !747, file: !747, line: 55, type: !3431, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3467)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!68, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3435, file: !145, line: 51, baseType: !68, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3435, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3435, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3435, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3435, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3435, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3435, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3435, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3435, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3435, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3435, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3435, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3435, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3435, file: !145, line: 70, baseType: !3451, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3435, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3435, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3435, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3435, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3435, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3435, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3435, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3435, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3435, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3435, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3435, file: !145, line: 93, baseType: !3451, size: 64, offset: 1344)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3435, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3435, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3435, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3435, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3467 = !{!3468, !3469, !3471, !3472}
!3468 = !DILocalVariable(name: "stream", arg: 1, scope: !3430, file: !747, line: 55, type: !3433)
!3469 = !DILocalVariable(name: "some_pending", scope: !3430, file: !747, line: 57, type: !3470)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3471 = !DILocalVariable(name: "prev_fail", scope: !3430, file: !747, line: 58, type: !3470)
!3472 = !DILocalVariable(name: "fclose_fail", scope: !3430, file: !747, line: 59, type: !3470)
!3473 = !DILocation(line: 0, scope: !3430)
!3474 = !DILocation(line: 57, column: 30, scope: !3430)
!3475 = !DILocalVariable(name: "__stream", arg: 1, scope: !3476, file: !1030, line: 135, type: !3433)
!3476 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1030, file: !1030, line: 135, type: !3431, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3477)
!3477 = !{!3475}
!3478 = !DILocation(line: 0, scope: !3476, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 58, column: 27, scope: !3430)
!3480 = !DILocation(line: 137, column: 10, scope: !3476, inlinedAt: !3479)
!3481 = !{!1038, !847, i64 0}
!3482 = !DILocation(line: 58, column: 43, scope: !3430)
!3483 = !DILocation(line: 59, column: 29, scope: !3430)
!3484 = !DILocation(line: 59, column: 45, scope: !3430)
!3485 = !DILocation(line: 69, column: 17, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3430, file: !747, line: 69, column: 7)
!3487 = !DILocation(line: 57, column: 50, scope: !3430)
!3488 = !DILocation(line: 69, column: 33, scope: !3486)
!3489 = !DILocation(line: 69, column: 53, scope: !3486)
!3490 = !DILocation(line: 69, column: 59, scope: !3486)
!3491 = !DILocation(line: 69, column: 7, scope: !3430)
!3492 = !DILocation(line: 71, column: 11, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3486, file: !747, line: 70, column: 5)
!3494 = !DILocation(line: 72, column: 9, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3493, file: !747, line: 71, column: 11)
!3496 = !DILocation(line: 72, column: 15, scope: !3495)
!3497 = !DILocation(line: 77, column: 1, scope: !3430)
!3498 = !DISubprogram(name: "__fpending", scope: !3499, file: !3499, line: 75, type: !3500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3499 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!91, !3433}
!3502 = distinct !DISubprogram(name: "rpl_fclose", scope: !749, file: !749, line: 58, type: !3503, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3539)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!68, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3507, file: !145, line: 51, baseType: !68, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3507, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3507, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3507, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3507, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3507, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3507, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3507, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3507, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3507, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3507, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3507, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3507, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3507, file: !145, line: 70, baseType: !3523, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3507, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3507, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3507, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3507, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3507, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3507, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3507, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3507, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3507, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3507, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3507, file: !145, line: 93, baseType: !3523, size: 64, offset: 1344)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3507, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3507, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3507, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3507, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DILocalVariable(name: "fp", arg: 1, scope: !3502, file: !749, line: 58, type: !3505)
!3541 = !DILocalVariable(name: "saved_errno", scope: !3502, file: !749, line: 60, type: !68)
!3542 = !DILocalVariable(name: "fd", scope: !3502, file: !749, line: 63, type: !68)
!3543 = !DILocalVariable(name: "result", scope: !3502, file: !749, line: 74, type: !68)
!3544 = !DILocation(line: 0, scope: !3502)
!3545 = !DILocation(line: 63, column: 12, scope: !3502)
!3546 = !DILocation(line: 64, column: 10, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3502, file: !749, line: 64, column: 7)
!3548 = !DILocation(line: 64, column: 7, scope: !3502)
!3549 = !DILocation(line: 65, column: 12, scope: !3547)
!3550 = !DILocation(line: 65, column: 5, scope: !3547)
!3551 = !DILocation(line: 70, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3502, file: !749, line: 70, column: 7)
!3553 = !DILocation(line: 70, column: 23, scope: !3552)
!3554 = !DILocation(line: 70, column: 33, scope: !3552)
!3555 = !DILocation(line: 70, column: 26, scope: !3552)
!3556 = !DILocation(line: 70, column: 59, scope: !3552)
!3557 = !DILocation(line: 71, column: 7, scope: !3552)
!3558 = !DILocation(line: 71, column: 10, scope: !3552)
!3559 = !DILocation(line: 70, column: 7, scope: !3502)
!3560 = !DILocation(line: 100, column: 12, scope: !3502)
!3561 = !DILocation(line: 105, column: 7, scope: !3502)
!3562 = !DILocation(line: 72, column: 19, scope: !3552)
!3563 = !DILocation(line: 105, column: 19, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3502, file: !749, line: 105, column: 7)
!3565 = !DILocation(line: 107, column: 13, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !749, line: 106, column: 5)
!3567 = !DILocation(line: 109, column: 5, scope: !3566)
!3568 = !DILocation(line: 112, column: 1, scope: !3502)
!3569 = !DISubprogram(name: "fileno", scope: !841, file: !841, line: 809, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3570 = !DISubprogram(name: "fclose", scope: !841, file: !841, line: 178, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3571 = !DISubprogram(name: "__freading", scope: !3499, file: !3499, line: 51, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3572 = !DISubprogram(name: "lseek", scope: !1117, file: !1117, line: 339, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!167, !68, !167, !68}
!3575 = distinct !DISubprogram(name: "rpl_fflush", scope: !751, file: !751, line: 130, type: !3576, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3612)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!68, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3580, file: !145, line: 51, baseType: !68, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3580, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3580, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3580, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3580, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3580, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3580, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3580, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3580, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3580, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3580, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3580, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3580, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3580, file: !145, line: 70, baseType: !3596, size: 64, offset: 832)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3580, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3580, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3580, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3580, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3580, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3580, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3580, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3580, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3580, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3580, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3580, file: !145, line: 93, baseType: !3596, size: 64, offset: 1344)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3580, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3580, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3580, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3580, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "stream", arg: 1, scope: !3575, file: !751, line: 130, type: !3578)
!3614 = !DILocation(line: 0, scope: !3575)
!3615 = !DILocation(line: 151, column: 14, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3575, file: !751, line: 151, column: 7)
!3617 = !DILocation(line: 151, column: 22, scope: !3616)
!3618 = !DILocation(line: 151, column: 27, scope: !3616)
!3619 = !DILocation(line: 151, column: 7, scope: !3575)
!3620 = !DILocation(line: 152, column: 12, scope: !3616)
!3621 = !DILocation(line: 152, column: 5, scope: !3616)
!3622 = !DILocalVariable(name: "fp", arg: 1, scope: !3623, file: !751, line: 42, type: !3578)
!3623 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !751, file: !751, line: 42, type: !3624, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !3578}
!3626 = !{!3622}
!3627 = !DILocation(line: 0, scope: !3623, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 157, column: 3, scope: !3575)
!3629 = !DILocation(line: 44, column: 12, scope: !3630, inlinedAt: !3628)
!3630 = distinct !DILexicalBlock(scope: !3623, file: !751, line: 44, column: 7)
!3631 = !DILocation(line: 44, column: 19, scope: !3630, inlinedAt: !3628)
!3632 = !DILocation(line: 44, column: 7, scope: !3623, inlinedAt: !3628)
!3633 = !DILocation(line: 46, column: 5, scope: !3630, inlinedAt: !3628)
!3634 = !DILocation(line: 159, column: 10, scope: !3575)
!3635 = !DILocation(line: 159, column: 3, scope: !3575)
!3636 = !DILocation(line: 236, column: 1, scope: !3575)
!3637 = !DISubprogram(name: "fflush", scope: !841, file: !841, line: 230, type: !3576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3638 = distinct !DISubprogram(name: "rpl_fseeko", scope: !753, file: !753, line: 28, type: !3639, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3676)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!68, !3641, !3675, !68}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3643, file: !145, line: 51, baseType: !68, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3643, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3643, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3643, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3643, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3643, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3643, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3643, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3643, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3643, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3643, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3643, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3643, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3643, file: !145, line: 70, baseType: !3659, size: 64, offset: 832)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3643, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3643, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3643, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3643, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3643, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3643, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3643, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3643, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3643, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3643, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3643, file: !145, line: 93, baseType: !3659, size: 64, offset: 1344)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3643, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3643, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3643, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3643, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !841, line: 63, baseType: !167)
!3676 = !{!3677, !3678, !3679, !3680}
!3677 = !DILocalVariable(name: "fp", arg: 1, scope: !3638, file: !753, line: 28, type: !3641)
!3678 = !DILocalVariable(name: "offset", arg: 2, scope: !3638, file: !753, line: 28, type: !3675)
!3679 = !DILocalVariable(name: "whence", arg: 3, scope: !3638, file: !753, line: 28, type: !68)
!3680 = !DILocalVariable(name: "pos", scope: !3681, file: !753, line: 123, type: !3675)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !753, line: 119, column: 5)
!3682 = distinct !DILexicalBlock(scope: !3638, file: !753, line: 55, column: 7)
!3683 = !DILocation(line: 0, scope: !3638)
!3684 = !DILocation(line: 55, column: 12, scope: !3682)
!3685 = !{!1038, !784, i64 16}
!3686 = !DILocation(line: 55, column: 33, scope: !3682)
!3687 = !{!1038, !784, i64 8}
!3688 = !DILocation(line: 55, column: 25, scope: !3682)
!3689 = !DILocation(line: 56, column: 7, scope: !3682)
!3690 = !DILocation(line: 56, column: 15, scope: !3682)
!3691 = !DILocation(line: 56, column: 37, scope: !3682)
!3692 = !{!1038, !784, i64 32}
!3693 = !DILocation(line: 56, column: 29, scope: !3682)
!3694 = !DILocation(line: 57, column: 7, scope: !3682)
!3695 = !DILocation(line: 57, column: 15, scope: !3682)
!3696 = !{!1038, !784, i64 72}
!3697 = !DILocation(line: 57, column: 29, scope: !3682)
!3698 = !DILocation(line: 55, column: 7, scope: !3638)
!3699 = !DILocation(line: 123, column: 26, scope: !3681)
!3700 = !DILocation(line: 123, column: 19, scope: !3681)
!3701 = !DILocation(line: 0, scope: !3681)
!3702 = !DILocation(line: 124, column: 15, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3681, file: !753, line: 124, column: 11)
!3704 = !DILocation(line: 124, column: 11, scope: !3681)
!3705 = !DILocation(line: 135, column: 19, scope: !3681)
!3706 = !DILocation(line: 136, column: 12, scope: !3681)
!3707 = !DILocation(line: 136, column: 20, scope: !3681)
!3708 = !{!1038, !1039, i64 144}
!3709 = !DILocation(line: 167, column: 7, scope: !3681)
!3710 = !DILocation(line: 169, column: 10, scope: !3638)
!3711 = !DILocation(line: 169, column: 3, scope: !3638)
!3712 = !DILocation(line: 170, column: 1, scope: !3638)
!3713 = !DISubprogram(name: "fseeko", scope: !841, file: !841, line: 736, type: !3714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!68, !3641, !167, !68}
!3716 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !681, file: !681, line: 100, type: !3717, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3720)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!91, !1475, !94, !91, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3720 = !{!3721, !3722, !3723, !3724, !3725}
!3721 = !DILocalVariable(name: "pwc", arg: 1, scope: !3716, file: !681, line: 100, type: !1475)
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3716, file: !681, line: 100, type: !94)
!3723 = !DILocalVariable(name: "n", arg: 3, scope: !3716, file: !681, line: 100, type: !91)
!3724 = !DILocalVariable(name: "ps", arg: 4, scope: !3716, file: !681, line: 100, type: !3719)
!3725 = !DILocalVariable(name: "ret", scope: !3716, file: !681, line: 130, type: !91)
!3726 = !DILocation(line: 0, scope: !3716)
!3727 = !DILocation(line: 105, column: 9, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3716, file: !681, line: 105, column: 7)
!3729 = !DILocation(line: 105, column: 7, scope: !3716)
!3730 = !DILocation(line: 117, column: 10, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3716, file: !681, line: 117, column: 7)
!3732 = !DILocation(line: 117, column: 7, scope: !3716)
!3733 = !DILocation(line: 130, column: 16, scope: !3716)
!3734 = !DILocation(line: 135, column: 11, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3716, file: !681, line: 135, column: 7)
!3736 = !DILocation(line: 135, column: 25, scope: !3735)
!3737 = !DILocation(line: 135, column: 30, scope: !3735)
!3738 = !DILocation(line: 135, column: 7, scope: !3716)
!3739 = !DILocalVariable(name: "ps", arg: 1, scope: !3740, file: !1449, line: 1135, type: !3719)
!3740 = distinct !DISubprogram(name: "mbszero", scope: !1449, file: !1449, line: 1135, type: !3741, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3719}
!3743 = !{!3739}
!3744 = !DILocation(line: 0, scope: !3740, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 137, column: 5, scope: !3735)
!3746 = !DILocalVariable(name: "__dest", arg: 1, scope: !3747, file: !1171, line: 57, type: !90)
!3747 = distinct !DISubprogram(name: "memset", scope: !1171, file: !1171, line: 57, type: !1458, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3748)
!3748 = !{!3746, !3749, !3750}
!3749 = !DILocalVariable(name: "__ch", arg: 2, scope: !3747, file: !1171, line: 57, type: !68)
!3750 = !DILocalVariable(name: "__len", arg: 3, scope: !3747, file: !1171, line: 57, type: !91)
!3751 = !DILocation(line: 0, scope: !3747, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1137, column: 3, scope: !3740, inlinedAt: !3745)
!3753 = !DILocation(line: 59, column: 10, scope: !3747, inlinedAt: !3752)
!3754 = !DILocation(line: 137, column: 5, scope: !3735)
!3755 = !DILocation(line: 138, column: 11, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3716, file: !681, line: 138, column: 7)
!3757 = !DILocation(line: 138, column: 7, scope: !3716)
!3758 = !DILocation(line: 139, column: 5, scope: !3756)
!3759 = !DILocation(line: 143, column: 26, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3716, file: !681, line: 143, column: 7)
!3761 = !DILocation(line: 143, column: 41, scope: !3760)
!3762 = !DILocation(line: 143, column: 7, scope: !3716)
!3763 = !DILocation(line: 145, column: 15, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !681, line: 145, column: 11)
!3765 = distinct !DILexicalBlock(scope: !3760, file: !681, line: 144, column: 5)
!3766 = !DILocation(line: 145, column: 11, scope: !3765)
!3767 = !DILocation(line: 146, column: 32, scope: !3764)
!3768 = !DILocation(line: 146, column: 16, scope: !3764)
!3769 = !DILocation(line: 146, column: 14, scope: !3764)
!3770 = !DILocation(line: 146, column: 9, scope: !3764)
!3771 = !DILocation(line: 286, column: 1, scope: !3716)
!3772 = !DISubprogram(name: "mbsinit", scope: !3773, file: !3773, line: 293, type: !3774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!3773 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!68, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!3778 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !755, file: !755, line: 27, type: !2947, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3779)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DILocalVariable(name: "ptr", arg: 1, scope: !3778, file: !755, line: 27, type: !90)
!3781 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3778, file: !755, line: 27, type: !91)
!3782 = !DILocalVariable(name: "size", arg: 3, scope: !3778, file: !755, line: 27, type: !91)
!3783 = !DILocalVariable(name: "nbytes", scope: !3778, file: !755, line: 29, type: !91)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 30, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3778, file: !755, line: 30, column: 7)
!3787 = !DILocalVariable(name: "ptr", arg: 1, scope: !3788, file: !3036, line: 2057, type: !90)
!3788 = distinct !DISubprogram(name: "rpl_realloc", scope: !3036, file: !3036, line: 2057, type: !3028, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3789)
!3789 = !{!3787, !3790}
!3790 = !DILocalVariable(name: "size", arg: 2, scope: !3788, file: !3036, line: 2057, type: !91)
!3791 = !DILocation(line: 0, scope: !3788, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 37, column: 10, scope: !3778)
!3793 = !DILocation(line: 2059, column: 24, scope: !3788, inlinedAt: !3792)
!3794 = !DILocation(line: 2059, column: 10, scope: !3788, inlinedAt: !3792)
!3795 = !DILocation(line: 37, column: 3, scope: !3778)
!3796 = !DILocation(line: 32, column: 7, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3786, file: !755, line: 31, column: 5)
!3798 = !DILocation(line: 32, column: 13, scope: !3797)
!3799 = !DILocation(line: 33, column: 7, scope: !3797)
!3800 = !DILocation(line: 38, column: 1, scope: !3778)
!3801 = distinct !DISubprogram(name: "hard_locale", scope: !699, file: !699, line: 28, type: !3802, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!126, !68}
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "category", arg: 1, scope: !3801, file: !699, line: 28, type: !68)
!3806 = !DILocalVariable(name: "locale", scope: !3801, file: !699, line: 30, type: !3807)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3808)
!3808 = !{!3809}
!3809 = !DISubrange(count: 257)
!3810 = !DILocation(line: 0, scope: !3801)
!3811 = !DILocation(line: 30, column: 3, scope: !3801)
!3812 = !DILocation(line: 30, column: 8, scope: !3801)
!3813 = !DILocation(line: 32, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3801, file: !699, line: 32, column: 7)
!3815 = !DILocation(line: 32, column: 7, scope: !3801)
!3816 = !DILocalVariable(name: "__s1", arg: 1, scope: !3817, file: !859, line: 1359, type: !94)
!3817 = distinct !DISubprogram(name: "streq", scope: !859, file: !859, line: 1359, type: !860, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3818)
!3818 = !{!3816, !3819}
!3819 = !DILocalVariable(name: "__s2", arg: 2, scope: !3817, file: !859, line: 1359, type: !94)
!3820 = !DILocation(line: 0, scope: !3817, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 35, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3801, file: !699, line: 35, column: 7)
!3823 = !DILocation(line: 1361, column: 11, scope: !3817, inlinedAt: !3821)
!3824 = !DILocation(line: 35, column: 29, scope: !3822)
!3825 = !DILocation(line: 0, scope: !3817, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 35, column: 32, scope: !3822)
!3827 = !DILocation(line: 1361, column: 11, scope: !3817, inlinedAt: !3826)
!3828 = !DILocation(line: 1361, column: 10, scope: !3817, inlinedAt: !3826)
!3829 = !DILocation(line: 35, column: 7, scope: !3801)
!3830 = !DILocation(line: 46, column: 3, scope: !3801)
!3831 = !DILocation(line: 47, column: 1, scope: !3801)
!3832 = distinct !DISubprogram(name: "setlocale_null_r", scope: !762, file: !762, line: 154, type: !3833, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!68, !68, !89, !91}
!3835 = !{!3836, !3837, !3838}
!3836 = !DILocalVariable(name: "category", arg: 1, scope: !3832, file: !762, line: 154, type: !68)
!3837 = !DILocalVariable(name: "buf", arg: 2, scope: !3832, file: !762, line: 154, type: !89)
!3838 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3832, file: !762, line: 154, type: !91)
!3839 = !DILocation(line: 0, scope: !3832)
!3840 = !DILocation(line: 159, column: 10, scope: !3832)
!3841 = !DILocation(line: 159, column: 3, scope: !3832)
!3842 = distinct !DISubprogram(name: "setlocale_null", scope: !762, file: !762, line: 186, type: !3843, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!94, !68}
!3845 = !{!3846}
!3846 = !DILocalVariable(name: "category", arg: 1, scope: !3842, file: !762, line: 186, type: !68)
!3847 = !DILocation(line: 0, scope: !3842)
!3848 = !DILocation(line: 189, column: 10, scope: !3842)
!3849 = !DILocation(line: 189, column: 3, scope: !3842)
!3850 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !764, file: !764, line: 35, type: !3843, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3851)
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "category", arg: 1, scope: !3850, file: !764, line: 35, type: !68)
!3853 = !DILocalVariable(name: "result", scope: !3850, file: !764, line: 37, type: !94)
!3854 = !DILocation(line: 0, scope: !3850)
!3855 = !DILocation(line: 37, column: 24, scope: !3850)
!3856 = !DILocation(line: 62, column: 3, scope: !3850)
!3857 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !764, file: !764, line: 66, type: !3833, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863}
!3859 = !DILocalVariable(name: "category", arg: 1, scope: !3857, file: !764, line: 66, type: !68)
!3860 = !DILocalVariable(name: "buf", arg: 2, scope: !3857, file: !764, line: 66, type: !89)
!3861 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3857, file: !764, line: 66, type: !91)
!3862 = !DILocalVariable(name: "result", scope: !3857, file: !764, line: 111, type: !94)
!3863 = !DILocalVariable(name: "length", scope: !3864, file: !764, line: 125, type: !91)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !764, line: 124, column: 5)
!3865 = distinct !DILexicalBlock(scope: !3857, file: !764, line: 113, column: 7)
!3866 = !DILocation(line: 0, scope: !3857)
!3867 = !DILocation(line: 0, scope: !3850, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 111, column: 24, scope: !3857)
!3869 = !DILocation(line: 37, column: 24, scope: !3850, inlinedAt: !3868)
!3870 = !DILocation(line: 113, column: 14, scope: !3865)
!3871 = !DILocation(line: 113, column: 7, scope: !3857)
!3872 = !DILocation(line: 116, column: 19, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !764, line: 116, column: 11)
!3874 = distinct !DILexicalBlock(scope: !3865, file: !764, line: 114, column: 5)
!3875 = !DILocation(line: 116, column: 11, scope: !3874)
!3876 = !DILocation(line: 120, column: 16, scope: !3873)
!3877 = !DILocation(line: 120, column: 9, scope: !3873)
!3878 = !DILocation(line: 125, column: 23, scope: !3864)
!3879 = !DILocation(line: 0, scope: !3864)
!3880 = !DILocation(line: 126, column: 18, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3864, file: !764, line: 126, column: 11)
!3882 = !DILocation(line: 126, column: 11, scope: !3864)
!3883 = !DILocation(line: 128, column: 39, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3881, file: !764, line: 127, column: 9)
!3885 = !DILocalVariable(name: "__dest", arg: 1, scope: !3886, file: !1171, line: 26, type: !1174)
!3886 = distinct !DISubprogram(name: "memcpy", scope: !1171, file: !1171, line: 26, type: !1172, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3887)
!3887 = !{!3885, !3888, !3889}
!3888 = !DILocalVariable(name: "__src", arg: 2, scope: !3886, file: !1171, line: 26, type: !994)
!3889 = !DILocalVariable(name: "__len", arg: 3, scope: !3886, file: !1171, line: 26, type: !91)
!3890 = !DILocation(line: 0, scope: !3886, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 128, column: 11, scope: !3884)
!3892 = !DILocation(line: 29, column: 10, scope: !3886, inlinedAt: !3891)
!3893 = !DILocation(line: 129, column: 11, scope: !3884)
!3894 = !DILocation(line: 133, column: 23, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !764, line: 133, column: 15)
!3896 = distinct !DILexicalBlock(scope: !3881, file: !764, line: 132, column: 9)
!3897 = !DILocation(line: 133, column: 15, scope: !3896)
!3898 = !DILocation(line: 138, column: 44, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3895, file: !764, line: 134, column: 13)
!3900 = !DILocation(line: 0, scope: !3886, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 138, column: 15, scope: !3899)
!3902 = !DILocation(line: 29, column: 10, scope: !3886, inlinedAt: !3901)
!3903 = !DILocation(line: 139, column: 15, scope: !3899)
!3904 = !DILocation(line: 139, column: 32, scope: !3899)
!3905 = !DILocation(line: 140, column: 13, scope: !3899)
!3906 = !DILocation(line: 0, scope: !3865)
!3907 = !DILocation(line: 145, column: 1, scope: !3857)
