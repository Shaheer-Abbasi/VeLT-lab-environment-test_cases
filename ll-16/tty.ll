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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !397
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !362
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !387
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !389
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !391
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !393
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !395
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !399
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !401
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !406
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !411
@.str.44 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !417
@.str.1.45 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !419
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !421
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !452
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !455
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !457
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !462
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !464
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !466
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !468
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !470
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !472
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !474
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 8, !dbg !476
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !501
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !515
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !553
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !560
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !517
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !562
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !505
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !522
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !524
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !526
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !528
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !530
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !568
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !571
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !573
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !575
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !577
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !579
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !584
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !589
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !591
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !593
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !598
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !603
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !608
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !610
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !615
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !620
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !625
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !630
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !632
@.str.19.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !634
@.str.20.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !636
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !638
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !640
@.str.23.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !642
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !647
@exit_failure = dso_local global i32 1, align 4, !dbg !655
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !661
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !664
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !666
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !668
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !671
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !686
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !689

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !765, metadata !DIExpression()), !dbg !766
  %2 = icmp eq i32 %0, 0, !dbg !767
  br i1 %2, label %8, label %3, !dbg !769

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !770, !tbaa !772
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !770
  %6 = load ptr, ptr @program_name, align 8, !dbg !770, !tbaa !772
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !770
  br label %32, !dbg !770

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !776
  %10 = load ptr, ptr @program_name, align 8, !dbg !776, !tbaa !772
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !776
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !778
  %13 = load ptr, ptr @stdout, align 8, !dbg !778, !tbaa !772
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !778
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !779
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !779
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !780
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !780
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !781
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !781
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !782, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr poison, metadata !794, metadata !DIExpression()), !dbg !799
  tail call void @emit_bug_reporting_address() #36, !dbg !801
  %18 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !802
  call void @llvm.dbg.value(metadata ptr %18, metadata !797, metadata !DIExpression()), !dbg !799
  %19 = icmp eq ptr %18, null, !dbg !803
  br i1 %19, label %27, label %20, !dbg !805

20:                                               ; preds = %8
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #37, !dbg !806
  %22 = icmp eq i32 %21, 0, !dbg !806
  br i1 %22, label %27, label %23, !dbg !807

23:                                               ; preds = %20
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !808
  %25 = load ptr, ptr @stdout, align 8, !dbg !808, !tbaa !772
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !808
  br label %27, !dbg !810

27:                                               ; preds = %8, %20, %23
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !798, metadata !DIExpression()), !dbg !799
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !811
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #36, !dbg !811
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #36, !dbg !812
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #36, !dbg !812
  br label %32

32:                                               ; preds = %27, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !813
  unreachable, !dbg !813
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !814 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !819 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !825 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !828 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !124 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !128, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr %0, metadata !129, metadata !DIExpression()), !dbg !831
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !832, !tbaa !833
  %3 = icmp eq i32 %2, -1, !dbg !835
  br i1 %3, label %4, label %16, !dbg !836

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #36, !dbg !837
  call void @llvm.dbg.value(metadata ptr %5, metadata !130, metadata !DIExpression()), !dbg !838
  %6 = icmp eq ptr %5, null, !dbg !839
  br i1 %6, label %14, label %7, !dbg !840

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !841, !tbaa !842
  %9 = icmp eq i8 %8, 0, !dbg !841
  br i1 %9, label %14, label %10, !dbg !843

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !844, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !850, metadata !DIExpression()), !dbg !851
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #37, !dbg !853
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
  br label %122, !dbg !862

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !133, metadata !DIExpression()), !dbg !831
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #37, !dbg !863
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !864
  call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !831
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !865
  call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !831
  %26 = icmp eq ptr %25, null, !dbg !866
  br i1 %26, label %54, label %27, !dbg !867

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !868
  br i1 %28, label %54, label %29, !dbg !869

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !870
  %30 = icmp ult ptr %24, %25, !dbg !871
  br i1 %30, label %31, label %52, !dbg !872

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !831
  %33 = load ptr, ptr %32, align 8, !tbaa !772
  br label %34, !dbg !872

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !870
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !870
  %38 = load i8, ptr %35, align 1, !dbg !873, !tbaa !842
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !873
  %41 = load i16, ptr %40, align 2, !dbg !873, !tbaa !874
  %42 = freeze i16 %41, !dbg !876
  %43 = lshr i16 %42, 13, !dbg !876
  %44 = and i16 %43, 1, !dbg !876
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !877
  call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !870
  %47 = icmp ult ptr %37, %25, !dbg !871
  %48 = icmp ult i64 %46, 2, !dbg !878
  %49 = select i1 %47, i1 %48, i1 false, !dbg !878
  br i1 %49, label %34, label %50, !dbg !872, !llvm.loop !879

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !881
  br i1 %51, label %52, label %54, !dbg !883

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !883

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !831
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !133, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr %55, metadata !135, metadata !DIExpression()), !dbg !831
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.19) #37, !dbg !884
  call void @llvm.dbg.value(metadata i64 %57, metadata !141, metadata !DIExpression()), !dbg !831
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !885
  call void @llvm.dbg.value(metadata ptr %58, metadata !142, metadata !DIExpression()), !dbg !831
  br label %59, !dbg !886

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !831
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !133, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr %60, metadata !142, metadata !DIExpression()), !dbg !831
  %62 = load i8, ptr %60, align 1, !dbg !887, !tbaa !842
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !888

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !889
  %65 = load i8, ptr %64, align 1, !dbg !892, !tbaa !842
  %66 = icmp ne i8 %65, 45, !dbg !893
  %67 = select i1 %66, i1 %61, i1 false, !dbg !894
  br label %68, !dbg !894

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !133, metadata !DIExpression()), !dbg !831
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !895
  %71 = load ptr, ptr %70, align 8, !dbg !895, !tbaa !772
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !895
  %74 = load i16, ptr %73, align 2, !dbg !895, !tbaa !874
  %75 = and i16 %74, 8192, !dbg !895
  %76 = icmp eq i16 %75, 0, !dbg !895
  br i1 %76, label %90, label %77, !dbg !897

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !898
  br i1 %78, label %92, label %79, !dbg !901

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !902
  %81 = load i8, ptr %80, align 1, !dbg !902, !tbaa !842
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !902
  %84 = load i16, ptr %83, align 2, !dbg !902, !tbaa !874
  %85 = and i16 %84, 8192, !dbg !902
  %86 = icmp eq i16 %85, 0, !dbg !902
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !903
  br i1 %89, label %90, label %92, !dbg !903

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !904
  call void @llvm.dbg.value(metadata ptr %91, metadata !142, metadata !DIExpression()), !dbg !831
  br label %59, !dbg !886, !llvm.loop !905

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !907
  %94 = load ptr, ptr @stdout, align 8, !dbg !907, !tbaa !772
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !199, metadata !DIExpression()), !dbg !831
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #37, !dbg !928
  %97 = icmp eq i32 %96, 0, !dbg !928
  br i1 %97, label %101, label %98, !dbg !930

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #37, !dbg !931
  %100 = icmp eq i32 %99, 0, !dbg !931
  br i1 %100, label %101, label %104, !dbg !932

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !933
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !933
  br label %107, !dbg !935

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !936
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !936
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !772
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %108), !dbg !938
  %110 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !772
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !939
  %112 = ptrtoint ptr %60 to i64, !dbg !940
  %113 = sub i64 %112, %93, !dbg !940
  %114 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !772
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !940
  %116 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !772
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %116), !dbg !941
  %118 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !772
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %118), !dbg !942
  %120 = load ptr, ptr @stdout, align 8, !dbg !943, !tbaa !772
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !943
  br label %122, !dbg !944

122:                                              ; preds = %107, %19
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !985, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr %1, metadata !986, metadata !DIExpression()), !dbg !993
  %3 = load ptr, ptr %1, align 8, !dbg !994, !tbaa !772
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !995
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !996
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !997
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !998
  call void @llvm.dbg.value(metadata i32 3, metadata !999, metadata !DIExpression()), !dbg !1002
  store volatile i32 3, ptr @exit_failure, align 4, !dbg !1004, !tbaa !833
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1006
  br label %8, !dbg !1007

8:                                                ; preds = %10, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %9, metadata !987, metadata !DIExpression()), !dbg !993
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
  tail call void @usage(i32 noundef 0) #40, !dbg !1014
  unreachable, !dbg !1014

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !772
  %14 = load ptr, ptr @Version, align 8, !dbg !1015, !tbaa !772
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #36, !dbg !1015
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef null) #36, !dbg !1015
  tail call void @exit(i32 noundef 0) #38, !dbg !1015
  unreachable, !dbg !1015

16:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #40, !dbg !1016
  unreachable, !dbg !1016

17:                                               ; preds = %8
  %18 = load i32, ptr @optind, align 4, !dbg !1017, !tbaa !833
  %19 = icmp slt i32 %18, %0, !dbg !1019
  br i1 %19, label %20, label %27, !dbg !1020

20:                                               ; preds = %17
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1021
  %22 = load i32, ptr @optind, align 4, !dbg !1021, !tbaa !833
  %23 = sext i32 %22 to i64, !dbg !1021
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23, !dbg !1021
  %25 = load ptr, ptr %24, align 8, !dbg !1021, !tbaa !772
  %26 = tail call ptr @quote(ptr noundef %25) #36, !dbg !1021
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %26) #36, !dbg !1021
  tail call void @usage(i32 noundef 2) #40, !dbg !1023
  unreachable, !dbg !1023

27:                                               ; preds = %17
  %28 = load i1, ptr @silent, align 1, !dbg !1024
  br i1 %28, label %29, label %33, !dbg !1026

29:                                               ; preds = %27
  %30 = tail call i32 @isatty(i32 noundef 0) #36, !dbg !1027
  %31 = icmp eq i32 %30, 0, !dbg !1027
  %32 = zext i1 %31 to i32, !dbg !1027
  br label %49, !dbg !1028

33:                                               ; preds = %27
  %34 = tail call ptr @ttyname(i32 noundef 0) #36, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %34, metadata !989, metadata !DIExpression()), !dbg !993
  %35 = icmp eq ptr %34, null, !dbg !1030
  br i1 %35, label %36, label %45, !dbg !1031

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #39, !dbg !1032
  %38 = load i32, ptr %37, align 4, !dbg !1032, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %38, metadata !990, metadata !DIExpression()), !dbg !1033
  %39 = tail call i32 @isatty(i32 noundef 0) #36, !dbg !1034
  %40 = icmp eq i32 %39, 0, !dbg !1034
  br i1 %40, label %43, label %41, !dbg !1036

41:                                               ; preds = %36
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !1037
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 4, i32 noundef %38, ptr noundef %42) #36, !dbg !1037
  unreachable, !dbg !1037

43:                                               ; preds = %36
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #36, !dbg !1038
  call void @llvm.dbg.value(metadata ptr %44, metadata !989, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i32 1, metadata !988, metadata !DIExpression()), !dbg !993
  br label %45

45:                                               ; preds = %33, %43
  %46 = phi i32 [ 1, %43 ], [ 0, %33 ], !dbg !1039
  %47 = phi ptr [ %44, %43 ], [ %34, %33 ], !dbg !993
  call void @llvm.dbg.value(metadata ptr %47, metadata !989, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i32 %46, metadata !988, metadata !DIExpression()), !dbg !993
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1071, metadata !DIExpression()), !dbg !1072
  store ptr %0, ptr @file_name, align 8, !dbg !1073, !tbaa !772
  ret void, !dbg !1074
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1075 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1079, metadata !DIExpression()), !dbg !1080
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1081, !tbaa !1082
  ret void, !dbg !1084
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1085 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !772
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1091
  %3 = icmp eq i32 %2, 0, !dbg !1092
  br i1 %3, label %22, label %4, !dbg !1093

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1094, !tbaa !1082, !range !1095, !noundef !818
  %6 = icmp eq i8 %5, 0, !dbg !1094
  br i1 %6, label %11, label %7, !dbg !1096

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1097
  %9 = load i32, ptr %8, align 4, !dbg !1097, !tbaa !833
  %10 = icmp eq i32 %9, 32, !dbg !1098
  br i1 %10, label %22, label %11, !dbg !1099

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #36, !dbg !1100
  call void @llvm.dbg.value(metadata ptr %12, metadata !1087, metadata !DIExpression()), !dbg !1101
  %13 = load ptr, ptr @file_name, align 8, !dbg !1102, !tbaa !772
  %14 = icmp eq ptr %13, null, !dbg !1102
  %15 = tail call ptr @__errno_location() #39, !dbg !1104
  %16 = load i32, ptr %15, align 4, !dbg !1104, !tbaa !833
  br i1 %14, label %19, label %17, !dbg !1105

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1106
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #36, !dbg !1106
  br label %20, !dbg !1106

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #36, !dbg !1107
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1108, !tbaa !833
  tail call void @_exit(i32 noundef %21) #38, !dbg !1109
  unreachable, !dbg !1109

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1110, !tbaa !772
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1112
  %25 = icmp eq i32 %24, 0, !dbg !1113
  br i1 %25, label %28, label %26, !dbg !1114

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1115, !tbaa !833
  tail call void @_exit(i32 noundef %27) #38, !dbg !1116
  unreachable, !dbg !1116

28:                                               ; preds = %22
  ret void, !dbg !1117
}

; Function Attrs: noreturn
declare !dbg !1118 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1119 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !1124, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %2, metadata !1125, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1126, metadata !DIExpression()), !dbg !1128
  tail call fastcc void @flush_stdout(), !dbg !1129
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1130, !tbaa !772
  %7 = icmp eq ptr %6, null, !dbg !1130
  br i1 %7, label %9, label %8, !dbg !1132

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1133
  br label %13, !dbg !1133

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1134, !tbaa !772
  %11 = tail call ptr @getprogname() #37, !dbg !1134
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %11) #36, !dbg !1134
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1136, !tbaa.struct !1137
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1136
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1136
  ret void, !dbg !1138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1139 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1141, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i32 1, metadata !1143, metadata !DIExpression()), !dbg !1146
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1149
  %2 = icmp slt i32 %1, 0, !dbg !1150
  br i1 %2, label %6, label %3, !dbg !1151

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1152, !tbaa !772
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1152
  br label %6, !dbg !1152

6:                                                ; preds = %3, %0
  ret void, !dbg !1153
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1154 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1156, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i32 %1, metadata !1157, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %2, metadata !1158, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1159, metadata !DIExpression()), !dbg !1161
  %7 = load ptr, ptr @stderr, align 8, !dbg !1162, !tbaa !772
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1163, !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1211
  call void @llvm.dbg.value(metadata ptr %7, metadata !1203, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %2, metadata !1204, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1205, metadata !DIExpression()), !dbg !1213
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1163, !noalias !1207
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1214, !tbaa !833
  %10 = add i32 %9, 1, !dbg !1214
  store i32 %10, ptr @error_message_count, align 4, !dbg !1214, !tbaa !833
  %11 = icmp eq i32 %1, 0, !dbg !1215
  br i1 %11, label %21, label %12, !dbg !1217

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1218, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1222, metadata !DIExpression()), !dbg !1229
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1230
  call void @llvm.dbg.value(metadata ptr %13, metadata !1221, metadata !DIExpression()), !dbg !1226
  %14 = icmp eq ptr %13, null, !dbg !1231
  br i1 %14, label %15, label %17, !dbg !1233

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #36, !dbg !1234
  call void @llvm.dbg.value(metadata ptr %16, metadata !1221, metadata !DIExpression()), !dbg !1226
  br label %17, !dbg !1235

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1226
  call void @llvm.dbg.value(metadata ptr %18, metadata !1221, metadata !DIExpression()), !dbg !1226
  %19 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !772
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %18) #36, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1237
  br label %21, !dbg !1238

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1239, !tbaa !772
  call void @llvm.dbg.value(metadata i32 10, metadata !1240, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %22, metadata !1246, metadata !DIExpression()), !dbg !1247
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1249
  %24 = load ptr, ptr %23, align 8, !dbg !1249, !tbaa !1250
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1249
  %26 = load ptr, ptr %25, align 8, !dbg !1249, !tbaa !1253
  %27 = icmp ult ptr %24, %26, !dbg !1249
  br i1 %27, label %30, label %28, !dbg !1249, !prof !1254

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1249
  br label %32, !dbg !1249

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1249
  store ptr %31, ptr %23, align 8, !dbg !1249, !tbaa !1250
  store i8 10, ptr %24, align 1, !dbg !1249, !tbaa !842
  br label %32, !dbg !1249

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1255, !tbaa !772
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1255
  %35 = icmp eq i32 %0, 0, !dbg !1256
  br i1 %35, label %37, label %36, !dbg !1258

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1259
  unreachable, !dbg !1259

37:                                               ; preds = %32
  ret void, !dbg !1260
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1261 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1264 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1267 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1270 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1273 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1277 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %1, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata ptr %2, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1284, metadata !DIExpression()), !dbg !1287
  call void @llvm.va_start(ptr nonnull %4), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1289, !tbaa.struct !1137
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1289
  call void @llvm.va_end(ptr nonnull %4), !dbg !1290
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1291
  ret void, !dbg !1291
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !364 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !381, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %1, metadata !382, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %3, metadata !384, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata ptr %4, metadata !385, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %5, metadata !386, metadata !DIExpression()), !dbg !1293
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1294, !tbaa !833
  %9 = icmp eq i32 %8, 0, !dbg !1294
  br i1 %9, label %24, label %10, !dbg !1296

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1297, !tbaa !833
  %12 = icmp eq i32 %11, %3, !dbg !1300
  br i1 %12, label %13, label %23, !dbg !1301

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1302, !tbaa !772
  %15 = icmp eq ptr %14, %2, !dbg !1303
  br i1 %15, label %37, label %16, !dbg !1304

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1305
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1306
  br i1 %19, label %20, label %23, !dbg !1306

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1307
  %22 = icmp eq i32 %21, 0, !dbg !1308
  br i1 %22, label %37, label %23, !dbg !1309

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1310, !tbaa !772
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1311, !tbaa !833
  br label %24, !dbg !1312

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1313
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1314, !tbaa !772
  %26 = icmp eq ptr %25, null, !dbg !1314
  br i1 %26, label %28, label %27, !dbg !1316

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1317
  br label %32, !dbg !1317

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1318, !tbaa !772
  %30 = tail call ptr @getprogname() #37, !dbg !1318
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %30) #36, !dbg !1318
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1320, !tbaa !772
  %34 = icmp eq ptr %2, null, !dbg !1320
  %35 = select i1 %34, ptr @.str.3.34, ptr @.str.2.35, !dbg !1320
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1320
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1321, !tbaa.struct !1137
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1321
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1321
  br label %37, !dbg !1322

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1322
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1323 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1327, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %1, metadata !1328, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %2, metadata !1329, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %3, metadata !1330, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %4, metadata !1331, metadata !DIExpression()), !dbg !1333
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1332, metadata !DIExpression()), !dbg !1335
  call void @llvm.va_start(ptr nonnull %6), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1337, !tbaa.struct !1137
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1337
  call void @llvm.va_end(ptr nonnull %6), !dbg !1338
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1339
  ret void, !dbg !1339
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1340 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1343, !tbaa !772
  ret ptr %1, !dbg !1344
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1345 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1347, metadata !DIExpression()), !dbg !1350
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1351
  call void @llvm.dbg.value(metadata ptr %2, metadata !1348, metadata !DIExpression()), !dbg !1350
  %3 = icmp eq ptr %2, null, !dbg !1352
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1352
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1352
  call void @llvm.dbg.value(metadata ptr %5, metadata !1349, metadata !DIExpression()), !dbg !1350
  %6 = ptrtoint ptr %5 to i64, !dbg !1353
  %7 = ptrtoint ptr %0 to i64, !dbg !1353
  %8 = sub i64 %6, %7, !dbg !1353
  %9 = icmp sgt i64 %8, 6, !dbg !1355
  br i1 %9, label %10, label %19, !dbg !1356

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %11, metadata !1358, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1363, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 7, metadata !1364, metadata !DIExpression()), !dbg !1365
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.44, i64 7), !dbg !1367
  %13 = icmp eq i32 %12, 0, !dbg !1368
  br i1 %13, label %14, label %19, !dbg !1369

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1347, metadata !DIExpression()), !dbg !1350
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.45, i64 noundef 3) #37, !dbg !1370
  %16 = icmp eq i32 %15, 0, !dbg !1373
  %17 = select i1 %16, i64 3, i64 0, !dbg !1374
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1374
  br label %19, !dbg !1374

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1350
  call void @llvm.dbg.value(metadata ptr %21, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata ptr %20, metadata !1347, metadata !DIExpression()), !dbg !1350
  store ptr %20, ptr @program_name, align 8, !dbg !1375, !tbaa !772
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1376, !tbaa !772
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1377, !tbaa !772
  ret void, !dbg !1378
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1379 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !423 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !430, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %1, metadata !431, metadata !DIExpression()), !dbg !1380
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %5, metadata !432, metadata !DIExpression()), !dbg !1380
  %6 = icmp eq ptr %5, %0, !dbg !1382
  br i1 %6, label %7, label %14, !dbg !1384

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1386
  call void @llvm.dbg.declare(metadata ptr %4, metadata !438, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %4, metadata !1388, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata ptr %4, metadata !1397, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 8, metadata !1404, metadata !DIExpression()), !dbg !1405
  store i64 0, ptr %4, align 8, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %3, metadata !433, metadata !DIExpression(DW_OP_deref)), !dbg !1380
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1408
  %9 = icmp eq i64 %8, 2, !dbg !1410
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !433, metadata !DIExpression()), !dbg !1380
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1411
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1412
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1380
  ret ptr %15, !dbg !1412
}

; Function Attrs: nounwind
declare !dbg !1413 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1419 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1424, metadata !DIExpression()), !dbg !1427
  %2 = tail call ptr @__errno_location() #39, !dbg !1428
  %3 = load i32, ptr %2, align 4, !dbg !1428, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %3, metadata !1425, metadata !DIExpression()), !dbg !1427
  %4 = icmp eq ptr %0, null, !dbg !1429
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1429
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1430
  call void @llvm.dbg.value(metadata ptr %6, metadata !1426, metadata !DIExpression()), !dbg !1427
  store i32 %3, ptr %2, align 4, !dbg !1431, !tbaa !833
  ret ptr %6, !dbg !1432
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1433 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1439, metadata !DIExpression()), !dbg !1440
  %2 = icmp eq ptr %0, null, !dbg !1441
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1441
  %4 = load i32, ptr %3, align 8, !dbg !1442, !tbaa !1443
  ret i32 %4, !dbg !1445
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1446 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1450, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %1, metadata !1451, metadata !DIExpression()), !dbg !1452
  %3 = icmp eq ptr %0, null, !dbg !1453
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1453
  store i32 %1, ptr %4, align 8, !dbg !1454, !tbaa !1443
  ret void, !dbg !1455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1456 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1460, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %1, metadata !1461, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %2, metadata !1462, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %1, metadata !1463, metadata !DIExpression()), !dbg !1468
  %4 = icmp eq ptr %0, null, !dbg !1469
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1469
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1470
  %7 = lshr i8 %1, 5, !dbg !1471
  %8 = zext i8 %7 to i64, !dbg !1471
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1472
  call void @llvm.dbg.value(metadata ptr %9, metadata !1464, metadata !DIExpression()), !dbg !1468
  %10 = and i8 %1, 31, !dbg !1473
  %11 = zext i8 %10 to i32, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %11, metadata !1466, metadata !DIExpression()), !dbg !1468
  %12 = load i32, ptr %9, align 4, !dbg !1474, !tbaa !833
  %13 = lshr i32 %12, %11, !dbg !1475
  %14 = and i32 %13, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %14, metadata !1467, metadata !DIExpression()), !dbg !1468
  %15 = xor i32 %13, %2, !dbg !1477
  %16 = and i32 %15, 1, !dbg !1477
  %17 = shl nuw i32 %16, %11, !dbg !1478
  %18 = xor i32 %17, %12, !dbg !1479
  store i32 %18, ptr %9, align 4, !dbg !1479, !tbaa !833
  ret i32 %14, !dbg !1480
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1481 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1485, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %1, metadata !1486, metadata !DIExpression()), !dbg !1488
  %3 = icmp eq ptr %0, null, !dbg !1489
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %4, metadata !1485, metadata !DIExpression()), !dbg !1488
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1492
  %6 = load i32, ptr %5, align 4, !dbg !1492, !tbaa !1493
  call void @llvm.dbg.value(metadata i32 %6, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i32 %1, ptr %5, align 4, !dbg !1494, !tbaa !1493
  ret i32 %6, !dbg !1495
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1500, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %1, metadata !1501, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %2, metadata !1502, metadata !DIExpression()), !dbg !1503
  %4 = icmp eq ptr %0, null, !dbg !1504
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !1503
  store i32 10, ptr %5, align 8, !dbg !1507, !tbaa !1443
  %6 = icmp ne ptr %1, null, !dbg !1508
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1510
  br i1 %8, label %10, label %9, !dbg !1510

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1511
  unreachable, !dbg !1511

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1512
  store ptr %1, ptr %11, align 8, !dbg !1513, !tbaa !1514
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1515
  store ptr %2, ptr %12, align 8, !dbg !1516, !tbaa !1517
  ret void, !dbg !1518
}

; Function Attrs: noreturn nounwind
declare !dbg !1519 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %1, metadata !1525, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %3, metadata !1527, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !1532
  %6 = icmp eq ptr %4, null, !dbg !1533
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1533
  call void @llvm.dbg.value(metadata ptr %7, metadata !1529, metadata !DIExpression()), !dbg !1532
  %8 = tail call ptr @__errno_location() #39, !dbg !1534
  %9 = load i32, ptr %8, align 4, !dbg !1534, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %9, metadata !1530, metadata !DIExpression()), !dbg !1532
  %10 = load i32, ptr %7, align 8, !dbg !1535, !tbaa !1443
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1536
  %12 = load i32, ptr %11, align 4, !dbg !1536, !tbaa !1493
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1537
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1538
  %15 = load ptr, ptr %14, align 8, !dbg !1538, !tbaa !1514
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1539
  %17 = load ptr, ptr %16, align 8, !dbg !1539, !tbaa !1517
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %18, metadata !1531, metadata !DIExpression()), !dbg !1532
  store i32 %9, ptr %8, align 4, !dbg !1541, !tbaa !833
  ret i64 %18, !dbg !1542
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1543 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %1, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %4, metadata !1553, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %5, metadata !1554, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %6, metadata !1555, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %7, metadata !1556, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %8, metadata !1557, metadata !DIExpression()), !dbg !1611
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1612
  %17 = icmp eq i64 %16, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i1 %17, metadata !1558, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr null, metadata !1561, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1562, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1563, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %5, metadata !1564, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1566, metadata !DIExpression()), !dbg !1611
  %18 = and i32 %5, 2, !dbg !1614
  %19 = icmp ne i32 %18, 0, !dbg !1614
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1614

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1615
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1616
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1617
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %34, metadata !1562, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %33, metadata !1561, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %32, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %31, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %30, metadata !1557, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %29, metadata !1556, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %28, metadata !1553, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.label(metadata !1604), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1611
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
  ], !dbg !1619

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 5, metadata !1553, metadata !DIExpression()), !dbg !1611
  br label %102, !dbg !1620

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 5, metadata !1553, metadata !DIExpression()), !dbg !1611
  br i1 %36, label %102, label %42, !dbg !1620

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1621
  br i1 %43, label %102, label %44, !dbg !1625

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1621, !tbaa !842
  br label %102, !dbg !1621

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !536, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 %28, metadata !537, metadata !DIExpression()), !dbg !1626
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #36, !dbg !1630
  call void @llvm.dbg.value(metadata ptr %46, metadata !538, metadata !DIExpression()), !dbg !1626
  %47 = icmp eq ptr %46, @.str.11.65, !dbg !1631
  br i1 %47, label %48, label %57, !dbg !1633

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1634
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %13, metadata !540, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %13, metadata !1637, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %13, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 0, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i64 8, metadata !1649, metadata !DIExpression()), !dbg !1650
  store i64 0, ptr %13, align 8, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %12, metadata !539, metadata !DIExpression(DW_OP_deref)), !dbg !1626
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1653
  %50 = icmp eq i64 %49, 3, !dbg !1655
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !539, metadata !DIExpression()), !dbg !1626
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1656
  %54 = icmp eq i32 %28, 9, !dbg !1656
  %55 = select i1 %54, ptr @.str.10.67, ptr @.str.12.68, !dbg !1656
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1657
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1626
  call void @llvm.dbg.value(metadata ptr %58, metadata !1556, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !536, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 %28, metadata !537, metadata !DIExpression()), !dbg !1658
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #36, !dbg !1660
  call void @llvm.dbg.value(metadata ptr %59, metadata !538, metadata !DIExpression()), !dbg !1658
  %60 = icmp eq ptr %59, @.str.12.68, !dbg !1661
  br i1 %60, label %61, label %70, !dbg !1662

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1663
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1664
  call void @llvm.dbg.declare(metadata ptr %11, metadata !540, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata ptr %11, metadata !1637, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata ptr %11, metadata !1645, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 0, metadata !1648, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 8, metadata !1649, metadata !DIExpression()), !dbg !1668
  store i64 0, ptr %11, align 8, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %10, metadata !539, metadata !DIExpression(DW_OP_deref)), !dbg !1658
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1671
  %63 = icmp eq i64 %62, 3, !dbg !1672
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !539, metadata !DIExpression()), !dbg !1658
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1673
  %67 = icmp eq i32 %28, 9, !dbg !1673
  %68 = select i1 %67, ptr @.str.10.67, ptr @.str.12.68, !dbg !1673
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1674
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1557, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %71, metadata !1556, metadata !DIExpression()), !dbg !1611
  br i1 %36, label %88, label %73, !dbg !1675

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1568, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1611
  %74 = load i8, ptr %71, align 1, !dbg !1677, !tbaa !842
  %75 = icmp eq i8 %74, 0, !dbg !1679
  br i1 %75, label %88, label %76, !dbg !1679

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1568, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %79, metadata !1559, metadata !DIExpression()), !dbg !1611
  %80 = icmp ult i64 %79, %39, !dbg !1680
  br i1 %80, label %81, label %83, !dbg !1683

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1680
  store i8 %77, ptr %82, align 1, !dbg !1680, !tbaa !842
  br label %83, !dbg !1680

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %84, metadata !1559, metadata !DIExpression()), !dbg !1611
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %85, metadata !1568, metadata !DIExpression()), !dbg !1676
  %86 = load i8, ptr %85, align 1, !dbg !1677, !tbaa !842
  %87 = icmp eq i8 %86, 0, !dbg !1679
  br i1 %87, label %88, label %76, !dbg !1679, !llvm.loop !1685

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1687
  call void @llvm.dbg.value(metadata i64 %89, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1563, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %72, metadata !1561, metadata !DIExpression()), !dbg !1611
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %90, metadata !1562, metadata !DIExpression()), !dbg !1611
  br label %102, !dbg !1689

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1563, metadata !DIExpression()), !dbg !1611
  br label %93, !dbg !1690

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1611
  br i1 %36, label %102, label %96, !dbg !1691

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 2, metadata !1553, metadata !DIExpression()), !dbg !1611
  br label %102, !dbg !1692

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 2, metadata !1553, metadata !DIExpression()), !dbg !1611
  br i1 %36, label %102, label %96, !dbg !1692

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1693
  br i1 %98, label %102, label %99, !dbg !1697

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1693, !tbaa !842
  br label %102, !dbg !1693

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1564, metadata !DIExpression()), !dbg !1611
  br label %102, !dbg !1698

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1699
  unreachable, !dbg !1699

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1687
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.67, %42 ], [ @.str.10.67, %44 ], [ @.str.10.67, %41 ], [ %33, %27 ], [ @.str.12.68, %96 ], [ @.str.12.68, %99 ], [ @.str.12.68, %95 ], [ @.str.10.67, %40 ], [ @.str.12.68, %93 ], [ @.str.12.68, %92 ], !dbg !1611
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1611
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1564, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1563, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %108, metadata !1562, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %107, metadata !1561, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %106, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %105, metadata !1557, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %104, metadata !1556, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %103, metadata !1553, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1700
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
  br label %122, !dbg !1701

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1687
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1615
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1702
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %129, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %125, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %124, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %123, metadata !1552, metadata !DIExpression()), !dbg !1611
  %131 = icmp eq i64 %123, -1, !dbg !1703
  br i1 %131, label %132, label %136, !dbg !1704

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1705
  %134 = load i8, ptr %133, align 1, !dbg !1705, !tbaa !842
  %135 = icmp eq i8 %134, 0, !dbg !1706
  br i1 %135, label %579, label %138, !dbg !1707

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1708
  br i1 %137, label %579, label %138, !dbg !1707

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1575, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !1579, metadata !DIExpression()), !dbg !1709
  br i1 %114, label %139, label %152, !dbg !1710

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1712
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1713
  br i1 %141, label %142, label %144, !dbg !1713

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %143, metadata !1552, metadata !DIExpression()), !dbg !1611
  br label %144, !dbg !1715

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1715
  call void @llvm.dbg.value(metadata i64 %145, metadata !1552, metadata !DIExpression()), !dbg !1611
  %146 = icmp ugt i64 %140, %145, !dbg !1716
  br i1 %146, label %152, label %147, !dbg !1717

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %148, metadata !1719, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %107, metadata !1722, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %108, metadata !1723, metadata !DIExpression()), !dbg !1724
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1726
  %150 = icmp eq i32 %149, 0, !dbg !1727
  %151 = and i1 %150, %110, !dbg !1728
  br i1 %151, label %630, label %152, !dbg !1728

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %153, metadata !1552, metadata !DIExpression()), !dbg !1611
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1729
  %156 = load i8, ptr %155, align 1, !dbg !1729, !tbaa !842
  call void @llvm.dbg.value(metadata i8 %156, metadata !1580, metadata !DIExpression()), !dbg !1709
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
  ], !dbg !1730

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1731

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1732

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1578, metadata !DIExpression()), !dbg !1709
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1736
  br i1 %160, label %177, label %161, !dbg !1736

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1738
  br i1 %162, label %163, label %165, !dbg !1742

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1738
  store i8 39, ptr %164, align 1, !dbg !1738, !tbaa !842
  br label %165, !dbg !1738

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %166, metadata !1559, metadata !DIExpression()), !dbg !1611
  %167 = icmp ult i64 %166, %130, !dbg !1743
  br i1 %167, label %168, label %170, !dbg !1746

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1743
  store i8 36, ptr %169, align 1, !dbg !1743, !tbaa !842
  br label %170, !dbg !1743

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %171, metadata !1559, metadata !DIExpression()), !dbg !1611
  %172 = icmp ult i64 %171, %130, !dbg !1747
  br i1 %172, label %173, label %175, !dbg !1750

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1747
  store i8 39, ptr %174, align 1, !dbg !1747, !tbaa !842
  br label %175, !dbg !1747

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %176, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1567, metadata !DIExpression()), !dbg !1611
  br label %177, !dbg !1751

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1611
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %178, metadata !1559, metadata !DIExpression()), !dbg !1611
  %180 = icmp ult i64 %178, %130, !dbg !1752
  br i1 %180, label %181, label %183, !dbg !1755

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1752
  store i8 92, ptr %182, align 1, !dbg !1752, !tbaa !842
  br label %183, !dbg !1752

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %184, metadata !1559, metadata !DIExpression()), !dbg !1611
  br i1 %111, label %185, label %482, !dbg !1756

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1758
  %187 = icmp ult i64 %186, %153, !dbg !1759
  br i1 %187, label %188, label %439, !dbg !1760

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1761
  %190 = load i8, ptr %189, align 1, !dbg !1761, !tbaa !842
  %191 = add i8 %190, -48, !dbg !1762
  %192 = icmp ult i8 %191, 10, !dbg !1762
  br i1 %192, label %193, label %439, !dbg !1762

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1763
  br i1 %194, label %195, label %197, !dbg !1767

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1763
  store i8 48, ptr %196, align 1, !dbg !1763, !tbaa !842
  br label %197, !dbg !1763

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %198, metadata !1559, metadata !DIExpression()), !dbg !1611
  %199 = icmp ult i64 %198, %130, !dbg !1768
  br i1 %199, label %200, label %202, !dbg !1771

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1768
  store i8 48, ptr %201, align 1, !dbg !1768, !tbaa !842
  br label %202, !dbg !1768

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %203, metadata !1559, metadata !DIExpression()), !dbg !1611
  br label %439, !dbg !1772

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1773

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1774

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1775

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1777

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1779
  %210 = icmp ult i64 %209, %153, !dbg !1780
  br i1 %210, label %211, label %439, !dbg !1781

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1782
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1783
  %214 = load i8, ptr %213, align 1, !dbg !1783, !tbaa !842
  %215 = icmp eq i8 %214, 63, !dbg !1784
  br i1 %215, label %216, label %439, !dbg !1785

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1786
  %218 = load i8, ptr %217, align 1, !dbg !1786, !tbaa !842
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
  ], !dbg !1787

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1788

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %209, metadata !1573, metadata !DIExpression()), !dbg !1700
  %221 = icmp ult i64 %124, %130, !dbg !1790
  br i1 %221, label %222, label %224, !dbg !1793

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1790
  store i8 63, ptr %223, align 1, !dbg !1790, !tbaa !842
  br label %224, !dbg !1790

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %225, metadata !1559, metadata !DIExpression()), !dbg !1611
  %226 = icmp ult i64 %225, %130, !dbg !1794
  br i1 %226, label %227, label %229, !dbg !1797

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1794
  store i8 34, ptr %228, align 1, !dbg !1794, !tbaa !842
  br label %229, !dbg !1794

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %230, metadata !1559, metadata !DIExpression()), !dbg !1611
  %231 = icmp ult i64 %230, %130, !dbg !1798
  br i1 %231, label %232, label %234, !dbg !1801

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1798
  store i8 34, ptr %233, align 1, !dbg !1798, !tbaa !842
  br label %234, !dbg !1798

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %235, metadata !1559, metadata !DIExpression()), !dbg !1611
  %236 = icmp ult i64 %235, %130, !dbg !1802
  br i1 %236, label %237, label %239, !dbg !1805

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1802
  store i8 63, ptr %238, align 1, !dbg !1802, !tbaa !842
  br label %239, !dbg !1802

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %240, metadata !1559, metadata !DIExpression()), !dbg !1611
  br label %439, !dbg !1806

241:                                              ; preds = %152
  br label %251, !dbg !1807

242:                                              ; preds = %152
  br label %251, !dbg !1808

243:                                              ; preds = %152
  br label %249, !dbg !1809

244:                                              ; preds = %152
  br label %249, !dbg !1810

245:                                              ; preds = %152
  br label %251, !dbg !1811

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1812

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1813

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1816

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1818
  call void @llvm.dbg.label(metadata !1605), !dbg !1819
  br i1 %119, label %621, label %251, !dbg !1820

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1818
  call void @llvm.dbg.label(metadata !1607), !dbg !1822
  br i1 %109, label %493, label %450, !dbg !1823

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1824

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1825, !tbaa !842
  %256 = icmp eq i8 %255, 0, !dbg !1827
  br i1 %256, label %257, label %439, !dbg !1828

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1829
  br i1 %258, label %259, label %439, !dbg !1831

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1579, metadata !DIExpression()), !dbg !1709
  br label %260, !dbg !1832

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1579, metadata !DIExpression()), !dbg !1709
  br i1 %116, label %262, label %439, !dbg !1833

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1835

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1579, metadata !DIExpression()), !dbg !1709
  br i1 %116, label %264, label %439, !dbg !1836

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1837

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1840
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1842
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1842
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %270, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %269, metadata !1560, metadata !DIExpression()), !dbg !1611
  %271 = icmp ult i64 %124, %270, !dbg !1843
  br i1 %271, label %272, label %274, !dbg !1846

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1843
  store i8 39, ptr %273, align 1, !dbg !1843, !tbaa !842
  br label %274, !dbg !1843

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %275, metadata !1559, metadata !DIExpression()), !dbg !1611
  %276 = icmp ult i64 %275, %270, !dbg !1847
  br i1 %276, label %277, label %279, !dbg !1850

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1847
  store i8 92, ptr %278, align 1, !dbg !1847, !tbaa !842
  br label %279, !dbg !1847

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %280, metadata !1559, metadata !DIExpression()), !dbg !1611
  %281 = icmp ult i64 %280, %270, !dbg !1851
  br i1 %281, label %282, label %284, !dbg !1854

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1851
  store i8 39, ptr %283, align 1, !dbg !1851, !tbaa !842
  br label %284, !dbg !1851

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %285, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1611
  br label %439, !dbg !1855

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1856

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1581, metadata !DIExpression()), !dbg !1857
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1858
  %289 = load ptr, ptr %288, align 8, !dbg !1858, !tbaa !772
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1858
  %292 = load i16, ptr %291, align 2, !dbg !1858, !tbaa !874
  %293 = and i16 %292, 16384, !dbg !1858
  %294 = icmp ne i16 %293, 0, !dbg !1860
  call void @llvm.dbg.value(metadata i1 %294, metadata !1584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1857
  br label %337, !dbg !1861

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1862
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1585, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %14, metadata !1637, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %14, metadata !1645, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 0, metadata !1648, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 8, metadata !1649, metadata !DIExpression()), !dbg !1866
  store i64 0, ptr %14, align 8, !dbg !1868
  call void @llvm.dbg.value(metadata i64 0, metadata !1581, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 1, metadata !1584, metadata !DIExpression()), !dbg !1857
  %296 = icmp eq i64 %153, -1, !dbg !1869
  br i1 %296, label %297, label %299, !dbg !1871

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %298, metadata !1552, metadata !DIExpression()), !dbg !1611
  br label %299, !dbg !1873

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1709
  call void @llvm.dbg.value(metadata i64 %300, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1874
  %301 = sub i64 %300, %129, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %15, metadata !1588, metadata !DIExpression(DW_OP_deref)), !dbg !1876
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %302, metadata !1592, metadata !DIExpression()), !dbg !1876
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1878

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1581, metadata !DIExpression()), !dbg !1857
  %304 = icmp ugt i64 %300, %129, !dbg !1879
  br i1 %304, label %306, label %332, !dbg !1881

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1584, metadata !DIExpression()), !dbg !1857
  br label %332, !dbg !1882

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1581, metadata !DIExpression()), !dbg !1857
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1884
  %310 = load i8, ptr %309, align 1, !dbg !1884, !tbaa !842
  %311 = icmp eq i8 %310, 0, !dbg !1881
  br i1 %311, label %332, label %312, !dbg !1885

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %313, metadata !1581, metadata !DIExpression()), !dbg !1857
  %314 = add i64 %313, %129, !dbg !1887
  %315 = icmp eq i64 %313, %301, !dbg !1879
  br i1 %315, label %332, label %306, !dbg !1881, !llvm.loop !1888

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1889
  %319 = and i1 %318, %110, !dbg !1889
  call void @llvm.dbg.value(metadata i64 1, metadata !1593, metadata !DIExpression()), !dbg !1890
  br i1 %319, label %320, label %328, !dbg !1889

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1593, metadata !DIExpression()), !dbg !1890
  %322 = add i64 %321, %129, !dbg !1891
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1893
  %324 = load i8, ptr %323, align 1, !dbg !1893, !tbaa !842
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1894

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %326, metadata !1593, metadata !DIExpression()), !dbg !1890
  %327 = icmp eq i64 %326, %302, !dbg !1896
  br i1 %327, label %328, label %320, !dbg !1897, !llvm.loop !1898

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1900, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %329, metadata !1588, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 %329, metadata !1902, metadata !DIExpression()), !dbg !1910
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1912
  %331 = icmp ne i32 %330, 0, !dbg !1913
  call void @llvm.dbg.value(metadata i8 poison, metadata !1584, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %302, metadata !1581, metadata !DIExpression()), !dbg !1857
  br label %332, !dbg !1914

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1584, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %333, metadata !1581, metadata !DIExpression()), !dbg !1857
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1916
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1584, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 0, metadata !1581, metadata !DIExpression()), !dbg !1857
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1916
  call void @llvm.dbg.label(metadata !1610), !dbg !1917
  %336 = select i1 %109, i32 4, i32 2, !dbg !1918
  br label %626, !dbg !1918

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1709
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1920
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1584, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %339, metadata !1581, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %338, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i1 %340, metadata !1579, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1709
  %341 = icmp ult i64 %339, 2, !dbg !1921
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1922
  br i1 %343, label %439, label %344, !dbg !1922

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %345, metadata !1601, metadata !DIExpression()), !dbg !1924
  br label %346, !dbg !1925

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1611
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1700
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1926
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1709
  call void @llvm.dbg.value(metadata i8 %352, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 %351, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %349, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %347, metadata !1559, metadata !DIExpression()), !dbg !1611
  br i1 %342, label %397, label %353, !dbg !1927

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1932

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1578, metadata !DIExpression()), !dbg !1709
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1935
  br i1 %355, label %372, label %356, !dbg !1935

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1937
  br i1 %357, label %358, label %360, !dbg !1941

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1937
  store i8 39, ptr %359, align 1, !dbg !1937, !tbaa !842
  br label %360, !dbg !1937

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %361, metadata !1559, metadata !DIExpression()), !dbg !1611
  %362 = icmp ult i64 %361, %130, !dbg !1942
  br i1 %362, label %363, label %365, !dbg !1945

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1942
  store i8 36, ptr %364, align 1, !dbg !1942, !tbaa !842
  br label %365, !dbg !1942

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %366, metadata !1559, metadata !DIExpression()), !dbg !1611
  %367 = icmp ult i64 %366, %130, !dbg !1946
  br i1 %367, label %368, label %370, !dbg !1949

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1946
  store i8 39, ptr %369, align 1, !dbg !1946, !tbaa !842
  br label %370, !dbg !1946

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %371, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1567, metadata !DIExpression()), !dbg !1611
  br label %372, !dbg !1950

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1611
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %373, metadata !1559, metadata !DIExpression()), !dbg !1611
  %375 = icmp ult i64 %373, %130, !dbg !1951
  br i1 %375, label %376, label %378, !dbg !1954

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1951
  store i8 92, ptr %377, align 1, !dbg !1951, !tbaa !842
  br label %378, !dbg !1951

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %379, metadata !1559, metadata !DIExpression()), !dbg !1611
  %380 = icmp ult i64 %379, %130, !dbg !1955
  br i1 %380, label %381, label %385, !dbg !1958

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1955
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1955
  store i8 %383, ptr %384, align 1, !dbg !1955, !tbaa !842
  br label %385, !dbg !1955

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %386, metadata !1559, metadata !DIExpression()), !dbg !1611
  %387 = icmp ult i64 %386, %130, !dbg !1959
  br i1 %387, label %388, label %393, !dbg !1962

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !1959
  %391 = or i8 %390, 48, !dbg !1959
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1959
  store i8 %391, ptr %392, align 1, !dbg !1959, !tbaa !842
  br label %393, !dbg !1959

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %394, metadata !1559, metadata !DIExpression()), !dbg !1611
  %395 = and i8 %352, 7, !dbg !1963
  %396 = or i8 %395, 48, !dbg !1964
  call void @llvm.dbg.value(metadata i8 %396, metadata !1580, metadata !DIExpression()), !dbg !1709
  br label %404, !dbg !1965

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !1966

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !1967
  br i1 %399, label %400, label %402, !dbg !1972

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1967
  store i8 92, ptr %401, align 1, !dbg !1967, !tbaa !842
  br label %402, !dbg !1967

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %403, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1575, metadata !DIExpression()), !dbg !1709
  br label %404, !dbg !1973

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1611
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1709
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1709
  call void @llvm.dbg.value(metadata i8 %409, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 %408, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %405, metadata !1559, metadata !DIExpression()), !dbg !1611
  %410 = add i64 %349, 1, !dbg !1974
  %411 = icmp ugt i64 %345, %410, !dbg !1976
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !1977

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !1978
  %415 = select i1 %406, i1 %414, i1 false, !dbg !1978
  br i1 %415, label %416, label %427, !dbg !1978

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !1981
  br i1 %417, label %418, label %420, !dbg !1985

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !1981
  store i8 39, ptr %419, align 1, !dbg !1981, !tbaa !842
  br label %420, !dbg !1981

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %421, metadata !1559, metadata !DIExpression()), !dbg !1611
  %422 = icmp ult i64 %421, %130, !dbg !1986
  br i1 %422, label %423, label %425, !dbg !1989

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !1986
  store i8 39, ptr %424, align 1, !dbg !1986, !tbaa !842
  br label %425, !dbg !1986

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %426, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1611
  br label %427, !dbg !1990

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !1991
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %428, metadata !1559, metadata !DIExpression()), !dbg !1611
  %430 = icmp ult i64 %428, %130, !dbg !1992
  br i1 %430, label %431, label %433, !dbg !1995

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !1992
  store i8 %409, ptr %432, align 1, !dbg !1992, !tbaa !842
  br label %433, !dbg !1992

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %434, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %410, metadata !1573, metadata !DIExpression()), !dbg !1700
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !1996
  %436 = load i8, ptr %435, align 1, !dbg !1996, !tbaa !842
  call void @llvm.dbg.value(metadata i8 %436, metadata !1580, metadata !DIExpression()), !dbg !1709
  br label %346, !dbg !1997, !llvm.loop !1998

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i1 %340, metadata !1579, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1709
  call void @llvm.dbg.value(metadata i8 %408, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %349, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %405, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %338, metadata !1552, metadata !DIExpression()), !dbg !1611
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2001
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1611
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1615
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1700
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1709
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %448, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1579, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %445, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %442, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %441, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %440, metadata !1552, metadata !DIExpression()), !dbg !1611
  br i1 %112, label %461, label %450, !dbg !2002

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
  br i1 %121, label %462, label %482, !dbg !2004

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2005

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
  %473 = lshr i8 %464, 5, !dbg !2006
  %474 = zext i8 %473 to i64, !dbg !2006
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2007
  %476 = load i32, ptr %475, align 4, !dbg !2007, !tbaa !833
  %477 = and i8 %464, 31, !dbg !2008
  %478 = zext i8 %477 to i32, !dbg !2008
  %479 = shl nuw i32 1, %478, !dbg !2009
  %480 = and i32 %476, %479, !dbg !2009
  %481 = icmp eq i32 %480, 0, !dbg !2009
  br i1 %481, label %482, label %493, !dbg !2010

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
  br i1 %154, label %493, label %529, !dbg !2011

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2001
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1611
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1615
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2012
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1709
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %501, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1579, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %499, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %496, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %495, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %494, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.label(metadata !1608), !dbg !2013
  br i1 %110, label %621, label %503, !dbg !2014

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1578, metadata !DIExpression()), !dbg !1709
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2016
  br i1 %504, label %521, label %505, !dbg !2016

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2018
  br i1 %506, label %507, label %509, !dbg !2022

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2018
  store i8 39, ptr %508, align 1, !dbg !2018, !tbaa !842
  br label %509, !dbg !2018

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %510, metadata !1559, metadata !DIExpression()), !dbg !1611
  %511 = icmp ult i64 %510, %502, !dbg !2023
  br i1 %511, label %512, label %514, !dbg !2026

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2023
  store i8 36, ptr %513, align 1, !dbg !2023, !tbaa !842
  br label %514, !dbg !2023

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %515, metadata !1559, metadata !DIExpression()), !dbg !1611
  %516 = icmp ult i64 %515, %502, !dbg !2027
  br i1 %516, label %517, label %519, !dbg !2030

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2027
  store i8 39, ptr %518, align 1, !dbg !2027, !tbaa !842
  br label %519, !dbg !2027

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %520, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1567, metadata !DIExpression()), !dbg !1611
  br label %521, !dbg !2031

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1709
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %522, metadata !1559, metadata !DIExpression()), !dbg !1611
  %524 = icmp ult i64 %522, %502, !dbg !2032
  br i1 %524, label %525, label %527, !dbg !2035

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2032
  store i8 92, ptr %526, align 1, !dbg !2032, !tbaa !842
  br label %527, !dbg !2032

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %502, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %501, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1579, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %499, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %496, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %528, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %494, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.label(metadata !1609), !dbg !2036
  br label %553, !dbg !2037

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2001
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1611
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1615
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2012
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2040
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %538, metadata !1580, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1579, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 poison, metadata !1578, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %535, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %532, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %531, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %530, metadata !1552, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.label(metadata !1609), !dbg !2036
  %540 = xor i1 %534, true, !dbg !2037
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2037
  br i1 %541, label %553, label %542, !dbg !2037

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2041
  br i1 %543, label %544, label %546, !dbg !2045

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2041
  store i8 39, ptr %545, align 1, !dbg !2041, !tbaa !842
  br label %546, !dbg !2041

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %547, metadata !1559, metadata !DIExpression()), !dbg !1611
  %548 = icmp ult i64 %547, %539, !dbg !2046
  br i1 %548, label %549, label %551, !dbg !2049

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2046
  store i8 39, ptr %550, align 1, !dbg !2046, !tbaa !842
  br label %551, !dbg !2046

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %552, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1611
  br label %553, !dbg !2050

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1709
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %561, metadata !1559, metadata !DIExpression()), !dbg !1611
  %563 = icmp ult i64 %561, %554, !dbg !2051
  br i1 %563, label %564, label %566, !dbg !2054

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2051
  store i8 %555, ptr %565, align 1, !dbg !2051, !tbaa !842
  br label %566, !dbg !2051

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %567, metadata !1559, metadata !DIExpression()), !dbg !1611
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2055
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1611
  br label %569, !dbg !2056

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2001
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1611
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1615
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2012
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %576, metadata !1573, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %572, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %571, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %570, metadata !1552, metadata !DIExpression()), !dbg !1611
  %578 = add i64 %576, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %578, metadata !1573, metadata !DIExpression()), !dbg !1700
  br label %122, !dbg !2058, !llvm.loop !2059

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1550, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 poison, metadata !1565, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %125, metadata !1560, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %124, metadata !1559, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %123, metadata !1552, metadata !DIExpression()), !dbg !1611
  %580 = icmp ne i64 %124, 0, !dbg !2061
  %581 = xor i1 %110, true, !dbg !2063
  %582 = or i1 %580, %581, !dbg !2063
  %583 = or i1 %582, %111, !dbg !2063
  br i1 %583, label %584, label %621, !dbg !2063

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2064
  %586 = xor i1 %126, true, !dbg !2064
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2064
  br i1 %587, label %595, label %588, !dbg !2064

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2066

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2068
  br label %636, !dbg !2070

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2071
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2073
  br i1 %594, label %27, label %595, !dbg !2073

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2074
  %598 = or i1 %597, %596, !dbg !2076
  br i1 %598, label %614, label %599, !dbg !2076

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1561, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %124, metadata !1559, metadata !DIExpression()), !dbg !1611
  %600 = load i8, ptr %107, align 1, !dbg !2077, !tbaa !842
  %601 = icmp eq i8 %600, 0, !dbg !2080
  br i1 %601, label %614, label %602, !dbg !2080

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1561, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %605, metadata !1559, metadata !DIExpression()), !dbg !1611
  %606 = icmp ult i64 %605, %130, !dbg !2081
  br i1 %606, label %607, label %609, !dbg !2084

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2081
  store i8 %603, ptr %608, align 1, !dbg !2081, !tbaa !842
  br label %609, !dbg !2081

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %610, metadata !1559, metadata !DIExpression()), !dbg !1611
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %611, metadata !1561, metadata !DIExpression()), !dbg !1611
  %612 = load i8, ptr %611, align 1, !dbg !2077, !tbaa !842
  %613 = icmp eq i8 %612, 0, !dbg !2080
  br i1 %613, label %614, label %602, !dbg !2080, !llvm.loop !2086

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1687
  call void @llvm.dbg.value(metadata i64 %615, metadata !1559, metadata !DIExpression()), !dbg !1611
  %616 = icmp ult i64 %615, %130, !dbg !2088
  br i1 %616, label %617, label %636, !dbg !2090

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2091
  store i8 0, ptr %618, align 1, !dbg !2092, !tbaa !842
  br label %636, !dbg !2091

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1610), !dbg !1917
  %620 = icmp eq i32 %103, 2, !dbg !2093
  br i1 %620, label %626, label %630, !dbg !1918

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1610), !dbg !1917
  %624 = icmp eq i32 %103, 2, !dbg !2093
  %625 = select i1 %109, i32 4, i32 2, !dbg !1918
  br i1 %624, label %626, label %630, !dbg !1918

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1918

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1553, metadata !DIExpression()), !dbg !1611
  %634 = and i32 %5, -3, !dbg !2094
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2095
  br label %636, !dbg !2096

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2097
}

; Function Attrs: nounwind
declare !dbg !2098 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2101 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2104 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2106 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %2, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %0, metadata !2114, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i64 %1, metadata !2119, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr null, metadata !2120, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr %2, metadata !2121, metadata !DIExpression()), !dbg !2127
  %4 = icmp eq ptr %2, null, !dbg !2129
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %5, metadata !2122, metadata !DIExpression()), !dbg !2127
  %6 = tail call ptr @__errno_location() #39, !dbg !2130
  %7 = load i32, ptr %6, align 4, !dbg !2130, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %7, metadata !2123, metadata !DIExpression()), !dbg !2127
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2131
  %9 = load i32, ptr %8, align 4, !dbg !2131, !tbaa !1493
  %10 = or i32 %9, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %10, metadata !2124, metadata !DIExpression()), !dbg !2127
  %11 = load i32, ptr %5, align 8, !dbg !2133, !tbaa !1443
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2134
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2135
  %14 = load ptr, ptr %13, align 8, !dbg !2135, !tbaa !1514
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2136
  %16 = load ptr, ptr %15, align 8, !dbg !2136, !tbaa !1517
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2137
  %18 = add i64 %17, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %18, metadata !2125, metadata !DIExpression()), !dbg !2127
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %19, metadata !2126, metadata !DIExpression()), !dbg !2127
  %20 = load i32, ptr %5, align 8, !dbg !2140, !tbaa !1443
  %21 = load ptr, ptr %13, align 8, !dbg !2141, !tbaa !1514
  %22 = load ptr, ptr %15, align 8, !dbg !2142, !tbaa !1517
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2143
  store i32 %7, ptr %6, align 4, !dbg !2144, !tbaa !833
  ret ptr %19, !dbg !2145
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2114, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %1, metadata !2119, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr %2, metadata !2120, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr %3, metadata !2121, metadata !DIExpression()), !dbg !2146
  %5 = icmp eq ptr %3, null, !dbg !2147
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %6, metadata !2122, metadata !DIExpression()), !dbg !2146
  %7 = tail call ptr @__errno_location() #39, !dbg !2148
  %8 = load i32, ptr %7, align 4, !dbg !2148, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %8, metadata !2123, metadata !DIExpression()), !dbg !2146
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2149
  %10 = load i32, ptr %9, align 4, !dbg !2149, !tbaa !1493
  %11 = icmp eq ptr %2, null, !dbg !2150
  %12 = zext i1 %11 to i32, !dbg !2150
  %13 = or i32 %10, %12, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %13, metadata !2124, metadata !DIExpression()), !dbg !2146
  %14 = load i32, ptr %6, align 8, !dbg !2152, !tbaa !1443
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2153
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2154
  %17 = load ptr, ptr %16, align 8, !dbg !2154, !tbaa !1514
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2155
  %19 = load ptr, ptr %18, align 8, !dbg !2155, !tbaa !1517
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2156
  %21 = add i64 %20, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %21, metadata !2125, metadata !DIExpression()), !dbg !2146
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %22, metadata !2126, metadata !DIExpression()), !dbg !2146
  %23 = load i32, ptr %6, align 8, !dbg !2159, !tbaa !1443
  %24 = load ptr, ptr %16, align 8, !dbg !2160, !tbaa !1514
  %25 = load ptr, ptr %18, align 8, !dbg !2161, !tbaa !1517
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2162
  store i32 %8, ptr %7, align 4, !dbg !2163, !tbaa !833
  br i1 %11, label %28, label %27, !dbg !2164

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2165, !tbaa !2167
  br label %28, !dbg !2168

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2169
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2170 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2175, !tbaa !772
  call void @llvm.dbg.value(metadata ptr %1, metadata !2172, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()), !dbg !2177
  %2 = load i32, ptr @nslots, align 4, !tbaa !833
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()), !dbg !2177
  %3 = icmp sgt i32 %2, 1, !dbg !2178
  br i1 %3, label %4, label %6, !dbg !2180

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2178
  br label %10, !dbg !2180

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2181
  %8 = load ptr, ptr %7, align 8, !dbg !2181, !tbaa !2183
  %9 = icmp eq ptr %8, @slot0, !dbg !2185
  br i1 %9, label %17, label %16, !dbg !2186

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2173, metadata !DIExpression()), !dbg !2177
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2187
  %13 = load ptr, ptr %12, align 8, !dbg !2187, !tbaa !2183
  tail call void @free(ptr noundef %13) #36, !dbg !2188
  %14 = add nuw nsw i64 %11, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %14, metadata !2173, metadata !DIExpression()), !dbg !2177
  %15 = icmp eq i64 %14, %5, !dbg !2178
  br i1 %15, label %6, label %10, !dbg !2180, !llvm.loop !2190

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2192
  store i64 256, ptr @slotvec0, align 8, !dbg !2194, !tbaa !2195
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2196, !tbaa !2183
  br label %17, !dbg !2197

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2198
  br i1 %18, label %20, label %19, !dbg !2200

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2201
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2203, !tbaa !772
  br label %20, !dbg !2204

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2205, !tbaa !833
  ret void, !dbg !2206
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2207 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata ptr %1, metadata !2213, metadata !DIExpression()), !dbg !2214
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2215
  ret ptr %3, !dbg !2216
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2217 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata ptr %1, metadata !2222, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i64 %2, metadata !2223, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata ptr %3, metadata !2224, metadata !DIExpression()), !dbg !2237
  %6 = tail call ptr @__errno_location() #39, !dbg !2238
  %7 = load i32, ptr %6, align 4, !dbg !2238, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %7, metadata !2225, metadata !DIExpression()), !dbg !2237
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2239, !tbaa !772
  call void @llvm.dbg.value(metadata ptr %8, metadata !2226, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2227, metadata !DIExpression()), !dbg !2237
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2240
  br i1 %9, label %10, label %11, !dbg !2240

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2242
  unreachable, !dbg !2242

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2243, !tbaa !833
  %13 = icmp sgt i32 %12, %0, !dbg !2244
  br i1 %13, label %32, label %14, !dbg !2245

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2246
  call void @llvm.dbg.value(metadata i1 %15, metadata !2228, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2247
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2248
  %16 = sext i32 %12 to i64, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %16, metadata !2231, metadata !DIExpression()), !dbg !2247
  store i64 %16, ptr %5, align 8, !dbg !2250, !tbaa !2167
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2251
  %18 = add nuw nsw i32 %0, 1, !dbg !2252
  %19 = sub i32 %18, %12, !dbg !2253
  %20 = sext i32 %19 to i64, !dbg !2254
  call void @llvm.dbg.value(metadata ptr %5, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2255
  call void @llvm.dbg.value(metadata ptr %21, metadata !2226, metadata !DIExpression()), !dbg !2237
  store ptr %21, ptr @slotvec, align 8, !dbg !2256, !tbaa !772
  br i1 %15, label %22, label %23, !dbg !2257

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2258, !tbaa.struct !2260
  br label %23, !dbg !2261

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2262, !tbaa !833
  %25 = sext i32 %24 to i64, !dbg !2263
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2263
  %27 = load i64, ptr %5, align 8, !dbg !2264, !tbaa !2167
  call void @llvm.dbg.value(metadata i64 %27, metadata !2231, metadata !DIExpression()), !dbg !2247
  %28 = sub nsw i64 %27, %25, !dbg !2265
  %29 = shl i64 %28, 4, !dbg !2266
  call void @llvm.dbg.value(metadata ptr %26, metadata !1645, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !1648, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %29, metadata !1649, metadata !DIExpression()), !dbg !2267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2269
  %30 = load i64, ptr %5, align 8, !dbg !2270, !tbaa !2167
  call void @llvm.dbg.value(metadata i64 %30, metadata !2231, metadata !DIExpression()), !dbg !2247
  %31 = trunc i64 %30 to i32, !dbg !2270
  store i32 %31, ptr @nslots, align 4, !dbg !2271, !tbaa !833
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2272
  br label %32, !dbg !2273

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2237
  call void @llvm.dbg.value(metadata ptr %33, metadata !2226, metadata !DIExpression()), !dbg !2237
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2274
  %36 = load i64, ptr %35, align 8, !dbg !2275, !tbaa !2195
  call void @llvm.dbg.value(metadata i64 %36, metadata !2232, metadata !DIExpression()), !dbg !2276
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2277
  %38 = load ptr, ptr %37, align 8, !dbg !2277, !tbaa !2183
  call void @llvm.dbg.value(metadata ptr %38, metadata !2234, metadata !DIExpression()), !dbg !2276
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2278
  %40 = load i32, ptr %39, align 4, !dbg !2278, !tbaa !1493
  %41 = or i32 %40, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %41, metadata !2235, metadata !DIExpression()), !dbg !2276
  %42 = load i32, ptr %3, align 8, !dbg !2280, !tbaa !1443
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2281
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2282
  %45 = load ptr, ptr %44, align 8, !dbg !2282, !tbaa !1514
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2283
  %47 = load ptr, ptr %46, align 8, !dbg !2283, !tbaa !1517
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %48, metadata !2236, metadata !DIExpression()), !dbg !2276
  %49 = icmp ugt i64 %36, %48, !dbg !2285
  br i1 %49, label %60, label %50, !dbg !2287

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %51, metadata !2232, metadata !DIExpression()), !dbg !2276
  store i64 %51, ptr %35, align 8, !dbg !2290, !tbaa !2195
  %52 = icmp eq ptr %38, @slot0, !dbg !2291
  br i1 %52, label %54, label %53, !dbg !2293

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2294
  br label %54, !dbg !2294

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2295
  call void @llvm.dbg.value(metadata ptr %55, metadata !2234, metadata !DIExpression()), !dbg !2276
  store ptr %55, ptr %37, align 8, !dbg !2296, !tbaa !2183
  %56 = load i32, ptr %3, align 8, !dbg !2297, !tbaa !1443
  %57 = load ptr, ptr %44, align 8, !dbg !2298, !tbaa !1514
  %58 = load ptr, ptr %46, align 8, !dbg !2299, !tbaa !1517
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2300
  br label %60, !dbg !2301

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2276
  call void @llvm.dbg.value(metadata ptr %61, metadata !2234, metadata !DIExpression()), !dbg !2276
  store i32 %7, ptr %6, align 4, !dbg !2302, !tbaa !833
  ret ptr %61, !dbg !2303
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %1, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %2, metadata !2310, metadata !DIExpression()), !dbg !2311
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2312
  ret ptr %4, !dbg !2313
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2314 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2316, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %0, metadata !2213, metadata !DIExpression()), !dbg !2318
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2320
  ret ptr %2, !dbg !2321
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2322 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %1, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata ptr %0, metadata !2309, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i64 %1, metadata !2310, metadata !DIExpression()), !dbg !2329
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2331
  ret ptr %3, !dbg !2332
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2333 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %1, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata ptr %2, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2340, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2356, !alias.scope !2344
  %5 = icmp eq i32 %1, 10, !dbg !2357
  br i1 %5, label %6, label %7, !dbg !2359

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2360, !noalias !2344
  unreachable, !dbg !2360

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2361, !tbaa !1443, !alias.scope !2344
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2362
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2363
  ret ptr %8, !dbg !2364
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2365 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 %1, metadata !2370, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %2, metadata !2371, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %3, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2373, metadata !DIExpression()), !dbg !2376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377), !dbg !2380
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2353, metadata !DIExpression()), !dbg !2383
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2383, !alias.scope !2377
  %6 = icmp eq i32 %1, 10, !dbg !2384
  br i1 %6, label %7, label %8, !dbg !2385

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2386, !noalias !2377
  unreachable, !dbg !2386

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2387, !tbaa !1443, !alias.scope !2377
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2388
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2389
  ret ptr %9, !dbg !2390
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2391 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata ptr %1, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2337, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %0, metadata !2338, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %1, metadata !2339, metadata !DIExpression()), !dbg !2398
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2340, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2353, metadata !DIExpression()), !dbg !2408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2408, !alias.scope !2402
  %4 = icmp eq i32 %0, 10, !dbg !2409
  br i1 %4, label %5, label %6, !dbg !2410

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2411, !noalias !2402
  unreachable, !dbg !2411

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2412, !tbaa !1443, !alias.scope !2402
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2413
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2414
  ret ptr %7, !dbg !2415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2416 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %1, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %2, metadata !2422, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %0, metadata !2370, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %1, metadata !2371, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %2, metadata !2372, metadata !DIExpression()), !dbg !2424
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2426
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2373, metadata !DIExpression()), !dbg !2427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2353, metadata !DIExpression()), !dbg !2434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2434, !alias.scope !2428
  %5 = icmp eq i32 %0, 10, !dbg !2435
  br i1 %5, label %6, label %7, !dbg !2436

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2437, !noalias !2428
  unreachable, !dbg !2437

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2438, !tbaa !1443, !alias.scope !2428
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2440
  ret ptr %8, !dbg !2441
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2442 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %1, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 %2, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2453, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %4, metadata !1460, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %2, metadata !1461, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %2, metadata !1463, metadata !DIExpression()), !dbg !2455
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2457
  %6 = lshr i8 %2, 5, !dbg !2458
  %7 = zext i8 %6 to i64, !dbg !2458
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2459
  call void @llvm.dbg.value(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !2455
  %9 = and i8 %2, 31, !dbg !2460
  %10 = zext i8 %9 to i32, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %10, metadata !1466, metadata !DIExpression()), !dbg !2455
  %11 = load i32, ptr %8, align 4, !dbg !2461, !tbaa !833
  %12 = lshr i32 %11, %10, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %12, metadata !1467, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2455
  %13 = and i32 %12, 1, !dbg !2463
  %14 = xor i32 %13, 1, !dbg !2463
  %15 = shl nuw i32 %14, %10, !dbg !2464
  %16 = xor i32 %15, %11, !dbg !2465
  store i32 %16, ptr %8, align 4, !dbg !2465, !tbaa !833
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2466
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2467
  ret ptr %17, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2469 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %1, metadata !2474, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 -1, metadata !2447, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 %1, metadata !2448, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2449, metadata !DIExpression()), !dbg !2479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2480, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %3, metadata !1460, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %1, metadata !1461, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %1, metadata !1463, metadata !DIExpression()), !dbg !2481
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2483
  %5 = lshr i8 %1, 5, !dbg !2484
  %6 = zext i8 %5 to i64, !dbg !2484
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2485
  call void @llvm.dbg.value(metadata ptr %7, metadata !1464, metadata !DIExpression()), !dbg !2481
  %8 = and i8 %1, 31, !dbg !2486
  %9 = zext i8 %8 to i32, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %9, metadata !1466, metadata !DIExpression()), !dbg !2481
  %10 = load i32, ptr %7, align 4, !dbg !2487, !tbaa !833
  %11 = lshr i32 %10, %9, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %11, metadata !1467, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2481
  %12 = and i32 %11, 1, !dbg !2489
  %13 = xor i32 %12, 1, !dbg !2489
  %14 = shl nuw i32 %13, %9, !dbg !2490
  %15 = xor i32 %14, %10, !dbg !2491
  store i32 %15, ptr %7, align 4, !dbg !2491, !tbaa !833
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2492
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2493
  ret ptr %16, !dbg !2494
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2495 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %0, metadata !2473, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 58, metadata !2474, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i64 -1, metadata !2447, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 58, metadata !2448, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2449, metadata !DIExpression()), !dbg !2504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2505, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %2, metadata !1460, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 58, metadata !1461, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 58, metadata !1463, metadata !DIExpression()), !dbg !2506
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2508
  call void @llvm.dbg.value(metadata ptr %3, metadata !1464, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 26, metadata !1466, metadata !DIExpression()), !dbg !2506
  %4 = load i32, ptr %3, align 4, !dbg !2509, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %4, metadata !1467, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2506
  %5 = or i32 %4, 67108864, !dbg !2510
  store i32 %5, ptr %3, align 4, !dbg !2510, !tbaa !833
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2511
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2512
  ret ptr %6, !dbg !2513
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2514 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %1, metadata !2447, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 58, metadata !2448, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2521
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2449, metadata !DIExpression()), !dbg !2522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2523, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %3, metadata !1460, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 58, metadata !1461, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 58, metadata !1463, metadata !DIExpression()), !dbg !2524
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2526
  call void @llvm.dbg.value(metadata ptr %4, metadata !1464, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 26, metadata !1466, metadata !DIExpression()), !dbg !2524
  %5 = load i32, ptr %4, align 4, !dbg !2527, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %5, metadata !1467, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2524
  %6 = or i32 %5, 67108864, !dbg !2528
  store i32 %6, ptr %4, align 4, !dbg !2528, !tbaa !833
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2529
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2530
  ret ptr %7, !dbg !2531
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2532 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %0, metadata !2534, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata ptr %2, metadata !2536, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2537, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2543
  %5 = icmp eq i32 %1, 10, !dbg !2544
  br i1 %5, label %6, label %7, !dbg !2545

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2546, !noalias !2547
  unreachable, !dbg !2546

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2543
  store i32 %1, ptr %4, align 8, !dbg !2550, !tbaa.struct !2454
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2550
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %4, metadata !1460, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 58, metadata !1461, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 58, metadata !1463, metadata !DIExpression()), !dbg !2551
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2553
  call void @llvm.dbg.value(metadata ptr %9, metadata !1464, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 26, metadata !1466, metadata !DIExpression()), !dbg !2551
  %10 = load i32, ptr %9, align 4, !dbg !2554, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %10, metadata !1467, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2551
  %11 = or i32 %10, 67108864, !dbg !2555
  store i32 %11, ptr %9, align 4, !dbg !2555, !tbaa !833
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2556
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2557
  ret ptr %12, !dbg !2558
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2559 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %1, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %2, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %3, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %1, metadata !2573, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %2, metadata !2574, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %3, metadata !2575, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 -1, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2580
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2582, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %1, metadata !1501, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %2, metadata !1502, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !2583
  store i32 10, ptr %5, align 8, !dbg !2585, !tbaa !1443
  %6 = icmp ne ptr %1, null, !dbg !2586
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2587
  br i1 %8, label %10, label %9, !dbg !2587

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2588
  unreachable, !dbg !2588

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2589
  store ptr %1, ptr %11, align 8, !dbg !2590, !tbaa !1514
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2591
  store ptr %2, ptr %12, align 8, !dbg !2592, !tbaa !1517
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2593
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2594
  ret ptr %13, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2569 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %1, metadata !2573, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %2, metadata !2574, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %3, metadata !2575, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %4, metadata !2576, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2577, metadata !DIExpression()), !dbg !2598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2599, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %6, metadata !1500, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %1, metadata !1501, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %2, metadata !1502, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %6, metadata !1500, metadata !DIExpression()), !dbg !2600
  store i32 10, ptr %6, align 8, !dbg !2602, !tbaa !1443
  %7 = icmp ne ptr %1, null, !dbg !2603
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2604
  br i1 %9, label %11, label %10, !dbg !2604

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2605
  unreachable, !dbg !2605

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2606
  store ptr %1, ptr %12, align 8, !dbg !2607, !tbaa !1514
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2608
  store ptr %2, ptr %13, align 8, !dbg !2609, !tbaa !1517
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2611
  ret ptr %14, !dbg !2612
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2563, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %0, metadata !2564, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2565, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %2, metadata !2566, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 0, metadata !2568, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %0, metadata !2573, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %1, metadata !2574, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %2, metadata !2575, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 -1, metadata !2576, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2577, metadata !DIExpression()), !dbg !2626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2627, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr %0, metadata !1501, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr %1, metadata !1502, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !2628
  store i32 10, ptr %4, align 8, !dbg !2630, !tbaa !1443
  %5 = icmp ne ptr %0, null, !dbg !2631
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2632
  br i1 %7, label %9, label %8, !dbg !2632

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2633
  unreachable, !dbg !2633

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2634
  store ptr %0, ptr %10, align 8, !dbg !2635, !tbaa !1514
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2636
  store ptr %1, ptr %11, align 8, !dbg !2637, !tbaa !1517
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2638
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2639
  ret ptr %12, !dbg !2640
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2641 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %1, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %2, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %3, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 0, metadata !2568, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %0, metadata !2573, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %1, metadata !2574, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %2, metadata !2575, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %3, metadata !2576, metadata !DIExpression()), !dbg !2650
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2652
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2654, !tbaa.struct !2454
  call void @llvm.dbg.value(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %0, metadata !1501, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %1, metadata !1502, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !2655
  store i32 10, ptr %5, align 8, !dbg !2657, !tbaa !1443
  %6 = icmp ne ptr %0, null, !dbg !2658
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2659
  br i1 %8, label %10, label %9, !dbg !2659

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2660
  unreachable, !dbg !2660

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2661
  store ptr %0, ptr %11, align 8, !dbg !2662, !tbaa !1514
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2663
  store ptr %1, ptr %12, align 8, !dbg !2664, !tbaa !1517
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2665
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2666
  ret ptr %13, !dbg !2667
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %2, metadata !2674, metadata !DIExpression()), !dbg !2675
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2676
  ret ptr %4, !dbg !2677
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2678 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %1, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %0, metadata !2673, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2685
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2687
  ret ptr %3, !dbg !2688
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %1, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 -1, metadata !2674, metadata !DIExpression()), !dbg !2696
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2698
  ret ptr %3, !dbg !2699
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2700 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %0, metadata !2673, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 -1, metadata !2674, metadata !DIExpression()), !dbg !2708
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2710
  ret ptr %2, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2712 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2751, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %1, metadata !2752, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %2, metadata !2753, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %3, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %4, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %5, metadata !2756, metadata !DIExpression()), !dbg !2757
  %7 = icmp eq ptr %1, null, !dbg !2758
  br i1 %7, label %10, label %8, !dbg !2760

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2761
  br label %12, !dbg !2761

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #36, !dbg !2762
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #36, !dbg !2763
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2763
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2764
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #36, !dbg !2765
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #36, !dbg !2765
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2766
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
  ], !dbg !2767

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #36, !dbg !2768
  %21 = load ptr, ptr %4, align 8, !dbg !2768, !tbaa !772
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2768
  br label %147, !dbg !2770

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #36, !dbg !2771
  %25 = load ptr, ptr %4, align 8, !dbg !2771, !tbaa !772
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2771
  %27 = load ptr, ptr %26, align 8, !dbg !2771, !tbaa !772
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2771
  br label %147, !dbg !2772

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #36, !dbg !2773
  %31 = load ptr, ptr %4, align 8, !dbg !2773, !tbaa !772
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2773
  %33 = load ptr, ptr %32, align 8, !dbg !2773, !tbaa !772
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2773
  %35 = load ptr, ptr %34, align 8, !dbg !2773, !tbaa !772
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2773
  br label %147, !dbg !2774

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #36, !dbg !2775
  %39 = load ptr, ptr %4, align 8, !dbg !2775, !tbaa !772
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2775
  %41 = load ptr, ptr %40, align 8, !dbg !2775, !tbaa !772
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2775
  %43 = load ptr, ptr %42, align 8, !dbg !2775, !tbaa !772
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2775
  %45 = load ptr, ptr %44, align 8, !dbg !2775, !tbaa !772
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2775
  br label %147, !dbg !2776

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #36, !dbg !2777
  %49 = load ptr, ptr %4, align 8, !dbg !2777, !tbaa !772
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2777
  %51 = load ptr, ptr %50, align 8, !dbg !2777, !tbaa !772
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2777
  %53 = load ptr, ptr %52, align 8, !dbg !2777, !tbaa !772
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2777
  %55 = load ptr, ptr %54, align 8, !dbg !2777, !tbaa !772
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2777
  %57 = load ptr, ptr %56, align 8, !dbg !2777, !tbaa !772
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2777
  br label %147, !dbg !2778

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #36, !dbg !2779
  %61 = load ptr, ptr %4, align 8, !dbg !2779, !tbaa !772
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2779
  %63 = load ptr, ptr %62, align 8, !dbg !2779, !tbaa !772
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2779
  %65 = load ptr, ptr %64, align 8, !dbg !2779, !tbaa !772
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2779
  %67 = load ptr, ptr %66, align 8, !dbg !2779, !tbaa !772
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2779
  %69 = load ptr, ptr %68, align 8, !dbg !2779, !tbaa !772
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2779
  %71 = load ptr, ptr %70, align 8, !dbg !2779, !tbaa !772
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2779
  br label %147, !dbg !2780

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #36, !dbg !2781
  %75 = load ptr, ptr %4, align 8, !dbg !2781, !tbaa !772
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2781
  %77 = load ptr, ptr %76, align 8, !dbg !2781, !tbaa !772
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2781
  %79 = load ptr, ptr %78, align 8, !dbg !2781, !tbaa !772
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2781
  %81 = load ptr, ptr %80, align 8, !dbg !2781, !tbaa !772
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2781
  %83 = load ptr, ptr %82, align 8, !dbg !2781, !tbaa !772
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2781
  %85 = load ptr, ptr %84, align 8, !dbg !2781, !tbaa !772
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2781
  %87 = load ptr, ptr %86, align 8, !dbg !2781, !tbaa !772
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2781
  br label %147, !dbg !2782

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #36, !dbg !2783
  %91 = load ptr, ptr %4, align 8, !dbg !2783, !tbaa !772
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2783
  %93 = load ptr, ptr %92, align 8, !dbg !2783, !tbaa !772
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2783
  %95 = load ptr, ptr %94, align 8, !dbg !2783, !tbaa !772
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2783
  %97 = load ptr, ptr %96, align 8, !dbg !2783, !tbaa !772
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2783
  %99 = load ptr, ptr %98, align 8, !dbg !2783, !tbaa !772
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2783
  %101 = load ptr, ptr %100, align 8, !dbg !2783, !tbaa !772
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2783
  %103 = load ptr, ptr %102, align 8, !dbg !2783, !tbaa !772
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2783
  %105 = load ptr, ptr %104, align 8, !dbg !2783, !tbaa !772
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2783
  br label %147, !dbg !2784

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #36, !dbg !2785
  %109 = load ptr, ptr %4, align 8, !dbg !2785, !tbaa !772
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2785
  %111 = load ptr, ptr %110, align 8, !dbg !2785, !tbaa !772
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2785
  %113 = load ptr, ptr %112, align 8, !dbg !2785, !tbaa !772
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2785
  %115 = load ptr, ptr %114, align 8, !dbg !2785, !tbaa !772
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2785
  %117 = load ptr, ptr %116, align 8, !dbg !2785, !tbaa !772
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2785
  %119 = load ptr, ptr %118, align 8, !dbg !2785, !tbaa !772
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2785
  %121 = load ptr, ptr %120, align 8, !dbg !2785, !tbaa !772
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2785
  %123 = load ptr, ptr %122, align 8, !dbg !2785, !tbaa !772
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2785
  %125 = load ptr, ptr %124, align 8, !dbg !2785, !tbaa !772
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2785
  br label %147, !dbg !2786

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #36, !dbg !2787
  %129 = load ptr, ptr %4, align 8, !dbg !2787, !tbaa !772
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2787
  %131 = load ptr, ptr %130, align 8, !dbg !2787, !tbaa !772
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2787
  %133 = load ptr, ptr %132, align 8, !dbg !2787, !tbaa !772
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2787
  %135 = load ptr, ptr %134, align 8, !dbg !2787, !tbaa !772
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2787
  %137 = load ptr, ptr %136, align 8, !dbg !2787, !tbaa !772
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2787
  %139 = load ptr, ptr %138, align 8, !dbg !2787, !tbaa !772
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2787
  %141 = load ptr, ptr %140, align 8, !dbg !2787, !tbaa !772
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2787
  %143 = load ptr, ptr %142, align 8, !dbg !2787, !tbaa !772
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2787
  %145 = load ptr, ptr %144, align 8, !dbg !2787, !tbaa !772
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2787
  br label %147, !dbg !2788

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2789
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %1, metadata !2795, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %2, metadata !2796, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %3, metadata !2797, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 0, metadata !2799, metadata !DIExpression()), !dbg !2800
  br label %6, !dbg !2801

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2803
  call void @llvm.dbg.value(metadata i64 %7, metadata !2799, metadata !DIExpression()), !dbg !2800
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2804
  %9 = load ptr, ptr %8, align 8, !dbg !2804, !tbaa !772
  %10 = icmp eq ptr %9, null, !dbg !2806
  %11 = add i64 %7, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %11, metadata !2799, metadata !DIExpression()), !dbg !2800
  br i1 %10, label %12, label %6, !dbg !2806, !llvm.loop !2808

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2810
  ret void, !dbg !2811
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2812 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2827, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %1, metadata !2828, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %2, metadata !2829, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %3, metadata !2830, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2831, metadata !DIExpression()), !dbg !2836
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 0, metadata !2832, metadata !DIExpression()), !dbg !2835
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2832, metadata !DIExpression()), !dbg !2835
  %10 = icmp sgt i32 %9, -1, !dbg !2839
  br i1 %10, label %18, label %11, !dbg !2839

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2839
  store i32 %12, ptr %7, align 8, !dbg !2839
  %13 = icmp ult i32 %9, -7, !dbg !2839
  br i1 %13, label %14, label %18, !dbg !2839

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2839
  %16 = sext i32 %9 to i64, !dbg !2839
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2839
  br label %22, !dbg !2839

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2839
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2839
  store ptr %21, ptr %4, align 8, !dbg !2839
  br label %22, !dbg !2839

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2839
  %25 = load ptr, ptr %24, align 8, !dbg !2839
  store ptr %25, ptr %6, align 8, !dbg !2842, !tbaa !772
  %26 = icmp eq ptr %25, null, !dbg !2843
  br i1 %26, label %197, label %27, !dbg !2844

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 1, metadata !2832, metadata !DIExpression()), !dbg !2835
  %28 = icmp sgt i32 %23, -1, !dbg !2839
  br i1 %28, label %36, label %29, !dbg !2839

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2839
  store i32 %30, ptr %7, align 8, !dbg !2839
  %31 = icmp ult i32 %23, -7, !dbg !2839
  br i1 %31, label %32, label %36, !dbg !2839

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2839
  %34 = sext i32 %23 to i64, !dbg !2839
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2839
  br label %40, !dbg !2839

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2839
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2839
  store ptr %39, ptr %4, align 8, !dbg !2839
  br label %40, !dbg !2839

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2839
  %43 = load ptr, ptr %42, align 8, !dbg !2839
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2845
  store ptr %43, ptr %44, align 8, !dbg !2842, !tbaa !772
  %45 = icmp eq ptr %43, null, !dbg !2843
  br i1 %45, label %197, label %46, !dbg !2844

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 2, metadata !2832, metadata !DIExpression()), !dbg !2835
  %47 = icmp sgt i32 %41, -1, !dbg !2839
  br i1 %47, label %55, label %48, !dbg !2839

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2839
  store i32 %49, ptr %7, align 8, !dbg !2839
  %50 = icmp ult i32 %41, -7, !dbg !2839
  br i1 %50, label %51, label %55, !dbg !2839

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2839
  %53 = sext i32 %41 to i64, !dbg !2839
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2839
  br label %59, !dbg !2839

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2839
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2839
  store ptr %58, ptr %4, align 8, !dbg !2839
  br label %59, !dbg !2839

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2839
  %62 = load ptr, ptr %61, align 8, !dbg !2839
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2845
  store ptr %62, ptr %63, align 8, !dbg !2842, !tbaa !772
  %64 = icmp eq ptr %62, null, !dbg !2843
  br i1 %64, label %197, label %65, !dbg !2844

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 3, metadata !2832, metadata !DIExpression()), !dbg !2835
  %66 = icmp sgt i32 %60, -1, !dbg !2839
  br i1 %66, label %74, label %67, !dbg !2839

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2839
  store i32 %68, ptr %7, align 8, !dbg !2839
  %69 = icmp ult i32 %60, -7, !dbg !2839
  br i1 %69, label %70, label %74, !dbg !2839

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2839
  %72 = sext i32 %60 to i64, !dbg !2839
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2839
  br label %78, !dbg !2839

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2839
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2839
  store ptr %77, ptr %4, align 8, !dbg !2839
  br label %78, !dbg !2839

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2839
  %81 = load ptr, ptr %80, align 8, !dbg !2839
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2845
  store ptr %81, ptr %82, align 8, !dbg !2842, !tbaa !772
  %83 = icmp eq ptr %81, null, !dbg !2843
  br i1 %83, label %197, label %84, !dbg !2844

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 4, metadata !2832, metadata !DIExpression()), !dbg !2835
  %85 = icmp sgt i32 %79, -1, !dbg !2839
  br i1 %85, label %93, label %86, !dbg !2839

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2839
  store i32 %87, ptr %7, align 8, !dbg !2839
  %88 = icmp ult i32 %79, -7, !dbg !2839
  br i1 %88, label %89, label %93, !dbg !2839

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2839
  %91 = sext i32 %79 to i64, !dbg !2839
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2839
  br label %97, !dbg !2839

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2839
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2839
  store ptr %96, ptr %4, align 8, !dbg !2839
  br label %97, !dbg !2839

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2839
  %100 = load ptr, ptr %99, align 8, !dbg !2839
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2845
  store ptr %100, ptr %101, align 8, !dbg !2842, !tbaa !772
  %102 = icmp eq ptr %100, null, !dbg !2843
  br i1 %102, label %197, label %103, !dbg !2844

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 5, metadata !2832, metadata !DIExpression()), !dbg !2835
  %104 = icmp sgt i32 %98, -1, !dbg !2839
  br i1 %104, label %112, label %105, !dbg !2839

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2839
  store i32 %106, ptr %7, align 8, !dbg !2839
  %107 = icmp ult i32 %98, -7, !dbg !2839
  br i1 %107, label %108, label %112, !dbg !2839

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2839
  %110 = sext i32 %98 to i64, !dbg !2839
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2839
  br label %116, !dbg !2839

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2839
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2839
  store ptr %115, ptr %4, align 8, !dbg !2839
  br label %116, !dbg !2839

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2839
  %119 = load ptr, ptr %118, align 8, !dbg !2839
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2845
  store ptr %119, ptr %120, align 8, !dbg !2842, !tbaa !772
  %121 = icmp eq ptr %119, null, !dbg !2843
  br i1 %121, label %197, label %122, !dbg !2844

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 6, metadata !2832, metadata !DIExpression()), !dbg !2835
  %123 = icmp sgt i32 %117, -1, !dbg !2839
  br i1 %123, label %131, label %124, !dbg !2839

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2839
  store i32 %125, ptr %7, align 8, !dbg !2839
  %126 = icmp ult i32 %117, -7, !dbg !2839
  br i1 %126, label %127, label %131, !dbg !2839

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2839
  %129 = sext i32 %117 to i64, !dbg !2839
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2839
  br label %135, !dbg !2839

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2839
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2839
  store ptr %134, ptr %4, align 8, !dbg !2839
  br label %135, !dbg !2839

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2839
  %138 = load ptr, ptr %137, align 8, !dbg !2839
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2845
  store ptr %138, ptr %139, align 8, !dbg !2842, !tbaa !772
  %140 = icmp eq ptr %138, null, !dbg !2843
  br i1 %140, label %197, label %141, !dbg !2844

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 7, metadata !2832, metadata !DIExpression()), !dbg !2835
  %142 = icmp sgt i32 %136, -1, !dbg !2839
  br i1 %142, label %150, label %143, !dbg !2839

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2839
  store i32 %144, ptr %7, align 8, !dbg !2839
  %145 = icmp ult i32 %136, -7, !dbg !2839
  br i1 %145, label %146, label %150, !dbg !2839

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2839
  %148 = sext i32 %136 to i64, !dbg !2839
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2839
  br label %154, !dbg !2839

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2839
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2839
  store ptr %153, ptr %4, align 8, !dbg !2839
  br label %154, !dbg !2839

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2839
  %157 = load ptr, ptr %156, align 8, !dbg !2839
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2845
  store ptr %157, ptr %158, align 8, !dbg !2842, !tbaa !772
  %159 = icmp eq ptr %157, null, !dbg !2843
  br i1 %159, label %197, label %160, !dbg !2844

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 8, metadata !2832, metadata !DIExpression()), !dbg !2835
  %161 = icmp sgt i32 %155, -1, !dbg !2839
  br i1 %161, label %169, label %162, !dbg !2839

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2839
  store i32 %163, ptr %7, align 8, !dbg !2839
  %164 = icmp ult i32 %155, -7, !dbg !2839
  br i1 %164, label %165, label %169, !dbg !2839

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2839
  %167 = sext i32 %155 to i64, !dbg !2839
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2839
  br label %173, !dbg !2839

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2839
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2839
  store ptr %172, ptr %4, align 8, !dbg !2839
  br label %173, !dbg !2839

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2839
  %176 = load ptr, ptr %175, align 8, !dbg !2839
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2845
  store ptr %176, ptr %177, align 8, !dbg !2842, !tbaa !772
  %178 = icmp eq ptr %176, null, !dbg !2843
  br i1 %178, label %197, label %179, !dbg !2844

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 9, metadata !2832, metadata !DIExpression()), !dbg !2835
  %180 = icmp sgt i32 %174, -1, !dbg !2839
  br i1 %180, label %188, label %181, !dbg !2839

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2839
  store i32 %182, ptr %7, align 8, !dbg !2839
  %183 = icmp ult i32 %174, -7, !dbg !2839
  br i1 %183, label %184, label %188, !dbg !2839

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2839
  %186 = sext i32 %174 to i64, !dbg !2839
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2839
  br label %191, !dbg !2839

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2839
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2839
  store ptr %190, ptr %4, align 8, !dbg !2839
  br label %191, !dbg !2839

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2839
  %193 = load ptr, ptr %192, align 8, !dbg !2839
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2845
  store ptr %193, ptr %194, align 8, !dbg !2842, !tbaa !772
  %195 = icmp eq ptr %193, null, !dbg !2843
  %196 = select i1 %195, i64 9, i64 10, !dbg !2844
  br label %197, !dbg !2844

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2846
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2847
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2848
  ret void, !dbg !2848
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2849 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2853, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %1, metadata !2854, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %2, metadata !2855, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %3, metadata !2856, metadata !DIExpression()), !dbg !2858
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.va_start(ptr nonnull %5), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2862, !tbaa.struct !1137
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2862
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2862
  call void @llvm.va_end(ptr nonnull %5), !dbg !2863
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2864
  ret void, !dbg !2864
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2865 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2866, !tbaa !772
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !2866
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #36, !dbg !2867
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #36, !dbg !2867
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19.96, i32 noundef 5) #36, !dbg !2868
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.97, ptr noundef nonnull @.str.21) #36, !dbg !2868
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2869
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.98) #36, !dbg !2869
  ret void, !dbg !2870
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2871 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %2, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %2, metadata !2884, metadata !DIExpression()), !dbg !2885
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !2893
  %5 = icmp eq ptr %4, null, !dbg !2895
  br i1 %5, label %6, label %7, !dbg !2897

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2898
  unreachable, !dbg !2898

7:                                                ; preds = %3
  ret ptr %4, !dbg !2899
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2881 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !2884, metadata !DIExpression()), !dbg !2900
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2901
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !2902
  %5 = icmp eq ptr %4, null, !dbg !2904
  br i1 %5, label %6, label %7, !dbg !2905

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2906
  unreachable, !dbg !2906

7:                                                ; preds = %3
  ret ptr %4, !dbg !2907
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2908 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2912, metadata !DIExpression()), !dbg !2913
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2914
  call void @llvm.dbg.value(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !2915
  %3 = icmp eq ptr %2, null, !dbg !2917
  br i1 %3, label %4, label %5, !dbg !2918

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2919
  unreachable, !dbg !2919

5:                                                ; preds = %1
  ret ptr %2, !dbg !2920
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2921 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2922 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2926, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !2935
  %3 = icmp eq ptr %2, null, !dbg !2937
  br i1 %3, label %4, label %5, !dbg !2938

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2939
  unreachable, !dbg !2939

5:                                                ; preds = %1
  ret ptr %2, !dbg !2940
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2941 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2945, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %0, metadata !2912, metadata !DIExpression()), !dbg !2947
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !2950
  %3 = icmp eq ptr %2, null, !dbg !2952
  br i1 %3, label %4, label %5, !dbg !2953

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2954
  unreachable, !dbg !2954

5:                                                ; preds = %1
  ret ptr %2, !dbg !2955
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2956 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2968
  %3 = icmp eq i64 %1, 0, !dbg !2970
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2970
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2971
  call void @llvm.dbg.value(metadata ptr %5, metadata !2888, metadata !DIExpression()), !dbg !2972
  %6 = icmp eq ptr %5, null, !dbg !2974
  br i1 %6, label %7, label %8, !dbg !2975

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2976
  unreachable, !dbg !2976

8:                                                ; preds = %2
  ret ptr %5, !dbg !2977
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2978 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2979 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %0, metadata !2986, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2992
  %3 = icmp eq i64 %1, 0, !dbg !2994
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2994
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %5, metadata !2888, metadata !DIExpression()), !dbg !2996
  %6 = icmp eq ptr %5, null, !dbg !2998
  br i1 %6, label %7, label %8, !dbg !2999

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3000
  unreachable, !dbg !3000

8:                                                ; preds = %2
  ret ptr %5, !dbg !3001
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3002 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %1, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %2, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %0, metadata !3010, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %2, metadata !3014, metadata !DIExpression()), !dbg !3015
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !3018
  %5 = icmp eq ptr %4, null, !dbg !3020
  br i1 %5, label %6, label %7, !dbg !3021

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3022
  unreachable, !dbg !3022

7:                                                ; preds = %3
  ret ptr %4, !dbg !3023
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3024 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr null, metadata !2880, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %0, metadata !2883, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()), !dbg !3031
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !3034
  %4 = icmp eq ptr %3, null, !dbg !3036
  br i1 %4, label %5, label %6, !dbg !3037

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3038
  unreachable, !dbg !3038

6:                                                ; preds = %2
  ret ptr %3, !dbg !3039
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3040 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr null, metadata !3006, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr null, metadata !3010, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3049
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3051
  call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !3052
  %4 = icmp eq ptr %3, null, !dbg !3054
  br i1 %4, label %5, label %6, !dbg !3055

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3056
  unreachable, !dbg !3056

6:                                                ; preds = %2
  ret ptr %3, !dbg !3057
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3058 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %1, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !709, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %1, metadata !710, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 1, metadata !711, metadata !DIExpression()), !dbg !3065
  %3 = load i64, ptr %1, align 8, !dbg !3067, !tbaa !2167
  call void @llvm.dbg.value(metadata i64 %3, metadata !712, metadata !DIExpression()), !dbg !3065
  %4 = icmp eq ptr %0, null, !dbg !3068
  br i1 %4, label %5, label %8, !dbg !3070

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3071
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3074
  br label %15, !dbg !3074

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3075
  %10 = add nuw i64 %9, 1, !dbg !3075
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3075
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3075
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %13, metadata !712, metadata !DIExpression()), !dbg !3065
  br i1 %12, label %14, label %15, !dbg !3078

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3079
  unreachable, !dbg !3079

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3065
  call void @llvm.dbg.value(metadata i64 %16, metadata !712, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %16, metadata !2883, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 1, metadata !2884, metadata !DIExpression()), !dbg !3080
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %17, metadata !2888, metadata !DIExpression()), !dbg !3083
  %18 = icmp eq ptr %17, null, !dbg !3085
  br i1 %18, label %19, label %20, !dbg !3086

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3087
  unreachable, !dbg !3087

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !709, metadata !DIExpression()), !dbg !3065
  store i64 %16, ptr %1, align 8, !dbg !3088, !tbaa !2167
  ret ptr %17, !dbg !3089
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !709, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %1, metadata !710, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %2, metadata !711, metadata !DIExpression()), !dbg !3090
  %4 = load i64, ptr %1, align 8, !dbg !3091, !tbaa !2167
  call void @llvm.dbg.value(metadata i64 %4, metadata !712, metadata !DIExpression()), !dbg !3090
  %5 = icmp eq ptr %0, null, !dbg !3092
  br i1 %5, label %6, label %13, !dbg !3093

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3094
  br i1 %7, label %8, label %20, !dbg !3095

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %9, metadata !712, metadata !DIExpression()), !dbg !3090
  %10 = icmp ugt i64 %2, 128, !dbg !3098
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %12, metadata !712, metadata !DIExpression()), !dbg !3090
  br label %20, !dbg !3100

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3101
  %15 = add nuw i64 %14, 1, !dbg !3101
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3101
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3101
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %18, metadata !712, metadata !DIExpression()), !dbg !3090
  br i1 %17, label %19, label %20, !dbg !3102

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3103
  unreachable, !dbg !3103

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3090
  call void @llvm.dbg.value(metadata i64 %21, metadata !712, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %21, metadata !2883, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %2, metadata !2884, metadata !DIExpression()), !dbg !3104
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3106
  call void @llvm.dbg.value(metadata ptr %22, metadata !2888, metadata !DIExpression()), !dbg !3107
  %23 = icmp eq ptr %22, null, !dbg !3109
  br i1 %23, label %24, label %25, !dbg !3110

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3111
  unreachable, !dbg !3111

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !709, metadata !DIExpression()), !dbg !3090
  store i64 %21, ptr %1, align 8, !dbg !3112, !tbaa !2167
  ret ptr %22, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !724, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %2, metadata !726, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %3, metadata !727, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %4, metadata !728, metadata !DIExpression()), !dbg !3114
  %6 = load i64, ptr %1, align 8, !dbg !3115, !tbaa !2167
  call void @llvm.dbg.value(metadata i64 %6, metadata !729, metadata !DIExpression()), !dbg !3114
  %7 = ashr i64 %6, 1, !dbg !3116
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3116
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3116
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %10, metadata !730, metadata !DIExpression()), !dbg !3114
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %11, metadata !730, metadata !DIExpression()), !dbg !3114
  %12 = icmp sgt i64 %3, -1, !dbg !3119
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3121
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %15, metadata !730, metadata !DIExpression()), !dbg !3114
  %16 = icmp slt i64 %4, 0, !dbg !3122
  br i1 %16, label %17, label %30, !dbg !3122

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3122
  br i1 %18, label %19, label %24, !dbg !3122

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3122
  %21 = udiv i64 9223372036854775807, %20, !dbg !3122
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3122
  br i1 %23, label %46, label %43, !dbg !3122

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3122
  br i1 %25, label %43, label %26, !dbg !3122

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3122
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3122
  %29 = icmp ult i64 %28, %15, !dbg !3122
  br i1 %29, label %46, label %43, !dbg !3122

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3122
  br i1 %31, label %43, label %32, !dbg !3122

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3122
  br i1 %33, label %34, label %40, !dbg !3122

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3122
  br i1 %35, label %43, label %36, !dbg !3122

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3122
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3122
  %39 = icmp ult i64 %38, %4, !dbg !3122
  br i1 %39, label %46, label %43, !dbg !3122

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3122
  br i1 %42, label %46, label %43, !dbg !3122

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !731, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3114
  %44 = mul i64 %15, %4, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %44, metadata !731, metadata !DIExpression()), !dbg !3114
  %45 = icmp slt i64 %44, 128, !dbg !3122
  br i1 %45, label %46, label %52, !dbg !3122

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !732, metadata !DIExpression()), !dbg !3114
  %48 = sdiv i64 %47, %4, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %48, metadata !730, metadata !DIExpression()), !dbg !3114
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %51, metadata !731, metadata !DIExpression()), !dbg !3114
  br label %52, !dbg !3127

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3114
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3114
  call void @llvm.dbg.value(metadata i64 %54, metadata !731, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %53, metadata !730, metadata !DIExpression()), !dbg !3114
  %55 = icmp eq ptr %0, null, !dbg !3128
  br i1 %55, label %56, label %57, !dbg !3130

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3131, !tbaa !2167
  br label %57, !dbg !3132

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3133
  %59 = icmp slt i64 %58, %2, !dbg !3135
  br i1 %59, label %60, label %97, !dbg !3136

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3137
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3137
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %63, metadata !730, metadata !DIExpression()), !dbg !3114
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3138
  br i1 %66, label %96, label %67, !dbg !3138

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3139

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3139
  br i1 %69, label %70, label %75, !dbg !3139

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3139
  %72 = udiv i64 9223372036854775807, %71, !dbg !3139
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3139
  br i1 %74, label %96, label %94, !dbg !3139

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3139
  br i1 %76, label %94, label %77, !dbg !3139

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3139
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3139
  %80 = icmp ult i64 %79, %63, !dbg !3139
  br i1 %80, label %96, label %94, !dbg !3139

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3139
  br i1 %82, label %94, label %83, !dbg !3139

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3139
  br i1 %84, label %85, label %91, !dbg !3139

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3139
  br i1 %86, label %94, label %87, !dbg !3139

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3139
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3139
  %90 = icmp ult i64 %89, %4, !dbg !3139
  br i1 %90, label %96, label %94, !dbg !3139

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3139
  br i1 %93, label %96, label %94, !dbg !3139

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !731, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3114
  %95 = mul i64 %63, %4, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %95, metadata !731, metadata !DIExpression()), !dbg !3114
  br label %97, !dbg !3140

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3141
  unreachable, !dbg !3141

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3114
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3114
  call void @llvm.dbg.value(metadata i64 %99, metadata !731, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %98, metadata !730, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2960, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %99, metadata !2961, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %99, metadata !2967, metadata !DIExpression()), !dbg !3144
  %100 = icmp eq i64 %99, 0, !dbg !3146
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3146
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %102, metadata !2888, metadata !DIExpression()), !dbg !3148
  %103 = icmp eq ptr %102, null, !dbg !3150
  br i1 %103, label %104, label %105, !dbg !3151

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3152
  unreachable, !dbg !3152

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !724, metadata !DIExpression()), !dbg !3114
  store i64 %98, ptr %1, align 8, !dbg !3153, !tbaa !2167
  ret ptr %102, !dbg !3154
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3155 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3157, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %0, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 1, metadata !3162, metadata !DIExpression()), !dbg !3163
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3165
  call void @llvm.dbg.value(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !3166
  %3 = icmp eq ptr %2, null, !dbg !3168
  br i1 %3, label %4, label %5, !dbg !3169

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3170
  unreachable, !dbg !3170

5:                                                ; preds = %1
  ret ptr %2, !dbg !3171
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3172 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3160 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3159, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3173
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !3175
  %4 = icmp eq ptr %3, null, !dbg !3177
  br i1 %4, label %5, label %6, !dbg !3178

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3179
  unreachable, !dbg !3179

6:                                                ; preds = %2
  ret ptr %3, !dbg !3180
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3181 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 1, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %0, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 1, metadata !3194, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %0, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 1, metadata !3194, metadata !DIExpression()), !dbg !3195
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3197
  call void @llvm.dbg.value(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !3198
  %3 = icmp eq ptr %2, null, !dbg !3200
  br i1 %3, label %4, label %5, !dbg !3201

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3202
  unreachable, !dbg !3202

5:                                                ; preds = %1
  ret ptr %2, !dbg !3203
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3186 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %1, metadata !3188, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %0, metadata !3191, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3194, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %0, metadata !3191, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3194, metadata !DIExpression()), !dbg !3205
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !3208
  %4 = icmp eq ptr %3, null, !dbg !3210
  br i1 %4, label %5, label %6, !dbg !3211

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3212
  unreachable, !dbg !3212

6:                                                ; preds = %2
  ret ptr %3, !dbg !3213
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2912, metadata !DIExpression()), !dbg !3221
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3223
  call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !3224
  %4 = icmp eq ptr %3, null, !dbg !3226
  br i1 %4, label %5, label %6, !dbg !3227

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3228
  unreachable, !dbg !3228

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3229, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()), !dbg !3237
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3239
  ret ptr %3, !dbg !3240
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3246, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !2928, metadata !DIExpression()), !dbg !3250
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3252
  call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !3253
  %4 = icmp eq ptr %3, null, !dbg !3255
  br i1 %4, label %5, label %6, !dbg !3256

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3257
  unreachable, !dbg !3257

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3229, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()), !dbg !3258
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3260
  ret ptr %3, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3262 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3267, metadata !DIExpression()), !dbg !3269
  %3 = add nsw i64 %1, 1, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %3, metadata !2926, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %3, metadata !2928, metadata !DIExpression()), !dbg !3273
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3275
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !3276
  %5 = icmp eq ptr %4, null, !dbg !3278
  br i1 %5, label %6, label %7, !dbg !3279

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3280
  unreachable, !dbg !3280

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3268, metadata !DIExpression()), !dbg !3269
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3281
  store i8 0, ptr %8, align 1, !dbg !3282, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %4, metadata !3229, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()), !dbg !3283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3285
  ret ptr %4, !dbg !3286
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3287 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3290
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3291
  %3 = add i64 %2, 1, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %3, metadata !3219, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %3, metadata !2912, metadata !DIExpression()), !dbg !3295
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3297
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !3298
  %5 = icmp eq ptr %4, null, !dbg !3300
  br i1 %5, label %6, label %7, !dbg !3301

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3302
  unreachable, !dbg !3302

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3229, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i64 %3, metadata !3236, metadata !DIExpression()), !dbg !3303
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3305
  ret ptr %4, !dbg !3306
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3307 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3312, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %1, metadata !3309, metadata !DIExpression()), !dbg !3313
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #36, !dbg !3312
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #36, !dbg !3312
  %3 = icmp eq i32 %1, 0, !dbg !3312
  tail call void @llvm.assume(i1 %3), !dbg !3312
  tail call void @abort() #38, !dbg !3314
  unreachable, !dbg !3314
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3353, metadata !DIExpression()), !dbg !3358
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3359
  call void @llvm.dbg.value(metadata i1 poison, metadata !3354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %0, metadata !3360, metadata !DIExpression()), !dbg !3363
  %3 = load i32, ptr %0, align 8, !dbg !3365, !tbaa !3366
  %4 = and i32 %3, 32, !dbg !3367
  %5 = icmp eq i32 %4, 0, !dbg !3367
  call void @llvm.dbg.value(metadata i1 %5, metadata !3356, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3358
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3368
  %7 = icmp eq i32 %6, 0, !dbg !3369
  call void @llvm.dbg.value(metadata i1 %7, metadata !3357, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3358
  br i1 %5, label %8, label %18, !dbg !3370

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3372
  call void @llvm.dbg.value(metadata i1 %9, metadata !3354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3358
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3373
  %11 = xor i1 %7, true, !dbg !3373
  %12 = sext i1 %11 to i32, !dbg !3373
  br i1 %10, label %21, label %13, !dbg !3373

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3374
  %15 = load i32, ptr %14, align 4, !dbg !3374, !tbaa !833
  %16 = icmp ne i32 %15, 9, !dbg !3375
  %17 = sext i1 %16 to i32, !dbg !3376
  br label %21, !dbg !3376

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3377

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3379
  store i32 0, ptr %20, align 4, !dbg !3381, !tbaa !833
  br label %21, !dbg !3379

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3358
  ret i32 %22, !dbg !3382
}

; Function Attrs: nounwind
declare !dbg !3383 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3387 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3425, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3426, metadata !DIExpression()), !dbg !3429
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3430
  call void @llvm.dbg.value(metadata i32 %2, metadata !3427, metadata !DIExpression()), !dbg !3429
  %3 = icmp slt i32 %2, 0, !dbg !3431
  br i1 %3, label %4, label %6, !dbg !3433

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3434
  br label %24, !dbg !3435

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3436
  %8 = icmp eq i32 %7, 0, !dbg !3436
  br i1 %8, label %13, label %9, !dbg !3438

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3439
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3440
  %12 = icmp eq i64 %11, -1, !dbg !3441
  br i1 %12, label %16, label %13, !dbg !3442

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3443
  %15 = icmp eq i32 %14, 0, !dbg !3443
  br i1 %15, label %16, label %18, !dbg !3444

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()), !dbg !3429
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %17, metadata !3428, metadata !DIExpression()), !dbg !3429
  br label %24, !dbg !3446

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3447
  %20 = load i32, ptr %19, align 4, !dbg !3447, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %20, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()), !dbg !3429
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %21, metadata !3428, metadata !DIExpression()), !dbg !3429
  %22 = icmp eq i32 %20, 0, !dbg !3448
  br i1 %22, label %24, label %23, !dbg !3446

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3450, !tbaa !833
  call void @llvm.dbg.value(metadata i32 -1, metadata !3428, metadata !DIExpression()), !dbg !3429
  br label %24, !dbg !3452

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3429
  ret i32 %25, !dbg !3453
}

; Function Attrs: nofree nounwind
declare !dbg !3454 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3455 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3456 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3457 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3460 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3499
  %2 = icmp eq ptr %0, null, !dbg !3500
  br i1 %2, label %6, label %3, !dbg !3502

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3503
  %5 = icmp eq i32 %4, 0, !dbg !3503
  br i1 %5, label %6, label %8, !dbg !3504

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3505
  br label %16, !dbg !3506

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3512
  %9 = load i32, ptr %0, align 8, !dbg !3514, !tbaa !3366
  %10 = and i32 %9, 256, !dbg !3516
  %11 = icmp eq i32 %10, 0, !dbg !3516
  br i1 %11, label %14, label %12, !dbg !3517

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3518
  br label %14, !dbg !3518

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3519
  br label %16, !dbg !3520

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3499
  ret i32 %17, !dbg !3521
}

; Function Attrs: nofree nounwind
declare !dbg !3522 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3562, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %1, metadata !3563, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %2, metadata !3564, metadata !DIExpression()), !dbg !3568
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3569
  %5 = load ptr, ptr %4, align 8, !dbg !3569, !tbaa !3570
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3571
  %7 = load ptr, ptr %6, align 8, !dbg !3571, !tbaa !3572
  %8 = icmp eq ptr %5, %7, !dbg !3573
  br i1 %8, label %9, label %27, !dbg !3574

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3575
  %11 = load ptr, ptr %10, align 8, !dbg !3575, !tbaa !1250
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3576
  %13 = load ptr, ptr %12, align 8, !dbg !3576, !tbaa !3577
  %14 = icmp eq ptr %11, %13, !dbg !3578
  br i1 %14, label %15, label %27, !dbg !3579

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3580
  %17 = load ptr, ptr %16, align 8, !dbg !3580, !tbaa !3581
  %18 = icmp eq ptr %17, null, !dbg !3582
  br i1 %18, label %19, label %27, !dbg !3583

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3584
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %21, metadata !3565, metadata !DIExpression()), !dbg !3586
  %22 = icmp eq i64 %21, -1, !dbg !3587
  br i1 %22, label %29, label %23, !dbg !3589

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3590, !tbaa !3366
  %25 = and i32 %24, -17, !dbg !3590
  store i32 %25, ptr %0, align 8, !dbg !3590, !tbaa !3366
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3591
  store i64 %21, ptr %26, align 8, !dbg !3592, !tbaa !3593
  br label %29, !dbg !3594

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3595
  br label %29, !dbg !3596

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3568
  ret i32 %30, !dbg !3597
}

; Function Attrs: nofree nounwind
declare !dbg !3598 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3601 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %1, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %2, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %3, metadata !3609, metadata !DIExpression()), !dbg !3611
  %5 = icmp eq ptr %1, null, !dbg !3612
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3614
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3614
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3614
  call void @llvm.dbg.value(metadata i64 %8, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %7, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %6, metadata !3606, metadata !DIExpression()), !dbg !3611
  %9 = icmp eq ptr %3, null, !dbg !3615
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3617
  call void @llvm.dbg.value(metadata ptr %10, metadata !3609, metadata !DIExpression()), !dbg !3611
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %11, metadata !3610, metadata !DIExpression()), !dbg !3611
  %12 = icmp ult i64 %11, -3, !dbg !3619
  br i1 %12, label %13, label %17, !dbg !3621

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3622
  %15 = icmp eq i32 %14, 0, !dbg !3622
  br i1 %15, label %16, label %29, !dbg !3623

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3624, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %10, metadata !3631, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3634, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 8, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i64 0, ptr %10, align 1, !dbg !3638
  br label %29, !dbg !3639

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3640
  br i1 %18, label %19, label %20, !dbg !3642

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3643
  unreachable, !dbg !3643

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3644

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3646
  br i1 %23, label %29, label %24, !dbg !3647

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3648
  br i1 %25, label %29, label %26, !dbg !3651

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3652, !tbaa !842
  %28 = zext i8 %27 to i32, !dbg !3653
  store i32 %28, ptr %6, align 4, !dbg !3654, !tbaa !833
  br label %29, !dbg !3655

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3611
  ret i64 %30, !dbg !3656
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3657 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3663 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %2, metadata !3667, metadata !DIExpression()), !dbg !3669
  %4 = icmp eq i64 %2, 0, !dbg !3670
  br i1 %4, label %8, label %5, !dbg !3670

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3670
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3670
  br i1 %7, label %13, label %8, !dbg !3670

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3669
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3669
  %9 = mul i64 %2, %1, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %9, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %9, metadata !3675, metadata !DIExpression()), !dbg !3676
  %10 = icmp eq i64 %9, 0, !dbg !3678
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3678
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3679
  br label %15, !dbg !3680

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3669
  %14 = tail call ptr @__errno_location() #39, !dbg !3681
  store i32 12, ptr %14, align 4, !dbg !3683, !tbaa !833
  br label %15, !dbg !3684

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3669
  ret ptr %16, !dbg !3685
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3686 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3691, metadata !DIExpression()), !dbg !3697
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3698
  %4 = icmp eq i32 %3, 0, !dbg !3698
  br i1 %4, label %5, label %12, !dbg !3700

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3701, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr @.str.127, metadata !3704, metadata !DIExpression()), !dbg !3705
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.127, i64 2), !dbg !3708
  %7 = icmp eq i32 %6, 0, !dbg !3709
  br i1 %7, label %11, label %8, !dbg !3710

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3701, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr @.str.1.128, metadata !3704, metadata !DIExpression()), !dbg !3711
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.128, i64 6), !dbg !3713
  %10 = icmp eq i32 %9, 0, !dbg !3714
  br i1 %10, label %11, label %12, !dbg !3715

11:                                               ; preds = %8, %5
  br label %12, !dbg !3716

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3695
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3717
  ret i1 %13, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3722, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata ptr %1, metadata !3723, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %2, metadata !3724, metadata !DIExpression()), !dbg !3725
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3726
  ret i32 %4, !dbg !3727
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3733
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3734
  ret ptr %2, !dbg !3735
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3740
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3741
  call void @llvm.dbg.value(metadata ptr %2, metadata !3739, metadata !DIExpression()), !dbg !3740
  ret ptr %2, !dbg !3742
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3745, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %1, metadata !3746, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %2, metadata !3747, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3753
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3755
  call void @llvm.dbg.value(metadata ptr %4, metadata !3739, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %4, metadata !3748, metadata !DIExpression()), !dbg !3752
  %5 = icmp eq ptr %4, null, !dbg !3756
  br i1 %5, label %6, label %9, !dbg !3757

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3758
  br i1 %7, label %19, label %8, !dbg !3761

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3762, !tbaa !842
  br label %19, !dbg !3763

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %10, metadata !3749, metadata !DIExpression()), !dbg !3765
  %11 = icmp ult i64 %10, %2, !dbg !3766
  br i1 %11, label %12, label %14, !dbg !3768

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3769
  call void @llvm.dbg.value(metadata ptr %1, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %4, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %13, metadata !3775, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3778
  br label %19, !dbg !3779

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3780
  br i1 %15, label %19, label %16, !dbg !3783

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3784
  call void @llvm.dbg.value(metadata ptr %1, metadata !3771, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %4, metadata !3774, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %17, metadata !3775, metadata !DIExpression()), !dbg !3786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3788
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3789
  store i8 0, ptr %18, align 1, !dbg !3790, !tbaa !842
  br label %19, !dbg !3791

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3792
  ret i32 %20, !dbg !3793
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

!llvm.dbg.cu = !{!59, !337, !341, !356, !657, !691, !413, !427, !478, !693, !649, !700, !734, !736, !738, !740, !742, !673, !744, !747, !749, !751}
!llvm.ident = !{!753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753, !753}
!llvm.module.flags = !{!754, !755, !756, !757, !758, !759, !760}

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
!355 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !356, file: !357, line: 66, type: !408, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C11, file: !357, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, globals: !359, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!358 = !{!91, !98}
!359 = !{!360, !362, !387, !389, !391, !393, !354, !395, !397, !399, !401, !406}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !357, line: 272, type: !206, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "old_file_name", scope: !364, file: !357, line: 304, type: !96, isLocal: true, isDefinition: true)
!364 = distinct !DISubprogram(name: "verror_at_line", scope: !357, file: !357, line: 298, type: !365, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !380)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !70, !70, !96, !62, !96, !367}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !368, line: 52, baseType: !369)
!368 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !370, line: 14, baseType: !371)
!370 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !372, baseType: !373)
!372 = !DIFile(filename: "lib/error.c", directory: "/src")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !374)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !373, file: !372, baseType: !91, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !373, file: !372, baseType: !91, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !373, file: !372, baseType: !91, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !373, file: !372, baseType: !70, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !373, file: !372, baseType: !70, size: 32, offset: 224)
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DILocalVariable(name: "status", arg: 1, scope: !364, file: !357, line: 298, type: !70)
!382 = !DILocalVariable(name: "errnum", arg: 2, scope: !364, file: !357, line: 298, type: !70)
!383 = !DILocalVariable(name: "file_name", arg: 3, scope: !364, file: !357, line: 298, type: !96)
!384 = !DILocalVariable(name: "line_number", arg: 4, scope: !364, file: !357, line: 298, type: !62)
!385 = !DILocalVariable(name: "message", arg: 5, scope: !364, file: !357, line: 298, type: !96)
!386 = !DILocalVariable(name: "args", arg: 6, scope: !364, file: !357, line: 298, type: !367)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "old_line_number", scope: !364, file: !357, line: 305, type: !62, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !357, line: 338, type: !19, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !242, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !357, line: 346, type: !54, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "error_message_count", scope: !356, file: !357, line: 69, type: !62, isLocal: false, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !356, file: !357, line: 295, type: !70, isLocal: false, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !237, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !357, line: 208, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 21)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !357, line: 214, type: !206, isLocal: true, isDefinition: true)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null}
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "program_name", scope: !413, file: !414, line: 31, type: !96, isLocal: false, isDefinition: true)
!413 = distinct !DICompileUnit(language: DW_LANG_C11, file: !414, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !415, globals: !416, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!415 = !{!90}
!416 = !{!411, !417, !419}
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !414, line: 46, type: !242, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !414, line: 49, type: !19, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "utf07FF", scope: !423, file: !424, line: 46, type: !451, isLocal: true, isDefinition: true)
!423 = distinct !DISubprogram(name: "proper_name_lite", scope: !424, file: !424, line: 38, type: !425, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !429)
!424 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!425 = !DISubroutineType(types: !426)
!426 = !{!96, !96, !96}
!427 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !428, splitDebugInlining: false, nameTableKind: None)
!428 = !{!421}
!429 = !{!430, !431, !432, !433, !438}
!430 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !423, file: !424, line: 38, type: !96)
!431 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !423, file: !424, line: 38, type: !96)
!432 = !DILocalVariable(name: "translation", scope: !423, file: !424, line: 40, type: !96)
!433 = !DILocalVariable(name: "w", scope: !423, file: !424, line: 47, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !435, line: 37, baseType: !436)
!435 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !62)
!438 = !DILocalVariable(name: "mbs", scope: !423, file: !424, line: 48, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !440, line: 6, baseType: !441)
!440 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !442, line: 21, baseType: !443)
!442 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !443, file: !442, line: 15, baseType: !70, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !443, file: !442, line: 20, baseType: !447, size: 32, offset: 32)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !442, line: 16, size: 32, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !447, file: !442, line: 18, baseType: !62, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !447, file: !442, line: 19, baseType: !19, size: 32)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !55)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !454, line: 78, type: !242, isLocal: true, isDefinition: true)
!454 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !454, line: 79, type: !215, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !454, line: 80, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 13)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !454, line: 81, type: !459, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !454, line: 82, type: !195, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !454, line: 83, type: !54, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !454, line: 84, type: !242, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !454, line: 85, type: !237, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !454, line: 86, type: !237, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !454, line: 87, type: !242, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !478, file: !454, line: 76, type: !564, isLocal: false, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !454, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !479, retainedTypes: !499, globals: !500, splitDebugInlining: false, nameTableKind: None)
!479 = !{!480, !494, !74}
!480 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !481, line: 42, baseType: !62, size: 32, elements: !482)
!481 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!483 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!484 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!485 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!486 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!487 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!488 = !DIEnumerator(name: "c_quoting_style", value: 5)
!489 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!490 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!491 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!492 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!493 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!494 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !481, line: 254, baseType: !62, size: 32, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!497 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!498 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!499 = !{!70, !92, !93}
!500 = !{!452, !455, !457, !462, !464, !466, !468, !470, !472, !474, !476, !501, !505, !515, !517, !522, !524, !526, !528, !530, !553, !560, !562}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !478, file: !454, line: 92, type: !503, isLocal: false, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 320, elements: !45)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !478, file: !454, line: 1040, type: !507, isLocal: false, isDefinition: true)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !454, line: 56, size: 448, elements: !508)
!508 = !{!509, !510, !511, !513, !514}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !507, file: !454, line: 59, baseType: !480, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !454, line: 62, baseType: !70, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !507, file: !454, line: 66, baseType: !512, size: 256, offset: 64)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !243)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !507, file: !454, line: 69, baseType: !96, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !507, file: !454, line: 72, baseType: !96, size: 64, offset: 384)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !478, file: !454, line: 107, type: !507, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "slot0", scope: !478, file: !454, line: 831, type: !519, isLocal: true, isDefinition: true)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 256)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !454, line: 321, type: !54, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !454, line: 357, type: !54, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !454, line: 358, type: !54, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !454, line: 199, type: !237, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "quote", scope: !532, file: !454, line: 228, type: !551, isLocal: true, isDefinition: true)
!532 = distinct !DISubprogram(name: "gettext_quote", scope: !454, file: !454, line: 197, type: !533, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!96, !96, !480}
!535 = !{!536, !537, !538, !539, !540}
!536 = !DILocalVariable(name: "msgid", arg: 1, scope: !532, file: !454, line: 197, type: !96)
!537 = !DILocalVariable(name: "s", arg: 2, scope: !532, file: !454, line: 197, type: !480)
!538 = !DILocalVariable(name: "translation", scope: !532, file: !454, line: 199, type: !96)
!539 = !DILocalVariable(name: "w", scope: !532, file: !454, line: 229, type: !434)
!540 = !DILocalVariable(name: "mbs", scope: !532, file: !454, line: 230, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !440, line: 6, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !442, line: 21, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !543, file: !442, line: 15, baseType: !70, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !543, file: !442, line: 20, baseType: !547, size: 32, offset: 32)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !442, line: 16, size: 32, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !547, file: !442, line: 18, baseType: !62, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !547, file: !442, line: 19, baseType: !19, size: 32)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !552)
!552 = !{!56, !21}
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "slotvec", scope: !478, file: !454, line: 834, type: !555, isLocal: true, isDefinition: true)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !454, line: 823, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !556, file: !454, line: 825, baseType: !93, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !454, line: 826, baseType: !90, size: 64, offset: 64)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "nslots", scope: !478, file: !454, line: 832, type: !70, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "slotvec0", scope: !478, file: !454, line: 833, type: !556, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 704, elements: !566)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!566 = !{!567}
!567 = !DISubrange(count: 11)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !570, line: 67, type: !310, isLocal: true, isDefinition: true)
!570 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !570, line: 69, type: !237, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !570, line: 83, type: !237, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !570, line: 83, type: !19, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !570, line: 85, type: !54, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !570, line: 88, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 171)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !570, line: 88, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 34)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !570, line: 105, type: !107, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !570, line: 109, type: !9, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !570, line: 113, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 28)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !570, line: 120, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 32)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !570, line: 127, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 36)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !570, line: 134, type: !261, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !570, line: 142, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 44)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !570, line: 150, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 48)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !570, line: 159, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 52)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !570, line: 170, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 60)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !570, line: 248, type: !195, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !570, line: 248, type: !286, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !570, line: 254, type: !195, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !570, line: 254, type: !102, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !570, line: 254, type: !261, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !570, line: 259, type: !3, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !570, line: 259, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 29)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !649, file: !650, line: 26, type: !652, isLocal: false, isDefinition: true)
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !650, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !651, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!651 = !{!647}
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 47)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "exit_failure", scope: !657, file: !658, line: 24, type: !660, isLocal: false, isDefinition: true)
!657 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !659, splitDebugInlining: false, nameTableKind: None)
!658 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!659 = !{!655}
!660 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !663, line: 34, type: !226, isLocal: true, isDefinition: true)
!663 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !663, line: 34, type: !237, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !663, line: 34, type: !112, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !670, line: 108, type: !39, isLocal: true, isDefinition: true)
!670 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "internal_state", scope: !673, file: !670, line: 97, type: !676, isLocal: true, isDefinition: true)
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !670, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !674, globals: !675, splitDebugInlining: false, nameTableKind: None)
!674 = !{!91, !93, !98}
!675 = !{!668, !671}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !440, line: 6, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !442, line: 21, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 64, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !678, file: !442, line: 15, baseType: !70, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !678, file: !442, line: 20, baseType: !682, size: 32, offset: 32)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !442, line: 16, size: 32, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !682, file: !442, line: 18, baseType: !62, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !682, file: !442, line: 19, baseType: !19, size: 32)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !688, line: 35, type: !54, isLocal: true, isDefinition: true)
!688 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !688, line: 35, type: !215, isLocal: true, isDefinition: true)
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!692 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !570, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !694, retainedTypes: !698, globals: !699, splitDebugInlining: false, nameTableKind: None)
!694 = !{!695}
!695 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !570, line: 40, baseType: !62, size: 32, elements: !696)
!696 = !{!697}
!697 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!698 = !{!91}
!699 = !{!568, !571, !573, !575, !577, !579, !584, !589, !591, !593, !598, !603, !608, !610, !615, !620, !625, !630, !632, !634, !636, !638, !640, !642}
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !702, retainedTypes: !733, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!702 = !{!703, !715}
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !704, file: !701, line: 188, baseType: !62, size: 32, elements: !713)
!704 = distinct !DISubprogram(name: "x2nrealloc", scope: !701, file: !701, line: 176, type: !705, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !708)
!705 = !DISubroutineType(types: !706)
!706 = !{!91, !91, !707, !93}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!708 = !{!709, !710, !711, !712}
!709 = !DILocalVariable(name: "p", arg: 1, scope: !704, file: !701, line: 176, type: !91)
!710 = !DILocalVariable(name: "pn", arg: 2, scope: !704, file: !701, line: 176, type: !707)
!711 = !DILocalVariable(name: "s", arg: 3, scope: !704, file: !701, line: 176, type: !93)
!712 = !DILocalVariable(name: "n", scope: !704, file: !701, line: 178, type: !93)
!713 = !{!714}
!714 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!715 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !716, file: !701, line: 228, baseType: !62, size: 32, elements: !713)
!716 = distinct !DISubprogram(name: "xpalloc", scope: !701, file: !701, line: 223, type: !717, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !723)
!717 = !DISubroutineType(types: !718)
!718 = !{!91, !91, !719, !720, !722, !720}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !721, line: 130, baseType: !722)
!721 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !94, line: 35, baseType: !174)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732}
!724 = !DILocalVariable(name: "pa", arg: 1, scope: !716, file: !701, line: 223, type: !91)
!725 = !DILocalVariable(name: "pn", arg: 2, scope: !716, file: !701, line: 223, type: !719)
!726 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !716, file: !701, line: 223, type: !720)
!727 = !DILocalVariable(name: "n_max", arg: 4, scope: !716, file: !701, line: 223, type: !722)
!728 = !DILocalVariable(name: "s", arg: 5, scope: !716, file: !701, line: 223, type: !720)
!729 = !DILocalVariable(name: "n0", scope: !716, file: !701, line: 230, type: !720)
!730 = !DILocalVariable(name: "n", scope: !716, file: !701, line: 237, type: !720)
!731 = !DILocalVariable(name: "nbytes", scope: !716, file: !701, line: 248, type: !720)
!732 = !DILocalVariable(name: "adjusted_nbytes", scope: !716, file: !701, line: 252, type: !720)
!733 = !{!90, !91, !121, !174, !95}
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !663, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!735 = !{!661, !664, !666}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !698, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !698, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !746, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!746 = !{!121, !95, !91}
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !748, splitDebugInlining: false, nameTableKind: None)
!748 = !{!686, !689}
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !698, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!753 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!754 = !{i32 7, !"Dwarf Version", i32 5}
!755 = !{i32 2, !"Debug Info Version", i32 3}
!756 = !{i32 1, !"wchar_size", i32 4}
!757 = !{i32 8, !"PIC Level", i32 2}
!758 = !{i32 7, !"PIE Level", i32 2}
!759 = !{i32 7, !"uwtable", i32 2}
!760 = !{i32 7, !"frame-pointer", i32 1}
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
!801 = !DILocation(line: 857, column: 3, scope: !783, inlinedAt: !800)
!802 = !DILocation(line: 861, column: 29, scope: !783, inlinedAt: !800)
!803 = !DILocation(line: 862, column: 7, scope: !804, inlinedAt: !800)
!804 = distinct !DILexicalBlock(scope: !783, file: !69, line: 862, column: 7)
!805 = !DILocation(line: 862, column: 19, scope: !804, inlinedAt: !800)
!806 = !DILocation(line: 862, column: 22, scope: !804, inlinedAt: !800)
!807 = !DILocation(line: 862, column: 7, scope: !783, inlinedAt: !800)
!808 = !DILocation(line: 868, column: 7, scope: !809, inlinedAt: !800)
!809 = distinct !DILexicalBlock(scope: !804, file: !69, line: 863, column: 5)
!810 = !DILocation(line: 870, column: 5, scope: !809, inlinedAt: !800)
!811 = !DILocation(line: 875, column: 3, scope: !783, inlinedAt: !800)
!812 = !DILocation(line: 877, column: 3, scope: !783, inlinedAt: !800)
!813 = !DILocation(line: 78, column: 3, scope: !761)
!814 = !DISubprogram(name: "dcgettext", scope: !815, file: !815, line: 51, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!815 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!816 = !DISubroutineType(types: !817)
!817 = !{!90, !96, !96, !70}
!818 = !{}
!819 = !DISubprogram(name: "__fprintf_chk", scope: !820, file: !820, line: 93, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!820 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!821 = !DISubroutineType(types: !822)
!822 = !{!70, !823, !70, !824, null}
!823 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!824 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!825 = !DISubprogram(name: "__printf_chk", scope: !820, file: !820, line: 95, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!826 = !DISubroutineType(types: !827)
!827 = !{!70, !70, !824, null}
!828 = !DISubprogram(name: "fputs_unlocked", scope: !368, file: !368, line: 691, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
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
!945 = !DISubprogram(name: "setlocale", scope: !946, file: !946, line: 122, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!946 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!947 = !DISubroutineType(types: !948)
!948 = !{!90, !70, !96}
!949 = !DISubprogram(name: "strncmp", scope: !950, file: !950, line: 159, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!950 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!951 = !DISubroutineType(types: !952)
!952 = !{!70, !96, !96, !93}
!953 = !DISubprogram(name: "exit", scope: !954, file: !954, line: 624, type: !762, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !818)
!954 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!955 = !DISubprogram(name: "getenv", scope: !954, file: !954, line: 641, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!956 = !DISubroutineType(types: !957)
!957 = !{!90, !96}
!958 = !DISubprogram(name: "strcmp", scope: !950, file: !950, line: 156, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!959 = !DISubroutineType(types: !960)
!960 = !{!70, !96, !96}
!961 = !DISubprogram(name: "strspn", scope: !950, file: !950, line: 297, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!962 = !DISubroutineType(types: !963)
!963 = !{!95, !96, !96}
!964 = !DISubprogram(name: "strchr", scope: !950, file: !950, line: 246, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!965 = !DISubroutineType(types: !966)
!966 = !{!90, !96, !70}
!967 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!968 = !DISubroutineType(types: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!973 = !DISubprogram(name: "strcspn", scope: !950, file: !950, line: 293, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!974 = !DISubprogram(name: "fwrite_unlocked", scope: !368, file: !368, line: 704, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
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
!1042 = !DISubprogram(name: "bindtextdomain", scope: !815, file: !815, line: 86, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!90, !96, !96}
!1045 = !DISubprogram(name: "textdomain", scope: !815, file: !815, line: 82, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1046 = !DISubprogram(name: "atexit", scope: !954, file: !954, line: 602, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!70, !408}
!1049 = !DISubprogram(name: "getopt_long", scope: !324, file: !324, line: 66, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!70, !70, !1052, !96, !1054, !329}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1055 = !DISubprogram(name: "isatty", scope: !1056, file: !1056, line: 809, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1056 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!70, !70}
!1059 = !DISubprogram(name: "ttyname", scope: !1056, file: !1056, line: 799, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!90, !70}
!1062 = !DISubprogram(name: "__errno_location", scope: !1063, file: !1063, line: 37, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1063 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!329}
!1066 = !DISubprogram(name: "puts", scope: !368, file: !368, line: 661, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
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
!1085 = distinct !DISubprogram(name: "close_stdout", scope: !342, file: !342, line: 116, type: !409, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !1086)
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
!1118 = !DISubprogram(name: "_exit", scope: !1056, file: !1056, line: 624, type: !762, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1119 = distinct !DISubprogram(name: "verror", scope: !357, file: !357, line: 251, type: !1120, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !70, !70, !96, !367}
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DILocalVariable(name: "status", arg: 1, scope: !1119, file: !357, line: 251, type: !70)
!1124 = !DILocalVariable(name: "errnum", arg: 2, scope: !1119, file: !357, line: 251, type: !70)
!1125 = !DILocalVariable(name: "message", arg: 3, scope: !1119, file: !357, line: 251, type: !96)
!1126 = !DILocalVariable(name: "args", arg: 4, scope: !1119, file: !357, line: 251, type: !367)
!1127 = !DILocation(line: 0, scope: !1119)
!1128 = !DILocation(line: 251, column: 1, scope: !1119)
!1129 = !DILocation(line: 261, column: 3, scope: !1119)
!1130 = !DILocation(line: 265, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1119, file: !357, line: 265, column: 7)
!1132 = !DILocation(line: 265, column: 7, scope: !1119)
!1133 = !DILocation(line: 266, column: 5, scope: !1131)
!1134 = !DILocation(line: 272, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !357, line: 268, column: 5)
!1136 = !DILocation(line: 276, column: 3, scope: !1119)
!1137 = !{i64 0, i64 8, !772, i64 8, i64 8, !772, i64 16, i64 8, !772, i64 24, i64 4, !833, i64 28, i64 4, !833}
!1138 = !DILocation(line: 282, column: 1, scope: !1119)
!1139 = distinct !DISubprogram(name: "flush_stdout", scope: !357, file: !357, line: 163, type: !409, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1140)
!1140 = !{!1141}
!1141 = !DILocalVariable(name: "stdout_fd", scope: !1139, file: !357, line: 166, type: !70)
!1142 = !DILocation(line: 0, scope: !1139)
!1143 = !DILocalVariable(name: "fd", arg: 1, scope: !1144, file: !357, line: 145, type: !70)
!1144 = distinct !DISubprogram(name: "is_open", scope: !357, file: !357, line: 145, type: !1057, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1145)
!1145 = !{!1143}
!1146 = !DILocation(line: 0, scope: !1144, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 182, column: 25, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !357, line: 182, column: 7)
!1149 = !DILocation(line: 157, column: 15, scope: !1144, inlinedAt: !1147)
!1150 = !DILocation(line: 157, column: 12, scope: !1144, inlinedAt: !1147)
!1151 = !DILocation(line: 182, column: 7, scope: !1139)
!1152 = !DILocation(line: 184, column: 5, scope: !1148)
!1153 = !DILocation(line: 185, column: 1, scope: !1139)
!1154 = distinct !DISubprogram(name: "error_tail", scope: !357, file: !357, line: 219, type: !1120, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1155)
!1155 = !{!1156, !1157, !1158, !1159}
!1156 = !DILocalVariable(name: "status", arg: 1, scope: !1154, file: !357, line: 219, type: !70)
!1157 = !DILocalVariable(name: "errnum", arg: 2, scope: !1154, file: !357, line: 219, type: !70)
!1158 = !DILocalVariable(name: "message", arg: 3, scope: !1154, file: !357, line: 219, type: !96)
!1159 = !DILocalVariable(name: "args", arg: 4, scope: !1154, file: !357, line: 219, type: !367)
!1160 = !DILocation(line: 0, scope: !1154)
!1161 = !DILocation(line: 219, column: 1, scope: !1154)
!1162 = !DILocation(line: 229, column: 13, scope: !1154)
!1163 = !DILocation(line: 135, column: 10, scope: !1164, inlinedAt: !1206)
!1164 = distinct !DISubprogram(name: "vfprintf", scope: !820, file: !820, line: 132, type: !1165, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1202)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!70, !1167, !824, !369}
!1167 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1170, file: !150, line: 51, baseType: !70, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1170, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1170, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1170, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1170, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1170, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1170, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1170, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1170, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1170, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1170, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1170, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1170, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1170, file: !150, line: 70, baseType: !1186, size: 64, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1170, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1170, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1170, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1170, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1170, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1170, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1170, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1170, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1170, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1170, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1170, file: !150, line: 93, baseType: !1186, size: 64, offset: 1344)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1170, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1170, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1170, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1170, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!1202 = !{!1203, !1204, !1205}
!1203 = !DILocalVariable(name: "__stream", arg: 1, scope: !1164, file: !820, line: 132, type: !1167)
!1204 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1164, file: !820, line: 133, type: !824)
!1205 = !DILocalVariable(name: "__ap", arg: 3, scope: !1164, file: !820, line: 133, type: !369)
!1206 = distinct !DILocation(line: 229, column: 3, scope: !1154)
!1207 = !{!1208, !1210}
!1208 = distinct !{!1208, !1209, !"vfprintf.inline: argument 0"}
!1209 = distinct !{!1209, !"vfprintf.inline"}
!1210 = distinct !{!1210, !1209, !"vfprintf.inline: argument 1"}
!1211 = !DILocation(line: 229, column: 3, scope: !1154)
!1212 = !DILocation(line: 0, scope: !1164, inlinedAt: !1206)
!1213 = !DILocation(line: 133, column: 49, scope: !1164, inlinedAt: !1206)
!1214 = !DILocation(line: 232, column: 3, scope: !1154)
!1215 = !DILocation(line: 233, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1154, file: !357, line: 233, column: 7)
!1217 = !DILocation(line: 233, column: 7, scope: !1154)
!1218 = !DILocalVariable(name: "errnum", arg: 1, scope: !1219, file: !357, line: 188, type: !70)
!1219 = distinct !DISubprogram(name: "print_errno_message", scope: !357, file: !357, line: 188, type: !762, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1220)
!1220 = !{!1218, !1221, !1222}
!1221 = !DILocalVariable(name: "s", scope: !1219, file: !357, line: 190, type: !96)
!1222 = !DILocalVariable(name: "errbuf", scope: !1219, file: !357, line: 193, type: !1223)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 1024)
!1226 = !DILocation(line: 0, scope: !1219, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 234, column: 5, scope: !1216)
!1228 = !DILocation(line: 193, column: 3, scope: !1219, inlinedAt: !1227)
!1229 = !DILocation(line: 193, column: 8, scope: !1219, inlinedAt: !1227)
!1230 = !DILocation(line: 195, column: 7, scope: !1219, inlinedAt: !1227)
!1231 = !DILocation(line: 207, column: 9, scope: !1232, inlinedAt: !1227)
!1232 = distinct !DILexicalBlock(scope: !1219, file: !357, line: 207, column: 7)
!1233 = !DILocation(line: 207, column: 7, scope: !1219, inlinedAt: !1227)
!1234 = !DILocation(line: 208, column: 9, scope: !1232, inlinedAt: !1227)
!1235 = !DILocation(line: 208, column: 5, scope: !1232, inlinedAt: !1227)
!1236 = !DILocation(line: 214, column: 3, scope: !1219, inlinedAt: !1227)
!1237 = !DILocation(line: 216, column: 1, scope: !1219, inlinedAt: !1227)
!1238 = !DILocation(line: 234, column: 5, scope: !1216)
!1239 = !DILocation(line: 238, column: 3, scope: !1154)
!1240 = !DILocalVariable(name: "__c", arg: 1, scope: !1241, file: !1242, line: 101, type: !70)
!1241 = distinct !DISubprogram(name: "putc_unlocked", scope: !1242, file: !1242, line: 101, type: !1243, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1245)
!1242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!70, !70, !1168}
!1245 = !{!1240, !1246}
!1246 = !DILocalVariable(name: "__stream", arg: 2, scope: !1241, file: !1242, line: 101, type: !1168)
!1247 = !DILocation(line: 0, scope: !1241, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 238, column: 3, scope: !1154)
!1249 = !DILocation(line: 103, column: 10, scope: !1241, inlinedAt: !1248)
!1250 = !{!1251, !773, i64 40}
!1251 = !{!"_IO_FILE", !834, i64 0, !773, i64 8, !773, i64 16, !773, i64 24, !773, i64 32, !773, i64 40, !773, i64 48, !773, i64 56, !773, i64 64, !773, i64 72, !773, i64 80, !773, i64 88, !773, i64 96, !773, i64 104, !834, i64 112, !834, i64 116, !1252, i64 120, !875, i64 128, !774, i64 130, !774, i64 131, !773, i64 136, !1252, i64 144, !773, i64 152, !773, i64 160, !773, i64 168, !773, i64 176, !1252, i64 184, !834, i64 192, !774, i64 196}
!1252 = !{!"long", !774, i64 0}
!1253 = !{!1251, !773, i64 48}
!1254 = !{!"branch_weights", i32 2000, i32 1}
!1255 = !DILocation(line: 240, column: 3, scope: !1154)
!1256 = !DILocation(line: 241, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1154, file: !357, line: 241, column: 7)
!1258 = !DILocation(line: 241, column: 7, scope: !1154)
!1259 = !DILocation(line: 242, column: 5, scope: !1257)
!1260 = !DILocation(line: 243, column: 1, scope: !1154)
!1261 = !DISubprogram(name: "__vfprintf_chk", scope: !820, file: !820, line: 96, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!70, !1167, !70, !824, !369}
!1264 = !DISubprogram(name: "strerror_r", scope: !950, file: !950, line: 444, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!90, !70, !90, !93}
!1267 = !DISubprogram(name: "__overflow", scope: !368, file: !368, line: 886, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!70, !1168, !70}
!1270 = !DISubprogram(name: "fflush_unlocked", scope: !368, file: !368, line: 239, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!70, !1168}
!1273 = !DISubprogram(name: "fcntl", scope: !1274, file: !1274, line: 149, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1274 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!70, !70, !70, null}
!1277 = distinct !DISubprogram(name: "error", scope: !357, file: !357, line: 285, type: !1278, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !70, !70, !96, null}
!1280 = !{!1281, !1282, !1283, !1284}
!1281 = !DILocalVariable(name: "status", arg: 1, scope: !1277, file: !357, line: 285, type: !70)
!1282 = !DILocalVariable(name: "errnum", arg: 2, scope: !1277, file: !357, line: 285, type: !70)
!1283 = !DILocalVariable(name: "message", arg: 3, scope: !1277, file: !357, line: 285, type: !96)
!1284 = !DILocalVariable(name: "ap", scope: !1277, file: !357, line: 287, type: !367)
!1285 = !DILocation(line: 0, scope: !1277)
!1286 = !DILocation(line: 287, column: 3, scope: !1277)
!1287 = !DILocation(line: 287, column: 11, scope: !1277)
!1288 = !DILocation(line: 288, column: 3, scope: !1277)
!1289 = !DILocation(line: 289, column: 3, scope: !1277)
!1290 = !DILocation(line: 290, column: 3, scope: !1277)
!1291 = !DILocation(line: 291, column: 1, scope: !1277)
!1292 = !DILocation(line: 0, scope: !364)
!1293 = !DILocation(line: 298, column: 1, scope: !364)
!1294 = !DILocation(line: 302, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !364, file: !357, line: 302, column: 7)
!1296 = !DILocation(line: 302, column: 7, scope: !364)
!1297 = !DILocation(line: 307, column: 11, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !357, line: 307, column: 11)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !357, line: 303, column: 5)
!1300 = !DILocation(line: 307, column: 27, scope: !1298)
!1301 = !DILocation(line: 308, column: 11, scope: !1298)
!1302 = !DILocation(line: 308, column: 28, scope: !1298)
!1303 = !DILocation(line: 308, column: 25, scope: !1298)
!1304 = !DILocation(line: 309, column: 15, scope: !1298)
!1305 = !DILocation(line: 309, column: 33, scope: !1298)
!1306 = !DILocation(line: 310, column: 19, scope: !1298)
!1307 = !DILocation(line: 311, column: 22, scope: !1298)
!1308 = !DILocation(line: 311, column: 56, scope: !1298)
!1309 = !DILocation(line: 307, column: 11, scope: !1299)
!1310 = !DILocation(line: 316, column: 21, scope: !1299)
!1311 = !DILocation(line: 317, column: 23, scope: !1299)
!1312 = !DILocation(line: 318, column: 5, scope: !1299)
!1313 = !DILocation(line: 327, column: 3, scope: !364)
!1314 = !DILocation(line: 331, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !364, file: !357, line: 331, column: 7)
!1316 = !DILocation(line: 331, column: 7, scope: !364)
!1317 = !DILocation(line: 332, column: 5, scope: !1315)
!1318 = !DILocation(line: 338, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !357, line: 334, column: 5)
!1320 = !DILocation(line: 346, column: 3, scope: !364)
!1321 = !DILocation(line: 350, column: 3, scope: !364)
!1322 = !DILocation(line: 356, column: 1, scope: !364)
!1323 = distinct !DISubprogram(name: "error_at_line", scope: !357, file: !357, line: 359, type: !1324, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !70, !70, !96, !62, !96, null}
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332}
!1327 = !DILocalVariable(name: "status", arg: 1, scope: !1323, file: !357, line: 359, type: !70)
!1328 = !DILocalVariable(name: "errnum", arg: 2, scope: !1323, file: !357, line: 359, type: !70)
!1329 = !DILocalVariable(name: "file_name", arg: 3, scope: !1323, file: !357, line: 359, type: !96)
!1330 = !DILocalVariable(name: "line_number", arg: 4, scope: !1323, file: !357, line: 360, type: !62)
!1331 = !DILocalVariable(name: "message", arg: 5, scope: !1323, file: !357, line: 360, type: !96)
!1332 = !DILocalVariable(name: "ap", scope: !1323, file: !357, line: 362, type: !367)
!1333 = !DILocation(line: 0, scope: !1323)
!1334 = !DILocation(line: 362, column: 3, scope: !1323)
!1335 = !DILocation(line: 362, column: 11, scope: !1323)
!1336 = !DILocation(line: 363, column: 3, scope: !1323)
!1337 = !DILocation(line: 364, column: 3, scope: !1323)
!1338 = !DILocation(line: 366, column: 3, scope: !1323)
!1339 = !DILocation(line: 367, column: 1, scope: !1323)
!1340 = distinct !DISubprogram(name: "getprogname", scope: !692, file: !692, line: 54, type: !1341, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !818)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!96}
!1343 = !DILocation(line: 58, column: 10, scope: !1340)
!1344 = !DILocation(line: 58, column: 3, scope: !1340)
!1345 = distinct !DISubprogram(name: "set_program_name", scope: !414, file: !414, line: 37, type: !784, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "argv0", arg: 1, scope: !1345, file: !414, line: 37, type: !96)
!1348 = !DILocalVariable(name: "slash", scope: !1345, file: !414, line: 44, type: !96)
!1349 = !DILocalVariable(name: "base", scope: !1345, file: !414, line: 45, type: !96)
!1350 = !DILocation(line: 0, scope: !1345)
!1351 = !DILocation(line: 44, column: 23, scope: !1345)
!1352 = !DILocation(line: 45, column: 22, scope: !1345)
!1353 = !DILocation(line: 46, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1345, file: !414, line: 46, column: 7)
!1355 = !DILocation(line: 46, column: 9, scope: !1354)
!1356 = !DILocation(line: 46, column: 25, scope: !1354)
!1357 = !DILocation(line: 46, column: 40, scope: !1354)
!1358 = !DILocalVariable(name: "__s1", arg: 1, scope: !1359, file: !846, line: 974, type: !978)
!1359 = distinct !DISubprogram(name: "memeq", scope: !846, file: !846, line: 974, type: !1360, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!121, !978, !978, !93}
!1362 = !{!1358, !1363, !1364}
!1363 = !DILocalVariable(name: "__s2", arg: 2, scope: !1359, file: !846, line: 974, type: !978)
!1364 = !DILocalVariable(name: "__n", arg: 3, scope: !1359, file: !846, line: 974, type: !93)
!1365 = !DILocation(line: 0, scope: !1359, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 46, column: 28, scope: !1354)
!1367 = !DILocation(line: 976, column: 11, scope: !1359, inlinedAt: !1366)
!1368 = !DILocation(line: 976, column: 10, scope: !1359, inlinedAt: !1366)
!1369 = !DILocation(line: 46, column: 7, scope: !1345)
!1370 = !DILocation(line: 49, column: 11, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !414, line: 49, column: 11)
!1372 = distinct !DILexicalBlock(scope: !1354, file: !414, line: 47, column: 5)
!1373 = !DILocation(line: 49, column: 36, scope: !1371)
!1374 = !DILocation(line: 49, column: 11, scope: !1372)
!1375 = !DILocation(line: 65, column: 16, scope: !1345)
!1376 = !DILocation(line: 71, column: 27, scope: !1345)
!1377 = !DILocation(line: 74, column: 33, scope: !1345)
!1378 = !DILocation(line: 76, column: 1, scope: !1345)
!1379 = !DISubprogram(name: "strrchr", scope: !950, file: !950, line: 273, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1380 = !DILocation(line: 0, scope: !423)
!1381 = !DILocation(line: 40, column: 29, scope: !423)
!1382 = !DILocation(line: 41, column: 19, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !423, file: !424, line: 41, column: 7)
!1384 = !DILocation(line: 41, column: 7, scope: !423)
!1385 = !DILocation(line: 47, column: 3, scope: !423)
!1386 = !DILocation(line: 48, column: 3, scope: !423)
!1387 = !DILocation(line: 48, column: 13, scope: !423)
!1388 = !DILocalVariable(name: "ps", arg: 1, scope: !1389, file: !1390, line: 1135, type: !1393)
!1389 = distinct !DISubprogram(name: "mbszero", scope: !1390, file: !1390, line: 1135, type: !1391, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1394)
!1390 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1394 = !{!1388}
!1395 = !DILocation(line: 0, scope: !1389, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 48, column: 18, scope: !423)
!1397 = !DILocalVariable(name: "__dest", arg: 1, scope: !1398, file: !1399, line: 57, type: !91)
!1398 = distinct !DISubprogram(name: "memset", scope: !1399, file: !1399, line: 57, type: !1400, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1402)
!1399 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!91, !91, !70, !93}
!1402 = !{!1397, !1403, !1404}
!1403 = !DILocalVariable(name: "__ch", arg: 2, scope: !1398, file: !1399, line: 57, type: !70)
!1404 = !DILocalVariable(name: "__len", arg: 3, scope: !1398, file: !1399, line: 57, type: !93)
!1405 = !DILocation(line: 0, scope: !1398, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 1137, column: 3, scope: !1389, inlinedAt: !1396)
!1407 = !DILocation(line: 59, column: 10, scope: !1398, inlinedAt: !1406)
!1408 = !DILocation(line: 49, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !423, file: !424, line: 49, column: 7)
!1410 = !DILocation(line: 49, column: 39, scope: !1409)
!1411 = !DILocation(line: 49, column: 44, scope: !1409)
!1412 = !DILocation(line: 54, column: 1, scope: !423)
!1413 = !DISubprogram(name: "mbrtoc32", scope: !435, file: !435, line: 57, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!93, !1416, !824, !93, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1393)
!1419 = distinct !DISubprogram(name: "clone_quoting_options", scope: !454, file: !454, line: 113, type: !1420, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1423)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1422, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!1423 = !{!1424, !1425, !1426}
!1424 = !DILocalVariable(name: "o", arg: 1, scope: !1419, file: !454, line: 113, type: !1422)
!1425 = !DILocalVariable(name: "saved_errno", scope: !1419, file: !454, line: 115, type: !70)
!1426 = !DILocalVariable(name: "p", scope: !1419, file: !454, line: 116, type: !1422)
!1427 = !DILocation(line: 0, scope: !1419)
!1428 = !DILocation(line: 115, column: 21, scope: !1419)
!1429 = !DILocation(line: 116, column: 40, scope: !1419)
!1430 = !DILocation(line: 116, column: 31, scope: !1419)
!1431 = !DILocation(line: 118, column: 9, scope: !1419)
!1432 = !DILocation(line: 119, column: 3, scope: !1419)
!1433 = distinct !DISubprogram(name: "get_quoting_style", scope: !454, file: !454, line: 124, type: !1434, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1438)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!480, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "o", arg: 1, scope: !1433, file: !454, line: 124, type: !1436)
!1440 = !DILocation(line: 0, scope: !1433)
!1441 = !DILocation(line: 126, column: 11, scope: !1433)
!1442 = !DILocation(line: 126, column: 46, scope: !1433)
!1443 = !{!1444, !774, i64 0}
!1444 = !{!"quoting_options", !774, i64 0, !834, i64 4, !774, i64 8, !773, i64 40, !773, i64 48}
!1445 = !DILocation(line: 126, column: 3, scope: !1433)
!1446 = distinct !DISubprogram(name: "set_quoting_style", scope: !454, file: !454, line: 132, type: !1447, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1422, !480}
!1449 = !{!1450, !1451}
!1450 = !DILocalVariable(name: "o", arg: 1, scope: !1446, file: !454, line: 132, type: !1422)
!1451 = !DILocalVariable(name: "s", arg: 2, scope: !1446, file: !454, line: 132, type: !480)
!1452 = !DILocation(line: 0, scope: !1446)
!1453 = !DILocation(line: 134, column: 4, scope: !1446)
!1454 = !DILocation(line: 134, column: 45, scope: !1446)
!1455 = !DILocation(line: 135, column: 1, scope: !1446)
!1456 = distinct !DISubprogram(name: "set_char_quoting", scope: !454, file: !454, line: 143, type: !1457, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!70, !1422, !4, !70}
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1466, !1467}
!1460 = !DILocalVariable(name: "o", arg: 1, scope: !1456, file: !454, line: 143, type: !1422)
!1461 = !DILocalVariable(name: "c", arg: 2, scope: !1456, file: !454, line: 143, type: !4)
!1462 = !DILocalVariable(name: "i", arg: 3, scope: !1456, file: !454, line: 143, type: !70)
!1463 = !DILocalVariable(name: "uc", scope: !1456, file: !454, line: 145, type: !98)
!1464 = !DILocalVariable(name: "p", scope: !1456, file: !454, line: 146, type: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1466 = !DILocalVariable(name: "shift", scope: !1456, file: !454, line: 148, type: !70)
!1467 = !DILocalVariable(name: "r", scope: !1456, file: !454, line: 149, type: !62)
!1468 = !DILocation(line: 0, scope: !1456)
!1469 = !DILocation(line: 147, column: 6, scope: !1456)
!1470 = !DILocation(line: 147, column: 41, scope: !1456)
!1471 = !DILocation(line: 147, column: 62, scope: !1456)
!1472 = !DILocation(line: 147, column: 57, scope: !1456)
!1473 = !DILocation(line: 148, column: 15, scope: !1456)
!1474 = !DILocation(line: 149, column: 21, scope: !1456)
!1475 = !DILocation(line: 149, column: 24, scope: !1456)
!1476 = !DILocation(line: 149, column: 34, scope: !1456)
!1477 = !DILocation(line: 150, column: 19, scope: !1456)
!1478 = !DILocation(line: 150, column: 24, scope: !1456)
!1479 = !DILocation(line: 150, column: 6, scope: !1456)
!1480 = !DILocation(line: 151, column: 3, scope: !1456)
!1481 = distinct !DISubprogram(name: "set_quoting_flags", scope: !454, file: !454, line: 159, type: !1482, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!70, !1422, !70}
!1484 = !{!1485, !1486, !1487}
!1485 = !DILocalVariable(name: "o", arg: 1, scope: !1481, file: !454, line: 159, type: !1422)
!1486 = !DILocalVariable(name: "i", arg: 2, scope: !1481, file: !454, line: 159, type: !70)
!1487 = !DILocalVariable(name: "r", scope: !1481, file: !454, line: 163, type: !70)
!1488 = !DILocation(line: 0, scope: !1481)
!1489 = !DILocation(line: 161, column: 8, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1481, file: !454, line: 161, column: 7)
!1491 = !DILocation(line: 161, column: 7, scope: !1481)
!1492 = !DILocation(line: 163, column: 14, scope: !1481)
!1493 = !{!1444, !834, i64 4}
!1494 = !DILocation(line: 164, column: 12, scope: !1481)
!1495 = !DILocation(line: 165, column: 3, scope: !1481)
!1496 = distinct !DISubprogram(name: "set_custom_quoting", scope: !454, file: !454, line: 169, type: !1497, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1422, !96, !96}
!1499 = !{!1500, !1501, !1502}
!1500 = !DILocalVariable(name: "o", arg: 1, scope: !1496, file: !454, line: 169, type: !1422)
!1501 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1496, file: !454, line: 170, type: !96)
!1502 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1496, file: !454, line: 170, type: !96)
!1503 = !DILocation(line: 0, scope: !1496)
!1504 = !DILocation(line: 172, column: 8, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1496, file: !454, line: 172, column: 7)
!1506 = !DILocation(line: 172, column: 7, scope: !1496)
!1507 = !DILocation(line: 174, column: 12, scope: !1496)
!1508 = !DILocation(line: 175, column: 8, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1496, file: !454, line: 175, column: 7)
!1510 = !DILocation(line: 175, column: 19, scope: !1509)
!1511 = !DILocation(line: 176, column: 5, scope: !1509)
!1512 = !DILocation(line: 177, column: 6, scope: !1496)
!1513 = !DILocation(line: 177, column: 17, scope: !1496)
!1514 = !{!1444, !773, i64 40}
!1515 = !DILocation(line: 178, column: 6, scope: !1496)
!1516 = !DILocation(line: 178, column: 18, scope: !1496)
!1517 = !{!1444, !773, i64 48}
!1518 = !DILocation(line: 179, column: 1, scope: !1496)
!1519 = !DISubprogram(name: "abort", scope: !954, file: !954, line: 598, type: !409, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !818)
!1520 = distinct !DISubprogram(name: "quotearg_buffer", scope: !454, file: !454, line: 774, type: !1521, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!93, !90, !93, !96, !93, !1436}
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1524 = !DILocalVariable(name: "buffer", arg: 1, scope: !1520, file: !454, line: 774, type: !90)
!1525 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1520, file: !454, line: 774, type: !93)
!1526 = !DILocalVariable(name: "arg", arg: 3, scope: !1520, file: !454, line: 775, type: !96)
!1527 = !DILocalVariable(name: "argsize", arg: 4, scope: !1520, file: !454, line: 775, type: !93)
!1528 = !DILocalVariable(name: "o", arg: 5, scope: !1520, file: !454, line: 776, type: !1436)
!1529 = !DILocalVariable(name: "p", scope: !1520, file: !454, line: 778, type: !1436)
!1530 = !DILocalVariable(name: "saved_errno", scope: !1520, file: !454, line: 779, type: !70)
!1531 = !DILocalVariable(name: "r", scope: !1520, file: !454, line: 780, type: !93)
!1532 = !DILocation(line: 0, scope: !1520)
!1533 = !DILocation(line: 778, column: 37, scope: !1520)
!1534 = !DILocation(line: 779, column: 21, scope: !1520)
!1535 = !DILocation(line: 781, column: 43, scope: !1520)
!1536 = !DILocation(line: 781, column: 53, scope: !1520)
!1537 = !DILocation(line: 781, column: 63, scope: !1520)
!1538 = !DILocation(line: 782, column: 43, scope: !1520)
!1539 = !DILocation(line: 782, column: 58, scope: !1520)
!1540 = !DILocation(line: 780, column: 14, scope: !1520)
!1541 = !DILocation(line: 783, column: 9, scope: !1520)
!1542 = !DILocation(line: 784, column: 3, scope: !1520)
!1543 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !454, file: !454, line: 251, type: !1544, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1548)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!93, !90, !93, !96, !93, !480, !70, !1546, !96, !96}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1573, !1575, !1578, !1579, !1580, !1581, !1584, !1585, !1588, !1592, !1593, !1601, !1604, !1605, !1607, !1608, !1609, !1610}
!1549 = !DILocalVariable(name: "buffer", arg: 1, scope: !1543, file: !454, line: 251, type: !90)
!1550 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1543, file: !454, line: 251, type: !93)
!1551 = !DILocalVariable(name: "arg", arg: 3, scope: !1543, file: !454, line: 252, type: !96)
!1552 = !DILocalVariable(name: "argsize", arg: 4, scope: !1543, file: !454, line: 252, type: !93)
!1553 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1543, file: !454, line: 253, type: !480)
!1554 = !DILocalVariable(name: "flags", arg: 6, scope: !1543, file: !454, line: 253, type: !70)
!1555 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1543, file: !454, line: 254, type: !1546)
!1556 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1543, file: !454, line: 255, type: !96)
!1557 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1543, file: !454, line: 256, type: !96)
!1558 = !DILocalVariable(name: "unibyte_locale", scope: !1543, file: !454, line: 258, type: !121)
!1559 = !DILocalVariable(name: "len", scope: !1543, file: !454, line: 260, type: !93)
!1560 = !DILocalVariable(name: "orig_buffersize", scope: !1543, file: !454, line: 261, type: !93)
!1561 = !DILocalVariable(name: "quote_string", scope: !1543, file: !454, line: 262, type: !96)
!1562 = !DILocalVariable(name: "quote_string_len", scope: !1543, file: !454, line: 263, type: !93)
!1563 = !DILocalVariable(name: "backslash_escapes", scope: !1543, file: !454, line: 264, type: !121)
!1564 = !DILocalVariable(name: "elide_outer_quotes", scope: !1543, file: !454, line: 265, type: !121)
!1565 = !DILocalVariable(name: "encountered_single_quote", scope: !1543, file: !454, line: 266, type: !121)
!1566 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1543, file: !454, line: 267, type: !121)
!1567 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1543, file: !454, line: 309, type: !121)
!1568 = !DILocalVariable(name: "lq", scope: !1569, file: !454, line: 361, type: !96)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !454, line: 361, column: 11)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !454, line: 360, column: 13)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !454, line: 333, column: 7)
!1572 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 312, column: 5)
!1573 = !DILocalVariable(name: "i", scope: !1574, file: !454, line: 395, type: !93)
!1574 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 395, column: 3)
!1575 = !DILocalVariable(name: "is_right_quote", scope: !1576, file: !454, line: 397, type: !121)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !454, line: 396, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !454, line: 395, column: 3)
!1578 = !DILocalVariable(name: "escaping", scope: !1576, file: !454, line: 398, type: !121)
!1579 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1576, file: !454, line: 399, type: !121)
!1580 = !DILocalVariable(name: "c", scope: !1576, file: !454, line: 417, type: !98)
!1581 = !DILocalVariable(name: "m", scope: !1582, file: !454, line: 598, type: !93)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 596, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1576, file: !454, line: 419, column: 9)
!1584 = !DILocalVariable(name: "printable", scope: !1582, file: !454, line: 600, type: !121)
!1585 = !DILocalVariable(name: "mbs", scope: !1586, file: !454, line: 609, type: !541)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !454, line: 608, column: 15)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !454, line: 602, column: 17)
!1588 = !DILocalVariable(name: "w", scope: !1589, file: !454, line: 618, type: !434)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !454, line: 617, column: 19)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !454, line: 616, column: 17)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !454, line: 616, column: 17)
!1592 = !DILocalVariable(name: "bytes", scope: !1589, file: !454, line: 619, type: !93)
!1593 = !DILocalVariable(name: "j", scope: !1594, file: !454, line: 648, type: !93)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !454, line: 648, column: 29)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !454, line: 647, column: 27)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !454, line: 645, column: 29)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !454, line: 636, column: 23)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !454, line: 628, column: 30)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !454, line: 623, column: 30)
!1600 = distinct !DILexicalBlock(scope: !1589, file: !454, line: 621, column: 25)
!1601 = !DILocalVariable(name: "ilim", scope: !1602, file: !454, line: 674, type: !93)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !454, line: 671, column: 15)
!1603 = distinct !DILexicalBlock(scope: !1582, file: !454, line: 670, column: 17)
!1604 = !DILabel(scope: !1543, name: "process_input", file: !454, line: 308)
!1605 = !DILabel(scope: !1606, name: "c_and_shell_escape", file: !454, line: 502)
!1606 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 478, column: 9)
!1607 = !DILabel(scope: !1606, name: "c_escape", file: !454, line: 507)
!1608 = !DILabel(scope: !1576, name: "store_escape", file: !454, line: 709)
!1609 = !DILabel(scope: !1576, name: "store_c", file: !454, line: 712)
!1610 = !DILabel(scope: !1543, name: "force_outer_quoting_style", file: !454, line: 753)
!1611 = !DILocation(line: 0, scope: !1543)
!1612 = !DILocation(line: 258, column: 25, scope: !1543)
!1613 = !DILocation(line: 258, column: 36, scope: !1543)
!1614 = !DILocation(line: 267, column: 3, scope: !1543)
!1615 = !DILocation(line: 261, column: 10, scope: !1543)
!1616 = !DILocation(line: 262, column: 15, scope: !1543)
!1617 = !DILocation(line: 263, column: 10, scope: !1543)
!1618 = !DILocation(line: 308, column: 2, scope: !1543)
!1619 = !DILocation(line: 311, column: 3, scope: !1543)
!1620 = !DILocation(line: 318, column: 11, scope: !1572)
!1621 = !DILocation(line: 319, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !454, line: 319, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !454, line: 319, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1572, file: !454, line: 318, column: 11)
!1625 = !DILocation(line: 319, column: 9, scope: !1623)
!1626 = !DILocation(line: 0, scope: !532, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 357, column: 26, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !454, line: 335, column: 11)
!1629 = distinct !DILexicalBlock(scope: !1571, file: !454, line: 334, column: 13)
!1630 = !DILocation(line: 199, column: 29, scope: !532, inlinedAt: !1627)
!1631 = !DILocation(line: 201, column: 19, scope: !1632, inlinedAt: !1627)
!1632 = distinct !DILexicalBlock(scope: !532, file: !454, line: 201, column: 7)
!1633 = !DILocation(line: 201, column: 7, scope: !532, inlinedAt: !1627)
!1634 = !DILocation(line: 229, column: 3, scope: !532, inlinedAt: !1627)
!1635 = !DILocation(line: 230, column: 3, scope: !532, inlinedAt: !1627)
!1636 = !DILocation(line: 230, column: 13, scope: !532, inlinedAt: !1627)
!1637 = !DILocalVariable(name: "ps", arg: 1, scope: !1638, file: !1390, line: 1135, type: !1641)
!1638 = distinct !DISubprogram(name: "mbszero", scope: !1390, file: !1390, line: 1135, type: !1639, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1642)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!1642 = !{!1637}
!1643 = !DILocation(line: 0, scope: !1638, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 230, column: 18, scope: !532, inlinedAt: !1627)
!1645 = !DILocalVariable(name: "__dest", arg: 1, scope: !1646, file: !1399, line: 57, type: !91)
!1646 = distinct !DISubprogram(name: "memset", scope: !1399, file: !1399, line: 57, type: !1400, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1647)
!1647 = !{!1645, !1648, !1649}
!1648 = !DILocalVariable(name: "__ch", arg: 2, scope: !1646, file: !1399, line: 57, type: !70)
!1649 = !DILocalVariable(name: "__len", arg: 3, scope: !1646, file: !1399, line: 57, type: !93)
!1650 = !DILocation(line: 0, scope: !1646, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 1137, column: 3, scope: !1638, inlinedAt: !1644)
!1652 = !DILocation(line: 59, column: 10, scope: !1646, inlinedAt: !1651)
!1653 = !DILocation(line: 231, column: 7, scope: !1654, inlinedAt: !1627)
!1654 = distinct !DILexicalBlock(scope: !532, file: !454, line: 231, column: 7)
!1655 = !DILocation(line: 231, column: 40, scope: !1654, inlinedAt: !1627)
!1656 = !DILocation(line: 231, column: 45, scope: !1654, inlinedAt: !1627)
!1657 = !DILocation(line: 235, column: 1, scope: !532, inlinedAt: !1627)
!1658 = !DILocation(line: 0, scope: !532, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 358, column: 27, scope: !1628)
!1660 = !DILocation(line: 199, column: 29, scope: !532, inlinedAt: !1659)
!1661 = !DILocation(line: 201, column: 19, scope: !1632, inlinedAt: !1659)
!1662 = !DILocation(line: 201, column: 7, scope: !532, inlinedAt: !1659)
!1663 = !DILocation(line: 229, column: 3, scope: !532, inlinedAt: !1659)
!1664 = !DILocation(line: 230, column: 3, scope: !532, inlinedAt: !1659)
!1665 = !DILocation(line: 230, column: 13, scope: !532, inlinedAt: !1659)
!1666 = !DILocation(line: 0, scope: !1638, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 230, column: 18, scope: !532, inlinedAt: !1659)
!1668 = !DILocation(line: 0, scope: !1646, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 1137, column: 3, scope: !1638, inlinedAt: !1667)
!1670 = !DILocation(line: 59, column: 10, scope: !1646, inlinedAt: !1669)
!1671 = !DILocation(line: 231, column: 7, scope: !1654, inlinedAt: !1659)
!1672 = !DILocation(line: 231, column: 40, scope: !1654, inlinedAt: !1659)
!1673 = !DILocation(line: 231, column: 45, scope: !1654, inlinedAt: !1659)
!1674 = !DILocation(line: 235, column: 1, scope: !532, inlinedAt: !1659)
!1675 = !DILocation(line: 360, column: 13, scope: !1571)
!1676 = !DILocation(line: 0, scope: !1569)
!1677 = !DILocation(line: 361, column: 45, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1569, file: !454, line: 361, column: 11)
!1679 = !DILocation(line: 361, column: 11, scope: !1569)
!1680 = !DILocation(line: 362, column: 13, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !454, line: 362, column: 13)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !454, line: 362, column: 13)
!1683 = !DILocation(line: 362, column: 13, scope: !1682)
!1684 = !DILocation(line: 361, column: 52, scope: !1678)
!1685 = distinct !{!1685, !1679, !1686, !880}
!1686 = !DILocation(line: 362, column: 13, scope: !1569)
!1687 = !DILocation(line: 260, column: 10, scope: !1543)
!1688 = !DILocation(line: 365, column: 28, scope: !1571)
!1689 = !DILocation(line: 367, column: 7, scope: !1572)
!1690 = !DILocation(line: 370, column: 7, scope: !1572)
!1691 = !DILocation(line: 376, column: 11, scope: !1572)
!1692 = !DILocation(line: 381, column: 11, scope: !1572)
!1693 = !DILocation(line: 382, column: 9, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !454, line: 382, column: 9)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !454, line: 382, column: 9)
!1696 = distinct !DILexicalBlock(scope: !1572, file: !454, line: 381, column: 11)
!1697 = !DILocation(line: 382, column: 9, scope: !1695)
!1698 = !DILocation(line: 389, column: 7, scope: !1572)
!1699 = !DILocation(line: 392, column: 7, scope: !1572)
!1700 = !DILocation(line: 0, scope: !1574)
!1701 = !DILocation(line: 395, column: 8, scope: !1574)
!1702 = !DILocation(line: 395, scope: !1574)
!1703 = !DILocation(line: 395, column: 34, scope: !1577)
!1704 = !DILocation(line: 395, column: 26, scope: !1577)
!1705 = !DILocation(line: 395, column: 48, scope: !1577)
!1706 = !DILocation(line: 395, column: 55, scope: !1577)
!1707 = !DILocation(line: 395, column: 3, scope: !1574)
!1708 = !DILocation(line: 395, column: 67, scope: !1577)
!1709 = !DILocation(line: 0, scope: !1576)
!1710 = !DILocation(line: 402, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1576, file: !454, line: 401, column: 11)
!1712 = !DILocation(line: 404, column: 17, scope: !1711)
!1713 = !DILocation(line: 405, column: 39, scope: !1711)
!1714 = !DILocation(line: 409, column: 32, scope: !1711)
!1715 = !DILocation(line: 405, column: 19, scope: !1711)
!1716 = !DILocation(line: 405, column: 15, scope: !1711)
!1717 = !DILocation(line: 410, column: 11, scope: !1711)
!1718 = !DILocation(line: 410, column: 25, scope: !1711)
!1719 = !DILocalVariable(name: "__s1", arg: 1, scope: !1720, file: !846, line: 974, type: !978)
!1720 = distinct !DISubprogram(name: "memeq", scope: !846, file: !846, line: 974, type: !1360, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1721)
!1721 = !{!1719, !1722, !1723}
!1722 = !DILocalVariable(name: "__s2", arg: 2, scope: !1720, file: !846, line: 974, type: !978)
!1723 = !DILocalVariable(name: "__n", arg: 3, scope: !1720, file: !846, line: 974, type: !93)
!1724 = !DILocation(line: 0, scope: !1720, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 410, column: 14, scope: !1711)
!1726 = !DILocation(line: 976, column: 11, scope: !1720, inlinedAt: !1725)
!1727 = !DILocation(line: 976, column: 10, scope: !1720, inlinedAt: !1725)
!1728 = !DILocation(line: 401, column: 11, scope: !1576)
!1729 = !DILocation(line: 417, column: 25, scope: !1576)
!1730 = !DILocation(line: 418, column: 7, scope: !1576)
!1731 = !DILocation(line: 421, column: 15, scope: !1583)
!1732 = !DILocation(line: 423, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !454, line: 423, column: 15)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !454, line: 422, column: 13)
!1735 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 421, column: 15)
!1736 = !DILocation(line: 423, column: 15, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !454, line: 423, column: 15)
!1738 = !DILocation(line: 423, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !454, line: 423, column: 15)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !454, line: 423, column: 15)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !454, line: 423, column: 15)
!1742 = !DILocation(line: 423, column: 15, scope: !1740)
!1743 = !DILocation(line: 423, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !454, line: 423, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !454, line: 423, column: 15)
!1746 = !DILocation(line: 423, column: 15, scope: !1745)
!1747 = !DILocation(line: 423, column: 15, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !454, line: 423, column: 15)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !454, line: 423, column: 15)
!1750 = !DILocation(line: 423, column: 15, scope: !1749)
!1751 = !DILocation(line: 423, column: 15, scope: !1741)
!1752 = !DILocation(line: 423, column: 15, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !454, line: 423, column: 15)
!1754 = distinct !DILexicalBlock(scope: !1733, file: !454, line: 423, column: 15)
!1755 = !DILocation(line: 423, column: 15, scope: !1754)
!1756 = !DILocation(line: 431, column: 19, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1734, file: !454, line: 430, column: 19)
!1758 = !DILocation(line: 431, column: 24, scope: !1757)
!1759 = !DILocation(line: 431, column: 28, scope: !1757)
!1760 = !DILocation(line: 431, column: 38, scope: !1757)
!1761 = !DILocation(line: 431, column: 48, scope: !1757)
!1762 = !DILocation(line: 431, column: 59, scope: !1757)
!1763 = !DILocation(line: 433, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !454, line: 433, column: 19)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !454, line: 433, column: 19)
!1766 = distinct !DILexicalBlock(scope: !1757, file: !454, line: 432, column: 17)
!1767 = !DILocation(line: 433, column: 19, scope: !1765)
!1768 = !DILocation(line: 434, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !454, line: 434, column: 19)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !454, line: 434, column: 19)
!1771 = !DILocation(line: 434, column: 19, scope: !1770)
!1772 = !DILocation(line: 435, column: 17, scope: !1766)
!1773 = !DILocation(line: 442, column: 20, scope: !1735)
!1774 = !DILocation(line: 447, column: 11, scope: !1583)
!1775 = !DILocation(line: 450, column: 19, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 448, column: 13)
!1777 = !DILocation(line: 456, column: 19, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !454, line: 455, column: 19)
!1779 = !DILocation(line: 456, column: 24, scope: !1778)
!1780 = !DILocation(line: 456, column: 28, scope: !1778)
!1781 = !DILocation(line: 456, column: 38, scope: !1778)
!1782 = !DILocation(line: 456, column: 47, scope: !1778)
!1783 = !DILocation(line: 456, column: 41, scope: !1778)
!1784 = !DILocation(line: 456, column: 52, scope: !1778)
!1785 = !DILocation(line: 455, column: 19, scope: !1776)
!1786 = !DILocation(line: 457, column: 25, scope: !1778)
!1787 = !DILocation(line: 457, column: 17, scope: !1778)
!1788 = !DILocation(line: 464, column: 25, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1778, file: !454, line: 458, column: 19)
!1790 = !DILocation(line: 468, column: 21, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !454, line: 468, column: 21)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !454, line: 468, column: 21)
!1793 = !DILocation(line: 468, column: 21, scope: !1792)
!1794 = !DILocation(line: 469, column: 21, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !454, line: 469, column: 21)
!1796 = distinct !DILexicalBlock(scope: !1789, file: !454, line: 469, column: 21)
!1797 = !DILocation(line: 469, column: 21, scope: !1796)
!1798 = !DILocation(line: 470, column: 21, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !454, line: 470, column: 21)
!1800 = distinct !DILexicalBlock(scope: !1789, file: !454, line: 470, column: 21)
!1801 = !DILocation(line: 470, column: 21, scope: !1800)
!1802 = !DILocation(line: 471, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !454, line: 471, column: 21)
!1804 = distinct !DILexicalBlock(scope: !1789, file: !454, line: 471, column: 21)
!1805 = !DILocation(line: 471, column: 21, scope: !1804)
!1806 = !DILocation(line: 472, column: 21, scope: !1789)
!1807 = !DILocation(line: 482, column: 33, scope: !1606)
!1808 = !DILocation(line: 483, column: 33, scope: !1606)
!1809 = !DILocation(line: 485, column: 33, scope: !1606)
!1810 = !DILocation(line: 486, column: 33, scope: !1606)
!1811 = !DILocation(line: 487, column: 33, scope: !1606)
!1812 = !DILocation(line: 490, column: 17, scope: !1606)
!1813 = !DILocation(line: 492, column: 21, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !454, line: 491, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1606, file: !454, line: 490, column: 17)
!1816 = !DILocation(line: 499, column: 35, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1606, file: !454, line: 499, column: 17)
!1818 = !DILocation(line: 0, scope: !1606)
!1819 = !DILocation(line: 502, column: 11, scope: !1606)
!1820 = !DILocation(line: 504, column: 17, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1606, file: !454, line: 503, column: 17)
!1822 = !DILocation(line: 507, column: 11, scope: !1606)
!1823 = !DILocation(line: 508, column: 17, scope: !1606)
!1824 = !DILocation(line: 517, column: 15, scope: !1583)
!1825 = !DILocation(line: 517, column: 40, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 517, column: 15)
!1827 = !DILocation(line: 517, column: 47, scope: !1826)
!1828 = !DILocation(line: 517, column: 18, scope: !1826)
!1829 = !DILocation(line: 521, column: 17, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 521, column: 15)
!1831 = !DILocation(line: 521, column: 15, scope: !1583)
!1832 = !DILocation(line: 525, column: 11, scope: !1583)
!1833 = !DILocation(line: 537, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 536, column: 15)
!1835 = !DILocation(line: 536, column: 15, scope: !1583)
!1836 = !DILocation(line: 544, column: 15, scope: !1583)
!1837 = !DILocation(line: 546, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !454, line: 545, column: 13)
!1839 = distinct !DILexicalBlock(scope: !1583, file: !454, line: 544, column: 15)
!1840 = !DILocation(line: 549, column: 19, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !454, line: 549, column: 19)
!1842 = !DILocation(line: 549, column: 30, scope: !1841)
!1843 = !DILocation(line: 558, column: 15, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !454, line: 558, column: 15)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !454, line: 558, column: 15)
!1846 = !DILocation(line: 558, column: 15, scope: !1845)
!1847 = !DILocation(line: 559, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !454, line: 559, column: 15)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !454, line: 559, column: 15)
!1850 = !DILocation(line: 559, column: 15, scope: !1849)
!1851 = !DILocation(line: 560, column: 15, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !454, line: 560, column: 15)
!1853 = distinct !DILexicalBlock(scope: !1838, file: !454, line: 560, column: 15)
!1854 = !DILocation(line: 560, column: 15, scope: !1853)
!1855 = !DILocation(line: 562, column: 13, scope: !1838)
!1856 = !DILocation(line: 602, column: 17, scope: !1582)
!1857 = !DILocation(line: 0, scope: !1582)
!1858 = !DILocation(line: 605, column: 29, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1587, file: !454, line: 603, column: 15)
!1860 = !DILocation(line: 605, column: 41, scope: !1859)
!1861 = !DILocation(line: 606, column: 15, scope: !1859)
!1862 = !DILocation(line: 609, column: 17, scope: !1586)
!1863 = !DILocation(line: 609, column: 27, scope: !1586)
!1864 = !DILocation(line: 0, scope: !1638, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 609, column: 32, scope: !1586)
!1866 = !DILocation(line: 0, scope: !1646, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 1137, column: 3, scope: !1638, inlinedAt: !1865)
!1868 = !DILocation(line: 59, column: 10, scope: !1646, inlinedAt: !1867)
!1869 = !DILocation(line: 613, column: 29, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1586, file: !454, line: 613, column: 21)
!1871 = !DILocation(line: 613, column: 21, scope: !1586)
!1872 = !DILocation(line: 614, column: 29, scope: !1870)
!1873 = !DILocation(line: 614, column: 19, scope: !1870)
!1874 = !DILocation(line: 618, column: 21, scope: !1589)
!1875 = !DILocation(line: 620, column: 54, scope: !1589)
!1876 = !DILocation(line: 0, scope: !1589)
!1877 = !DILocation(line: 619, column: 36, scope: !1589)
!1878 = !DILocation(line: 621, column: 25, scope: !1589)
!1879 = !DILocation(line: 631, column: 38, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1598, file: !454, line: 629, column: 23)
!1881 = !DILocation(line: 631, column: 48, scope: !1880)
!1882 = !DILocation(line: 626, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1599, file: !454, line: 624, column: 23)
!1884 = !DILocation(line: 631, column: 51, scope: !1880)
!1885 = !DILocation(line: 631, column: 25, scope: !1880)
!1886 = !DILocation(line: 632, column: 28, scope: !1880)
!1887 = !DILocation(line: 631, column: 34, scope: !1880)
!1888 = distinct !{!1888, !1885, !1886, !880}
!1889 = !DILocation(line: 646, column: 29, scope: !1596)
!1890 = !DILocation(line: 0, scope: !1594)
!1891 = !DILocation(line: 649, column: 49, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1594, file: !454, line: 648, column: 29)
!1893 = !DILocation(line: 649, column: 39, scope: !1892)
!1894 = !DILocation(line: 649, column: 31, scope: !1892)
!1895 = !DILocation(line: 648, column: 60, scope: !1892)
!1896 = !DILocation(line: 648, column: 50, scope: !1892)
!1897 = !DILocation(line: 648, column: 29, scope: !1594)
!1898 = distinct !{!1898, !1897, !1899, !880}
!1899 = !DILocation(line: 654, column: 33, scope: !1594)
!1900 = !DILocation(line: 657, column: 43, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1597, file: !454, line: 657, column: 29)
!1902 = !DILocalVariable(name: "wc", arg: 1, scope: !1903, file: !1904, line: 865, type: !1907)
!1903 = distinct !DISubprogram(name: "c32isprint", scope: !1904, file: !1904, line: 865, type: !1905, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1909)
!1904 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!70, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1908, line: 20, baseType: !62)
!1908 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1909 = !{!1902}
!1910 = !DILocation(line: 0, scope: !1903, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 657, column: 31, scope: !1901)
!1912 = !DILocation(line: 871, column: 10, scope: !1903, inlinedAt: !1911)
!1913 = !DILocation(line: 657, column: 31, scope: !1901)
!1914 = !DILocation(line: 664, column: 23, scope: !1589)
!1915 = !DILocation(line: 665, column: 19, scope: !1590)
!1916 = !DILocation(line: 666, column: 15, scope: !1587)
!1917 = !DILocation(line: 753, column: 2, scope: !1543)
!1918 = !DILocation(line: 756, column: 51, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 756, column: 7)
!1920 = !DILocation(line: 0, scope: !1587)
!1921 = !DILocation(line: 670, column: 19, scope: !1603)
!1922 = !DILocation(line: 670, column: 23, scope: !1603)
!1923 = !DILocation(line: 674, column: 33, scope: !1602)
!1924 = !DILocation(line: 0, scope: !1602)
!1925 = !DILocation(line: 676, column: 17, scope: !1602)
!1926 = !DILocation(line: 398, column: 12, scope: !1576)
!1927 = !DILocation(line: 678, column: 43, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !454, line: 678, column: 25)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !454, line: 677, column: 19)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !454, line: 676, column: 17)
!1931 = distinct !DILexicalBlock(scope: !1602, file: !454, line: 676, column: 17)
!1932 = !DILocation(line: 680, column: 25, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !454, line: 680, column: 25)
!1934 = distinct !DILexicalBlock(scope: !1928, file: !454, line: 679, column: 23)
!1935 = !DILocation(line: 680, column: 25, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1933, file: !454, line: 680, column: 25)
!1937 = !DILocation(line: 680, column: 25, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !454, line: 680, column: 25)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !454, line: 680, column: 25)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !454, line: 680, column: 25)
!1941 = !DILocation(line: 680, column: 25, scope: !1939)
!1942 = !DILocation(line: 680, column: 25, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !454, line: 680, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !454, line: 680, column: 25)
!1945 = !DILocation(line: 680, column: 25, scope: !1944)
!1946 = !DILocation(line: 680, column: 25, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !454, line: 680, column: 25)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !454, line: 680, column: 25)
!1949 = !DILocation(line: 680, column: 25, scope: !1948)
!1950 = !DILocation(line: 680, column: 25, scope: !1940)
!1951 = !DILocation(line: 680, column: 25, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !454, line: 680, column: 25)
!1953 = distinct !DILexicalBlock(scope: !1933, file: !454, line: 680, column: 25)
!1954 = !DILocation(line: 680, column: 25, scope: !1953)
!1955 = !DILocation(line: 681, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !454, line: 681, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1934, file: !454, line: 681, column: 25)
!1958 = !DILocation(line: 681, column: 25, scope: !1957)
!1959 = !DILocation(line: 682, column: 25, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !454, line: 682, column: 25)
!1961 = distinct !DILexicalBlock(scope: !1934, file: !454, line: 682, column: 25)
!1962 = !DILocation(line: 682, column: 25, scope: !1961)
!1963 = !DILocation(line: 683, column: 38, scope: !1934)
!1964 = !DILocation(line: 683, column: 33, scope: !1934)
!1965 = !DILocation(line: 684, column: 23, scope: !1934)
!1966 = !DILocation(line: 685, column: 30, scope: !1928)
!1967 = !DILocation(line: 687, column: 25, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !454, line: 687, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !454, line: 687, column: 25)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !454, line: 686, column: 23)
!1971 = distinct !DILexicalBlock(scope: !1928, file: !454, line: 685, column: 30)
!1972 = !DILocation(line: 687, column: 25, scope: !1969)
!1973 = !DILocation(line: 689, column: 23, scope: !1970)
!1974 = !DILocation(line: 690, column: 35, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1929, file: !454, line: 690, column: 25)
!1976 = !DILocation(line: 690, column: 30, scope: !1975)
!1977 = !DILocation(line: 690, column: 25, scope: !1929)
!1978 = !DILocation(line: 692, column: 21, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !454, line: 692, column: 21)
!1980 = distinct !DILexicalBlock(scope: !1929, file: !454, line: 692, column: 21)
!1981 = !DILocation(line: 692, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !454, line: 692, column: 21)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !454, line: 692, column: 21)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !454, line: 692, column: 21)
!1985 = !DILocation(line: 692, column: 21, scope: !1983)
!1986 = !DILocation(line: 692, column: 21, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !454, line: 692, column: 21)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !454, line: 692, column: 21)
!1989 = !DILocation(line: 692, column: 21, scope: !1988)
!1990 = !DILocation(line: 692, column: 21, scope: !1984)
!1991 = !DILocation(line: 0, scope: !1929)
!1992 = !DILocation(line: 693, column: 21, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !454, line: 693, column: 21)
!1994 = distinct !DILexicalBlock(scope: !1929, file: !454, line: 693, column: 21)
!1995 = !DILocation(line: 693, column: 21, scope: !1994)
!1996 = !DILocation(line: 694, column: 25, scope: !1929)
!1997 = !DILocation(line: 676, column: 17, scope: !1930)
!1998 = distinct !{!1998, !1999, !2000}
!1999 = !DILocation(line: 676, column: 17, scope: !1931)
!2000 = !DILocation(line: 695, column: 19, scope: !1931)
!2001 = !DILocation(line: 409, column: 30, scope: !1711)
!2002 = !DILocation(line: 702, column: 34, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1576, file: !454, line: 702, column: 11)
!2004 = !DILocation(line: 704, column: 14, scope: !2003)
!2005 = !DILocation(line: 705, column: 14, scope: !2003)
!2006 = !DILocation(line: 705, column: 35, scope: !2003)
!2007 = !DILocation(line: 705, column: 17, scope: !2003)
!2008 = !DILocation(line: 705, column: 47, scope: !2003)
!2009 = !DILocation(line: 705, column: 65, scope: !2003)
!2010 = !DILocation(line: 706, column: 11, scope: !2003)
!2011 = !DILocation(line: 702, column: 11, scope: !1576)
!2012 = !DILocation(line: 395, column: 15, scope: !1574)
!2013 = !DILocation(line: 709, column: 5, scope: !1576)
!2014 = !DILocation(line: 710, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1576, file: !454, line: 710, column: 7)
!2016 = !DILocation(line: 710, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2015, file: !454, line: 710, column: 7)
!2018 = !DILocation(line: 710, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !454, line: 710, column: 7)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !454, line: 710, column: 7)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !454, line: 710, column: 7)
!2022 = !DILocation(line: 710, column: 7, scope: !2020)
!2023 = !DILocation(line: 710, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !454, line: 710, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !454, line: 710, column: 7)
!2026 = !DILocation(line: 710, column: 7, scope: !2025)
!2027 = !DILocation(line: 710, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !454, line: 710, column: 7)
!2029 = distinct !DILexicalBlock(scope: !2021, file: !454, line: 710, column: 7)
!2030 = !DILocation(line: 710, column: 7, scope: !2029)
!2031 = !DILocation(line: 710, column: 7, scope: !2021)
!2032 = !DILocation(line: 710, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !454, line: 710, column: 7)
!2034 = distinct !DILexicalBlock(scope: !2015, file: !454, line: 710, column: 7)
!2035 = !DILocation(line: 710, column: 7, scope: !2034)
!2036 = !DILocation(line: 712, column: 5, scope: !1576)
!2037 = !DILocation(line: 713, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !454, line: 713, column: 7)
!2039 = distinct !DILexicalBlock(scope: !1576, file: !454, line: 713, column: 7)
!2040 = !DILocation(line: 417, column: 21, scope: !1576)
!2041 = !DILocation(line: 713, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !454, line: 713, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !454, line: 713, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2038, file: !454, line: 713, column: 7)
!2045 = !DILocation(line: 713, column: 7, scope: !2043)
!2046 = !DILocation(line: 713, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !454, line: 713, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !454, line: 713, column: 7)
!2049 = !DILocation(line: 713, column: 7, scope: !2048)
!2050 = !DILocation(line: 713, column: 7, scope: !2044)
!2051 = !DILocation(line: 714, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !454, line: 714, column: 7)
!2053 = distinct !DILexicalBlock(scope: !1576, file: !454, line: 714, column: 7)
!2054 = !DILocation(line: 714, column: 7, scope: !2053)
!2055 = !DILocation(line: 716, column: 11, scope: !1576)
!2056 = !DILocation(line: 718, column: 5, scope: !1577)
!2057 = !DILocation(line: 395, column: 82, scope: !1577)
!2058 = !DILocation(line: 395, column: 3, scope: !1577)
!2059 = distinct !{!2059, !1707, !2060, !880}
!2060 = !DILocation(line: 718, column: 5, scope: !1574)
!2061 = !DILocation(line: 720, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 720, column: 7)
!2063 = !DILocation(line: 720, column: 16, scope: !2062)
!2064 = !DILocation(line: 728, column: 51, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 728, column: 7)
!2066 = !DILocation(line: 731, column: 11, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2065, file: !454, line: 730, column: 5)
!2068 = !DILocation(line: 732, column: 16, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2067, file: !454, line: 731, column: 11)
!2070 = !DILocation(line: 732, column: 9, scope: !2069)
!2071 = !DILocation(line: 736, column: 18, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !454, line: 736, column: 16)
!2073 = !DILocation(line: 736, column: 29, scope: !2072)
!2074 = !DILocation(line: 745, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 745, column: 7)
!2076 = !DILocation(line: 745, column: 20, scope: !2075)
!2077 = !DILocation(line: 746, column: 12, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !454, line: 746, column: 5)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !454, line: 746, column: 5)
!2080 = !DILocation(line: 746, column: 5, scope: !2079)
!2081 = !DILocation(line: 747, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !454, line: 747, column: 7)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !454, line: 747, column: 7)
!2084 = !DILocation(line: 747, column: 7, scope: !2083)
!2085 = !DILocation(line: 746, column: 39, scope: !2078)
!2086 = distinct !{!2086, !2080, !2087, !880}
!2087 = !DILocation(line: 747, column: 7, scope: !2079)
!2088 = !DILocation(line: 749, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1543, file: !454, line: 749, column: 7)
!2090 = !DILocation(line: 749, column: 7, scope: !1543)
!2091 = !DILocation(line: 750, column: 5, scope: !2089)
!2092 = !DILocation(line: 750, column: 17, scope: !2089)
!2093 = !DILocation(line: 756, column: 21, scope: !1919)
!2094 = !DILocation(line: 760, column: 42, scope: !1543)
!2095 = !DILocation(line: 758, column: 10, scope: !1543)
!2096 = !DILocation(line: 758, column: 3, scope: !1543)
!2097 = !DILocation(line: 762, column: 1, scope: !1543)
!2098 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !954, file: !954, line: 98, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!93}
!2101 = !DISubprogram(name: "strlen", scope: !950, file: !950, line: 407, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!95, !96}
!2104 = !DISubprogram(name: "iswprint", scope: !2105, file: !2105, line: 120, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!2105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2106 = distinct !DISubprogram(name: "quotearg_alloc", scope: !454, file: !454, line: 788, type: !2107, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!90, !96, !93, !1436}
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "arg", arg: 1, scope: !2106, file: !454, line: 788, type: !96)
!2111 = !DILocalVariable(name: "argsize", arg: 2, scope: !2106, file: !454, line: 788, type: !93)
!2112 = !DILocalVariable(name: "o", arg: 3, scope: !2106, file: !454, line: 789, type: !1436)
!2113 = !DILocation(line: 0, scope: !2106)
!2114 = !DILocalVariable(name: "arg", arg: 1, scope: !2115, file: !454, line: 801, type: !96)
!2115 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !454, file: !454, line: 801, type: !2116, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!90, !96, !93, !707, !1436}
!2118 = !{!2114, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2119 = !DILocalVariable(name: "argsize", arg: 2, scope: !2115, file: !454, line: 801, type: !93)
!2120 = !DILocalVariable(name: "size", arg: 3, scope: !2115, file: !454, line: 801, type: !707)
!2121 = !DILocalVariable(name: "o", arg: 4, scope: !2115, file: !454, line: 802, type: !1436)
!2122 = !DILocalVariable(name: "p", scope: !2115, file: !454, line: 804, type: !1436)
!2123 = !DILocalVariable(name: "saved_errno", scope: !2115, file: !454, line: 805, type: !70)
!2124 = !DILocalVariable(name: "flags", scope: !2115, file: !454, line: 807, type: !70)
!2125 = !DILocalVariable(name: "bufsize", scope: !2115, file: !454, line: 808, type: !93)
!2126 = !DILocalVariable(name: "buf", scope: !2115, file: !454, line: 812, type: !90)
!2127 = !DILocation(line: 0, scope: !2115, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 791, column: 10, scope: !2106)
!2129 = !DILocation(line: 804, column: 37, scope: !2115, inlinedAt: !2128)
!2130 = !DILocation(line: 805, column: 21, scope: !2115, inlinedAt: !2128)
!2131 = !DILocation(line: 807, column: 18, scope: !2115, inlinedAt: !2128)
!2132 = !DILocation(line: 807, column: 24, scope: !2115, inlinedAt: !2128)
!2133 = !DILocation(line: 808, column: 72, scope: !2115, inlinedAt: !2128)
!2134 = !DILocation(line: 809, column: 56, scope: !2115, inlinedAt: !2128)
!2135 = !DILocation(line: 810, column: 49, scope: !2115, inlinedAt: !2128)
!2136 = !DILocation(line: 811, column: 49, scope: !2115, inlinedAt: !2128)
!2137 = !DILocation(line: 808, column: 20, scope: !2115, inlinedAt: !2128)
!2138 = !DILocation(line: 811, column: 62, scope: !2115, inlinedAt: !2128)
!2139 = !DILocation(line: 812, column: 15, scope: !2115, inlinedAt: !2128)
!2140 = !DILocation(line: 813, column: 60, scope: !2115, inlinedAt: !2128)
!2141 = !DILocation(line: 815, column: 32, scope: !2115, inlinedAt: !2128)
!2142 = !DILocation(line: 815, column: 47, scope: !2115, inlinedAt: !2128)
!2143 = !DILocation(line: 813, column: 3, scope: !2115, inlinedAt: !2128)
!2144 = !DILocation(line: 816, column: 9, scope: !2115, inlinedAt: !2128)
!2145 = !DILocation(line: 791, column: 3, scope: !2106)
!2146 = !DILocation(line: 0, scope: !2115)
!2147 = !DILocation(line: 804, column: 37, scope: !2115)
!2148 = !DILocation(line: 805, column: 21, scope: !2115)
!2149 = !DILocation(line: 807, column: 18, scope: !2115)
!2150 = !DILocation(line: 807, column: 27, scope: !2115)
!2151 = !DILocation(line: 807, column: 24, scope: !2115)
!2152 = !DILocation(line: 808, column: 72, scope: !2115)
!2153 = !DILocation(line: 809, column: 56, scope: !2115)
!2154 = !DILocation(line: 810, column: 49, scope: !2115)
!2155 = !DILocation(line: 811, column: 49, scope: !2115)
!2156 = !DILocation(line: 808, column: 20, scope: !2115)
!2157 = !DILocation(line: 811, column: 62, scope: !2115)
!2158 = !DILocation(line: 812, column: 15, scope: !2115)
!2159 = !DILocation(line: 813, column: 60, scope: !2115)
!2160 = !DILocation(line: 815, column: 32, scope: !2115)
!2161 = !DILocation(line: 815, column: 47, scope: !2115)
!2162 = !DILocation(line: 813, column: 3, scope: !2115)
!2163 = !DILocation(line: 816, column: 9, scope: !2115)
!2164 = !DILocation(line: 817, column: 7, scope: !2115)
!2165 = !DILocation(line: 818, column: 11, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2115, file: !454, line: 817, column: 7)
!2167 = !{!1252, !1252, i64 0}
!2168 = !DILocation(line: 818, column: 5, scope: !2166)
!2169 = !DILocation(line: 819, column: 3, scope: !2115)
!2170 = distinct !DISubprogram(name: "quotearg_free", scope: !454, file: !454, line: 837, type: !409, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2171)
!2171 = !{!2172, !2173}
!2172 = !DILocalVariable(name: "sv", scope: !2170, file: !454, line: 839, type: !555)
!2173 = !DILocalVariable(name: "i", scope: !2174, file: !454, line: 840, type: !70)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !454, line: 840, column: 3)
!2175 = !DILocation(line: 839, column: 24, scope: !2170)
!2176 = !DILocation(line: 0, scope: !2170)
!2177 = !DILocation(line: 0, scope: !2174)
!2178 = !DILocation(line: 840, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !454, line: 840, column: 3)
!2180 = !DILocation(line: 840, column: 3, scope: !2174)
!2181 = !DILocation(line: 842, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2170, file: !454, line: 842, column: 7)
!2183 = !{!2184, !773, i64 8}
!2184 = !{!"slotvec", !1252, i64 0, !773, i64 8}
!2185 = !DILocation(line: 842, column: 17, scope: !2182)
!2186 = !DILocation(line: 842, column: 7, scope: !2170)
!2187 = !DILocation(line: 841, column: 17, scope: !2179)
!2188 = !DILocation(line: 841, column: 5, scope: !2179)
!2189 = !DILocation(line: 840, column: 32, scope: !2179)
!2190 = distinct !{!2190, !2180, !2191, !880}
!2191 = !DILocation(line: 841, column: 20, scope: !2174)
!2192 = !DILocation(line: 844, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2182, file: !454, line: 843, column: 5)
!2194 = !DILocation(line: 845, column: 21, scope: !2193)
!2195 = !{!2184, !1252, i64 0}
!2196 = !DILocation(line: 846, column: 20, scope: !2193)
!2197 = !DILocation(line: 847, column: 5, scope: !2193)
!2198 = !DILocation(line: 848, column: 10, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2170, file: !454, line: 848, column: 7)
!2200 = !DILocation(line: 848, column: 7, scope: !2170)
!2201 = !DILocation(line: 850, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !454, line: 849, column: 5)
!2203 = !DILocation(line: 851, column: 15, scope: !2202)
!2204 = !DILocation(line: 852, column: 5, scope: !2202)
!2205 = !DILocation(line: 853, column: 10, scope: !2170)
!2206 = !DILocation(line: 854, column: 1, scope: !2170)
!2207 = !DISubprogram(name: "free", scope: !1390, file: !1390, line: 786, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !91}
!2210 = distinct !DISubprogram(name: "quotearg_n", scope: !454, file: !454, line: 919, type: !947, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2211)
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "n", arg: 1, scope: !2210, file: !454, line: 919, type: !70)
!2213 = !DILocalVariable(name: "arg", arg: 2, scope: !2210, file: !454, line: 919, type: !96)
!2214 = !DILocation(line: 0, scope: !2210)
!2215 = !DILocation(line: 921, column: 10, scope: !2210)
!2216 = !DILocation(line: 921, column: 3, scope: !2210)
!2217 = distinct !DISubprogram(name: "quotearg_n_options", scope: !454, file: !454, line: 866, type: !2218, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!90, !70, !96, !93, !1436}
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2231, !2232, !2234, !2235, !2236}
!2221 = !DILocalVariable(name: "n", arg: 1, scope: !2217, file: !454, line: 866, type: !70)
!2222 = !DILocalVariable(name: "arg", arg: 2, scope: !2217, file: !454, line: 866, type: !96)
!2223 = !DILocalVariable(name: "argsize", arg: 3, scope: !2217, file: !454, line: 866, type: !93)
!2224 = !DILocalVariable(name: "options", arg: 4, scope: !2217, file: !454, line: 867, type: !1436)
!2225 = !DILocalVariable(name: "saved_errno", scope: !2217, file: !454, line: 869, type: !70)
!2226 = !DILocalVariable(name: "sv", scope: !2217, file: !454, line: 871, type: !555)
!2227 = !DILocalVariable(name: "nslots_max", scope: !2217, file: !454, line: 873, type: !70)
!2228 = !DILocalVariable(name: "preallocated", scope: !2229, file: !454, line: 879, type: !121)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !454, line: 878, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2217, file: !454, line: 877, column: 7)
!2231 = !DILocalVariable(name: "new_nslots", scope: !2229, file: !454, line: 880, type: !720)
!2232 = !DILocalVariable(name: "size", scope: !2233, file: !454, line: 891, type: !93)
!2233 = distinct !DILexicalBlock(scope: !2217, file: !454, line: 890, column: 3)
!2234 = !DILocalVariable(name: "val", scope: !2233, file: !454, line: 892, type: !90)
!2235 = !DILocalVariable(name: "flags", scope: !2233, file: !454, line: 894, type: !70)
!2236 = !DILocalVariable(name: "qsize", scope: !2233, file: !454, line: 895, type: !93)
!2237 = !DILocation(line: 0, scope: !2217)
!2238 = !DILocation(line: 869, column: 21, scope: !2217)
!2239 = !DILocation(line: 871, column: 24, scope: !2217)
!2240 = !DILocation(line: 874, column: 17, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2217, file: !454, line: 874, column: 7)
!2242 = !DILocation(line: 875, column: 5, scope: !2241)
!2243 = !DILocation(line: 877, column: 7, scope: !2230)
!2244 = !DILocation(line: 877, column: 14, scope: !2230)
!2245 = !DILocation(line: 877, column: 7, scope: !2217)
!2246 = !DILocation(line: 879, column: 31, scope: !2229)
!2247 = !DILocation(line: 0, scope: !2229)
!2248 = !DILocation(line: 880, column: 7, scope: !2229)
!2249 = !DILocation(line: 880, column: 26, scope: !2229)
!2250 = !DILocation(line: 880, column: 13, scope: !2229)
!2251 = !DILocation(line: 882, column: 31, scope: !2229)
!2252 = !DILocation(line: 883, column: 33, scope: !2229)
!2253 = !DILocation(line: 883, column: 42, scope: !2229)
!2254 = !DILocation(line: 883, column: 31, scope: !2229)
!2255 = !DILocation(line: 882, column: 22, scope: !2229)
!2256 = !DILocation(line: 882, column: 15, scope: !2229)
!2257 = !DILocation(line: 884, column: 11, scope: !2229)
!2258 = !DILocation(line: 885, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2229, file: !454, line: 884, column: 11)
!2260 = !{i64 0, i64 8, !2167, i64 8, i64 8, !772}
!2261 = !DILocation(line: 885, column: 9, scope: !2259)
!2262 = !DILocation(line: 886, column: 20, scope: !2229)
!2263 = !DILocation(line: 886, column: 18, scope: !2229)
!2264 = !DILocation(line: 886, column: 32, scope: !2229)
!2265 = !DILocation(line: 886, column: 43, scope: !2229)
!2266 = !DILocation(line: 886, column: 53, scope: !2229)
!2267 = !DILocation(line: 0, scope: !1646, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 886, column: 7, scope: !2229)
!2269 = !DILocation(line: 59, column: 10, scope: !1646, inlinedAt: !2268)
!2270 = !DILocation(line: 887, column: 16, scope: !2229)
!2271 = !DILocation(line: 887, column: 14, scope: !2229)
!2272 = !DILocation(line: 888, column: 5, scope: !2230)
!2273 = !DILocation(line: 888, column: 5, scope: !2229)
!2274 = !DILocation(line: 891, column: 19, scope: !2233)
!2275 = !DILocation(line: 891, column: 25, scope: !2233)
!2276 = !DILocation(line: 0, scope: !2233)
!2277 = !DILocation(line: 892, column: 23, scope: !2233)
!2278 = !DILocation(line: 894, column: 26, scope: !2233)
!2279 = !DILocation(line: 894, column: 32, scope: !2233)
!2280 = !DILocation(line: 896, column: 55, scope: !2233)
!2281 = !DILocation(line: 897, column: 55, scope: !2233)
!2282 = !DILocation(line: 898, column: 55, scope: !2233)
!2283 = !DILocation(line: 899, column: 55, scope: !2233)
!2284 = !DILocation(line: 895, column: 20, scope: !2233)
!2285 = !DILocation(line: 901, column: 14, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2233, file: !454, line: 901, column: 9)
!2287 = !DILocation(line: 901, column: 9, scope: !2233)
!2288 = !DILocation(line: 903, column: 35, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !454, line: 902, column: 7)
!2290 = !DILocation(line: 903, column: 20, scope: !2289)
!2291 = !DILocation(line: 904, column: 17, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !454, line: 904, column: 13)
!2293 = !DILocation(line: 904, column: 13, scope: !2289)
!2294 = !DILocation(line: 905, column: 11, scope: !2292)
!2295 = !DILocation(line: 906, column: 27, scope: !2289)
!2296 = !DILocation(line: 906, column: 19, scope: !2289)
!2297 = !DILocation(line: 907, column: 69, scope: !2289)
!2298 = !DILocation(line: 909, column: 44, scope: !2289)
!2299 = !DILocation(line: 910, column: 44, scope: !2289)
!2300 = !DILocation(line: 907, column: 9, scope: !2289)
!2301 = !DILocation(line: 911, column: 7, scope: !2289)
!2302 = !DILocation(line: 913, column: 11, scope: !2233)
!2303 = !DILocation(line: 914, column: 5, scope: !2233)
!2304 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !454, file: !454, line: 925, type: !2305, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!90, !70, !96, !93}
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "n", arg: 1, scope: !2304, file: !454, line: 925, type: !70)
!2309 = !DILocalVariable(name: "arg", arg: 2, scope: !2304, file: !454, line: 925, type: !96)
!2310 = !DILocalVariable(name: "argsize", arg: 3, scope: !2304, file: !454, line: 925, type: !93)
!2311 = !DILocation(line: 0, scope: !2304)
!2312 = !DILocation(line: 927, column: 10, scope: !2304)
!2313 = !DILocation(line: 927, column: 3, scope: !2304)
!2314 = distinct !DISubprogram(name: "quotearg", scope: !454, file: !454, line: 931, type: !956, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2315)
!2315 = !{!2316}
!2316 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !454, line: 931, type: !96)
!2317 = !DILocation(line: 0, scope: !2314)
!2318 = !DILocation(line: 0, scope: !2210, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 933, column: 10, scope: !2314)
!2320 = !DILocation(line: 921, column: 10, scope: !2210, inlinedAt: !2319)
!2321 = !DILocation(line: 933, column: 3, scope: !2314)
!2322 = distinct !DISubprogram(name: "quotearg_mem", scope: !454, file: !454, line: 937, type: !2323, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!90, !96, !93}
!2325 = !{!2326, !2327}
!2326 = !DILocalVariable(name: "arg", arg: 1, scope: !2322, file: !454, line: 937, type: !96)
!2327 = !DILocalVariable(name: "argsize", arg: 2, scope: !2322, file: !454, line: 937, type: !93)
!2328 = !DILocation(line: 0, scope: !2322)
!2329 = !DILocation(line: 0, scope: !2304, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 939, column: 10, scope: !2322)
!2331 = !DILocation(line: 927, column: 10, scope: !2304, inlinedAt: !2330)
!2332 = !DILocation(line: 939, column: 3, scope: !2322)
!2333 = distinct !DISubprogram(name: "quotearg_n_style", scope: !454, file: !454, line: 943, type: !2334, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!90, !70, !480, !96}
!2336 = !{!2337, !2338, !2339, !2340}
!2337 = !DILocalVariable(name: "n", arg: 1, scope: !2333, file: !454, line: 943, type: !70)
!2338 = !DILocalVariable(name: "s", arg: 2, scope: !2333, file: !454, line: 943, type: !480)
!2339 = !DILocalVariable(name: "arg", arg: 3, scope: !2333, file: !454, line: 943, type: !96)
!2340 = !DILocalVariable(name: "o", scope: !2333, file: !454, line: 945, type: !1437)
!2341 = !DILocation(line: 0, scope: !2333)
!2342 = !DILocation(line: 945, column: 3, scope: !2333)
!2343 = !DILocation(line: 945, column: 32, scope: !2333)
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"quoting_options_from_style: argument 0"}
!2346 = distinct !{!2346, !"quoting_options_from_style"}
!2347 = !DILocation(line: 945, column: 36, scope: !2333)
!2348 = !DILocalVariable(name: "style", arg: 1, scope: !2349, file: !454, line: 183, type: !480)
!2349 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !454, file: !454, line: 183, type: !2350, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!507, !480}
!2352 = !{!2348, !2353}
!2353 = !DILocalVariable(name: "o", scope: !2349, file: !454, line: 185, type: !507)
!2354 = !DILocation(line: 0, scope: !2349, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 945, column: 36, scope: !2333)
!2356 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2355)
!2357 = !DILocation(line: 186, column: 13, scope: !2358, inlinedAt: !2355)
!2358 = distinct !DILexicalBlock(scope: !2349, file: !454, line: 186, column: 7)
!2359 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2355)
!2360 = !DILocation(line: 187, column: 5, scope: !2358, inlinedAt: !2355)
!2361 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2355)
!2362 = !DILocation(line: 946, column: 10, scope: !2333)
!2363 = !DILocation(line: 947, column: 1, scope: !2333)
!2364 = !DILocation(line: 946, column: 3, scope: !2333)
!2365 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !454, file: !454, line: 950, type: !2366, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!90, !70, !480, !96, !93}
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !454, line: 950, type: !70)
!2370 = !DILocalVariable(name: "s", arg: 2, scope: !2365, file: !454, line: 950, type: !480)
!2371 = !DILocalVariable(name: "arg", arg: 3, scope: !2365, file: !454, line: 951, type: !96)
!2372 = !DILocalVariable(name: "argsize", arg: 4, scope: !2365, file: !454, line: 951, type: !93)
!2373 = !DILocalVariable(name: "o", scope: !2365, file: !454, line: 953, type: !1437)
!2374 = !DILocation(line: 0, scope: !2365)
!2375 = !DILocation(line: 953, column: 3, scope: !2365)
!2376 = !DILocation(line: 953, column: 32, scope: !2365)
!2377 = !{!2378}
!2378 = distinct !{!2378, !2379, !"quoting_options_from_style: argument 0"}
!2379 = distinct !{!2379, !"quoting_options_from_style"}
!2380 = !DILocation(line: 953, column: 36, scope: !2365)
!2381 = !DILocation(line: 0, scope: !2349, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 953, column: 36, scope: !2365)
!2383 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2382)
!2384 = !DILocation(line: 186, column: 13, scope: !2358, inlinedAt: !2382)
!2385 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2382)
!2386 = !DILocation(line: 187, column: 5, scope: !2358, inlinedAt: !2382)
!2387 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2382)
!2388 = !DILocation(line: 954, column: 10, scope: !2365)
!2389 = !DILocation(line: 955, column: 1, scope: !2365)
!2390 = !DILocation(line: 954, column: 3, scope: !2365)
!2391 = distinct !DISubprogram(name: "quotearg_style", scope: !454, file: !454, line: 958, type: !2392, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!90, !480, !96}
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "s", arg: 1, scope: !2391, file: !454, line: 958, type: !480)
!2396 = !DILocalVariable(name: "arg", arg: 2, scope: !2391, file: !454, line: 958, type: !96)
!2397 = !DILocation(line: 0, scope: !2391)
!2398 = !DILocation(line: 0, scope: !2333, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 960, column: 10, scope: !2391)
!2400 = !DILocation(line: 945, column: 3, scope: !2333, inlinedAt: !2399)
!2401 = !DILocation(line: 945, column: 32, scope: !2333, inlinedAt: !2399)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 945, column: 36, scope: !2333, inlinedAt: !2399)
!2406 = !DILocation(line: 0, scope: !2349, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 945, column: 36, scope: !2333, inlinedAt: !2399)
!2408 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2407)
!2409 = !DILocation(line: 186, column: 13, scope: !2358, inlinedAt: !2407)
!2410 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2407)
!2411 = !DILocation(line: 187, column: 5, scope: !2358, inlinedAt: !2407)
!2412 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2407)
!2413 = !DILocation(line: 946, column: 10, scope: !2333, inlinedAt: !2399)
!2414 = !DILocation(line: 947, column: 1, scope: !2333, inlinedAt: !2399)
!2415 = !DILocation(line: 960, column: 3, scope: !2391)
!2416 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !454, file: !454, line: 964, type: !2417, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!90, !480, !96, !93}
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "s", arg: 1, scope: !2416, file: !454, line: 964, type: !480)
!2421 = !DILocalVariable(name: "arg", arg: 2, scope: !2416, file: !454, line: 964, type: !96)
!2422 = !DILocalVariable(name: "argsize", arg: 3, scope: !2416, file: !454, line: 964, type: !93)
!2423 = !DILocation(line: 0, scope: !2416)
!2424 = !DILocation(line: 0, scope: !2365, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 966, column: 10, scope: !2416)
!2426 = !DILocation(line: 953, column: 3, scope: !2365, inlinedAt: !2425)
!2427 = !DILocation(line: 953, column: 32, scope: !2365, inlinedAt: !2425)
!2428 = !{!2429}
!2429 = distinct !{!2429, !2430, !"quoting_options_from_style: argument 0"}
!2430 = distinct !{!2430, !"quoting_options_from_style"}
!2431 = !DILocation(line: 953, column: 36, scope: !2365, inlinedAt: !2425)
!2432 = !DILocation(line: 0, scope: !2349, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 953, column: 36, scope: !2365, inlinedAt: !2425)
!2434 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2433)
!2435 = !DILocation(line: 186, column: 13, scope: !2358, inlinedAt: !2433)
!2436 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2433)
!2437 = !DILocation(line: 187, column: 5, scope: !2358, inlinedAt: !2433)
!2438 = !DILocation(line: 188, column: 11, scope: !2349, inlinedAt: !2433)
!2439 = !DILocation(line: 954, column: 10, scope: !2365, inlinedAt: !2425)
!2440 = !DILocation(line: 955, column: 1, scope: !2365, inlinedAt: !2425)
!2441 = !DILocation(line: 966, column: 3, scope: !2416)
!2442 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !454, file: !454, line: 970, type: !2443, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!90, !96, !93, !4}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "arg", arg: 1, scope: !2442, file: !454, line: 970, type: !96)
!2447 = !DILocalVariable(name: "argsize", arg: 2, scope: !2442, file: !454, line: 970, type: !93)
!2448 = !DILocalVariable(name: "ch", arg: 3, scope: !2442, file: !454, line: 970, type: !4)
!2449 = !DILocalVariable(name: "options", scope: !2442, file: !454, line: 972, type: !507)
!2450 = !DILocation(line: 0, scope: !2442)
!2451 = !DILocation(line: 972, column: 3, scope: !2442)
!2452 = !DILocation(line: 972, column: 26, scope: !2442)
!2453 = !DILocation(line: 973, column: 13, scope: !2442)
!2454 = !{i64 0, i64 4, !842, i64 4, i64 4, !833, i64 8, i64 32, !842, i64 40, i64 8, !772, i64 48, i64 8, !772}
!2455 = !DILocation(line: 0, scope: !1456, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 974, column: 3, scope: !2442)
!2457 = !DILocation(line: 147, column: 41, scope: !1456, inlinedAt: !2456)
!2458 = !DILocation(line: 147, column: 62, scope: !1456, inlinedAt: !2456)
!2459 = !DILocation(line: 147, column: 57, scope: !1456, inlinedAt: !2456)
!2460 = !DILocation(line: 148, column: 15, scope: !1456, inlinedAt: !2456)
!2461 = !DILocation(line: 149, column: 21, scope: !1456, inlinedAt: !2456)
!2462 = !DILocation(line: 149, column: 24, scope: !1456, inlinedAt: !2456)
!2463 = !DILocation(line: 150, column: 19, scope: !1456, inlinedAt: !2456)
!2464 = !DILocation(line: 150, column: 24, scope: !1456, inlinedAt: !2456)
!2465 = !DILocation(line: 150, column: 6, scope: !1456, inlinedAt: !2456)
!2466 = !DILocation(line: 975, column: 10, scope: !2442)
!2467 = !DILocation(line: 976, column: 1, scope: !2442)
!2468 = !DILocation(line: 975, column: 3, scope: !2442)
!2469 = distinct !DISubprogram(name: "quotearg_char", scope: !454, file: !454, line: 979, type: !2470, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!90, !96, !4}
!2472 = !{!2473, !2474}
!2473 = !DILocalVariable(name: "arg", arg: 1, scope: !2469, file: !454, line: 979, type: !96)
!2474 = !DILocalVariable(name: "ch", arg: 2, scope: !2469, file: !454, line: 979, type: !4)
!2475 = !DILocation(line: 0, scope: !2469)
!2476 = !DILocation(line: 0, scope: !2442, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 981, column: 10, scope: !2469)
!2478 = !DILocation(line: 972, column: 3, scope: !2442, inlinedAt: !2477)
!2479 = !DILocation(line: 972, column: 26, scope: !2442, inlinedAt: !2477)
!2480 = !DILocation(line: 973, column: 13, scope: !2442, inlinedAt: !2477)
!2481 = !DILocation(line: 0, scope: !1456, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 974, column: 3, scope: !2442, inlinedAt: !2477)
!2483 = !DILocation(line: 147, column: 41, scope: !1456, inlinedAt: !2482)
!2484 = !DILocation(line: 147, column: 62, scope: !1456, inlinedAt: !2482)
!2485 = !DILocation(line: 147, column: 57, scope: !1456, inlinedAt: !2482)
!2486 = !DILocation(line: 148, column: 15, scope: !1456, inlinedAt: !2482)
!2487 = !DILocation(line: 149, column: 21, scope: !1456, inlinedAt: !2482)
!2488 = !DILocation(line: 149, column: 24, scope: !1456, inlinedAt: !2482)
!2489 = !DILocation(line: 150, column: 19, scope: !1456, inlinedAt: !2482)
!2490 = !DILocation(line: 150, column: 24, scope: !1456, inlinedAt: !2482)
!2491 = !DILocation(line: 150, column: 6, scope: !1456, inlinedAt: !2482)
!2492 = !DILocation(line: 975, column: 10, scope: !2442, inlinedAt: !2477)
!2493 = !DILocation(line: 976, column: 1, scope: !2442, inlinedAt: !2477)
!2494 = !DILocation(line: 981, column: 3, scope: !2469)
!2495 = distinct !DISubprogram(name: "quotearg_colon", scope: !454, file: !454, line: 985, type: !956, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2496)
!2496 = !{!2497}
!2497 = !DILocalVariable(name: "arg", arg: 1, scope: !2495, file: !454, line: 985, type: !96)
!2498 = !DILocation(line: 0, scope: !2495)
!2499 = !DILocation(line: 0, scope: !2469, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 987, column: 10, scope: !2495)
!2501 = !DILocation(line: 0, scope: !2442, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 981, column: 10, scope: !2469, inlinedAt: !2500)
!2503 = !DILocation(line: 972, column: 3, scope: !2442, inlinedAt: !2502)
!2504 = !DILocation(line: 972, column: 26, scope: !2442, inlinedAt: !2502)
!2505 = !DILocation(line: 973, column: 13, scope: !2442, inlinedAt: !2502)
!2506 = !DILocation(line: 0, scope: !1456, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 974, column: 3, scope: !2442, inlinedAt: !2502)
!2508 = !DILocation(line: 147, column: 57, scope: !1456, inlinedAt: !2507)
!2509 = !DILocation(line: 149, column: 21, scope: !1456, inlinedAt: !2507)
!2510 = !DILocation(line: 150, column: 6, scope: !1456, inlinedAt: !2507)
!2511 = !DILocation(line: 975, column: 10, scope: !2442, inlinedAt: !2502)
!2512 = !DILocation(line: 976, column: 1, scope: !2442, inlinedAt: !2502)
!2513 = !DILocation(line: 987, column: 3, scope: !2495)
!2514 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !454, file: !454, line: 991, type: !2323, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2515)
!2515 = !{!2516, !2517}
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !454, line: 991, type: !96)
!2517 = !DILocalVariable(name: "argsize", arg: 2, scope: !2514, file: !454, line: 991, type: !93)
!2518 = !DILocation(line: 0, scope: !2514)
!2519 = !DILocation(line: 0, scope: !2442, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 993, column: 10, scope: !2514)
!2521 = !DILocation(line: 972, column: 3, scope: !2442, inlinedAt: !2520)
!2522 = !DILocation(line: 972, column: 26, scope: !2442, inlinedAt: !2520)
!2523 = !DILocation(line: 973, column: 13, scope: !2442, inlinedAt: !2520)
!2524 = !DILocation(line: 0, scope: !1456, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 974, column: 3, scope: !2442, inlinedAt: !2520)
!2526 = !DILocation(line: 147, column: 57, scope: !1456, inlinedAt: !2525)
!2527 = !DILocation(line: 149, column: 21, scope: !1456, inlinedAt: !2525)
!2528 = !DILocation(line: 150, column: 6, scope: !1456, inlinedAt: !2525)
!2529 = !DILocation(line: 975, column: 10, scope: !2442, inlinedAt: !2520)
!2530 = !DILocation(line: 976, column: 1, scope: !2442, inlinedAt: !2520)
!2531 = !DILocation(line: 993, column: 3, scope: !2514)
!2532 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !454, file: !454, line: 997, type: !2334, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2533)
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "n", arg: 1, scope: !2532, file: !454, line: 997, type: !70)
!2535 = !DILocalVariable(name: "s", arg: 2, scope: !2532, file: !454, line: 997, type: !480)
!2536 = !DILocalVariable(name: "arg", arg: 3, scope: !2532, file: !454, line: 997, type: !96)
!2537 = !DILocalVariable(name: "options", scope: !2532, file: !454, line: 999, type: !507)
!2538 = !DILocation(line: 185, column: 26, scope: !2349, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1000, column: 13, scope: !2532)
!2540 = !DILocation(line: 0, scope: !2532)
!2541 = !DILocation(line: 999, column: 3, scope: !2532)
!2542 = !DILocation(line: 999, column: 26, scope: !2532)
!2543 = !DILocation(line: 0, scope: !2349, inlinedAt: !2539)
!2544 = !DILocation(line: 186, column: 13, scope: !2358, inlinedAt: !2539)
!2545 = !DILocation(line: 186, column: 7, scope: !2349, inlinedAt: !2539)
!2546 = !DILocation(line: 187, column: 5, scope: !2358, inlinedAt: !2539)
!2547 = !{!2548}
!2548 = distinct !{!2548, !2549, !"quoting_options_from_style: argument 0"}
!2549 = distinct !{!2549, !"quoting_options_from_style"}
!2550 = !DILocation(line: 1000, column: 13, scope: !2532)
!2551 = !DILocation(line: 0, scope: !1456, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1001, column: 3, scope: !2532)
!2553 = !DILocation(line: 147, column: 57, scope: !1456, inlinedAt: !2552)
!2554 = !DILocation(line: 149, column: 21, scope: !1456, inlinedAt: !2552)
!2555 = !DILocation(line: 150, column: 6, scope: !1456, inlinedAt: !2552)
!2556 = !DILocation(line: 1002, column: 10, scope: !2532)
!2557 = !DILocation(line: 1003, column: 1, scope: !2532)
!2558 = !DILocation(line: 1002, column: 3, scope: !2532)
!2559 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !454, file: !454, line: 1006, type: !2560, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!90, !70, !96, !96, !96}
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2559, file: !454, line: 1006, type: !70)
!2564 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2559, file: !454, line: 1006, type: !96)
!2565 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2559, file: !454, line: 1007, type: !96)
!2566 = !DILocalVariable(name: "arg", arg: 4, scope: !2559, file: !454, line: 1007, type: !96)
!2567 = !DILocation(line: 0, scope: !2559)
!2568 = !DILocalVariable(name: "n", arg: 1, scope: !2569, file: !454, line: 1014, type: !70)
!2569 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !454, file: !454, line: 1014, type: !2570, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!90, !70, !96, !96, !96, !93}
!2572 = !{!2568, !2573, !2574, !2575, !2576, !2577}
!2573 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2569, file: !454, line: 1014, type: !96)
!2574 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2569, file: !454, line: 1015, type: !96)
!2575 = !DILocalVariable(name: "arg", arg: 4, scope: !2569, file: !454, line: 1016, type: !96)
!2576 = !DILocalVariable(name: "argsize", arg: 5, scope: !2569, file: !454, line: 1016, type: !93)
!2577 = !DILocalVariable(name: "o", scope: !2569, file: !454, line: 1018, type: !507)
!2578 = !DILocation(line: 0, scope: !2569, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1009, column: 10, scope: !2559)
!2580 = !DILocation(line: 1018, column: 3, scope: !2569, inlinedAt: !2579)
!2581 = !DILocation(line: 1018, column: 26, scope: !2569, inlinedAt: !2579)
!2582 = !DILocation(line: 1018, column: 30, scope: !2569, inlinedAt: !2579)
!2583 = !DILocation(line: 0, scope: !1496, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1019, column: 3, scope: !2569, inlinedAt: !2579)
!2585 = !DILocation(line: 174, column: 12, scope: !1496, inlinedAt: !2584)
!2586 = !DILocation(line: 175, column: 8, scope: !1509, inlinedAt: !2584)
!2587 = !DILocation(line: 175, column: 19, scope: !1509, inlinedAt: !2584)
!2588 = !DILocation(line: 176, column: 5, scope: !1509, inlinedAt: !2584)
!2589 = !DILocation(line: 177, column: 6, scope: !1496, inlinedAt: !2584)
!2590 = !DILocation(line: 177, column: 17, scope: !1496, inlinedAt: !2584)
!2591 = !DILocation(line: 178, column: 6, scope: !1496, inlinedAt: !2584)
!2592 = !DILocation(line: 178, column: 18, scope: !1496, inlinedAt: !2584)
!2593 = !DILocation(line: 1020, column: 10, scope: !2569, inlinedAt: !2579)
!2594 = !DILocation(line: 1021, column: 1, scope: !2569, inlinedAt: !2579)
!2595 = !DILocation(line: 1009, column: 3, scope: !2559)
!2596 = !DILocation(line: 0, scope: !2569)
!2597 = !DILocation(line: 1018, column: 3, scope: !2569)
!2598 = !DILocation(line: 1018, column: 26, scope: !2569)
!2599 = !DILocation(line: 1018, column: 30, scope: !2569)
!2600 = !DILocation(line: 0, scope: !1496, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1019, column: 3, scope: !2569)
!2602 = !DILocation(line: 174, column: 12, scope: !1496, inlinedAt: !2601)
!2603 = !DILocation(line: 175, column: 8, scope: !1509, inlinedAt: !2601)
!2604 = !DILocation(line: 175, column: 19, scope: !1509, inlinedAt: !2601)
!2605 = !DILocation(line: 176, column: 5, scope: !1509, inlinedAt: !2601)
!2606 = !DILocation(line: 177, column: 6, scope: !1496, inlinedAt: !2601)
!2607 = !DILocation(line: 177, column: 17, scope: !1496, inlinedAt: !2601)
!2608 = !DILocation(line: 178, column: 6, scope: !1496, inlinedAt: !2601)
!2609 = !DILocation(line: 178, column: 18, scope: !1496, inlinedAt: !2601)
!2610 = !DILocation(line: 1020, column: 10, scope: !2569)
!2611 = !DILocation(line: 1021, column: 1, scope: !2569)
!2612 = !DILocation(line: 1020, column: 3, scope: !2569)
!2613 = distinct !DISubprogram(name: "quotearg_custom", scope: !454, file: !454, line: 1024, type: !2614, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!90, !96, !96, !96}
!2616 = !{!2617, !2618, !2619}
!2617 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2613, file: !454, line: 1024, type: !96)
!2618 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2613, file: !454, line: 1024, type: !96)
!2619 = !DILocalVariable(name: "arg", arg: 3, scope: !2613, file: !454, line: 1025, type: !96)
!2620 = !DILocation(line: 0, scope: !2613)
!2621 = !DILocation(line: 0, scope: !2559, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1027, column: 10, scope: !2613)
!2623 = !DILocation(line: 0, scope: !2569, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 1009, column: 10, scope: !2559, inlinedAt: !2622)
!2625 = !DILocation(line: 1018, column: 3, scope: !2569, inlinedAt: !2624)
!2626 = !DILocation(line: 1018, column: 26, scope: !2569, inlinedAt: !2624)
!2627 = !DILocation(line: 1018, column: 30, scope: !2569, inlinedAt: !2624)
!2628 = !DILocation(line: 0, scope: !1496, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 1019, column: 3, scope: !2569, inlinedAt: !2624)
!2630 = !DILocation(line: 174, column: 12, scope: !1496, inlinedAt: !2629)
!2631 = !DILocation(line: 175, column: 8, scope: !1509, inlinedAt: !2629)
!2632 = !DILocation(line: 175, column: 19, scope: !1509, inlinedAt: !2629)
!2633 = !DILocation(line: 176, column: 5, scope: !1509, inlinedAt: !2629)
!2634 = !DILocation(line: 177, column: 6, scope: !1496, inlinedAt: !2629)
!2635 = !DILocation(line: 177, column: 17, scope: !1496, inlinedAt: !2629)
!2636 = !DILocation(line: 178, column: 6, scope: !1496, inlinedAt: !2629)
!2637 = !DILocation(line: 178, column: 18, scope: !1496, inlinedAt: !2629)
!2638 = !DILocation(line: 1020, column: 10, scope: !2569, inlinedAt: !2624)
!2639 = !DILocation(line: 1021, column: 1, scope: !2569, inlinedAt: !2624)
!2640 = !DILocation(line: 1027, column: 3, scope: !2613)
!2641 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !454, file: !454, line: 1031, type: !2642, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!90, !96, !96, !96, !93}
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2641, file: !454, line: 1031, type: !96)
!2646 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2641, file: !454, line: 1031, type: !96)
!2647 = !DILocalVariable(name: "arg", arg: 3, scope: !2641, file: !454, line: 1032, type: !96)
!2648 = !DILocalVariable(name: "argsize", arg: 4, scope: !2641, file: !454, line: 1032, type: !93)
!2649 = !DILocation(line: 0, scope: !2641)
!2650 = !DILocation(line: 0, scope: !2569, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1034, column: 10, scope: !2641)
!2652 = !DILocation(line: 1018, column: 3, scope: !2569, inlinedAt: !2651)
!2653 = !DILocation(line: 1018, column: 26, scope: !2569, inlinedAt: !2651)
!2654 = !DILocation(line: 1018, column: 30, scope: !2569, inlinedAt: !2651)
!2655 = !DILocation(line: 0, scope: !1496, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1019, column: 3, scope: !2569, inlinedAt: !2651)
!2657 = !DILocation(line: 174, column: 12, scope: !1496, inlinedAt: !2656)
!2658 = !DILocation(line: 175, column: 8, scope: !1509, inlinedAt: !2656)
!2659 = !DILocation(line: 175, column: 19, scope: !1509, inlinedAt: !2656)
!2660 = !DILocation(line: 176, column: 5, scope: !1509, inlinedAt: !2656)
!2661 = !DILocation(line: 177, column: 6, scope: !1496, inlinedAt: !2656)
!2662 = !DILocation(line: 177, column: 17, scope: !1496, inlinedAt: !2656)
!2663 = !DILocation(line: 178, column: 6, scope: !1496, inlinedAt: !2656)
!2664 = !DILocation(line: 178, column: 18, scope: !1496, inlinedAt: !2656)
!2665 = !DILocation(line: 1020, column: 10, scope: !2569, inlinedAt: !2651)
!2666 = !DILocation(line: 1021, column: 1, scope: !2569, inlinedAt: !2651)
!2667 = !DILocation(line: 1034, column: 3, scope: !2641)
!2668 = distinct !DISubprogram(name: "quote_n_mem", scope: !454, file: !454, line: 1049, type: !2669, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!96, !70, !96, !93}
!2671 = !{!2672, !2673, !2674}
!2672 = !DILocalVariable(name: "n", arg: 1, scope: !2668, file: !454, line: 1049, type: !70)
!2673 = !DILocalVariable(name: "arg", arg: 2, scope: !2668, file: !454, line: 1049, type: !96)
!2674 = !DILocalVariable(name: "argsize", arg: 3, scope: !2668, file: !454, line: 1049, type: !93)
!2675 = !DILocation(line: 0, scope: !2668)
!2676 = !DILocation(line: 1051, column: 10, scope: !2668)
!2677 = !DILocation(line: 1051, column: 3, scope: !2668)
!2678 = distinct !DISubprogram(name: "quote_mem", scope: !454, file: !454, line: 1055, type: !2679, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!96, !96, !93}
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2678, file: !454, line: 1055, type: !96)
!2683 = !DILocalVariable(name: "argsize", arg: 2, scope: !2678, file: !454, line: 1055, type: !93)
!2684 = !DILocation(line: 0, scope: !2678)
!2685 = !DILocation(line: 0, scope: !2668, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1057, column: 10, scope: !2678)
!2687 = !DILocation(line: 1051, column: 10, scope: !2668, inlinedAt: !2686)
!2688 = !DILocation(line: 1057, column: 3, scope: !2678)
!2689 = distinct !DISubprogram(name: "quote_n", scope: !454, file: !454, line: 1061, type: !2690, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!96, !70, !96}
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !454, line: 1061, type: !70)
!2694 = !DILocalVariable(name: "arg", arg: 2, scope: !2689, file: !454, line: 1061, type: !96)
!2695 = !DILocation(line: 0, scope: !2689)
!2696 = !DILocation(line: 0, scope: !2668, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1063, column: 10, scope: !2689)
!2698 = !DILocation(line: 1051, column: 10, scope: !2668, inlinedAt: !2697)
!2699 = !DILocation(line: 1063, column: 3, scope: !2689)
!2700 = distinct !DISubprogram(name: "quote", scope: !454, file: !454, line: 1067, type: !2701, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!96, !96}
!2703 = !{!2704}
!2704 = !DILocalVariable(name: "arg", arg: 1, scope: !2700, file: !454, line: 1067, type: !96)
!2705 = !DILocation(line: 0, scope: !2700)
!2706 = !DILocation(line: 0, scope: !2689, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1069, column: 10, scope: !2700)
!2708 = !DILocation(line: 0, scope: !2668, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1063, column: 10, scope: !2689, inlinedAt: !2707)
!2710 = !DILocation(line: 1051, column: 10, scope: !2668, inlinedAt: !2709)
!2711 = !DILocation(line: 1069, column: 3, scope: !2700)
!2712 = distinct !DISubprogram(name: "version_etc_arn", scope: !570, file: !570, line: 61, type: !2713, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2750)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2715, !96, !96, !96, !2749, !93}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !2717)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2717, file: !150, line: 51, baseType: !70, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2717, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2717, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2717, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2717, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2717, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2717, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2717, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2717, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2717, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2717, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2717, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2717, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2717, file: !150, line: 70, baseType: !2733, size: 64, offset: 832)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2717, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2717, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2717, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2717, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2717, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2717, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2717, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2717, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2717, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2717, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2717, file: !150, line: 93, baseType: !2733, size: 64, offset: 1344)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2717, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2717, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2717, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2717, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756}
!2751 = !DILocalVariable(name: "stream", arg: 1, scope: !2712, file: !570, line: 61, type: !2715)
!2752 = !DILocalVariable(name: "command_name", arg: 2, scope: !2712, file: !570, line: 62, type: !96)
!2753 = !DILocalVariable(name: "package", arg: 3, scope: !2712, file: !570, line: 62, type: !96)
!2754 = !DILocalVariable(name: "version", arg: 4, scope: !2712, file: !570, line: 63, type: !96)
!2755 = !DILocalVariable(name: "authors", arg: 5, scope: !2712, file: !570, line: 64, type: !2749)
!2756 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2712, file: !570, line: 64, type: !93)
!2757 = !DILocation(line: 0, scope: !2712)
!2758 = !DILocation(line: 66, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2712, file: !570, line: 66, column: 7)
!2760 = !DILocation(line: 66, column: 7, scope: !2712)
!2761 = !DILocation(line: 67, column: 5, scope: !2759)
!2762 = !DILocation(line: 69, column: 5, scope: !2759)
!2763 = !DILocation(line: 83, column: 3, scope: !2712)
!2764 = !DILocation(line: 85, column: 3, scope: !2712)
!2765 = !DILocation(line: 88, column: 3, scope: !2712)
!2766 = !DILocation(line: 95, column: 3, scope: !2712)
!2767 = !DILocation(line: 97, column: 3, scope: !2712)
!2768 = !DILocation(line: 105, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2712, file: !570, line: 98, column: 5)
!2770 = !DILocation(line: 106, column: 7, scope: !2769)
!2771 = !DILocation(line: 109, column: 7, scope: !2769)
!2772 = !DILocation(line: 110, column: 7, scope: !2769)
!2773 = !DILocation(line: 113, column: 7, scope: !2769)
!2774 = !DILocation(line: 115, column: 7, scope: !2769)
!2775 = !DILocation(line: 120, column: 7, scope: !2769)
!2776 = !DILocation(line: 122, column: 7, scope: !2769)
!2777 = !DILocation(line: 127, column: 7, scope: !2769)
!2778 = !DILocation(line: 129, column: 7, scope: !2769)
!2779 = !DILocation(line: 134, column: 7, scope: !2769)
!2780 = !DILocation(line: 137, column: 7, scope: !2769)
!2781 = !DILocation(line: 142, column: 7, scope: !2769)
!2782 = !DILocation(line: 145, column: 7, scope: !2769)
!2783 = !DILocation(line: 150, column: 7, scope: !2769)
!2784 = !DILocation(line: 154, column: 7, scope: !2769)
!2785 = !DILocation(line: 159, column: 7, scope: !2769)
!2786 = !DILocation(line: 163, column: 7, scope: !2769)
!2787 = !DILocation(line: 170, column: 7, scope: !2769)
!2788 = !DILocation(line: 174, column: 7, scope: !2769)
!2789 = !DILocation(line: 176, column: 1, scope: !2712)
!2790 = distinct !DISubprogram(name: "version_etc_ar", scope: !570, file: !570, line: 183, type: !2791, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2715, !96, !96, !96, !2749}
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799}
!2794 = !DILocalVariable(name: "stream", arg: 1, scope: !2790, file: !570, line: 183, type: !2715)
!2795 = !DILocalVariable(name: "command_name", arg: 2, scope: !2790, file: !570, line: 184, type: !96)
!2796 = !DILocalVariable(name: "package", arg: 3, scope: !2790, file: !570, line: 184, type: !96)
!2797 = !DILocalVariable(name: "version", arg: 4, scope: !2790, file: !570, line: 185, type: !96)
!2798 = !DILocalVariable(name: "authors", arg: 5, scope: !2790, file: !570, line: 185, type: !2749)
!2799 = !DILocalVariable(name: "n_authors", scope: !2790, file: !570, line: 187, type: !93)
!2800 = !DILocation(line: 0, scope: !2790)
!2801 = !DILocation(line: 189, column: 8, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2790, file: !570, line: 189, column: 3)
!2803 = !DILocation(line: 189, scope: !2802)
!2804 = !DILocation(line: 189, column: 23, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !570, line: 189, column: 3)
!2806 = !DILocation(line: 189, column: 3, scope: !2802)
!2807 = !DILocation(line: 189, column: 52, scope: !2805)
!2808 = distinct !{!2808, !2806, !2809, !880}
!2809 = !DILocation(line: 190, column: 5, scope: !2802)
!2810 = !DILocation(line: 191, column: 3, scope: !2790)
!2811 = !DILocation(line: 192, column: 1, scope: !2790)
!2812 = distinct !DISubprogram(name: "version_etc_va", scope: !570, file: !570, line: 199, type: !2813, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2826)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2715, !96, !96, !96, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !368, line: 52, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !370, line: 14, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2818, baseType: !2819)
!2818 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2819, file: !2818, line: 192, baseType: !91, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2819, file: !2818, line: 192, baseType: !91, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2819, file: !2818, line: 192, baseType: !91, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2819, file: !2818, line: 192, baseType: !70, size: 32, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2819, file: !2818, line: 192, baseType: !70, size: 32, offset: 224)
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832, !2833}
!2827 = !DILocalVariable(name: "stream", arg: 1, scope: !2812, file: !570, line: 199, type: !2715)
!2828 = !DILocalVariable(name: "command_name", arg: 2, scope: !2812, file: !570, line: 200, type: !96)
!2829 = !DILocalVariable(name: "package", arg: 3, scope: !2812, file: !570, line: 200, type: !96)
!2830 = !DILocalVariable(name: "version", arg: 4, scope: !2812, file: !570, line: 201, type: !96)
!2831 = !DILocalVariable(name: "authors", arg: 5, scope: !2812, file: !570, line: 201, type: !2815)
!2832 = !DILocalVariable(name: "n_authors", scope: !2812, file: !570, line: 203, type: !93)
!2833 = !DILocalVariable(name: "authtab", scope: !2812, file: !570, line: 204, type: !2834)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !45)
!2835 = !DILocation(line: 0, scope: !2812)
!2836 = !DILocation(line: 201, column: 46, scope: !2812)
!2837 = !DILocation(line: 204, column: 3, scope: !2812)
!2838 = !DILocation(line: 204, column: 15, scope: !2812)
!2839 = !DILocation(line: 208, column: 35, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !570, line: 206, column: 3)
!2841 = distinct !DILexicalBlock(scope: !2812, file: !570, line: 206, column: 3)
!2842 = !DILocation(line: 208, column: 33, scope: !2840)
!2843 = !DILocation(line: 208, column: 67, scope: !2840)
!2844 = !DILocation(line: 206, column: 3, scope: !2841)
!2845 = !DILocation(line: 208, column: 14, scope: !2840)
!2846 = !DILocation(line: 0, scope: !2841)
!2847 = !DILocation(line: 211, column: 3, scope: !2812)
!2848 = !DILocation(line: 213, column: 1, scope: !2812)
!2849 = distinct !DISubprogram(name: "version_etc", scope: !570, file: !570, line: 230, type: !2850, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2715, !96, !96, !96, null}
!2852 = !{!2853, !2854, !2855, !2856, !2857}
!2853 = !DILocalVariable(name: "stream", arg: 1, scope: !2849, file: !570, line: 230, type: !2715)
!2854 = !DILocalVariable(name: "command_name", arg: 2, scope: !2849, file: !570, line: 231, type: !96)
!2855 = !DILocalVariable(name: "package", arg: 3, scope: !2849, file: !570, line: 231, type: !96)
!2856 = !DILocalVariable(name: "version", arg: 4, scope: !2849, file: !570, line: 232, type: !96)
!2857 = !DILocalVariable(name: "authors", scope: !2849, file: !570, line: 234, type: !2815)
!2858 = !DILocation(line: 0, scope: !2849)
!2859 = !DILocation(line: 234, column: 3, scope: !2849)
!2860 = !DILocation(line: 234, column: 11, scope: !2849)
!2861 = !DILocation(line: 235, column: 3, scope: !2849)
!2862 = !DILocation(line: 236, column: 3, scope: !2849)
!2863 = !DILocation(line: 237, column: 3, scope: !2849)
!2864 = !DILocation(line: 238, column: 1, scope: !2849)
!2865 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !570, file: !570, line: 241, type: !409, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !818)
!2866 = !DILocation(line: 243, column: 3, scope: !2865)
!2867 = !DILocation(line: 248, column: 3, scope: !2865)
!2868 = !DILocation(line: 254, column: 3, scope: !2865)
!2869 = !DILocation(line: 259, column: 3, scope: !2865)
!2870 = !DILocation(line: 261, column: 1, scope: !2865)
!2871 = distinct !DISubprogram(name: "xnrealloc", scope: !2872, file: !2872, line: 147, type: !2873, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2875)
!2872 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!91, !91, !93, !93}
!2875 = !{!2876, !2877, !2878}
!2876 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !2872, line: 147, type: !91)
!2877 = !DILocalVariable(name: "n", arg: 2, scope: !2871, file: !2872, line: 147, type: !93)
!2878 = !DILocalVariable(name: "s", arg: 3, scope: !2871, file: !2872, line: 147, type: !93)
!2879 = !DILocation(line: 0, scope: !2871)
!2880 = !DILocalVariable(name: "p", arg: 1, scope: !2881, file: !701, line: 83, type: !91)
!2881 = distinct !DISubprogram(name: "xreallocarray", scope: !701, file: !701, line: 83, type: !2873, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2882)
!2882 = !{!2880, !2883, !2884}
!2883 = !DILocalVariable(name: "n", arg: 2, scope: !2881, file: !701, line: 83, type: !93)
!2884 = !DILocalVariable(name: "s", arg: 3, scope: !2881, file: !701, line: 83, type: !93)
!2885 = !DILocation(line: 0, scope: !2881, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 149, column: 10, scope: !2871)
!2887 = !DILocation(line: 85, column: 25, scope: !2881, inlinedAt: !2886)
!2888 = !DILocalVariable(name: "p", arg: 1, scope: !2889, file: !701, line: 37, type: !91)
!2889 = distinct !DISubprogram(name: "check_nonnull", scope: !701, file: !701, line: 37, type: !2890, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!91, !91}
!2892 = !{!2888}
!2893 = !DILocation(line: 0, scope: !2889, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 85, column: 10, scope: !2881, inlinedAt: !2886)
!2895 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2894)
!2896 = distinct !DILexicalBlock(scope: !2889, file: !701, line: 39, column: 7)
!2897 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2894)
!2898 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2894)
!2899 = !DILocation(line: 149, column: 3, scope: !2871)
!2900 = !DILocation(line: 0, scope: !2881)
!2901 = !DILocation(line: 85, column: 25, scope: !2881)
!2902 = !DILocation(line: 0, scope: !2889, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 85, column: 10, scope: !2881)
!2904 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2903)
!2905 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2903)
!2906 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2903)
!2907 = !DILocation(line: 85, column: 3, scope: !2881)
!2908 = distinct !DISubprogram(name: "xmalloc", scope: !701, file: !701, line: 47, type: !2909, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!91, !93}
!2911 = !{!2912}
!2912 = !DILocalVariable(name: "s", arg: 1, scope: !2908, file: !701, line: 47, type: !93)
!2913 = !DILocation(line: 0, scope: !2908)
!2914 = !DILocation(line: 49, column: 25, scope: !2908)
!2915 = !DILocation(line: 0, scope: !2889, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 49, column: 10, scope: !2908)
!2917 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2916)
!2918 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2916)
!2919 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2916)
!2920 = !DILocation(line: 49, column: 3, scope: !2908)
!2921 = !DISubprogram(name: "malloc", scope: !954, file: !954, line: 540, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!2922 = distinct !DISubprogram(name: "ximalloc", scope: !701, file: !701, line: 53, type: !2923, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!91, !720}
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "s", arg: 1, scope: !2922, file: !701, line: 53, type: !720)
!2927 = !DILocation(line: 0, scope: !2922)
!2928 = !DILocalVariable(name: "s", arg: 1, scope: !2929, file: !2930, line: 55, type: !720)
!2929 = distinct !DISubprogram(name: "imalloc", scope: !2930, file: !2930, line: 55, type: !2923, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2931)
!2930 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2931 = !{!2928}
!2932 = !DILocation(line: 0, scope: !2929, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 55, column: 25, scope: !2922)
!2934 = !DILocation(line: 57, column: 26, scope: !2929, inlinedAt: !2933)
!2935 = !DILocation(line: 0, scope: !2889, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 55, column: 10, scope: !2922)
!2937 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2936)
!2938 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2936)
!2939 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2936)
!2940 = !DILocation(line: 55, column: 3, scope: !2922)
!2941 = distinct !DISubprogram(name: "xcharalloc", scope: !701, file: !701, line: 59, type: !2942, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!90, !93}
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "n", arg: 1, scope: !2941, file: !701, line: 59, type: !93)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocation(line: 0, scope: !2908, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 61, column: 10, scope: !2941)
!2949 = !DILocation(line: 49, column: 25, scope: !2908, inlinedAt: !2948)
!2950 = !DILocation(line: 0, scope: !2889, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 49, column: 10, scope: !2908, inlinedAt: !2948)
!2952 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2951)
!2953 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2951)
!2954 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2951)
!2955 = !DILocation(line: 61, column: 3, scope: !2941)
!2956 = distinct !DISubprogram(name: "xrealloc", scope: !701, file: !701, line: 68, type: !2957, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!91, !91, !93}
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "p", arg: 1, scope: !2956, file: !701, line: 68, type: !91)
!2961 = !DILocalVariable(name: "s", arg: 2, scope: !2956, file: !701, line: 68, type: !93)
!2962 = !DILocation(line: 0, scope: !2956)
!2963 = !DILocalVariable(name: "ptr", arg: 1, scope: !2964, file: !2965, line: 2057, type: !91)
!2964 = distinct !DISubprogram(name: "rpl_realloc", scope: !2965, file: !2965, line: 2057, type: !2957, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2966)
!2965 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2966 = !{!2963, !2967}
!2967 = !DILocalVariable(name: "size", arg: 2, scope: !2964, file: !2965, line: 2057, type: !93)
!2968 = !DILocation(line: 0, scope: !2964, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 70, column: 25, scope: !2956)
!2970 = !DILocation(line: 2059, column: 24, scope: !2964, inlinedAt: !2969)
!2971 = !DILocation(line: 2059, column: 10, scope: !2964, inlinedAt: !2969)
!2972 = !DILocation(line: 0, scope: !2889, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 70, column: 10, scope: !2956)
!2974 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2973)
!2975 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2973)
!2976 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2973)
!2977 = !DILocation(line: 70, column: 3, scope: !2956)
!2978 = !DISubprogram(name: "realloc", scope: !954, file: !954, line: 551, type: !2957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!2979 = distinct !DISubprogram(name: "xirealloc", scope: !701, file: !701, line: 74, type: !2980, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!91, !91, !720}
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "p", arg: 1, scope: !2979, file: !701, line: 74, type: !91)
!2984 = !DILocalVariable(name: "s", arg: 2, scope: !2979, file: !701, line: 74, type: !720)
!2985 = !DILocation(line: 0, scope: !2979)
!2986 = !DILocalVariable(name: "p", arg: 1, scope: !2987, file: !2930, line: 66, type: !91)
!2987 = distinct !DISubprogram(name: "irealloc", scope: !2930, file: !2930, line: 66, type: !2980, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2988)
!2988 = !{!2986, !2989}
!2989 = !DILocalVariable(name: "s", arg: 2, scope: !2987, file: !2930, line: 66, type: !720)
!2990 = !DILocation(line: 0, scope: !2987, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 76, column: 25, scope: !2979)
!2992 = !DILocation(line: 0, scope: !2964, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 68, column: 26, scope: !2987, inlinedAt: !2991)
!2994 = !DILocation(line: 2059, column: 24, scope: !2964, inlinedAt: !2993)
!2995 = !DILocation(line: 2059, column: 10, scope: !2964, inlinedAt: !2993)
!2996 = !DILocation(line: 0, scope: !2889, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 76, column: 10, scope: !2979)
!2998 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !2997)
!2999 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !2997)
!3000 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !2997)
!3001 = !DILocation(line: 76, column: 3, scope: !2979)
!3002 = distinct !DISubprogram(name: "xireallocarray", scope: !701, file: !701, line: 89, type: !3003, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!91, !91, !720, !720}
!3005 = !{!3006, !3007, !3008}
!3006 = !DILocalVariable(name: "p", arg: 1, scope: !3002, file: !701, line: 89, type: !91)
!3007 = !DILocalVariable(name: "n", arg: 2, scope: !3002, file: !701, line: 89, type: !720)
!3008 = !DILocalVariable(name: "s", arg: 3, scope: !3002, file: !701, line: 89, type: !720)
!3009 = !DILocation(line: 0, scope: !3002)
!3010 = !DILocalVariable(name: "p", arg: 1, scope: !3011, file: !2930, line: 98, type: !91)
!3011 = distinct !DISubprogram(name: "ireallocarray", scope: !2930, file: !2930, line: 98, type: !3003, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3012)
!3012 = !{!3010, !3013, !3014}
!3013 = !DILocalVariable(name: "n", arg: 2, scope: !3011, file: !2930, line: 98, type: !720)
!3014 = !DILocalVariable(name: "s", arg: 3, scope: !3011, file: !2930, line: 98, type: !720)
!3015 = !DILocation(line: 0, scope: !3011, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 91, column: 25, scope: !3002)
!3017 = !DILocation(line: 101, column: 13, scope: !3011, inlinedAt: !3016)
!3018 = !DILocation(line: 0, scope: !2889, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 91, column: 10, scope: !3002)
!3020 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3019)
!3021 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3019)
!3022 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3019)
!3023 = !DILocation(line: 91, column: 3, scope: !3002)
!3024 = distinct !DISubprogram(name: "xnmalloc", scope: !701, file: !701, line: 98, type: !3025, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!91, !93, !93}
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !701, line: 98, type: !93)
!3029 = !DILocalVariable(name: "s", arg: 2, scope: !3024, file: !701, line: 98, type: !93)
!3030 = !DILocation(line: 0, scope: !3024)
!3031 = !DILocation(line: 0, scope: !2881, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 100, column: 10, scope: !3024)
!3033 = !DILocation(line: 85, column: 25, scope: !2881, inlinedAt: !3032)
!3034 = !DILocation(line: 0, scope: !2889, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 85, column: 10, scope: !2881, inlinedAt: !3032)
!3036 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3035)
!3037 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3035)
!3038 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3035)
!3039 = !DILocation(line: 100, column: 3, scope: !3024)
!3040 = distinct !DISubprogram(name: "xinmalloc", scope: !701, file: !701, line: 104, type: !3041, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!91, !720, !720}
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "n", arg: 1, scope: !3040, file: !701, line: 104, type: !720)
!3045 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !701, line: 104, type: !720)
!3046 = !DILocation(line: 0, scope: !3040)
!3047 = !DILocation(line: 0, scope: !3002, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 106, column: 10, scope: !3040)
!3049 = !DILocation(line: 0, scope: !3011, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 91, column: 25, scope: !3002, inlinedAt: !3048)
!3051 = !DILocation(line: 101, column: 13, scope: !3011, inlinedAt: !3050)
!3052 = !DILocation(line: 0, scope: !2889, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 91, column: 10, scope: !3002, inlinedAt: !3048)
!3054 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3053)
!3055 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3053)
!3056 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3053)
!3057 = !DILocation(line: 106, column: 3, scope: !3040)
!3058 = distinct !DISubprogram(name: "x2realloc", scope: !701, file: !701, line: 116, type: !3059, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!91, !91, !707}
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "p", arg: 1, scope: !3058, file: !701, line: 116, type: !91)
!3063 = !DILocalVariable(name: "ps", arg: 2, scope: !3058, file: !701, line: 116, type: !707)
!3064 = !DILocation(line: 0, scope: !3058)
!3065 = !DILocation(line: 0, scope: !704, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 118, column: 10, scope: !3058)
!3067 = !DILocation(line: 178, column: 14, scope: !704, inlinedAt: !3066)
!3068 = !DILocation(line: 180, column: 9, scope: !3069, inlinedAt: !3066)
!3069 = distinct !DILexicalBlock(scope: !704, file: !701, line: 180, column: 7)
!3070 = !DILocation(line: 180, column: 7, scope: !704, inlinedAt: !3066)
!3071 = !DILocation(line: 182, column: 13, scope: !3072, inlinedAt: !3066)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !701, line: 182, column: 11)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !701, line: 181, column: 5)
!3074 = !DILocation(line: 182, column: 11, scope: !3073, inlinedAt: !3066)
!3075 = !DILocation(line: 197, column: 11, scope: !3076, inlinedAt: !3066)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !701, line: 197, column: 11)
!3077 = distinct !DILexicalBlock(scope: !3069, file: !701, line: 195, column: 5)
!3078 = !DILocation(line: 197, column: 11, scope: !3077, inlinedAt: !3066)
!3079 = !DILocation(line: 198, column: 9, scope: !3076, inlinedAt: !3066)
!3080 = !DILocation(line: 0, scope: !2881, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 201, column: 7, scope: !704, inlinedAt: !3066)
!3082 = !DILocation(line: 85, column: 25, scope: !2881, inlinedAt: !3081)
!3083 = !DILocation(line: 0, scope: !2889, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 85, column: 10, scope: !2881, inlinedAt: !3081)
!3085 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3084)
!3086 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3084)
!3087 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3084)
!3088 = !DILocation(line: 202, column: 7, scope: !704, inlinedAt: !3066)
!3089 = !DILocation(line: 118, column: 3, scope: !3058)
!3090 = !DILocation(line: 0, scope: !704)
!3091 = !DILocation(line: 178, column: 14, scope: !704)
!3092 = !DILocation(line: 180, column: 9, scope: !3069)
!3093 = !DILocation(line: 180, column: 7, scope: !704)
!3094 = !DILocation(line: 182, column: 13, scope: !3072)
!3095 = !DILocation(line: 182, column: 11, scope: !3073)
!3096 = !DILocation(line: 190, column: 30, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3072, file: !701, line: 183, column: 9)
!3098 = !DILocation(line: 191, column: 16, scope: !3097)
!3099 = !DILocation(line: 191, column: 13, scope: !3097)
!3100 = !DILocation(line: 192, column: 9, scope: !3097)
!3101 = !DILocation(line: 197, column: 11, scope: !3076)
!3102 = !DILocation(line: 197, column: 11, scope: !3077)
!3103 = !DILocation(line: 198, column: 9, scope: !3076)
!3104 = !DILocation(line: 0, scope: !2881, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 201, column: 7, scope: !704)
!3106 = !DILocation(line: 85, column: 25, scope: !2881, inlinedAt: !3105)
!3107 = !DILocation(line: 0, scope: !2889, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 85, column: 10, scope: !2881, inlinedAt: !3105)
!3109 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3108)
!3110 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3108)
!3111 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3108)
!3112 = !DILocation(line: 202, column: 7, scope: !704)
!3113 = !DILocation(line: 203, column: 3, scope: !704)
!3114 = !DILocation(line: 0, scope: !716)
!3115 = !DILocation(line: 230, column: 14, scope: !716)
!3116 = !DILocation(line: 238, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !716, file: !701, line: 238, column: 7)
!3118 = !DILocation(line: 238, column: 7, scope: !716)
!3119 = !DILocation(line: 240, column: 9, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !716, file: !701, line: 240, column: 7)
!3121 = !DILocation(line: 240, column: 18, scope: !3120)
!3122 = !DILocation(line: 253, column: 8, scope: !716)
!3123 = !DILocation(line: 258, column: 27, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !701, line: 257, column: 5)
!3125 = distinct !DILexicalBlock(scope: !716, file: !701, line: 256, column: 7)
!3126 = !DILocation(line: 259, column: 32, scope: !3124)
!3127 = !DILocation(line: 260, column: 5, scope: !3124)
!3128 = !DILocation(line: 262, column: 9, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !716, file: !701, line: 262, column: 7)
!3130 = !DILocation(line: 262, column: 7, scope: !716)
!3131 = !DILocation(line: 263, column: 9, scope: !3129)
!3132 = !DILocation(line: 263, column: 5, scope: !3129)
!3133 = !DILocation(line: 264, column: 9, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !716, file: !701, line: 264, column: 7)
!3135 = !DILocation(line: 264, column: 14, scope: !3134)
!3136 = !DILocation(line: 265, column: 7, scope: !3134)
!3137 = !DILocation(line: 265, column: 11, scope: !3134)
!3138 = !DILocation(line: 266, column: 11, scope: !3134)
!3139 = !DILocation(line: 267, column: 14, scope: !3134)
!3140 = !DILocation(line: 264, column: 7, scope: !716)
!3141 = !DILocation(line: 268, column: 5, scope: !3134)
!3142 = !DILocation(line: 0, scope: !2956, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 269, column: 8, scope: !716)
!3144 = !DILocation(line: 0, scope: !2964, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 70, column: 25, scope: !2956, inlinedAt: !3143)
!3146 = !DILocation(line: 2059, column: 24, scope: !2964, inlinedAt: !3145)
!3147 = !DILocation(line: 2059, column: 10, scope: !2964, inlinedAt: !3145)
!3148 = !DILocation(line: 0, scope: !2889, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 70, column: 10, scope: !2956, inlinedAt: !3143)
!3150 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3149)
!3151 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3149)
!3152 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3149)
!3153 = !DILocation(line: 270, column: 7, scope: !716)
!3154 = !DILocation(line: 271, column: 3, scope: !716)
!3155 = distinct !DISubprogram(name: "xzalloc", scope: !701, file: !701, line: 279, type: !2909, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3156)
!3156 = !{!3157}
!3157 = !DILocalVariable(name: "s", arg: 1, scope: !3155, file: !701, line: 279, type: !93)
!3158 = !DILocation(line: 0, scope: !3155)
!3159 = !DILocalVariable(name: "n", arg: 1, scope: !3160, file: !701, line: 294, type: !93)
!3160 = distinct !DISubprogram(name: "xcalloc", scope: !701, file: !701, line: 294, type: !3025, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3161)
!3161 = !{!3159, !3162}
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !3160, file: !701, line: 294, type: !93)
!3163 = !DILocation(line: 0, scope: !3160, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 281, column: 10, scope: !3155)
!3165 = !DILocation(line: 296, column: 25, scope: !3160, inlinedAt: !3164)
!3166 = !DILocation(line: 0, scope: !2889, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 296, column: 10, scope: !3160, inlinedAt: !3164)
!3168 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3167)
!3169 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3167)
!3170 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3167)
!3171 = !DILocation(line: 281, column: 3, scope: !3155)
!3172 = !DISubprogram(name: "calloc", scope: !954, file: !954, line: 543, type: !3025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3173 = !DILocation(line: 0, scope: !3160)
!3174 = !DILocation(line: 296, column: 25, scope: !3160)
!3175 = !DILocation(line: 0, scope: !2889, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 296, column: 10, scope: !3160)
!3177 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3176)
!3178 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3176)
!3179 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3176)
!3180 = !DILocation(line: 296, column: 3, scope: !3160)
!3181 = distinct !DISubprogram(name: "xizalloc", scope: !701, file: !701, line: 285, type: !2923, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3182)
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "s", arg: 1, scope: !3181, file: !701, line: 285, type: !720)
!3184 = !DILocation(line: 0, scope: !3181)
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3186, file: !701, line: 300, type: !720)
!3186 = distinct !DISubprogram(name: "xicalloc", scope: !701, file: !701, line: 300, type: !3041, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3187)
!3187 = !{!3185, !3188}
!3188 = !DILocalVariable(name: "s", arg: 2, scope: !3186, file: !701, line: 300, type: !720)
!3189 = !DILocation(line: 0, scope: !3186, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 287, column: 10, scope: !3181)
!3191 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !2930, line: 77, type: !720)
!3192 = distinct !DISubprogram(name: "icalloc", scope: !2930, file: !2930, line: 77, type: !3041, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3193)
!3193 = !{!3191, !3194}
!3194 = !DILocalVariable(name: "s", arg: 2, scope: !3192, file: !2930, line: 77, type: !720)
!3195 = !DILocation(line: 0, scope: !3192, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 302, column: 25, scope: !3186, inlinedAt: !3190)
!3197 = !DILocation(line: 91, column: 10, scope: !3192, inlinedAt: !3196)
!3198 = !DILocation(line: 0, scope: !2889, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 302, column: 10, scope: !3186, inlinedAt: !3190)
!3200 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3199)
!3201 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3199)
!3202 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3199)
!3203 = !DILocation(line: 287, column: 3, scope: !3181)
!3204 = !DILocation(line: 0, scope: !3186)
!3205 = !DILocation(line: 0, scope: !3192, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 302, column: 25, scope: !3186)
!3207 = !DILocation(line: 91, column: 10, scope: !3192, inlinedAt: !3206)
!3208 = !DILocation(line: 0, scope: !2889, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 302, column: 10, scope: !3186)
!3210 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3209)
!3211 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3209)
!3212 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3209)
!3213 = !DILocation(line: 302, column: 3, scope: !3186)
!3214 = distinct !DISubprogram(name: "xmemdup", scope: !701, file: !701, line: 310, type: !3215, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!91, !978, !93}
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "p", arg: 1, scope: !3214, file: !701, line: 310, type: !978)
!3219 = !DILocalVariable(name: "s", arg: 2, scope: !3214, file: !701, line: 310, type: !93)
!3220 = !DILocation(line: 0, scope: !3214)
!3221 = !DILocation(line: 0, scope: !2908, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 312, column: 18, scope: !3214)
!3223 = !DILocation(line: 49, column: 25, scope: !2908, inlinedAt: !3222)
!3224 = !DILocation(line: 0, scope: !2889, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 49, column: 10, scope: !2908, inlinedAt: !3222)
!3226 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3225)
!3227 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3225)
!3228 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3225)
!3229 = !DILocalVariable(name: "__dest", arg: 1, scope: !3230, file: !1399, line: 26, type: !3233)
!3230 = distinct !DISubprogram(name: "memcpy", scope: !1399, file: !1399, line: 26, type: !3231, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3234)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!91, !3233, !977, !93}
!3233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3234 = !{!3229, !3235, !3236}
!3235 = !DILocalVariable(name: "__src", arg: 2, scope: !3230, file: !1399, line: 26, type: !977)
!3236 = !DILocalVariable(name: "__len", arg: 3, scope: !3230, file: !1399, line: 26, type: !93)
!3237 = !DILocation(line: 0, scope: !3230, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 312, column: 10, scope: !3214)
!3239 = !DILocation(line: 29, column: 10, scope: !3230, inlinedAt: !3238)
!3240 = !DILocation(line: 312, column: 3, scope: !3214)
!3241 = distinct !DISubprogram(name: "ximemdup", scope: !701, file: !701, line: 316, type: !3242, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!91, !978, !720}
!3244 = !{!3245, !3246}
!3245 = !DILocalVariable(name: "p", arg: 1, scope: !3241, file: !701, line: 316, type: !978)
!3246 = !DILocalVariable(name: "s", arg: 2, scope: !3241, file: !701, line: 316, type: !720)
!3247 = !DILocation(line: 0, scope: !3241)
!3248 = !DILocation(line: 0, scope: !2922, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 318, column: 18, scope: !3241)
!3250 = !DILocation(line: 0, scope: !2929, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 55, column: 25, scope: !2922, inlinedAt: !3249)
!3252 = !DILocation(line: 57, column: 26, scope: !2929, inlinedAt: !3251)
!3253 = !DILocation(line: 0, scope: !2889, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 55, column: 10, scope: !2922, inlinedAt: !3249)
!3255 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3254)
!3256 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3254)
!3257 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3254)
!3258 = !DILocation(line: 0, scope: !3230, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 318, column: 10, scope: !3241)
!3260 = !DILocation(line: 29, column: 10, scope: !3230, inlinedAt: !3259)
!3261 = !DILocation(line: 318, column: 3, scope: !3241)
!3262 = distinct !DISubprogram(name: "ximemdup0", scope: !701, file: !701, line: 325, type: !3263, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!90, !978, !720}
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "p", arg: 1, scope: !3262, file: !701, line: 325, type: !978)
!3267 = !DILocalVariable(name: "s", arg: 2, scope: !3262, file: !701, line: 325, type: !720)
!3268 = !DILocalVariable(name: "result", scope: !3262, file: !701, line: 327, type: !90)
!3269 = !DILocation(line: 0, scope: !3262)
!3270 = !DILocation(line: 327, column: 30, scope: !3262)
!3271 = !DILocation(line: 0, scope: !2922, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 327, column: 18, scope: !3262)
!3273 = !DILocation(line: 0, scope: !2929, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 55, column: 25, scope: !2922, inlinedAt: !3272)
!3275 = !DILocation(line: 57, column: 26, scope: !2929, inlinedAt: !3274)
!3276 = !DILocation(line: 0, scope: !2889, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 55, column: 10, scope: !2922, inlinedAt: !3272)
!3278 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3277)
!3279 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3277)
!3280 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3277)
!3281 = !DILocation(line: 328, column: 3, scope: !3262)
!3282 = !DILocation(line: 328, column: 13, scope: !3262)
!3283 = !DILocation(line: 0, scope: !3230, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 329, column: 10, scope: !3262)
!3285 = !DILocation(line: 29, column: 10, scope: !3230, inlinedAt: !3284)
!3286 = !DILocation(line: 329, column: 3, scope: !3262)
!3287 = distinct !DISubprogram(name: "xstrdup", scope: !701, file: !701, line: 335, type: !956, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3288)
!3288 = !{!3289}
!3289 = !DILocalVariable(name: "string", arg: 1, scope: !3287, file: !701, line: 335, type: !96)
!3290 = !DILocation(line: 0, scope: !3287)
!3291 = !DILocation(line: 337, column: 27, scope: !3287)
!3292 = !DILocation(line: 337, column: 43, scope: !3287)
!3293 = !DILocation(line: 0, scope: !3214, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 337, column: 10, scope: !3287)
!3295 = !DILocation(line: 0, scope: !2908, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 312, column: 18, scope: !3214, inlinedAt: !3294)
!3297 = !DILocation(line: 49, column: 25, scope: !2908, inlinedAt: !3296)
!3298 = !DILocation(line: 0, scope: !2889, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 49, column: 10, scope: !2908, inlinedAt: !3296)
!3300 = !DILocation(line: 39, column: 8, scope: !2896, inlinedAt: !3299)
!3301 = !DILocation(line: 39, column: 7, scope: !2889, inlinedAt: !3299)
!3302 = !DILocation(line: 40, column: 5, scope: !2896, inlinedAt: !3299)
!3303 = !DILocation(line: 0, scope: !3230, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 312, column: 10, scope: !3214, inlinedAt: !3294)
!3305 = !DILocation(line: 29, column: 10, scope: !3230, inlinedAt: !3304)
!3306 = !DILocation(line: 337, column: 3, scope: !3287)
!3307 = distinct !DISubprogram(name: "xalloc_die", scope: !663, file: !663, line: 32, type: !409, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3308)
!3308 = !{!3309}
!3309 = !DILocalVariable(name: "__errstatus", scope: !3310, file: !663, line: 34, type: !3311)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !663, line: 34, column: 3)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3312 = !DILocation(line: 34, column: 3, scope: !3310)
!3313 = !DILocation(line: 0, scope: !3310)
!3314 = !DILocation(line: 40, column: 3, scope: !3307)
!3315 = distinct !DISubprogram(name: "close_stream", scope: !737, file: !737, line: 55, type: !3316, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3352)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!70, !3318}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3320)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3321)
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3320, file: !150, line: 51, baseType: !70, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3320, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3320, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3320, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3320, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3320, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3320, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3320, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3320, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3320, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3320, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3320, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3320, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3320, file: !150, line: 70, baseType: !3336, size: 64, offset: 832)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3320, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3320, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3320, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3320, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3320, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3320, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3320, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3320, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3320, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3320, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3320, file: !150, line: 93, baseType: !3336, size: 64, offset: 1344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3320, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3320, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3320, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3320, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3352 = !{!3353, !3354, !3356, !3357}
!3353 = !DILocalVariable(name: "stream", arg: 1, scope: !3315, file: !737, line: 55, type: !3318)
!3354 = !DILocalVariable(name: "some_pending", scope: !3315, file: !737, line: 57, type: !3355)
!3355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!3356 = !DILocalVariable(name: "prev_fail", scope: !3315, file: !737, line: 58, type: !3355)
!3357 = !DILocalVariable(name: "fclose_fail", scope: !3315, file: !737, line: 59, type: !3355)
!3358 = !DILocation(line: 0, scope: !3315)
!3359 = !DILocation(line: 57, column: 30, scope: !3315)
!3360 = !DILocalVariable(name: "__stream", arg: 1, scope: !3361, file: !1242, line: 135, type: !3318)
!3361 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1242, file: !1242, line: 135, type: !3316, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3362)
!3362 = !{!3360}
!3363 = !DILocation(line: 0, scope: !3361, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 58, column: 27, scope: !3315)
!3365 = !DILocation(line: 137, column: 10, scope: !3361, inlinedAt: !3364)
!3366 = !{!1251, !834, i64 0}
!3367 = !DILocation(line: 58, column: 43, scope: !3315)
!3368 = !DILocation(line: 59, column: 29, scope: !3315)
!3369 = !DILocation(line: 59, column: 45, scope: !3315)
!3370 = !DILocation(line: 69, column: 17, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3315, file: !737, line: 69, column: 7)
!3372 = !DILocation(line: 57, column: 50, scope: !3315)
!3373 = !DILocation(line: 69, column: 33, scope: !3371)
!3374 = !DILocation(line: 69, column: 53, scope: !3371)
!3375 = !DILocation(line: 69, column: 59, scope: !3371)
!3376 = !DILocation(line: 69, column: 7, scope: !3315)
!3377 = !DILocation(line: 71, column: 11, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3371, file: !737, line: 70, column: 5)
!3379 = !DILocation(line: 72, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3378, file: !737, line: 71, column: 11)
!3381 = !DILocation(line: 72, column: 15, scope: !3380)
!3382 = !DILocation(line: 77, column: 1, scope: !3315)
!3383 = !DISubprogram(name: "__fpending", scope: !3384, file: !3384, line: 75, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3384 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!93, !3318}
!3387 = distinct !DISubprogram(name: "rpl_fclose", scope: !739, file: !739, line: 58, type: !3388, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3424)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!70, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3392, file: !150, line: 51, baseType: !70, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3392, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3392, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3392, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3392, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3392, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3392, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3392, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3392, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3392, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3392, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3392, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3392, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3392, file: !150, line: 70, baseType: !3408, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3392, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3392, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3392, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3392, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3392, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3392, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3392, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3392, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3392, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3392, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3392, file: !150, line: 93, baseType: !3408, size: 64, offset: 1344)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3392, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3392, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3392, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3392, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3424 = !{!3425, !3426, !3427, !3428}
!3425 = !DILocalVariable(name: "fp", arg: 1, scope: !3387, file: !739, line: 58, type: !3390)
!3426 = !DILocalVariable(name: "saved_errno", scope: !3387, file: !739, line: 60, type: !70)
!3427 = !DILocalVariable(name: "fd", scope: !3387, file: !739, line: 63, type: !70)
!3428 = !DILocalVariable(name: "result", scope: !3387, file: !739, line: 74, type: !70)
!3429 = !DILocation(line: 0, scope: !3387)
!3430 = !DILocation(line: 63, column: 12, scope: !3387)
!3431 = !DILocation(line: 64, column: 10, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3387, file: !739, line: 64, column: 7)
!3433 = !DILocation(line: 64, column: 7, scope: !3387)
!3434 = !DILocation(line: 65, column: 12, scope: !3432)
!3435 = !DILocation(line: 65, column: 5, scope: !3432)
!3436 = !DILocation(line: 70, column: 9, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3387, file: !739, line: 70, column: 7)
!3438 = !DILocation(line: 70, column: 23, scope: !3437)
!3439 = !DILocation(line: 70, column: 33, scope: !3437)
!3440 = !DILocation(line: 70, column: 26, scope: !3437)
!3441 = !DILocation(line: 70, column: 59, scope: !3437)
!3442 = !DILocation(line: 71, column: 7, scope: !3437)
!3443 = !DILocation(line: 71, column: 10, scope: !3437)
!3444 = !DILocation(line: 70, column: 7, scope: !3387)
!3445 = !DILocation(line: 100, column: 12, scope: !3387)
!3446 = !DILocation(line: 105, column: 7, scope: !3387)
!3447 = !DILocation(line: 72, column: 19, scope: !3437)
!3448 = !DILocation(line: 105, column: 19, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3387, file: !739, line: 105, column: 7)
!3450 = !DILocation(line: 107, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !739, line: 106, column: 5)
!3452 = !DILocation(line: 109, column: 5, scope: !3451)
!3453 = !DILocation(line: 112, column: 1, scope: !3387)
!3454 = !DISubprogram(name: "fileno", scope: !368, file: !368, line: 809, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3455 = !DISubprogram(name: "fclose", scope: !368, file: !368, line: 178, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3456 = !DISubprogram(name: "__freading", scope: !3384, file: !3384, line: 51, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3457 = !DISubprogram(name: "lseek", scope: !1056, file: !1056, line: 339, type: !3458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!172, !70, !172, !70}
!3460 = distinct !DISubprogram(name: "rpl_fflush", scope: !741, file: !741, line: 130, type: !3461, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3497)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!70, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3465, file: !150, line: 51, baseType: !70, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3465, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3465, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3465, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3465, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3465, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3465, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3465, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3465, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3465, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3465, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3465, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3465, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3465, file: !150, line: 70, baseType: !3481, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3465, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3465, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3465, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3465, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3465, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3465, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3465, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3465, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3465, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3465, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3465, file: !150, line: 93, baseType: !3481, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3465, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3465, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3465, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3465, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "stream", arg: 1, scope: !3460, file: !741, line: 130, type: !3463)
!3499 = !DILocation(line: 0, scope: !3460)
!3500 = !DILocation(line: 151, column: 14, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3460, file: !741, line: 151, column: 7)
!3502 = !DILocation(line: 151, column: 22, scope: !3501)
!3503 = !DILocation(line: 151, column: 27, scope: !3501)
!3504 = !DILocation(line: 151, column: 7, scope: !3460)
!3505 = !DILocation(line: 152, column: 12, scope: !3501)
!3506 = !DILocation(line: 152, column: 5, scope: !3501)
!3507 = !DILocalVariable(name: "fp", arg: 1, scope: !3508, file: !741, line: 42, type: !3463)
!3508 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !741, file: !741, line: 42, type: !3509, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3463}
!3511 = !{!3507}
!3512 = !DILocation(line: 0, scope: !3508, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 157, column: 3, scope: !3460)
!3514 = !DILocation(line: 44, column: 12, scope: !3515, inlinedAt: !3513)
!3515 = distinct !DILexicalBlock(scope: !3508, file: !741, line: 44, column: 7)
!3516 = !DILocation(line: 44, column: 19, scope: !3515, inlinedAt: !3513)
!3517 = !DILocation(line: 44, column: 7, scope: !3508, inlinedAt: !3513)
!3518 = !DILocation(line: 46, column: 5, scope: !3515, inlinedAt: !3513)
!3519 = !DILocation(line: 159, column: 10, scope: !3460)
!3520 = !DILocation(line: 159, column: 3, scope: !3460)
!3521 = !DILocation(line: 236, column: 1, scope: !3460)
!3522 = !DISubprogram(name: "fflush", scope: !368, file: !368, line: 230, type: !3461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3523 = distinct !DISubprogram(name: "rpl_fseeko", scope: !743, file: !743, line: 28, type: !3524, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3561)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!70, !3526, !3560, !70}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3528)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3528, file: !150, line: 51, baseType: !70, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3528, file: !150, line: 54, baseType: !90, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3528, file: !150, line: 55, baseType: !90, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3528, file: !150, line: 56, baseType: !90, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3528, file: !150, line: 57, baseType: !90, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3528, file: !150, line: 58, baseType: !90, size: 64, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3528, file: !150, line: 59, baseType: !90, size: 64, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3528, file: !150, line: 60, baseType: !90, size: 64, offset: 448)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3528, file: !150, line: 61, baseType: !90, size: 64, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3528, file: !150, line: 64, baseType: !90, size: 64, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3528, file: !150, line: 65, baseType: !90, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3528, file: !150, line: 66, baseType: !90, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3528, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3528, file: !150, line: 70, baseType: !3544, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3528, file: !150, line: 72, baseType: !70, size: 32, offset: 896)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3528, file: !150, line: 73, baseType: !70, size: 32, offset: 928)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3528, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3528, file: !150, line: 77, baseType: !92, size: 16, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3528, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3528, file: !150, line: 79, baseType: !39, size: 8, offset: 1048)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3528, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3528, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3528, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3528, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3528, file: !150, line: 93, baseType: !3544, size: 64, offset: 1344)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3528, file: !150, line: 94, baseType: !91, size: 64, offset: 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3528, file: !150, line: 95, baseType: !93, size: 64, offset: 1472)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3528, file: !150, line: 96, baseType: !70, size: 32, offset: 1536)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3528, file: !150, line: 98, baseType: !195, size: 160, offset: 1568)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !368, line: 63, baseType: !172)
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DILocalVariable(name: "fp", arg: 1, scope: !3523, file: !743, line: 28, type: !3526)
!3563 = !DILocalVariable(name: "offset", arg: 2, scope: !3523, file: !743, line: 28, type: !3560)
!3564 = !DILocalVariable(name: "whence", arg: 3, scope: !3523, file: !743, line: 28, type: !70)
!3565 = !DILocalVariable(name: "pos", scope: !3566, file: !743, line: 123, type: !3560)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !743, line: 119, column: 5)
!3567 = distinct !DILexicalBlock(scope: !3523, file: !743, line: 55, column: 7)
!3568 = !DILocation(line: 0, scope: !3523)
!3569 = !DILocation(line: 55, column: 12, scope: !3567)
!3570 = !{!1251, !773, i64 16}
!3571 = !DILocation(line: 55, column: 33, scope: !3567)
!3572 = !{!1251, !773, i64 8}
!3573 = !DILocation(line: 55, column: 25, scope: !3567)
!3574 = !DILocation(line: 56, column: 7, scope: !3567)
!3575 = !DILocation(line: 56, column: 15, scope: !3567)
!3576 = !DILocation(line: 56, column: 37, scope: !3567)
!3577 = !{!1251, !773, i64 32}
!3578 = !DILocation(line: 56, column: 29, scope: !3567)
!3579 = !DILocation(line: 57, column: 7, scope: !3567)
!3580 = !DILocation(line: 57, column: 15, scope: !3567)
!3581 = !{!1251, !773, i64 72}
!3582 = !DILocation(line: 57, column: 29, scope: !3567)
!3583 = !DILocation(line: 55, column: 7, scope: !3523)
!3584 = !DILocation(line: 123, column: 26, scope: !3566)
!3585 = !DILocation(line: 123, column: 19, scope: !3566)
!3586 = !DILocation(line: 0, scope: !3566)
!3587 = !DILocation(line: 124, column: 15, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3566, file: !743, line: 124, column: 11)
!3589 = !DILocation(line: 124, column: 11, scope: !3566)
!3590 = !DILocation(line: 135, column: 19, scope: !3566)
!3591 = !DILocation(line: 136, column: 12, scope: !3566)
!3592 = !DILocation(line: 136, column: 20, scope: !3566)
!3593 = !{!1251, !1252, i64 144}
!3594 = !DILocation(line: 167, column: 7, scope: !3566)
!3595 = !DILocation(line: 169, column: 10, scope: !3523)
!3596 = !DILocation(line: 169, column: 3, scope: !3523)
!3597 = !DILocation(line: 170, column: 1, scope: !3523)
!3598 = !DISubprogram(name: "fseeko", scope: !368, file: !368, line: 736, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!70, !3526, !172, !70}
!3601 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !670, file: !670, line: 100, type: !3602, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3605)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!93, !1417, !96, !93, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!3605 = !{!3606, !3607, !3608, !3609, !3610}
!3606 = !DILocalVariable(name: "pwc", arg: 1, scope: !3601, file: !670, line: 100, type: !1417)
!3607 = !DILocalVariable(name: "s", arg: 2, scope: !3601, file: !670, line: 100, type: !96)
!3608 = !DILocalVariable(name: "n", arg: 3, scope: !3601, file: !670, line: 100, type: !93)
!3609 = !DILocalVariable(name: "ps", arg: 4, scope: !3601, file: !670, line: 100, type: !3604)
!3610 = !DILocalVariable(name: "ret", scope: !3601, file: !670, line: 130, type: !93)
!3611 = !DILocation(line: 0, scope: !3601)
!3612 = !DILocation(line: 105, column: 9, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3601, file: !670, line: 105, column: 7)
!3614 = !DILocation(line: 105, column: 7, scope: !3601)
!3615 = !DILocation(line: 117, column: 10, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3601, file: !670, line: 117, column: 7)
!3617 = !DILocation(line: 117, column: 7, scope: !3601)
!3618 = !DILocation(line: 130, column: 16, scope: !3601)
!3619 = !DILocation(line: 135, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3601, file: !670, line: 135, column: 7)
!3621 = !DILocation(line: 135, column: 25, scope: !3620)
!3622 = !DILocation(line: 135, column: 30, scope: !3620)
!3623 = !DILocation(line: 135, column: 7, scope: !3601)
!3624 = !DILocalVariable(name: "ps", arg: 1, scope: !3625, file: !1390, line: 1135, type: !3604)
!3625 = distinct !DISubprogram(name: "mbszero", scope: !1390, file: !1390, line: 1135, type: !3626, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !3604}
!3628 = !{!3624}
!3629 = !DILocation(line: 0, scope: !3625, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 137, column: 5, scope: !3620)
!3631 = !DILocalVariable(name: "__dest", arg: 1, scope: !3632, file: !1399, line: 57, type: !91)
!3632 = distinct !DISubprogram(name: "memset", scope: !1399, file: !1399, line: 57, type: !1400, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3633)
!3633 = !{!3631, !3634, !3635}
!3634 = !DILocalVariable(name: "__ch", arg: 2, scope: !3632, file: !1399, line: 57, type: !70)
!3635 = !DILocalVariable(name: "__len", arg: 3, scope: !3632, file: !1399, line: 57, type: !93)
!3636 = !DILocation(line: 0, scope: !3632, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1137, column: 3, scope: !3625, inlinedAt: !3630)
!3638 = !DILocation(line: 59, column: 10, scope: !3632, inlinedAt: !3637)
!3639 = !DILocation(line: 137, column: 5, scope: !3620)
!3640 = !DILocation(line: 138, column: 11, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3601, file: !670, line: 138, column: 7)
!3642 = !DILocation(line: 138, column: 7, scope: !3601)
!3643 = !DILocation(line: 139, column: 5, scope: !3641)
!3644 = !DILocation(line: 143, column: 26, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3601, file: !670, line: 143, column: 7)
!3646 = !DILocation(line: 143, column: 41, scope: !3645)
!3647 = !DILocation(line: 143, column: 7, scope: !3601)
!3648 = !DILocation(line: 145, column: 15, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !670, line: 145, column: 11)
!3650 = distinct !DILexicalBlock(scope: !3645, file: !670, line: 144, column: 5)
!3651 = !DILocation(line: 145, column: 11, scope: !3650)
!3652 = !DILocation(line: 146, column: 32, scope: !3649)
!3653 = !DILocation(line: 146, column: 16, scope: !3649)
!3654 = !DILocation(line: 146, column: 14, scope: !3649)
!3655 = !DILocation(line: 146, column: 9, scope: !3649)
!3656 = !DILocation(line: 286, column: 1, scope: !3601)
!3657 = !DISubprogram(name: "mbsinit", scope: !3658, file: !3658, line: 293, type: !3659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !818)
!3658 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!70, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!3663 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !745, file: !745, line: 27, type: !2873, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3664)
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DILocalVariable(name: "ptr", arg: 1, scope: !3663, file: !745, line: 27, type: !91)
!3666 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3663, file: !745, line: 27, type: !93)
!3667 = !DILocalVariable(name: "size", arg: 3, scope: !3663, file: !745, line: 27, type: !93)
!3668 = !DILocalVariable(name: "nbytes", scope: !3663, file: !745, line: 29, type: !93)
!3669 = !DILocation(line: 0, scope: !3663)
!3670 = !DILocation(line: 30, column: 7, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3663, file: !745, line: 30, column: 7)
!3672 = !DILocalVariable(name: "ptr", arg: 1, scope: !3673, file: !2965, line: 2057, type: !91)
!3673 = distinct !DISubprogram(name: "rpl_realloc", scope: !2965, file: !2965, line: 2057, type: !2957, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3674)
!3674 = !{!3672, !3675}
!3675 = !DILocalVariable(name: "size", arg: 2, scope: !3673, file: !2965, line: 2057, type: !93)
!3676 = !DILocation(line: 0, scope: !3673, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 37, column: 10, scope: !3663)
!3678 = !DILocation(line: 2059, column: 24, scope: !3673, inlinedAt: !3677)
!3679 = !DILocation(line: 2059, column: 10, scope: !3673, inlinedAt: !3677)
!3680 = !DILocation(line: 37, column: 3, scope: !3663)
!3681 = !DILocation(line: 32, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3671, file: !745, line: 31, column: 5)
!3683 = !DILocation(line: 32, column: 13, scope: !3682)
!3684 = !DILocation(line: 33, column: 7, scope: !3682)
!3685 = !DILocation(line: 38, column: 1, scope: !3663)
!3686 = distinct !DISubprogram(name: "hard_locale", scope: !688, file: !688, line: 28, type: !3687, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!121, !70}
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "category", arg: 1, scope: !3686, file: !688, line: 28, type: !70)
!3691 = !DILocalVariable(name: "locale", scope: !3686, file: !688, line: 30, type: !3692)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3693)
!3693 = !{!3694}
!3694 = !DISubrange(count: 257)
!3695 = !DILocation(line: 0, scope: !3686)
!3696 = !DILocation(line: 30, column: 3, scope: !3686)
!3697 = !DILocation(line: 30, column: 8, scope: !3686)
!3698 = !DILocation(line: 32, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3686, file: !688, line: 32, column: 7)
!3700 = !DILocation(line: 32, column: 7, scope: !3686)
!3701 = !DILocalVariable(name: "__s1", arg: 1, scope: !3702, file: !846, line: 1359, type: !96)
!3702 = distinct !DISubprogram(name: "streq", scope: !846, file: !846, line: 1359, type: !847, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3703)
!3703 = !{!3701, !3704}
!3704 = !DILocalVariable(name: "__s2", arg: 2, scope: !3702, file: !846, line: 1359, type: !96)
!3705 = !DILocation(line: 0, scope: !3702, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 35, column: 9, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3686, file: !688, line: 35, column: 7)
!3708 = !DILocation(line: 1361, column: 11, scope: !3702, inlinedAt: !3706)
!3709 = !DILocation(line: 1361, column: 10, scope: !3702, inlinedAt: !3706)
!3710 = !DILocation(line: 35, column: 29, scope: !3707)
!3711 = !DILocation(line: 0, scope: !3702, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 35, column: 32, scope: !3707)
!3713 = !DILocation(line: 1361, column: 11, scope: !3702, inlinedAt: !3712)
!3714 = !DILocation(line: 1361, column: 10, scope: !3702, inlinedAt: !3712)
!3715 = !DILocation(line: 35, column: 7, scope: !3686)
!3716 = !DILocation(line: 46, column: 3, scope: !3686)
!3717 = !DILocation(line: 47, column: 1, scope: !3686)
!3718 = distinct !DISubprogram(name: "setlocale_null_r", scope: !750, file: !750, line: 154, type: !3719, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!70, !70, !90, !93}
!3721 = !{!3722, !3723, !3724}
!3722 = !DILocalVariable(name: "category", arg: 1, scope: !3718, file: !750, line: 154, type: !70)
!3723 = !DILocalVariable(name: "buf", arg: 2, scope: !3718, file: !750, line: 154, type: !90)
!3724 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3718, file: !750, line: 154, type: !93)
!3725 = !DILocation(line: 0, scope: !3718)
!3726 = !DILocation(line: 159, column: 10, scope: !3718)
!3727 = !DILocation(line: 159, column: 3, scope: !3718)
!3728 = distinct !DISubprogram(name: "setlocale_null", scope: !750, file: !750, line: 186, type: !3729, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!96, !70}
!3731 = !{!3732}
!3732 = !DILocalVariable(name: "category", arg: 1, scope: !3728, file: !750, line: 186, type: !70)
!3733 = !DILocation(line: 0, scope: !3728)
!3734 = !DILocation(line: 189, column: 10, scope: !3728)
!3735 = !DILocation(line: 189, column: 3, scope: !3728)
!3736 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !752, file: !752, line: 35, type: !3729, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3737)
!3737 = !{!3738, !3739}
!3738 = !DILocalVariable(name: "category", arg: 1, scope: !3736, file: !752, line: 35, type: !70)
!3739 = !DILocalVariable(name: "result", scope: !3736, file: !752, line: 37, type: !96)
!3740 = !DILocation(line: 0, scope: !3736)
!3741 = !DILocation(line: 37, column: 24, scope: !3736)
!3742 = !DILocation(line: 62, column: 3, scope: !3736)
!3743 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !752, file: !752, line: 66, type: !3719, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749}
!3745 = !DILocalVariable(name: "category", arg: 1, scope: !3743, file: !752, line: 66, type: !70)
!3746 = !DILocalVariable(name: "buf", arg: 2, scope: !3743, file: !752, line: 66, type: !90)
!3747 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3743, file: !752, line: 66, type: !93)
!3748 = !DILocalVariable(name: "result", scope: !3743, file: !752, line: 111, type: !96)
!3749 = !DILocalVariable(name: "length", scope: !3750, file: !752, line: 125, type: !93)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !752, line: 124, column: 5)
!3751 = distinct !DILexicalBlock(scope: !3743, file: !752, line: 113, column: 7)
!3752 = !DILocation(line: 0, scope: !3743)
!3753 = !DILocation(line: 0, scope: !3736, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 111, column: 24, scope: !3743)
!3755 = !DILocation(line: 37, column: 24, scope: !3736, inlinedAt: !3754)
!3756 = !DILocation(line: 113, column: 14, scope: !3751)
!3757 = !DILocation(line: 113, column: 7, scope: !3743)
!3758 = !DILocation(line: 116, column: 19, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !752, line: 116, column: 11)
!3760 = distinct !DILexicalBlock(scope: !3751, file: !752, line: 114, column: 5)
!3761 = !DILocation(line: 116, column: 11, scope: !3760)
!3762 = !DILocation(line: 120, column: 16, scope: !3759)
!3763 = !DILocation(line: 120, column: 9, scope: !3759)
!3764 = !DILocation(line: 125, column: 23, scope: !3750)
!3765 = !DILocation(line: 0, scope: !3750)
!3766 = !DILocation(line: 126, column: 18, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3750, file: !752, line: 126, column: 11)
!3768 = !DILocation(line: 126, column: 11, scope: !3750)
!3769 = !DILocation(line: 128, column: 39, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !752, line: 127, column: 9)
!3771 = !DILocalVariable(name: "__dest", arg: 1, scope: !3772, file: !1399, line: 26, type: !3233)
!3772 = distinct !DISubprogram(name: "memcpy", scope: !1399, file: !1399, line: 26, type: !3231, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3773)
!3773 = !{!3771, !3774, !3775}
!3774 = !DILocalVariable(name: "__src", arg: 2, scope: !3772, file: !1399, line: 26, type: !977)
!3775 = !DILocalVariable(name: "__len", arg: 3, scope: !3772, file: !1399, line: 26, type: !93)
!3776 = !DILocation(line: 0, scope: !3772, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 128, column: 11, scope: !3770)
!3778 = !DILocation(line: 29, column: 10, scope: !3772, inlinedAt: !3777)
!3779 = !DILocation(line: 129, column: 11, scope: !3770)
!3780 = !DILocation(line: 133, column: 23, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !752, line: 133, column: 15)
!3782 = distinct !DILexicalBlock(scope: !3767, file: !752, line: 132, column: 9)
!3783 = !DILocation(line: 133, column: 15, scope: !3782)
!3784 = !DILocation(line: 138, column: 44, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3781, file: !752, line: 134, column: 13)
!3786 = !DILocation(line: 0, scope: !3772, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 138, column: 15, scope: !3785)
!3788 = !DILocation(line: 29, column: 10, scope: !3772, inlinedAt: !3787)
!3789 = !DILocation(line: 139, column: 15, scope: !3785)
!3790 = !DILocation(line: 139, column: 32, scope: !3785)
!3791 = !DILocation(line: 140, column: 13, scope: !3785)
!3792 = !DILocation(line: 0, scope: !3751)
!3793 = !DILocation(line: 145, column: 1, scope: !3743)
