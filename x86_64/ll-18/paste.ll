; ModuleID = 'src/paste.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [204 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0AThe newline of every line except the line from the last file\0Ais replaced with a TAB.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"paste\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [119 x i8] c"  -d, --delimiters=LIST\0A         reuse characters from LIST instead of TABs;\0A         backslash escapes are supported\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [166 x i8] c"  -s, --serial\0A         paste one file at a time instead of in parallel; the newline of\0A         every line except the last line in each file is replaced with a TAB\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !52
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1, !dbg !67
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.57, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.58, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !72
@optarg = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1, !dbg !143
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !417
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !418
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !148
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !158
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !163
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !165
@delims = internal unnamed_addr global ptr null, align 8, !dbg !175
@delim_lens = internal unnamed_addr global ptr null, align 8, !dbg !177
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !419
@stdin = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !180
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !185
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !190
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !272
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !274
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !276
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !281
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !315
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !317
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !319
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !324
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !329
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !331
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !336
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !338
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !340
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !342
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !353
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !355
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !360
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !365
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !370
@.str.57 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !375
@.str.58 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1, !dbg !377
@.str.59 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !382
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !384
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !386
@num_delims = internal unnamed_addr global i64 0, align 8, !dbg !390
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !396
@.str.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !398
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !400
@.str.65 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !402
@switch.table.main = private unnamed_addr constant [14 x i8] c"\\\08\08\08\08\0C\08\08\08\0A\08\0D\09\0B", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !420
@Version = dso_local local_unnamed_addr global ptr @.str.26, align 8, !dbg !423
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !427
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !440
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !432
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !434
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !436
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !438
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !442
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !448
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !479
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !450
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !469
@.str.1.39 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !471
@.str.2.41 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !473
@.str.3.40 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !475
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !477
@.str.4.34 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !481
@.str.5.35 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !483
@.str.6.36 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !488
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !493
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !499
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !501
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !503
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !534
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !537
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !539
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !544
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !546
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !548
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !550
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !552
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !554
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !556
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.70, ptr @.str.1.71, ptr @.str.2.72, ptr @.str.3.73, ptr @.str.4.74, ptr @.str.5.75, ptr @.str.6.76, ptr @.str.7.77, ptr @.str.8.78, ptr @.str.9.79, ptr null], align 16, !dbg !558
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !571
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !585
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !623
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !630
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !587
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !632
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !575
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !592
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !594
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !596
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !598
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !600
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !636
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !639
@.str.2.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !641
@.str.3.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !643
@.str.4.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !645
@.str.5.93 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !647
@.str.6.94 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !652
@.str.7.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !657
@.str.8.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !659
@.str.9.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !664
@.str.10.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !669
@.str.11.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !674
@.str.12.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !679
@.str.13.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !681
@.str.14.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !686
@.str.15.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !691
@.str.16.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !693
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.109 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !698
@.str.18.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !700
@.str.19.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !702
@.str.20.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !704
@.str.21.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !706
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !708
@.str.23.115 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !710
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !715
@exit_failure = dso_local global i32 1, align 4, !dbg !723
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !729
@.str.1.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !732
@.str.2.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !734
@.str.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !736
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !739
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !754

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !835 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !839, metadata !DIExpression()), !dbg !840
  %2 = icmp eq i32 %0, 0, !dbg !841
  br i1 %2, label %8, label %3, !dbg !843

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !844, !tbaa !846
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !844
  %6 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !846
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !844
  br label %40, !dbg !844

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !850
  %10 = load ptr, ptr @program_name, align 8, !dbg !850, !tbaa !846
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !850
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !852
  %13 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !846
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !852
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !853
  %16 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !846
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !853
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #38, !dbg !856
  %19 = load ptr, ptr @stdout, align 8, !dbg !856, !tbaa !846
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !856
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !859
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !859
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !860
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !860
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !861
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !861
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !862
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !862
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !863
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !863
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !864, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata !883, metadata !877, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr poison, metadata !876, metadata !DIExpression()), !dbg !881
  tail call void @emit_bug_reporting_address() #38, !dbg !884
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !885
  call void @llvm.dbg.value(metadata ptr %26, metadata !879, metadata !DIExpression()), !dbg !881
  %27 = icmp eq ptr %26, null, !dbg !886
  br i1 %27, label %35, label %28, !dbg !888

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #39, !dbg !889
  %30 = icmp eq i32 %29, 0, !dbg !889
  br i1 %30, label %35, label %31, !dbg !890

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #38, !dbg !891
  %33 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !846
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !891
  br label %35, !dbg !893

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !876, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !881
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !894
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #38, !dbg !894
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !895
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #38, !dbg !895
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !896
  unreachable, !dbg !896
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !897 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !901 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !907 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !910 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !192 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !914
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !197, metadata !DIExpression()), !dbg !914
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !915, !tbaa !916
  %3 = icmp eq i32 %2, -1, !dbg !918
  br i1 %3, label %4, label %16, !dbg !919

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #38, !dbg !920
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !198, metadata !DIExpression()), !dbg !921
  %6 = icmp eq ptr %5, null, !dbg !922
  br i1 %6, label %14, label %7, !dbg !923

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !924, !tbaa !925
  %9 = icmp eq i8 %8, 0, !dbg !924
  br i1 %9, label %14, label %10, !dbg !926

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !927, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !933, metadata !DIExpression()), !dbg !934
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #39, !dbg !936
  %12 = icmp eq i32 %11, 0, !dbg !937
  %13 = zext i1 %12 to i32, !dbg !926
  br label %14, !dbg !926

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !938, !tbaa !916
  br label %16, !dbg !939

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !940
  %18 = icmp eq i32 %17, 0, !dbg !940
  br i1 %18, label %22, label %19, !dbg !942

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !943, !tbaa !846
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !943
  br label %124, !dbg !945

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !201, metadata !DIExpression()), !dbg !914
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #39, !dbg !946
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !202, metadata !DIExpression()), !dbg !914
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !948
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !203, metadata !DIExpression()), !dbg !914
  %26 = icmp eq ptr %25, null, !dbg !949
  br i1 %26, label %54, label %27, !dbg !950

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !951
  br i1 %28, label %54, label %29, !dbg !952

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !204, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata i64 0, metadata !208, metadata !DIExpression()), !dbg !953
  %30 = icmp ult ptr %24, %25, !dbg !954
  br i1 %30, label %31, label %54, !dbg !955

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !914
  %33 = load ptr, ptr %32, align 8, !tbaa !846
  br label %34, !dbg !955

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !204, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !208, metadata !DIExpression()), !dbg !953
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !956
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !204, metadata !DIExpression()), !dbg !953
  %38 = load i8, ptr %35, align 1, !dbg !956, !tbaa !925
  %39 = sext i8 %38 to i64, !dbg !956
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !956
  %41 = load i16, ptr %40, align 2, !dbg !956, !tbaa !957
  %42 = freeze i16 %41, !dbg !959
  %43 = lshr i16 %42, 13, !dbg !959
  %44 = and i16 %43, 1, !dbg !959
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !208, metadata !DIExpression()), !dbg !953
  %47 = icmp ult ptr %37, %25, !dbg !954
  %48 = icmp ult i64 %46, 2, !dbg !961
  %49 = select i1 %47, i1 %48, i1 false, !dbg !961
  br i1 %49, label %34, label %50, !dbg !955, !llvm.loop !962

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !964
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !966
  %53 = zext i1 %51 to i8, !dbg !966
  br label %54, !dbg !966

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !914
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !914
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !201, metadata !DIExpression()), !dbg !914
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !203, metadata !DIExpression()), !dbg !914
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.25) #39, !dbg !967
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !209, metadata !DIExpression()), !dbg !914
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !968
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !210, metadata !DIExpression()), !dbg !914
  br label %59, !dbg !969

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !914
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !914
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !201, metadata !DIExpression()), !dbg !914
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !210, metadata !DIExpression()), !dbg !914
  %62 = load i8, ptr %60, align 1, !dbg !970, !tbaa !925
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !971

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !972
  %65 = load i8, ptr %64, align 1, !dbg !975, !tbaa !925
  %66 = icmp eq i8 %65, 45, !dbg !976
  %67 = select i1 %66, i8 0, i8 %61, !dbg !977
  br label %68, !dbg !977

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !914
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !201, metadata !DIExpression()), !dbg !914
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !978
  %71 = load ptr, ptr %70, align 8, !dbg !978, !tbaa !846
  %72 = sext i8 %62 to i64, !dbg !978
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !978
  %74 = load i16, ptr %73, align 2, !dbg !978, !tbaa !957
  %75 = and i16 %74, 8192, !dbg !978
  %76 = icmp eq i16 %75, 0, !dbg !978
  br i1 %76, label %92, label %77, !dbg !980

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !981
  br i1 %78, label %94, label %79, !dbg !984

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !985
  %81 = load i8, ptr %80, align 1, !dbg !985, !tbaa !925
  %82 = sext i8 %81 to i64, !dbg !985
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !985
  %84 = load i16, ptr %83, align 2, !dbg !985, !tbaa !957
  %85 = and i16 %84, 8192, !dbg !985
  %86 = icmp eq i16 %85, 0, !dbg !985
  br i1 %86, label %87, label %94, !dbg !986

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !987
  %89 = icmp ne i8 %88, 0, !dbg !987
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !989
  br i1 %91, label %92, label %94, !dbg !989

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !210, metadata !DIExpression()), !dbg !914
  br label %59, !dbg !969, !llvm.loop !991

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !993
  %96 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !846
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata !883, metadata !933, metadata !DIExpression()), !dbg !1012
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !267, metadata !DIExpression()), !dbg !914
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #39, !dbg !1014
  %99 = icmp eq i32 %98, 0, !dbg !1014
  br i1 %99, label %103, label %100, !dbg !1016

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #39, !dbg !1017
  %102 = icmp eq i32 %101, 0, !dbg !1017
  br i1 %102, label %103, label %106, !dbg !1018

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1019
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #38, !dbg !1019
  br label %109, !dbg !1021

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1022
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #38, !dbg !1022
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !846
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %110), !dbg !1024
  %112 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !846
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %112), !dbg !1025
  %114 = ptrtoint ptr %60 to i64, !dbg !1026
  %115 = sub i64 %114, %95, !dbg !1026
  %116 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !846
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1026
  %118 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !846
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %118), !dbg !1027
  %120 = load ptr, ptr @stdout, align 8, !dbg !1028, !tbaa !846
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %120), !dbg !1028
  %122 = load ptr, ptr @stdout, align 8, !dbg !1029, !tbaa !846
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1029
  br label %124, !dbg !1030

124:                                              ; preds = %109, %19
  ret void, !dbg !1030
}

; Function Attrs: nounwind
declare !dbg !1031 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1035 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1039 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1041 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1044 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1047 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1050 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1053 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1060 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1066 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1077
  %4 = alloca i32, align 4, !DIAssignID !1078
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1071, metadata !DIExpression()), !dbg !1079
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1072, metadata !DIExpression()), !dbg !1079
  tail call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1074, metadata !DIExpression()), !dbg !1079
  %5 = load ptr, ptr %1, align 8, !dbg !1080, !tbaa !846
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1081
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #38, !dbg !1082
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #38, !dbg !1083
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #38, !dbg !1084
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1085
  br label %10, !dbg !1086

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %18, %14 ], [ @.str.9, %2 ]
  br label %12, !dbg !1086

12:                                               ; preds = %21, %10
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1074, metadata !DIExpression()), !dbg !1079
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1073, metadata !DIExpression()), !dbg !1079
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 100, label %14
    i32 115, label %19
    i32 122, label %20
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !1086

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1088
  %16 = load i8, ptr %15, align 1, !dbg !1088, !tbaa !925
  %17 = icmp eq i8 %16, 0, !dbg !1091
  %18 = select i1 %17, ptr @.str.14, ptr %15, !dbg !1088
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1074, metadata !DIExpression()), !dbg !1079
  br label %10, !dbg !1092, !llvm.loop !1093

19:                                               ; preds = %12
  store i1 true, ptr @serial_merge, align 1, !dbg !1095
  br label %21, !dbg !1096

20:                                               ; preds = %12
  store i1 true, ptr @line_delim, align 1, !dbg !1097
  br label %21, !dbg !1098

21:                                               ; preds = %20, %19
  br label %12, !dbg !1079, !llvm.loop !1093

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #42, !dbg !1099
  unreachable, !dbg !1099

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1100, !tbaa !846
  %25 = load ptr, ptr @Version, align 8, !dbg !1100, !tbaa !846
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1100
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #38, !dbg !1100
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #38, !dbg !1100
  tail call void @exit(i32 noundef 0) #40, !dbg !1100
  unreachable, !dbg !1100

28:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #42, !dbg !1101
  unreachable, !dbg !1101

29:                                               ; preds = %12
  %30 = load i32, ptr @optind, align 4, !dbg !1102, !tbaa !916
  %31 = sub nsw i32 %0, %30, !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1075, metadata !DIExpression()), !dbg !1079
  %32 = icmp eq i32 %31, 0, !dbg !1104
  br i1 %32, label %33, label %36, !dbg !1106

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64, !dbg !1107
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1107
  store ptr @.str.18, ptr %35, align 8, !dbg !1109, !tbaa !846
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1075, metadata !DIExpression()), !dbg !1079
  br label %36, !dbg !1110

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 1, %33 ], [ %31, %29 ], !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !1075, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata ptr %11, metadata !1111, metadata !DIExpression()), !dbg !1129
  %38 = tail call noalias nonnull ptr @xstrdup(ptr noundef %11) #38, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %38, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()), !dbg !1129
  store ptr %38, ptr @delims, align 8, !dbg !1133, !tbaa !846
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #39, !dbg !1134
  %40 = tail call i64 @llvm.umax.i64(i64 %39, i64 1), !dbg !1134
  %41 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %40, i64 noundef 8) #43, !dbg !1135
  store ptr %41, ptr @delim_lens, align 8, !dbg !1136, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %11, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr %38, metadata !1116, metadata !DIExpression()), !dbg !1129
  %42 = load i8, ptr %11, align 1, !dbg !1137, !tbaa !925
  %43 = icmp eq i8 %42, 0, !dbg !1138
  br i1 %43, label %44, label %45, !dbg !1138

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1117, metadata !DIExpression()), !dbg !1129
  store i8 0, ptr %38, align 1, !dbg !1139, !tbaa !925
  store i64 0, ptr %41, align 8, !dbg !1140, !tbaa !1143
  call void @llvm.dbg.value(metadata i64 1, metadata !1119, metadata !DIExpression()), !dbg !1129
  br label %123, !dbg !1145

45:                                               ; preds = %36, %77
  %46 = phi ptr [ %78, %77 ], [ %41, %36 ]
  %47 = phi ptr [ %79, %77 ], [ %41, %36 ]
  %48 = phi i8 [ %83, %77 ], [ %42, %36 ]
  %49 = phi ptr [ %81, %77 ], [ %38, %36 ]
  %50 = phi ptr [ %80, %77 ], [ %11, %36 ]
  %51 = phi i64 [ %82, %77 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata ptr %49, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr %50, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i64 %51, metadata !1119, metadata !DIExpression()), !dbg !1129
  %52 = icmp eq i8 %48, 92, !dbg !1146
  br i1 %52, label %53, label %86, !dbg !1148

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1149
  call void @llvm.dbg.value(metadata ptr %54, metadata !1118, metadata !DIExpression()), !dbg !1129
  %55 = load i8, ptr %54, align 1, !dbg !1151, !tbaa !925
  switch i8 %55, label %56 [
    i8 0, label %116
    i8 48, label %71
  ], !dbg !1153

56:                                               ; preds = %53
  %57 = sext i8 %55 to i32, !dbg !1151
  %58 = add nsw i32 %57, -92, !dbg !1154
  %59 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 31), !dbg !1154
  %60 = icmp ult i32 %59, 14, !dbg !1154
  br i1 %60, label %61, label %86, !dbg !1154

61:                                               ; preds = %56
  %62 = trunc i32 %59 to i16, !dbg !1154
  %63 = lshr i16 14889, %62, !dbg !1154
  %64 = and i16 %63, 1, !dbg !1154
  %65 = icmp eq i16 %64, 0, !dbg !1154
  br i1 %65, label %86, label %66, !dbg !1154

66:                                               ; preds = %61
  %67 = zext nneg i32 %59 to i64, !dbg !1154
  %68 = getelementptr inbounds [14 x i8], ptr @switch.table.main, i64 0, i64 %67, !dbg !1154
  %69 = load i8, ptr %68, align 1, !dbg !1154
  store i8 %69, ptr %49, align 1, !dbg !1157, !tbaa !925
  %70 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %70, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr %50, metadata !1118, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1129
  call void @llvm.dbg.value(metadata i64 %51, metadata !1119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1129
  br label %71

71:                                               ; preds = %66, %53
  %72 = phi ptr [ %46, %66 ], [ %47, %53 ]
  %73 = phi i64 [ 1, %66 ], [ 0, %53 ]
  %74 = phi ptr [ %70, %66 ], [ %49, %53 ], !dbg !1129
  %75 = getelementptr inbounds i64, ptr %72, i64 %51, !dbg !1159
  store i64 %73, ptr %75, align 8, !dbg !1159, !tbaa !1143
  %76 = getelementptr inbounds i8, ptr %50, i64 2, !dbg !1159
  call void @llvm.dbg.value(metadata ptr %74, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr %76, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i64 %51, metadata !1119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1129
  br label %77, !dbg !1160

77:                                               ; preds = %110, %71
  %78 = phi ptr [ %46, %71 ], [ %114, %110 ]
  %79 = phi ptr [ %72, %71 ], [ %114, %110 ]
  %80 = phi ptr [ %76, %71 ], [ %113, %110 ]
  %81 = phi ptr [ %74, %71 ], [ %112, %110 ]
  %82 = add nuw nsw i64 %51, 1, !dbg !1161
  call void @llvm.dbg.value(metadata ptr %81, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr %80, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i64 %82, metadata !1119, metadata !DIExpression()), !dbg !1129
  %83 = load i8, ptr %80, align 1, !dbg !1137, !tbaa !925
  %84 = icmp eq i8 %83, 0, !dbg !1138
  br i1 %84, label %85, label %45, !dbg !1138, !llvm.loop !1162

85:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i8 poison, metadata !1117, metadata !DIExpression()), !dbg !1129
  store i8 0, ptr %81, align 1, !dbg !1139, !tbaa !925
  call void @llvm.dbg.value(metadata i64 %82, metadata !1119, metadata !DIExpression()), !dbg !1129
  br label %123, !dbg !1145

86:                                               ; preds = %61, %56, %45
  %87 = phi i8 [ %48, %45 ], [ %55, %56 ], [ %55, %61 ], !dbg !1164
  %88 = phi ptr [ %50, %45 ], [ %54, %56 ], [ %54, %61 ], !dbg !1129
  call void @llvm.dbg.value(metadata ptr %88, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.label(metadata !1120), !dbg !1182
  call void @llvm.dbg.value(metadata ptr %88, metadata !1180, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr %88, metadata !1170, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, metadata !1171, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %87, metadata !1185, metadata !DIExpression()), !dbg !1190
  %89 = icmp sgt i8 %87, -1, !dbg !1192
  br i1 %89, label %110, label %90, !dbg !1193

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %88, i64 1, !dbg !1194
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %91, metadata !1172, metadata !DIExpression()), !dbg !1184
  %92 = load i8, ptr %91, align 1, !dbg !1196, !tbaa !925
  %93 = icmp ne i8 %92, 0, !dbg !1198
  %94 = zext i1 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94, !dbg !1199
  call void @llvm.dbg.value(metadata i32 1, metadata !1173, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %95, metadata !1172, metadata !DIExpression()), !dbg !1184
  %96 = load i8, ptr %95, align 1, !dbg !1196, !tbaa !925
  %97 = icmp ne i8 %96, 0, !dbg !1198
  %98 = zext i1 %97 to i64
  %99 = getelementptr inbounds i8, ptr %95, i64 %98, !dbg !1199
  call void @llvm.dbg.value(metadata i32 2, metadata !1173, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %99, metadata !1172, metadata !DIExpression()), !dbg !1184
  %100 = load i8, ptr %99, align 1, !dbg !1196, !tbaa !925
  %101 = icmp ne i8 %100, 0, !dbg !1198
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i8, ptr %99, i64 %102, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %103, metadata !1172, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 3, metadata !1173, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1200, metadata !DIExpression(), metadata !1077, metadata ptr %3, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1208, metadata !DIExpression(), metadata !1078, metadata ptr %4, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %88, metadata !1205, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %103, metadata !1206, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %87, metadata !1207, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %87, metadata !1185, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1225
  store i32 0, ptr %3, align 4, !dbg !1226, !tbaa !1227, !DIAssignID !1229
  call void @llvm.dbg.assign(metadata i32 0, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1229, metadata ptr %3, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1230
  %104 = ptrtoint ptr %103 to i64, !dbg !1231
  %105 = ptrtoint ptr %88 to i64, !dbg !1231
  %106 = sub i64 %104, %105, !dbg !1231
  %107 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %88, i64 noundef %106, ptr noundef nonnull %3) #38, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %107, metadata !1209, metadata !DIExpression()), !dbg !1220
  %108 = icmp slt i64 %107, 0, !dbg !1233
  %109 = select i1 %108, i64 1, i64 %107, !dbg !1235, !prof !1236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1237
  br label %110

110:                                              ; preds = %90, %86
  %111 = phi i64 [ %109, %90 ], [ 1, %86 ], !dbg !1184
  call void @llvm.dbg.value(metadata i64 %111, metadata !1122, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %111, metadata !1122, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %111, metadata !1122, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1161
  call void @llvm.dbg.value(metadata ptr %49, metadata !1238, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %88, metadata !1245, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %111, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %88, i64 noundef %111, i1 noundef false) #38, !dbg !1249
  %112 = getelementptr inbounds i8, ptr %49, i64 %111, !dbg !1249
  call void @llvm.dbg.value(metadata ptr %112, metadata !1116, metadata !DIExpression()), !dbg !1129
  %113 = getelementptr inbounds i8, ptr %88, i64 %111, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %113, metadata !1118, metadata !DIExpression()), !dbg !1129
  %114 = load ptr, ptr @delim_lens, align 8, !dbg !1251, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %51, metadata !1119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1129
  %115 = getelementptr inbounds i64, ptr %114, i64 %51, !dbg !1251
  store i64 %111, ptr %115, align 8, !dbg !1252, !tbaa !1143
  br label %77, !dbg !1138

116:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i8 poison, metadata !1117, metadata !DIExpression()), !dbg !1129
  store i8 0, ptr %49, align 1, !dbg !1139, !tbaa !925
  %117 = icmp eq i64 %51, 0, !dbg !1253
  br i1 %117, label %118, label %119, !dbg !1254

118:                                              ; preds = %116
  store i64 0, ptr %46, align 8, !dbg !1140, !tbaa !1143
  call void @llvm.dbg.value(metadata i64 1, metadata !1119, metadata !DIExpression()), !dbg !1129
  br label %119, !dbg !1145

119:                                              ; preds = %116, %118
  %120 = phi i64 [ 1, %118 ], [ %51, %116 ], !dbg !1255
  store i64 %120, ptr @num_delims, align 8, !dbg !1255, !tbaa !1143
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !1256
  %122 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef nonnull %11) #38, !dbg !1256
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %121, ptr noundef %122) #38, !dbg !1256
  unreachable, !dbg !1256

123:                                              ; preds = %44, %85
  %124 = phi i64 [ %82, %85 ], [ 1, %44 ], !dbg !1255
  store i64 %124, ptr @num_delims, align 8, !dbg !1255, !tbaa !1143
  %125 = load i1, ptr @serial_merge, align 1, !dbg !1258
  %126 = select i1 %125, ptr @paste_serial, ptr @paste_parallel, !dbg !1258
  %127 = sext i32 %37 to i64, !dbg !1259
  %128 = load i32, ptr @optind, align 4, !dbg !1260, !tbaa !916
  %129 = sext i32 %128 to i64, !dbg !1261
  %130 = getelementptr inbounds ptr, ptr %1, i64 %129, !dbg !1261
  %131 = call zeroext i1 %126(i64 noundef %127, ptr noundef nonnull %130) #38, !dbg !1262, !callees !1263
  tail call void @llvm.dbg.value(metadata i1 %131, metadata !1076, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1079
  %132 = load ptr, ptr @delims, align 8, !dbg !1264, !tbaa !846
  call void @free(ptr noundef %132) #38, !dbg !1265
  %133 = load ptr, ptr @delim_lens, align 8, !dbg !1266, !tbaa !846
  call void @free(ptr noundef %133) #38, !dbg !1267
  %134 = load i1, ptr @have_read_stdin, align 1, !dbg !1268
  br i1 %134, label %135, label %142, !dbg !1270

135:                                              ; preds = %123
  %136 = load ptr, ptr @stdin, align 8, !dbg !1271, !tbaa !846
  %137 = call i32 @rpl_fclose(ptr noundef %136) #38, !dbg !1272
  %138 = icmp eq i32 %137, -1, !dbg !1273
  br i1 %138, label %139, label %142, !dbg !1274

139:                                              ; preds = %135
  %140 = tail call ptr @__errno_location() #41, !dbg !1275
  %141 = load i32, ptr %140, align 4, !dbg !1275, !tbaa !916
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %141, ptr noundef nonnull @.str.18) #38, !dbg !1275
  unreachable, !dbg !1275

142:                                              ; preds = %135, %123
  %143 = xor i1 %131, true, !dbg !1276
  %144 = zext i1 %143 to i32, !dbg !1276
  ret i32 %144, !dbg !1277
}

; Function Attrs: nounwind
declare !dbg !1278 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1281 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1282 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1285 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1291 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1294 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_serial(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1301 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1305, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1306, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1307, metadata !DIExpression()), !dbg !1318
  %3 = icmp eq i64 %0, 0, !dbg !1319
  br i1 %3, label %201, label %4, !dbg !1319

4:                                                ; preds = %2, %193
  %5 = phi i64 [ %195, %193 ], [ %0, %2 ]
  %6 = phi ptr [ %196, %193 ], [ %1, %2 ]
  %7 = phi i8 [ %194, %193 ], [ 1, %2 ]
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1305, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1306, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1307, metadata !DIExpression()), !dbg !1318
  %8 = load ptr, ptr %6, align 8, !dbg !1320, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %8, metadata !927, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !933, metadata !DIExpression()), !dbg !1321
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str.18) #39, !dbg !1323
  %10 = icmp eq i32 %9, 0, !dbg !1324
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1325
  br i1 %10, label %11, label %13, !dbg !1326

11:                                               ; preds = %4
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1327
  %12 = load ptr, ptr @stdin, align 8, !dbg !1330, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1310, metadata !DIExpression()), !dbg !1318
  br label %20, !dbg !1331

13:                                               ; preds = %4
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %8, ptr noundef nonnull @.str.62) #38, !dbg !1332
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1310, metadata !DIExpression()), !dbg !1318
  %15 = icmp eq ptr %14, null, !dbg !1334
  br i1 %15, label %16, label %19, !dbg !1336

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #41, !dbg !1337
  %18 = load i32, ptr %17, align 4, !dbg !1337, !tbaa !916
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1307, metadata !DIExpression()), !dbg !1318
  br label %189, !dbg !1339

19:                                               ; preds = %13
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #38, !dbg !1340
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi ptr [ %12, %11 ], [ %14, %19 ], !dbg !1341
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1310, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1316, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1317, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %21, metadata !1342, metadata !DIExpression()), !dbg !1348
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 1, !dbg !1350
  %23 = load ptr, ptr %22, align 8, !dbg !1350, !tbaa !1351
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 2, !dbg !1350
  %25 = load ptr, ptr %24, align 8, !dbg !1350, !tbaa !1353
  %26 = icmp ult ptr %23, %25, !dbg !1350
  br i1 %26, label %27, label %32, !dbg !1350, !prof !1354

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1350
  store ptr %28, ptr %22, align 8, !dbg !1350, !tbaa !1351
  %29 = load i8, ptr %23, align 1, !dbg !1350, !tbaa !925
  %30 = zext i8 %29 to i32, !dbg !1350
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1309, metadata !DIExpression()), !dbg !1318
  %31 = tail call ptr @__errno_location() #41, !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1311, metadata !DIExpression()), !dbg !1325
  br label %36, !dbg !1356

32:                                               ; preds = %20
  %33 = tail call i32 @__uflow(ptr noundef nonnull %21) #38, !dbg !1350
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1309, metadata !DIExpression()), !dbg !1318
  %34 = tail call ptr @__errno_location() #41, !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1311, metadata !DIExpression()), !dbg !1325
  %35 = icmp eq i32 %33, -1, !dbg !1357
  br i1 %35, label %39, label %36, !dbg !1356

36:                                               ; preds = %27, %32
  %37 = phi ptr [ %31, %27 ], [ %34, %32 ]
  %38 = phi i32 [ %30, %27 ], [ %33, %32 ]
  br label %92, !dbg !1359

39:                                               ; preds = %32
  %40 = load i32, ptr %34, align 4, !dbg !1355, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1311, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1309, metadata !DIExpression()), !dbg !1318
  %41 = load i1, ptr @line_delim, align 1, !dbg !1361
  %42 = select i1 %41, i8 0, i8 10, !dbg !1361
  %43 = zext nneg i8 %42 to i32, !dbg !1361
  br label %147, !dbg !1363

44:                                               ; preds = %110, %92
  %45 = phi i32 [ %93, %92 ], [ %57, %110 ], !dbg !1325
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1317, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1316, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1309, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %21, metadata !1342, metadata !DIExpression()), !dbg !1364
  %46 = load ptr, ptr %22, align 8, !dbg !1366, !tbaa !1351
  %47 = load ptr, ptr %24, align 8, !dbg !1366, !tbaa !1353
  %48 = icmp ult ptr %46, %47, !dbg !1366
  br i1 %48, label %49, label %53, !dbg !1366, !prof !1354

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1366
  store ptr %50, ptr %22, align 8, !dbg !1366, !tbaa !1351
  %51 = load i8, ptr %46, align 1, !dbg !1366, !tbaa !925
  %52 = zext i8 %51 to i32, !dbg !1366
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1308, metadata !DIExpression()), !dbg !1318
  br label %56, !dbg !1359

53:                                               ; preds = %44
  %54 = tail call i32 @__uflow(ptr noundef nonnull %21) #38, !dbg !1366
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1308, metadata !DIExpression()), !dbg !1318
  %55 = icmp eq i32 %54, -1, !dbg !1367
  br i1 %55, label %119, label %56, !dbg !1359

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %58 = load i1, ptr @line_delim, align 1, !dbg !1368
  %59 = select i1 %58, i32 0, i32 10, !dbg !1368
  %60 = icmp eq i32 %45, %59, !dbg !1371
  br i1 %60, label %61, label %96, !dbg !1372

61:                                               ; preds = %56
  %62 = load ptr, ptr @delim_lens, align 8, !dbg !1373, !tbaa !846
  %63 = getelementptr inbounds i64, ptr %62, i64 %94, !dbg !1373
  %64 = load i64, ptr %63, align 8, !dbg !1373, !tbaa !1143
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %64, metadata !1380, metadata !DIExpression()), !dbg !1386
  %65 = icmp eq i64 %64, 0, !dbg !1388
  br i1 %65, label %84, label %66, !dbg !1389

66:                                               ; preds = %61
  %67 = load ptr, ptr @delims, align 8, !dbg !1390, !tbaa !846
  call void @llvm.dbg.value(metadata !DIArgList(ptr %67, i64 %95), metadata !1375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1386
  %68 = getelementptr inbounds i8, ptr %67, i64 %95, !dbg !1391
  call void @llvm.dbg.value(metadata ptr %68, metadata !1375, metadata !DIExpression()), !dbg !1386
  %69 = load ptr, ptr @stdout, align 8, !dbg !1392, !tbaa !846
  %70 = tail call i64 @fwrite_unlocked(ptr noundef %68, i64 noundef 1, i64 noundef %64, ptr noundef %69), !dbg !1392
  %71 = icmp eq i64 %70, %64, !dbg !1393
  br i1 %71, label %72, label %76, !dbg !1394

72:                                               ; preds = %66
  %73 = load ptr, ptr @delim_lens, align 8, !dbg !1395, !tbaa !846
  %74 = getelementptr inbounds i64, ptr %73, i64 %94
  %75 = load i64, ptr %74, align 8, !dbg !1395, !tbaa !1143
  br label %84, !dbg !1394

76:                                               ; preds = %66
  %77 = load i32, ptr %37, align 4, !dbg !1396, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %77, metadata !1399, metadata !DIExpression()), !dbg !1401
  %78 = load ptr, ptr @stdout, align 8, !dbg !1402, !tbaa !846
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #38, !dbg !1402
  %80 = load ptr, ptr @stdout, align 8, !dbg !1403, !tbaa !846
  %81 = tail call i32 @fpurge(ptr noundef %80) #38, !dbg !1404
  %82 = load ptr, ptr @stdout, align 8, !dbg !1405, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %82) #38, !dbg !1405
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1406
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #38, !dbg !1406
  unreachable, !dbg !1406

84:                                               ; preds = %72, %61
  %85 = phi i64 [ %75, %72 ], [ 0, %61 ], !dbg !1395
  %86 = add i64 %85, %95, !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1317, metadata !DIExpression()), !dbg !1325
  %87 = add nsw i64 %94, 1, !dbg !1408
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1316, metadata !DIExpression()), !dbg !1325
  %88 = load i64, ptr @num_delims, align 8, !dbg !1410, !tbaa !1143
  %89 = icmp eq i64 %87, %88, !dbg !1411
  %90 = select i1 %89, i64 0, i64 %87, !dbg !1412
  %91 = select i1 %89, i64 0, i64 %86, !dbg !1412
  br label %92, !dbg !1412, !llvm.loop !1413

92:                                               ; preds = %84, %36
  %93 = phi i32 [ %57, %84 ], [ %38, %36 ]
  %94 = phi i64 [ %90, %84 ], [ 0, %36 ]
  %95 = phi i64 [ %91, %84 ], [ 0, %36 ]
  br label %44, !dbg !1359

96:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %45, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %45, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1427
  %97 = load ptr, ptr @stdout, align 8, !dbg !1430, !tbaa !846
  %98 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 5, !dbg !1430
  %99 = load ptr, ptr %98, align 8, !dbg !1430, !tbaa !1431
  %100 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 6, !dbg !1430
  %101 = load ptr, ptr %100, align 8, !dbg !1430, !tbaa !1432
  %102 = icmp ult ptr %99, %101, !dbg !1430
  br i1 %102, label %103, label %106, !dbg !1430, !prof !1354

103:                                              ; preds = %96
  %104 = trunc i32 %45 to i8, !dbg !1433
  call void @llvm.dbg.value(metadata i8 %104, metadata !1415, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %104, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1427
  %105 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1430
  store ptr %105, ptr %98, align 8, !dbg !1430, !tbaa !1431
  store i8 %104, ptr %99, align 1, !dbg !1430, !tbaa !925
  br label %110, !dbg !1434

106:                                              ; preds = %96
  %107 = and i32 %45, 255, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %45, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1427
  %108 = tail call i32 @__overflow(ptr noundef nonnull %97, i32 noundef %107) #38, !dbg !1430
  %109 = icmp slt i32 %108, 0, !dbg !1436
  br i1 %109, label %111, label %110, !dbg !1434

110:                                              ; preds = %106, %103
  br label %44, !dbg !1325, !llvm.loop !1413

111:                                              ; preds = %106
  %112 = load i32, ptr %37, align 4, !dbg !1437, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %112, metadata !1399, metadata !DIExpression()), !dbg !1439
  %113 = load ptr, ptr @stdout, align 8, !dbg !1440, !tbaa !846
  %114 = tail call i32 @fflush_unlocked(ptr noundef %113) #38, !dbg !1440
  %115 = load ptr, ptr @stdout, align 8, !dbg !1441, !tbaa !846
  %116 = tail call i32 @fpurge(ptr noundef %115) #38, !dbg !1442
  %117 = load ptr, ptr @stdout, align 8, !dbg !1443, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %117) #38, !dbg !1443
  %118 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1444
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %112, ptr noundef %118) #38, !dbg !1444
  unreachable, !dbg !1444

119:                                              ; preds = %53
  %120 = load i32, ptr %37, align 4, !dbg !1445, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1311, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %45, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %45, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1448
  %121 = load ptr, ptr @stdout, align 8, !dbg !1450, !tbaa !846
  %122 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 5, !dbg !1450
  %123 = load ptr, ptr %122, align 8, !dbg !1450, !tbaa !1431
  %124 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 6, !dbg !1450
  %125 = load ptr, ptr %124, align 8, !dbg !1450, !tbaa !1432
  %126 = icmp ult ptr %123, %125, !dbg !1450
  br i1 %126, label %127, label %130, !dbg !1450, !prof !1354

127:                                              ; preds = %119
  %128 = trunc i32 %45 to i8, !dbg !1451
  call void @llvm.dbg.value(metadata i8 %128, metadata !1415, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1448
  %129 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !1450
  store ptr %129, ptr %122, align 8, !dbg !1450, !tbaa !1431
  store i8 %128, ptr %123, align 1, !dbg !1450, !tbaa !925
  br label %142, !dbg !1452

130:                                              ; preds = %119
  %131 = and i32 %45, 255, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %45, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1448
  %132 = tail call i32 @__overflow(ptr noundef nonnull %121, i32 noundef %131) #38, !dbg !1450
  %133 = icmp slt i32 %132, 0, !dbg !1454
  br i1 %133, label %134, label %142, !dbg !1452

134:                                              ; preds = %130
  %135 = load i32, ptr %37, align 4, !dbg !1455, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %135, metadata !1399, metadata !DIExpression()), !dbg !1457
  %136 = load ptr, ptr @stdout, align 8, !dbg !1458, !tbaa !846
  %137 = tail call i32 @fflush_unlocked(ptr noundef %136) #38, !dbg !1458
  %138 = load ptr, ptr @stdout, align 8, !dbg !1459, !tbaa !846
  %139 = tail call i32 @fpurge(ptr noundef %138) #38, !dbg !1460
  %140 = load ptr, ptr @stdout, align 8, !dbg !1461, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %140) #38, !dbg !1461
  %141 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1462
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %141) #38, !dbg !1462
  unreachable, !dbg !1462

142:                                              ; preds = %130, %127
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1311, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1309, metadata !DIExpression()), !dbg !1318
  %143 = load i1, ptr @line_delim, align 1, !dbg !1361
  %144 = select i1 %143, i8 0, i8 10, !dbg !1361
  %145 = zext nneg i8 %144 to i32, !dbg !1361
  %146 = icmp eq i32 %45, %145, !dbg !1463
  br i1 %146, label %171, label %147, !dbg !1363

147:                                              ; preds = %39, %142
  %148 = phi ptr [ %34, %39 ], [ %37, %142 ]
  %149 = phi i32 [ %43, %39 ], [ %145, %142 ]
  %150 = phi i8 [ %42, %39 ], [ %144, %142 ]
  %151 = phi i32 [ %40, %39 ], [ %120, %142 ]
  call void @llvm.dbg.value(metadata i8 %150, metadata !1415, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 %150, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1466
  %152 = load ptr, ptr @stdout, align 8, !dbg !1468, !tbaa !846
  %153 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 5, !dbg !1468
  %154 = load ptr, ptr %153, align 8, !dbg !1468, !tbaa !1431
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 6, !dbg !1468
  %156 = load ptr, ptr %155, align 8, !dbg !1468, !tbaa !1432
  %157 = icmp ult ptr %154, %156, !dbg !1468
  br i1 %157, label %158, label %160, !dbg !1468, !prof !1354

158:                                              ; preds = %147
  %159 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !1468
  store ptr %159, ptr %153, align 8, !dbg !1468, !tbaa !1431
  store i8 %150, ptr %154, align 1, !dbg !1468, !tbaa !925
  br label %171, !dbg !1469

160:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i8 poison, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1466
  %161 = tail call i32 @__overflow(ptr noundef nonnull %152, i32 noundef %149) #38, !dbg !1468
  %162 = icmp slt i32 %161, 0, !dbg !1470
  br i1 %162, label %163, label %171, !dbg !1469

163:                                              ; preds = %160
  %164 = load i32, ptr %148, align 4, !dbg !1471, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %164, metadata !1399, metadata !DIExpression()), !dbg !1473
  %165 = load ptr, ptr @stdout, align 8, !dbg !1474, !tbaa !846
  %166 = tail call i32 @fflush_unlocked(ptr noundef %165) #38, !dbg !1474
  %167 = load ptr, ptr @stdout, align 8, !dbg !1475, !tbaa !846
  %168 = tail call i32 @fpurge(ptr noundef %167) #38, !dbg !1476
  %169 = load ptr, ptr @stdout, align 8, !dbg !1477, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %169) #38, !dbg !1477
  %170 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1478
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %164, ptr noundef %170) #38, !dbg !1478
  unreachable, !dbg !1478

171:                                              ; preds = %160, %158, %142
  %172 = phi ptr [ %37, %142 ], [ %148, %158 ], [ %148, %160 ]
  %173 = phi i32 [ %120, %142 ], [ %151, %158 ], [ %151, %160 ]
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1479, metadata !DIExpression()), !dbg !1482
  %174 = load i32, ptr %21, align 8, !dbg !1485, !tbaa !1486
  %175 = and i32 %174, 32, !dbg !1487
  %176 = icmp eq i32 %175, 0, !dbg !1487
  %177 = select i1 %176, i32 0, i32 %173, !dbg !1488
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !1311, metadata !DIExpression()), !dbg !1325
  br i1 %10, label %178, label %179, !dbg !1489

178:                                              ; preds = %171
  tail call void @clearerr_unlocked(ptr noundef nonnull %21) #38, !dbg !1490
  br label %186, !dbg !1490

179:                                              ; preds = %171
  %180 = tail call i32 @rpl_fclose(ptr noundef nonnull %21) #38, !dbg !1492
  %181 = icmp eq i32 %180, 0, !dbg !1494
  %182 = icmp ne i32 %177, 0
  %183 = select i1 %181, i1 true, i1 %182, !dbg !1495
  br i1 %183, label %186, label %184, !dbg !1495

184:                                              ; preds = %179
  %185 = load i32, ptr %172, align 4, !dbg !1496, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !1311, metadata !DIExpression()), !dbg !1325
  br label %186, !dbg !1497

186:                                              ; preds = %179, %184, %178
  %187 = phi i32 [ %177, %178 ], [ %177, %179 ], [ %185, %184 ], !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !1311, metadata !DIExpression()), !dbg !1325
  %188 = icmp eq i32 %187, 0, !dbg !1498
  br i1 %188, label %193, label %189, !dbg !1500

189:                                              ; preds = %186, %16
  %190 = phi i32 [ %18, %16 ], [ %187, %186 ]
  %191 = load ptr, ptr %6, align 8, !dbg !1325, !tbaa !846
  %192 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %191) #38, !dbg !1325
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %190, ptr noundef nonnull @.str.63, ptr noundef %192) #38, !dbg !1325
  br label %193, !dbg !1501

193:                                              ; preds = %189, %186
  %194 = phi i8 [ %7, %186 ], [ 0, %189 ], !dbg !1325
  tail call void @llvm.dbg.value(metadata i8 %194, metadata !1307, metadata !DIExpression()), !dbg !1318
  %195 = add i64 %5, -1, !dbg !1501
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !1305, metadata !DIExpression()), !dbg !1318
  %196 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !1502
  tail call void @llvm.dbg.value(metadata ptr %196, metadata !1306, metadata !DIExpression()), !dbg !1318
  %197 = icmp eq i64 %195, 0, !dbg !1319
  br i1 %197, label %198, label %4, !dbg !1319, !llvm.loop !1503

198:                                              ; preds = %193
  %199 = and i8 %194, 1, !dbg !1505
  %200 = icmp ne i8 %199, 0, !dbg !1505
  br label %201, !dbg !1505

201:                                              ; preds = %198, %2
  %202 = phi i1 [ true, %2 ], [ %200, %198 ], !dbg !1318
  ret i1 %202, !dbg !1506
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_parallel(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1507 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1509, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1510, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1511, metadata !DIExpression()), !dbg !1557
  %3 = add i64 %0, -1, !dbg !1558
  %4 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1559
  %5 = mul i64 %4, %3, !dbg !1560
  %6 = add i64 %5, 1, !dbg !1561
  %7 = tail call noalias nonnull ptr @xmalloc(i64 noundef %6) #44, !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1512, metadata !DIExpression()), !dbg !1557
  %8 = add i64 %0, 1, !dbg !1563
  %9 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %8, i64 noundef 8) #43, !dbg !1564
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1513, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1515, metadata !DIExpression()), !dbg !1557
  %10 = icmp eq i64 %0, 0, !dbg !1565
  br i1 %10, label %335, label %11, !dbg !1568

11:                                               ; preds = %2, %35
  %12 = phi i64 [ %37, %35 ], [ 0, %2 ]
  %13 = phi i8 [ %36, %35 ], [ 0, %2 ]
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1515, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !1516, metadata !DIExpression()), !dbg !1557
  %14 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1569
  %15 = load ptr, ptr %14, align 8, !dbg !1569, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %15, metadata !927, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !933, metadata !DIExpression()), !dbg !1572
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.18) #39, !dbg !1574
  %17 = icmp eq i32 %16, 0, !dbg !1575
  br i1 %17, label %18, label %21, !dbg !1576

18:                                               ; preds = %11
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1577
  %19 = load ptr, ptr @stdin, align 8, !dbg !1579, !tbaa !846
  %20 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1580
  store ptr %19, ptr %20, align 8, !dbg !1581, !tbaa !846
  br label %35, !dbg !1582

21:                                               ; preds = %11
  %22 = tail call noalias ptr @rpl_fopen(ptr noundef %15, ptr noundef nonnull @.str.62) #38, !dbg !1583
  %23 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1585
  store ptr %22, ptr %23, align 8, !dbg !1586, !tbaa !846
  %24 = icmp eq ptr %22, null, !dbg !1587
  br i1 %24, label %25, label %31, !dbg !1589

25:                                               ; preds = %21
  %26 = getelementptr inbounds ptr, ptr %1, i64 %12
  %27 = tail call ptr @__errno_location() #41, !dbg !1590
  %28 = load i32, ptr %27, align 4, !dbg !1590, !tbaa !916
  %29 = load ptr, ptr %26, align 8, !dbg !1590, !tbaa !846
  %30 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %29) #38, !dbg !1590
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %28, ptr noundef nonnull @.str.63, ptr noundef %30) #38, !dbg !1590
  unreachable, !dbg !1590

31:                                               ; preds = %21
  %32 = tail call i32 @fileno_unlocked(ptr noundef nonnull %22) #38, !dbg !1591
  %33 = icmp eq i32 %32, 0, !dbg !1593
  %34 = select i1 %33, i8 1, i8 %13, !dbg !1594
  tail call void @llvm.dbg.value(metadata i8 %34, metadata !1516, metadata !DIExpression()), !dbg !1557
  tail call void @fadvise(ptr noundef nonnull %22, i32 noundef 2) #38, !dbg !1595
  br label %35

35:                                               ; preds = %18, %31
  %36 = phi i8 [ %13, %18 ], [ %34, %31 ], !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1516, metadata !DIExpression()), !dbg !1557
  %37 = add nuw i64 %12, 1, !dbg !1596
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1515, metadata !DIExpression()), !dbg !1557
  %38 = icmp eq i64 %37, %0, !dbg !1565
  br i1 %38, label %39, label %11, !dbg !1568, !llvm.loop !1597

39:                                               ; preds = %35
  %40 = and i8 %36, 1, !dbg !1599
  %41 = icmp eq i8 %40, 0, !dbg !1599
  br i1 %41, label %42, label %43, !dbg !1601

42:                                               ; preds = %43, %39
  br label %51, !dbg !1602

43:                                               ; preds = %39
  %44 = load i1, ptr @have_read_stdin, align 1, !dbg !1603
  br i1 %44, label %45, label %42, !dbg !1604

45:                                               ; preds = %43
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1605
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #38, !dbg !1605
  unreachable, !dbg !1605

47:                                               ; preds = %321, %173, %200, %202, %51
  %48 = phi i64 [ %53, %51 ], [ %169, %202 ], [ %169, %200 ], [ %169, %173 ], [ %327, %321 ], !dbg !1606
  %49 = phi i8 [ %52, %51 ], [ %170, %202 ], [ %170, %200 ], [ %170, %173 ], [ %328, %321 ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i8 %49, metadata !1511, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1515, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1524, metadata !DIExpression()), !dbg !1608
  %50 = icmp eq i64 %48, 0, !dbg !1602
  br i1 %50, label %332, label %51, !dbg !1602, !llvm.loop !1609

51:                                               ; preds = %42, %47
  %52 = phi i8 [ %49, %47 ], [ 1, %42 ]
  %53 = phi i64 [ %48, %47 ], [ %0, %42 ]
  tail call void @llvm.dbg.value(metadata i8 %52, metadata !1511, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !1515, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1517, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1519, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1520, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1524, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1522, metadata !DIExpression()), !dbg !1612
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1611
  br i1 %10, label %47, label %54, !dbg !1613

54:                                               ; preds = %51, %321
  %55 = phi i8 [ %328, %321 ], [ %52, %51 ]
  %56 = phi i64 [ %327, %321 ], [ %53, %51 ]
  %57 = phi i8 [ %326, %321 ], [ 0, %51 ]
  %58 = phi i64 [ %325, %321 ], [ 0, %51 ]
  %59 = phi i64 [ %324, %321 ], [ 0, %51 ]
  %60 = phi i64 [ %322, %321 ], [ 0, %51 ]
  %61 = phi i64 [ %323, %321 ], [ 0, %51 ]
  tail call void @llvm.dbg.value(metadata i8 %55, metadata !1511, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !1515, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %57, metadata !1517, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1519, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1520, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1524, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !1522, metadata !DIExpression()), !dbg !1612
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !1521, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1528, metadata !DIExpression()), !dbg !1608
  %62 = getelementptr inbounds ptr, ptr %9, i64 %60, !dbg !1614
  %63 = load ptr, ptr %62, align 8, !dbg !1614, !tbaa !846
  %64 = icmp eq ptr %63, null, !dbg !1614
  br i1 %64, label %167, label %65, !dbg !1615

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr %63, metadata !1342, metadata !DIExpression()), !dbg !1616
  %66 = getelementptr inbounds %struct._IO_FILE, ptr %63, i64 0, i32 1, !dbg !1618
  %67 = load ptr, ptr %66, align 8, !dbg !1618, !tbaa !1351
  %68 = getelementptr inbounds %struct._IO_FILE, ptr %63, i64 0, i32 2, !dbg !1618
  %69 = load ptr, ptr %68, align 8, !dbg !1618, !tbaa !1353
  %70 = icmp ult ptr %67, %69, !dbg !1618
  br i1 %70, label %73, label %71, !dbg !1618, !prof !1354

71:                                               ; preds = %65
  %72 = tail call i32 @__uflow(ptr noundef nonnull %63) #38, !dbg !1618
  br label %77, !dbg !1618

73:                                               ; preds = %65
  %74 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1618
  store ptr %74, ptr %66, align 8, !dbg !1618, !tbaa !1351
  %75 = load i8, ptr %67, align 1, !dbg !1618, !tbaa !925
  %76 = zext i8 %75 to i32, !dbg !1618
  br label %77, !dbg !1618

77:                                               ; preds = %71, %73
  %78 = phi i32 [ %72, %71 ], [ %76, %73 ], !dbg !1618
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1524, metadata !DIExpression()), !dbg !1608
  %79 = tail call ptr @__errno_location() #41, !dbg !1619
  %80 = load i32, ptr %79, align 4, !dbg !1619, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1527, metadata !DIExpression()), !dbg !1608
  %81 = icmp ne i32 %78, -1, !dbg !1620
  %82 = icmp ne i64 %61, 0
  %83 = select i1 %81, i1 %82, i1 false, !dbg !1621
  br i1 %83, label %84, label %96, !dbg !1621

84:                                               ; preds = %77
  %85 = load ptr, ptr @stdout, align 8, !dbg !1622, !tbaa !846
  %86 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %61, ptr noundef %85), !dbg !1622
  %87 = icmp eq i64 %86, %61, !dbg !1623
  br i1 %87, label %96, label %88, !dbg !1624

88:                                               ; preds = %84
  %89 = load i32, ptr %79, align 4, !dbg !1625, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %89, metadata !1399, metadata !DIExpression()), !dbg !1627
  %90 = load ptr, ptr @stdout, align 8, !dbg !1628, !tbaa !846
  %91 = tail call i32 @fflush_unlocked(ptr noundef %90) #38, !dbg !1628
  %92 = load ptr, ptr @stdout, align 8, !dbg !1629, !tbaa !846
  %93 = tail call i32 @fpurge(ptr noundef %92) #38, !dbg !1630
  %94 = load ptr, ptr @stdout, align 8, !dbg !1631, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %94) #38, !dbg !1631
  %95 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1632
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %89, ptr noundef %95) #38, !dbg !1632
  unreachable, !dbg !1632

96:                                               ; preds = %84, %77
  %97 = phi i64 [ %61, %77 ], [ 0, %84 ], !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !1521, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1528, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1524, metadata !DIExpression()), !dbg !1608
  %98 = icmp eq i32 %78, -1, !dbg !1633
  br i1 %98, label %141, label %99, !dbg !1634

99:                                               ; preds = %96, %136
  %100 = phi i32 [ %137, %136 ], [ %78, %96 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1524, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1528, metadata !DIExpression()), !dbg !1608
  %101 = load i1, ptr @line_delim, align 1, !dbg !1635
  %102 = select i1 %101, i32 0, i32 10, !dbg !1635
  %103 = icmp eq i32 %100, %102, !dbg !1638
  br i1 %103, label %233, label %104, !dbg !1639

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %100, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1640
  call void @llvm.dbg.value(metadata i32 %100, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1642
  %105 = load ptr, ptr @stdout, align 8, !dbg !1644, !tbaa !846
  %106 = getelementptr inbounds %struct._IO_FILE, ptr %105, i64 0, i32 5, !dbg !1644
  %107 = load ptr, ptr %106, align 8, !dbg !1644, !tbaa !1431
  %108 = getelementptr inbounds %struct._IO_FILE, ptr %105, i64 0, i32 6, !dbg !1644
  %109 = load ptr, ptr %108, align 8, !dbg !1644, !tbaa !1432
  %110 = icmp ult ptr %107, %109, !dbg !1644
  br i1 %110, label %111, label %114, !dbg !1644, !prof !1354

111:                                              ; preds = %104
  %112 = trunc i32 %100 to i8, !dbg !1645
  call void @llvm.dbg.value(metadata i8 %112, metadata !1415, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %112, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1642
  %113 = getelementptr inbounds i8, ptr %107, i64 1, !dbg !1644
  store ptr %113, ptr %106, align 8, !dbg !1644, !tbaa !1431
  store i8 %112, ptr %107, align 1, !dbg !1644, !tbaa !925
  br label %126, !dbg !1646

114:                                              ; preds = %104
  %115 = and i32 %100, 255, !dbg !1647
  call void @llvm.dbg.value(metadata i32 %100, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1642
  %116 = tail call i32 @__overflow(ptr noundef nonnull %105, i32 noundef %115) #38, !dbg !1644
  %117 = icmp slt i32 %116, 0, !dbg !1648
  br i1 %117, label %118, label %126, !dbg !1646

118:                                              ; preds = %114
  %119 = load i32, ptr %79, align 4, !dbg !1649, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %119, metadata !1399, metadata !DIExpression()), !dbg !1651
  %120 = load ptr, ptr @stdout, align 8, !dbg !1652, !tbaa !846
  %121 = tail call i32 @fflush_unlocked(ptr noundef %120) #38, !dbg !1652
  %122 = load ptr, ptr @stdout, align 8, !dbg !1653, !tbaa !846
  %123 = tail call i32 @fpurge(ptr noundef %122) #38, !dbg !1654
  %124 = load ptr, ptr @stdout, align 8, !dbg !1655, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %124) #38, !dbg !1655
  %125 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1656
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %119, ptr noundef %125) #38, !dbg !1656
  unreachable, !dbg !1656

126:                                              ; preds = %111, %114
  call void @llvm.dbg.value(metadata ptr %63, metadata !1342, metadata !DIExpression()), !dbg !1657
  %127 = load ptr, ptr %66, align 8, !dbg !1659, !tbaa !1351
  %128 = load ptr, ptr %68, align 8, !dbg !1659, !tbaa !1353
  %129 = icmp ult ptr %127, %128, !dbg !1659
  br i1 %129, label %132, label %130, !dbg !1659, !prof !1354

130:                                              ; preds = %126
  %131 = tail call i32 @__uflow(ptr noundef nonnull %63) #38, !dbg !1659
  br label %136, !dbg !1659

132:                                              ; preds = %126
  %133 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !1659
  store ptr %133, ptr %66, align 8, !dbg !1659, !tbaa !1351
  %134 = load i8, ptr %127, align 1, !dbg !1659, !tbaa !925
  %135 = zext i8 %134 to i32, !dbg !1659
  br label %136, !dbg !1659

136:                                              ; preds = %130, %132
  %137 = phi i32 [ %131, %130 ], [ %135, %132 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !1524, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1528, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  %138 = icmp eq i32 %137, -1, !dbg !1633
  br i1 %138, label %139, label %99, !dbg !1634, !llvm.loop !1660

139:                                              ; preds = %136
  %140 = load i32, ptr %79, align 4, !dbg !1662, !tbaa !916
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1528, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1524, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !1521, metadata !DIExpression()), !dbg !1611
  br i1 %98, label %141, label %233, !dbg !1663

141:                                              ; preds = %96, %139
  %142 = phi i32 [ %140, %139 ], [ %80, %96 ]
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !1479, metadata !DIExpression()), !dbg !1664
  %143 = load i32, ptr %63, align 8, !dbg !1669, !tbaa !1486
  %144 = and i32 %143, 32, !dbg !1670
  %145 = icmp eq i32 %144, 0, !dbg !1670
  %146 = select i1 %145, i32 0, i32 %142, !dbg !1671
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !1527, metadata !DIExpression()), !dbg !1608
  %147 = load ptr, ptr @stdin, align 8, !dbg !1672, !tbaa !846
  %148 = icmp eq ptr %63, %147, !dbg !1674
  br i1 %148, label %149, label %150, !dbg !1675

149:                                              ; preds = %141
  tail call void @clearerr_unlocked(ptr noundef nonnull %63) #38, !dbg !1676
  br label %157, !dbg !1676

150:                                              ; preds = %141
  %151 = tail call i32 @rpl_fclose(ptr noundef nonnull %63) #38, !dbg !1677
  %152 = icmp ne i32 %151, -1, !dbg !1679
  %153 = icmp ne i32 %146, 0
  %154 = select i1 %152, i1 true, i1 %153, !dbg !1680
  br i1 %154, label %157, label %155, !dbg !1680

155:                                              ; preds = %150
  %156 = load i32, ptr %79, align 4, !dbg !1681, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !1527, metadata !DIExpression()), !dbg !1608
  br label %157, !dbg !1682

157:                                              ; preds = %150, %155, %149
  %158 = phi i32 [ %146, %149 ], [ %146, %150 ], [ %156, %155 ], !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %158, metadata !1527, metadata !DIExpression()), !dbg !1608
  %159 = icmp eq i32 %158, 0, !dbg !1683
  br i1 %159, label %164, label %160, !dbg !1685

160:                                              ; preds = %157
  %161 = getelementptr inbounds ptr, ptr %1, i64 %60, !dbg !1686
  %162 = load ptr, ptr %161, align 8, !dbg !1686, !tbaa !846
  %163 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %162) #38, !dbg !1686
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %158, ptr noundef nonnull @.str.63, ptr noundef %163) #38, !dbg !1686
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1511, metadata !DIExpression()), !dbg !1557
  br label %164, !dbg !1688

164:                                              ; preds = %160, %157
  %165 = phi i8 [ 0, %160 ], [ %55, %157 ], !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %165, metadata !1511, metadata !DIExpression()), !dbg !1557
  store ptr null, ptr %62, align 8, !dbg !1689, !tbaa !846
  %166 = add i64 %56, -1, !dbg !1690
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !1515, metadata !DIExpression()), !dbg !1557
  br label %167, !dbg !1691

167:                                              ; preds = %54, %164
  %168 = phi i64 [ %97, %164 ], [ %61, %54 ]
  %169 = phi i64 [ %166, %164 ], [ %56, %54 ], !dbg !1557
  %170 = phi i8 [ %165, %164 ], [ %55, %54 ], !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %170, metadata !1511, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !1515, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  %171 = add nuw i64 %60, 1, !dbg !1692
  %172 = icmp eq i64 %171, %0, !dbg !1693
  br i1 %172, label %173, label %215, !dbg !1694

173:                                              ; preds = %167
  %174 = and i8 %57, 1, !dbg !1695
  %175 = icmp eq i8 %174, 0, !dbg !1695
  br i1 %175, label %47, label %176, !dbg !1696

176:                                              ; preds = %173
  %177 = icmp eq i64 %168, 0, !dbg !1697
  br i1 %177, label %191, label %178, !dbg !1698

178:                                              ; preds = %176
  %179 = load ptr, ptr @stdout, align 8, !dbg !1699, !tbaa !846
  %180 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %168, ptr noundef %179), !dbg !1699
  %181 = icmp eq i64 %180, %168, !dbg !1700
  br i1 %181, label %191, label %182, !dbg !1701

182:                                              ; preds = %178
  %183 = tail call ptr @__errno_location() #41, !dbg !1702
  %184 = load i32, ptr %183, align 4, !dbg !1702, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %184, metadata !1399, metadata !DIExpression()), !dbg !1704
  %185 = load ptr, ptr @stdout, align 8, !dbg !1705, !tbaa !846
  %186 = tail call i32 @fflush_unlocked(ptr noundef %185) #38, !dbg !1705
  %187 = load ptr, ptr @stdout, align 8, !dbg !1706, !tbaa !846
  %188 = tail call i32 @fpurge(ptr noundef %187) #38, !dbg !1707
  %189 = load ptr, ptr @stdout, align 8, !dbg !1708, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %189) #38, !dbg !1708
  %190 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1709
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %184, ptr noundef %190) #38, !dbg !1709
  unreachable, !dbg !1709

191:                                              ; preds = %178, %176
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1611
  %192 = load i1, ptr @line_delim, align 1, !dbg !1710
  %193 = select i1 %192, i8 0, i8 10, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %193, metadata !1415, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %193, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1713
  %194 = load ptr, ptr @stdout, align 8, !dbg !1715, !tbaa !846
  %195 = getelementptr inbounds %struct._IO_FILE, ptr %194, i64 0, i32 5, !dbg !1715
  %196 = load ptr, ptr %195, align 8, !dbg !1715, !tbaa !1431
  %197 = getelementptr inbounds %struct._IO_FILE, ptr %194, i64 0, i32 6, !dbg !1715
  %198 = load ptr, ptr %197, align 8, !dbg !1715, !tbaa !1432
  %199 = icmp ult ptr %196, %198, !dbg !1715
  br i1 %199, label %200, label %202, !dbg !1715, !prof !1354

200:                                              ; preds = %191
  %201 = getelementptr inbounds i8, ptr %196, i64 1, !dbg !1715
  store ptr %201, ptr %195, align 8, !dbg !1715, !tbaa !1431
  store i8 %193, ptr %196, align 1, !dbg !1715, !tbaa !925
  br label %47, !dbg !1716

202:                                              ; preds = %191
  %203 = zext nneg i8 %193 to i32, !dbg !1717
  call void @llvm.dbg.value(metadata i8 %193, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1713
  %204 = tail call i32 @__overflow(ptr noundef nonnull %194, i32 noundef %203) #38, !dbg !1715
  %205 = icmp slt i32 %204, 0, !dbg !1718
  br i1 %205, label %206, label %47, !dbg !1716

206:                                              ; preds = %202
  %207 = tail call ptr @__errno_location() #41, !dbg !1719
  %208 = load i32, ptr %207, align 4, !dbg !1719, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %208, metadata !1399, metadata !DIExpression()), !dbg !1721
  %209 = load ptr, ptr @stdout, align 8, !dbg !1722, !tbaa !846
  %210 = tail call i32 @fflush_unlocked(ptr noundef %209) #38, !dbg !1722
  %211 = load ptr, ptr @stdout, align 8, !dbg !1723, !tbaa !846
  %212 = tail call i32 @fpurge(ptr noundef %211) #38, !dbg !1724
  %213 = load ptr, ptr @stdout, align 8, !dbg !1725, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %213) #38, !dbg !1725
  %214 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1726
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %208, ptr noundef %214) #38, !dbg !1726
  unreachable, !dbg !1726

215:                                              ; preds = %167
  %216 = load ptr, ptr @delim_lens, align 8, !dbg !1727, !tbaa !846
  %217 = getelementptr inbounds i64, ptr %216, i64 %58, !dbg !1727
  %218 = load i64, ptr %217, align 8, !dbg !1727, !tbaa !1143
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !1551, metadata !DIExpression()), !dbg !1728
  %219 = icmp eq i64 %218, 0, !dbg !1729
  br i1 %219, label %225, label %220, !dbg !1731

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, ptr %7, i64 %168, !dbg !1732
  %222 = load ptr, ptr @delims, align 8, !dbg !1734, !tbaa !846
  %223 = getelementptr inbounds i8, ptr %222, i64 %59, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %221, metadata !1736, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %223, metadata !1739, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %218, metadata !1740, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %221, ptr noundef nonnull align 1 %223, i64 noundef %218, i1 noundef false) #38, !dbg !1743
  %224 = add i64 %218, %168, !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1521, metadata !DIExpression()), !dbg !1611
  br label %225, !dbg !1745

225:                                              ; preds = %220, %215
  %226 = phi i64 [ %224, %220 ], [ %168, %215 ], !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !1521, metadata !DIExpression()), !dbg !1611
  %227 = add i64 %218, %59, !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !1520, metadata !DIExpression()), !dbg !1611
  %228 = add nsw i64 %58, 1, !dbg !1747
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1519, metadata !DIExpression()), !dbg !1611
  %229 = load i64, ptr @num_delims, align 8, !dbg !1749, !tbaa !1143
  %230 = icmp eq i64 %228, %229, !dbg !1750
  %231 = select i1 %230, i64 0, i64 %227, !dbg !1751
  %232 = select i1 %230, i64 0, i64 %228, !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %232, metadata !1519, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %231, metadata !1520, metadata !DIExpression()), !dbg !1611
  br label %321, !dbg !1752

233:                                              ; preds = %99, %139
  %234 = phi i32 [ -1, %139 ], [ %100, %99 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1517, metadata !DIExpression()), !dbg !1611
  %235 = add nuw i64 %60, 1, !dbg !1753
  %236 = icmp eq i64 %235, %0, !dbg !1754
  br i1 %236, label %295, label %237, !dbg !1755

237:                                              ; preds = %233
  %238 = load i1, ptr @line_delim, align 1, !dbg !1756
  %239 = select i1 %238, i32 0, i32 10, !dbg !1756
  %240 = icmp ne i32 %234, %239, !dbg !1759
  %241 = icmp ne i32 %234, -1
  %242 = and i1 %241, %240, !dbg !1760
  br i1 %242, label %243, label %264, !dbg !1760

243:                                              ; preds = %237
  call void @llvm.dbg.value(metadata i32 %234, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  call void @llvm.dbg.value(metadata i32 %234, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1763
  %244 = load ptr, ptr @stdout, align 8, !dbg !1765, !tbaa !846
  %245 = getelementptr inbounds %struct._IO_FILE, ptr %244, i64 0, i32 5, !dbg !1765
  %246 = load ptr, ptr %245, align 8, !dbg !1765, !tbaa !1431
  %247 = getelementptr inbounds %struct._IO_FILE, ptr %244, i64 0, i32 6, !dbg !1765
  %248 = load ptr, ptr %247, align 8, !dbg !1765, !tbaa !1432
  %249 = icmp ult ptr %246, %248, !dbg !1765
  br i1 %249, label %250, label %253, !dbg !1765, !prof !1354

250:                                              ; preds = %243
  %251 = trunc i32 %234 to i8, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %251, metadata !1415, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %251, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1763
  %252 = getelementptr inbounds i8, ptr %246, i64 1, !dbg !1765
  store ptr %252, ptr %245, align 8, !dbg !1765, !tbaa !1431
  store i8 %251, ptr %246, align 1, !dbg !1765, !tbaa !925
  br label %264, !dbg !1767

253:                                              ; preds = %243
  call void @llvm.dbg.value(metadata i32 %234, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1763
  %254 = tail call i32 @__overflow(ptr noundef nonnull %244, i32 noundef %234) #38, !dbg !1765
  %255 = icmp slt i32 %254, 0, !dbg !1768
  br i1 %255, label %256, label %264, !dbg !1767

256:                                              ; preds = %253
  %257 = load i32, ptr %79, align 4, !dbg !1769, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %257, metadata !1399, metadata !DIExpression()), !dbg !1771
  %258 = load ptr, ptr @stdout, align 8, !dbg !1772, !tbaa !846
  %259 = tail call i32 @fflush_unlocked(ptr noundef %258) #38, !dbg !1772
  %260 = load ptr, ptr @stdout, align 8, !dbg !1773, !tbaa !846
  %261 = tail call i32 @fpurge(ptr noundef %260) #38, !dbg !1774
  %262 = load ptr, ptr @stdout, align 8, !dbg !1775, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %262) #38, !dbg !1775
  %263 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1776
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %257, ptr noundef %263) #38, !dbg !1776
  unreachable, !dbg !1776

264:                                              ; preds = %253, %250, %237
  %265 = load ptr, ptr @delim_lens, align 8, !dbg !1777, !tbaa !846
  %266 = getelementptr inbounds i64, ptr %265, i64 %58, !dbg !1777
  %267 = load i64, ptr %266, align 8, !dbg !1777, !tbaa !1143
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %267, metadata !1380, metadata !DIExpression()), !dbg !1778
  %268 = icmp eq i64 %267, 0, !dbg !1780
  br i1 %268, label %287, label %269, !dbg !1781

269:                                              ; preds = %264
  %270 = load ptr, ptr @delims, align 8, !dbg !1782, !tbaa !846
  call void @llvm.dbg.value(metadata !DIArgList(ptr %270, i64 %59), metadata !1375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1778
  %271 = getelementptr inbounds i8, ptr %270, i64 %59, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %271, metadata !1375, metadata !DIExpression()), !dbg !1778
  %272 = load ptr, ptr @stdout, align 8, !dbg !1784, !tbaa !846
  %273 = tail call i64 @fwrite_unlocked(ptr noundef %271, i64 noundef 1, i64 noundef %267, ptr noundef %272), !dbg !1784
  %274 = icmp eq i64 %273, %267, !dbg !1785
  br i1 %274, label %275, label %279, !dbg !1786

275:                                              ; preds = %269
  %276 = load ptr, ptr @delim_lens, align 8, !dbg !1787, !tbaa !846
  %277 = getelementptr inbounds i64, ptr %276, i64 %58
  %278 = load i64, ptr %277, align 8, !dbg !1787, !tbaa !1143
  br label %287, !dbg !1786

279:                                              ; preds = %269
  %280 = load i32, ptr %79, align 4, !dbg !1788, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %280, metadata !1399, metadata !DIExpression()), !dbg !1790
  %281 = load ptr, ptr @stdout, align 8, !dbg !1791, !tbaa !846
  %282 = tail call i32 @fflush_unlocked(ptr noundef %281) #38, !dbg !1791
  %283 = load ptr, ptr @stdout, align 8, !dbg !1792, !tbaa !846
  %284 = tail call i32 @fpurge(ptr noundef %283) #38, !dbg !1793
  %285 = load ptr, ptr @stdout, align 8, !dbg !1794, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %285) #38, !dbg !1794
  %286 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1795
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %280, ptr noundef %286) #38, !dbg !1795
  unreachable, !dbg !1795

287:                                              ; preds = %275, %264
  %288 = phi i64 [ %278, %275 ], [ 0, %264 ], !dbg !1787
  %289 = add i64 %288, %59, !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1520, metadata !DIExpression()), !dbg !1611
  %290 = add nsw i64 %58, 1, !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1519, metadata !DIExpression()), !dbg !1611
  %291 = load i64, ptr @num_delims, align 8, !dbg !1799, !tbaa !1143
  %292 = icmp eq i64 %290, %291, !dbg !1800
  %293 = select i1 %292, i64 0, i64 %289, !dbg !1801
  %294 = select i1 %292, i64 0, i64 %290, !dbg !1801
  br label %321, !dbg !1801

295:                                              ; preds = %233
  %296 = icmp eq i32 %234, -1, !dbg !1802
  %297 = load i1, ptr @line_delim, align 1, !dbg !1803
  %298 = select i1 %297, i32 0, i32 10, !dbg !1803
  %299 = select i1 %296, i32 %298, i32 %234, !dbg !1803
  tail call void @llvm.dbg.value(metadata i32 %299, metadata !1553, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  call void @llvm.dbg.value(metadata i32 %299, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %299, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1807
  %300 = load ptr, ptr @stdout, align 8, !dbg !1809, !tbaa !846
  %301 = getelementptr inbounds %struct._IO_FILE, ptr %300, i64 0, i32 5, !dbg !1809
  %302 = load ptr, ptr %301, align 8, !dbg !1809, !tbaa !1431
  %303 = getelementptr inbounds %struct._IO_FILE, ptr %300, i64 0, i32 6, !dbg !1809
  %304 = load ptr, ptr %303, align 8, !dbg !1809, !tbaa !1432
  %305 = icmp ult ptr %302, %304, !dbg !1809
  br i1 %305, label %306, label %309, !dbg !1809, !prof !1354

306:                                              ; preds = %295
  %307 = trunc i32 %299 to i8, !dbg !1810
  tail call void @llvm.dbg.value(metadata i8 %307, metadata !1553, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 %307, metadata !1415, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %307, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1807
  %308 = getelementptr inbounds i8, ptr %302, i64 1, !dbg !1809
  store ptr %308, ptr %301, align 8, !dbg !1809, !tbaa !1431
  store i8 %307, ptr %302, align 1, !dbg !1809, !tbaa !925
  br label %321, !dbg !1811

309:                                              ; preds = %295
  %310 = and i32 %299, 255, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %299, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1807
  %311 = tail call i32 @__overflow(ptr noundef nonnull %300, i32 noundef %310) #38, !dbg !1809
  %312 = icmp slt i32 %311, 0, !dbg !1813
  br i1 %312, label %313, label %321, !dbg !1811

313:                                              ; preds = %309
  %314 = load i32, ptr %79, align 4, !dbg !1814, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %314, metadata !1399, metadata !DIExpression()), !dbg !1816
  %315 = load ptr, ptr @stdout, align 8, !dbg !1817, !tbaa !846
  %316 = tail call i32 @fflush_unlocked(ptr noundef %315) #38, !dbg !1817
  %317 = load ptr, ptr @stdout, align 8, !dbg !1818, !tbaa !846
  %318 = tail call i32 @fpurge(ptr noundef %317) #38, !dbg !1819
  %319 = load ptr, ptr @stdout, align 8, !dbg !1820, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %319) #38, !dbg !1820
  %320 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1821
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %314, ptr noundef %320) #38, !dbg !1821
  unreachable, !dbg !1821

321:                                              ; preds = %309, %306, %287, %225
  %322 = phi i64 [ %235, %309 ], [ %235, %306 ], [ %235, %287 ], [ %171, %225 ], !dbg !1822
  %323 = phi i64 [ %97, %309 ], [ %97, %306 ], [ %97, %287 ], [ %226, %225 ], !dbg !1608
  %324 = phi i64 [ %59, %309 ], [ %59, %306 ], [ %293, %287 ], [ %231, %225 ], !dbg !1611
  %325 = phi i64 [ %58, %309 ], [ %58, %306 ], [ %294, %287 ], [ %232, %225 ], !dbg !1611
  %326 = phi i8 [ 1, %309 ], [ 1, %306 ], [ 1, %287 ], [ %57, %225 ], !dbg !1611
  %327 = phi i64 [ %56, %309 ], [ %56, %306 ], [ %56, %287 ], [ %169, %225 ], !dbg !1557
  %328 = phi i8 [ %55, %309 ], [ %55, %306 ], [ %55, %287 ], [ %170, %225 ], !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %328, metadata !1511, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i64 %327, metadata !1515, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %326, metadata !1517, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !1519, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %324, metadata !1520, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1527, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1521, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1524, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1522, metadata !DIExpression()), !dbg !1612
  %329 = icmp ult i64 %322, %0, !dbg !1823
  %330 = icmp ne i64 %327, 0, !dbg !1824
  %331 = select i1 %329, i1 %330, i1 false, !dbg !1824
  br i1 %331, label %54, label %47, !dbg !1613, !llvm.loop !1825

332:                                              ; preds = %47
  %333 = and i8 %49, 1, !dbg !1827
  %334 = icmp ne i8 %333, 0, !dbg !1827
  br label %335, !dbg !1828

335:                                              ; preds = %2, %332
  %336 = phi i1 [ %334, %332 ], [ true, %2 ], !dbg !1607
  tail call void @free(ptr noundef nonnull %9) #38, !dbg !1828
  tail call void @free(ptr noundef nonnull %7) #38, !dbg !1829
  ret i1 %336, !dbg !1830
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1831 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1834 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1838 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1841 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1842 i32 @__uflow(ptr noundef) local_unnamed_addr #3

declare !dbg !1843 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1844 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1847 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1850 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1852, metadata !DIExpression()), !dbg !1853
  store ptr %0, ptr @file_name, align 8, !dbg !1854, !tbaa !846
  ret void, !dbg !1855
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1856 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1862, !tbaa !1863
  ret void, !dbg !1865
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1866 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1871, !tbaa !846
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1872
  %3 = icmp eq i32 %2, 0, !dbg !1873
  br i1 %3, label %22, label %4, !dbg !1874

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1875, !tbaa !1863, !range !1876, !noundef !883
  %6 = icmp eq i8 %5, 0, !dbg !1875
  br i1 %6, label %11, label %7, !dbg !1877

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1878
  %9 = load i32, ptr %8, align 4, !dbg !1878, !tbaa !916
  %10 = icmp eq i32 %9, 32, !dbg !1879
  br i1 %10, label %22, label %11, !dbg !1880

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #38, !dbg !1881
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1868, metadata !DIExpression()), !dbg !1882
  %13 = load ptr, ptr @file_name, align 8, !dbg !1883, !tbaa !846
  %14 = icmp eq ptr %13, null, !dbg !1883
  %15 = tail call ptr @__errno_location() #41, !dbg !1885
  %16 = load i32, ptr %15, align 4, !dbg !1885, !tbaa !916
  br i1 %14, label %19, label %17, !dbg !1886

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1887
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #38, !dbg !1887
  br label %20, !dbg !1887

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #38, !dbg !1888
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1889, !tbaa !916
  tail call void @_exit(i32 noundef %21) #40, !dbg !1890
  unreachable, !dbg !1890

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1891, !tbaa !846
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1893
  %25 = icmp eq i32 %24, 0, !dbg !1894
  br i1 %25, label %28, label %26, !dbg !1895

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1896, !tbaa !916
  tail call void @_exit(i32 noundef %27) #40, !dbg !1897
  unreachable, !dbg !1897

28:                                               ; preds = %22
  ret void, !dbg !1898
}

; Function Attrs: noreturn
declare !dbg !1899 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1901 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1905, metadata !DIExpression()), !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1906, metadata !DIExpression()), !dbg !1909
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1907, metadata !DIExpression()), !dbg !1909
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1908, metadata !DIExpression()), !dbg !1909
  tail call fastcc void @flush_stdout(), !dbg !1910
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1911, !tbaa !846
  %6 = icmp eq ptr %5, null, !dbg !1911
  br i1 %6, label %8, label %7, !dbg !1913

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1914
  br label %12, !dbg !1914

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1915, !tbaa !846
  %10 = tail call ptr @getprogname() #39, !dbg !1915
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %10) #38, !dbg !1915
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1917
  ret void, !dbg !1918
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1919 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 1, metadata !1923, metadata !DIExpression()), !dbg !1926
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1929
  %2 = icmp slt i32 %1, 0, !dbg !1930
  br i1 %2, label %6, label %3, !dbg !1931

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1932, !tbaa !846
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1932
  br label %6, !dbg !1932

6:                                                ; preds = %3, %0
  ret void, !dbg !1933
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1934 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1940
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1936, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1937, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1938, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1939, metadata !DIExpression()), !dbg !1941
  %6 = load ptr, ptr @stderr, align 8, !dbg !1942, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %6, metadata !1943, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata ptr %2, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata ptr %3, metadata !1984, metadata !DIExpression()), !dbg !1985
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1987
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1988, !tbaa !916
  %9 = add i32 %8, 1, !dbg !1988
  store i32 %9, ptr @error_message_count, align 4, !dbg !1988, !tbaa !916
  %10 = icmp eq i32 %1, 0, !dbg !1989
  br i1 %10, label %20, label %11, !dbg !1991

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1992, metadata !DIExpression(), metadata !1940, metadata ptr %5, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %1, metadata !1995, metadata !DIExpression()), !dbg !2000
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2002
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %12, metadata !1996, metadata !DIExpression()), !dbg !2000
  %13 = icmp eq ptr %12, null, !dbg !2004
  br i1 %13, label %14, label %16, !dbg !2006

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.34, ptr noundef nonnull @.str.5.35, i32 noundef 5) #38, !dbg !2007
  call void @llvm.dbg.value(metadata ptr %15, metadata !1996, metadata !DIExpression()), !dbg !2000
  br label %16, !dbg !2008

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2000
  call void @llvm.dbg.value(metadata ptr %17, metadata !1996, metadata !DIExpression()), !dbg !2000
  %18 = load ptr, ptr @stderr, align 8, !dbg !2009, !tbaa !846
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.36, ptr noundef %17) #38, !dbg !2009
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2010
  br label %20, !dbg !2011

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2012, !tbaa !846
  call void @llvm.dbg.value(metadata i32 10, metadata !2013, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata ptr %21, metadata !2018, metadata !DIExpression()), !dbg !2019
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2021
  %23 = load ptr, ptr %22, align 8, !dbg !2021, !tbaa !1431
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2021
  %25 = load ptr, ptr %24, align 8, !dbg !2021, !tbaa !1432
  %26 = icmp ult ptr %23, %25, !dbg !2021
  br i1 %26, label %29, label %27, !dbg !2021, !prof !1354

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !2021
  br label %31, !dbg !2021

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2021
  store ptr %30, ptr %22, align 8, !dbg !2021, !tbaa !1431
  store i8 10, ptr %23, align 1, !dbg !2021, !tbaa !925
  br label %31, !dbg !2021

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2022, !tbaa !846
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !2022
  %34 = icmp eq i32 %0, 0, !dbg !2023
  br i1 %34, label %36, label %35, !dbg !2025

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !2026
  unreachable, !dbg !2026

36:                                               ; preds = %31
  ret void, !dbg !2027
}

declare !dbg !2028 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2031 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2034 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2038 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2045, metadata !DIExpression(), metadata !2051, metadata ptr %4, metadata !DIExpression()), !dbg !2052
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2042, metadata !DIExpression()), !dbg !2052
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2043, metadata !DIExpression()), !dbg !2052
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2044, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !2053
  call void @llvm.va_start(ptr nonnull %4), !dbg !2054
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !2055
  call void @llvm.va_end(ptr nonnull %4), !dbg !2056
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !2057
  ret void, !dbg !2057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !452 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !463, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !464, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !465, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !466, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !467, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !468, metadata !DIExpression()), !dbg !2058
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2059, !tbaa !916
  %8 = icmp eq i32 %7, 0, !dbg !2059
  br i1 %8, label %23, label %9, !dbg !2061

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2062, !tbaa !916
  %11 = icmp eq i32 %10, %3, !dbg !2065
  br i1 %11, label %12, label %22, !dbg !2066

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2067, !tbaa !846
  %14 = icmp eq ptr %13, %2, !dbg !2068
  br i1 %14, label %36, label %15, !dbg !2069

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2070
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2071
  br i1 %18, label %19, label %22, !dbg !2071

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2072
  %21 = icmp eq i32 %20, 0, !dbg !2073
  br i1 %21, label %36, label %22, !dbg !2074

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2075, !tbaa !846
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2076, !tbaa !916
  br label %23, !dbg !2077

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2078
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2079, !tbaa !846
  %25 = icmp eq ptr %24, null, !dbg !2079
  br i1 %25, label %27, label %26, !dbg !2081

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !2082
  br label %31, !dbg !2082

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2083, !tbaa !846
  %29 = tail call ptr @getprogname() #39, !dbg !2083
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.39, ptr noundef %29) #38, !dbg !2083
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2085, !tbaa !846
  %33 = icmp eq ptr %2, null, !dbg !2085
  %34 = select i1 %33, ptr @.str.3.40, ptr @.str.2.41, !dbg !2085
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !2085
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2086
  br label %36, !dbg !2087

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2087
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2088 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2097, metadata !DIExpression(), metadata !2098, metadata ptr %6, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2093, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2094, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2095, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2096, metadata !DIExpression()), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !2100
  call void @llvm.va_start(ptr nonnull %6), !dbg !2101
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !2102
  call void @llvm.va_end(ptr nonnull %6), !dbg !2103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !2104
  ret void, !dbg !2104
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2105 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2111, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2112, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2113, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2114, metadata !DIExpression()), !dbg !2115
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2116
  ret void, !dbg !2117
}

; Function Attrs: nounwind
declare !dbg !2118 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2159, metadata !DIExpression()), !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2160, metadata !DIExpression()), !dbg !2161
  %3 = icmp eq ptr %0, null, !dbg !2162
  br i1 %3, label %7, label %4, !dbg !2164

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %5, metadata !2111, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 0, metadata !2112, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 0, metadata !2113, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %1, metadata !2114, metadata !DIExpression()), !dbg !2166
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2168
  br label %7, !dbg !2169

7:                                                ; preds = %4, %2
  ret void, !dbg !2170
}

; Function Attrs: nofree nounwind
declare !dbg !2171 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2212, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()), !dbg !2216
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2214, metadata !DIExpression()), !dbg !2216
  %3 = icmp slt i32 %2, 0, !dbg !2218
  br i1 %3, label %4, label %6, !dbg !2220

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2221
  br label %24, !dbg !2222

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2223
  %8 = icmp eq i32 %7, 0, !dbg !2223
  br i1 %8, label %13, label %9, !dbg !2225

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2226
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2227
  %12 = icmp eq i64 %11, -1, !dbg !2228
  br i1 %12, label %16, label %13, !dbg !2229

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2230
  %15 = icmp eq i32 %14, 0, !dbg !2230
  br i1 %15, label %16, label %18, !dbg !2231

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2215, metadata !DIExpression()), !dbg !2216
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2215, metadata !DIExpression()), !dbg !2216
  br label %24, !dbg !2233

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2234
  %20 = load i32, ptr %19, align 4, !dbg !2234, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2213, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2215, metadata !DIExpression()), !dbg !2216
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2215, metadata !DIExpression()), !dbg !2216
  %22 = icmp eq i32 %20, 0, !dbg !2235
  br i1 %22, label %24, label %23, !dbg !2233

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2237, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2215, metadata !DIExpression()), !dbg !2216
  br label %24, !dbg !2239

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2216
  ret i32 %25, !dbg !2240
}

; Function Attrs: nofree nounwind
declare !dbg !2241 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2242 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2244 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2247 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2285, metadata !DIExpression()), !dbg !2286
  %2 = icmp eq ptr %0, null, !dbg !2287
  br i1 %2, label %6, label %3, !dbg !2289

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2290
  %5 = icmp eq i32 %4, 0, !dbg !2290
  br i1 %5, label %6, label %8, !dbg !2291

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2292
  br label %16, !dbg !2293

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2294, metadata !DIExpression()), !dbg !2299
  %9 = load i32, ptr %0, align 8, !dbg !2301, !tbaa !1486
  %10 = and i32 %9, 256, !dbg !2303
  %11 = icmp eq i32 %10, 0, !dbg !2303
  br i1 %11, label %14, label %12, !dbg !2304

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2305
  br label %14, !dbg !2305

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2306
  br label %16, !dbg !2307

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2286
  ret i32 %17, !dbg !2308
}

; Function Attrs: nofree nounwind
declare !dbg !2309 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2310 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2348, metadata !DIExpression()), !dbg !2349
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2350
  ret i32 0, !dbg !2351
}

; Function Attrs: nounwind
declare !dbg !2352 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2393, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2394, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2395, metadata !DIExpression()), !dbg !2399
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2400
  %5 = load ptr, ptr %4, align 8, !dbg !2400, !tbaa !1353
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2401
  %7 = load ptr, ptr %6, align 8, !dbg !2401, !tbaa !1351
  %8 = icmp eq ptr %5, %7, !dbg !2402
  br i1 %8, label %9, label %27, !dbg !2403

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2404
  %11 = load ptr, ptr %10, align 8, !dbg !2404, !tbaa !1431
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2405
  %13 = load ptr, ptr %12, align 8, !dbg !2405, !tbaa !2406
  %14 = icmp eq ptr %11, %13, !dbg !2407
  br i1 %14, label %15, label %27, !dbg !2408

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2409
  %17 = load ptr, ptr %16, align 8, !dbg !2409, !tbaa !2410
  %18 = icmp eq ptr %17, null, !dbg !2411
  br i1 %18, label %19, label %27, !dbg !2412

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2413
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2396, metadata !DIExpression()), !dbg !2415
  %22 = icmp eq i64 %21, -1, !dbg !2416
  br i1 %22, label %29, label %23, !dbg !2418

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2419, !tbaa !1486
  %25 = and i32 %24, -17, !dbg !2419
  store i32 %25, ptr %0, align 8, !dbg !2419, !tbaa !1486
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2420
  store i64 %21, ptr %26, align 8, !dbg !2421, !tbaa !2422
  br label %29, !dbg !2423

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2424
  br label %29, !dbg !2425

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2399
  ret i32 %30, !dbg !2426
}

; Function Attrs: nofree nounwind
declare !dbg !2427 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2430 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2433, !tbaa !846
  ret ptr %1, !dbg !2434
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2435 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2437, metadata !DIExpression()), !dbg !2440
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2438, metadata !DIExpression()), !dbg !2440
  %3 = icmp eq ptr %2, null, !dbg !2442
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2442
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2442
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2439, metadata !DIExpression()), !dbg !2440
  %6 = ptrtoint ptr %5 to i64, !dbg !2443
  %7 = ptrtoint ptr %0 to i64, !dbg !2443
  %8 = sub i64 %6, %7, !dbg !2443
  %9 = icmp sgt i64 %8, 6, !dbg !2445
  br i1 %9, label %10, label %19, !dbg !2446

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %11, metadata !2448, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 7, metadata !2454, metadata !DIExpression()), !dbg !2455
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !2457
  %13 = icmp eq i32 %12, 0, !dbg !2458
  br i1 %13, label %14, label %19, !dbg !2459

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2437, metadata !DIExpression()), !dbg !2440
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #39, !dbg !2460
  %16 = icmp eq i32 %15, 0, !dbg !2463
  %17 = select i1 %16, i64 3, i64 0, !dbg !2464
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2464
  br label %19, !dbg !2464

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2440
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2439, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2437, metadata !DIExpression()), !dbg !2440
  store ptr %20, ptr @program_name, align 8, !dbg !2465, !tbaa !846
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2466, !tbaa !846
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2467, !tbaa !846
  ret void, !dbg !2468
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2469 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !505 {
  %3 = alloca i32, align 4, !DIAssignID !2470
  call void @llvm.dbg.assign(metadata i1 undef, metadata !515, metadata !DIExpression(), metadata !2470, metadata ptr %3, metadata !DIExpression()), !dbg !2471
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !520, metadata !DIExpression(), metadata !2472, metadata ptr %4, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !512, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !513, metadata !DIExpression()), !dbg !2471
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2473
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !514, metadata !DIExpression()), !dbg !2471
  %6 = icmp eq ptr %5, %0, !dbg !2474
  br i1 %6, label %7, label %14, !dbg !2476

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2477
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2478
  call void @llvm.dbg.value(metadata ptr %4, metadata !2479, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %4, metadata !2488, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 8, metadata !2494, metadata !DIExpression()), !dbg !2495
  store i64 0, ptr %4, align 8, !dbg !2497
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2498
  %9 = icmp eq i64 %8, 2, !dbg !2500
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2501
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2471
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2502
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2502
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2471
  ret ptr %15, !dbg !2502
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2503 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  %2 = tail call ptr @__errno_location() #41, !dbg !2512
  %3 = load i32, ptr %2, align 4, !dbg !2512, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2509, metadata !DIExpression()), !dbg !2511
  %4 = icmp eq ptr %0, null, !dbg !2513
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2513
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2514
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i32 %3, ptr %2, align 4, !dbg !2515, !tbaa !916
  ret ptr %6, !dbg !2516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2517 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2524
  %2 = icmp eq ptr %0, null, !dbg !2525
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2525
  %4 = load i32, ptr %3, align 8, !dbg !2526, !tbaa !2527
  ret i32 %4, !dbg !2529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2530 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2536
  %3 = icmp eq ptr %0, null, !dbg !2537
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2537
  store i32 %1, ptr %4, align 8, !dbg !2538, !tbaa !2527
  ret void, !dbg !2539
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2540 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2544, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2546, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !2552
  %4 = icmp eq ptr %0, null, !dbg !2553
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2553
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2554
  %7 = lshr i8 %1, 5, !dbg !2555
  %8 = zext nneg i8 %7 to i64, !dbg !2555
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2556
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2548, metadata !DIExpression()), !dbg !2552
  %10 = and i8 %1, 31, !dbg !2557
  %11 = zext nneg i8 %10 to i32, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2550, metadata !DIExpression()), !dbg !2552
  %12 = load i32, ptr %9, align 4, !dbg !2558, !tbaa !916
  %13 = lshr i32 %12, %11, !dbg !2559
  %14 = and i32 %13, 1, !dbg !2560
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2551, metadata !DIExpression()), !dbg !2552
  %15 = xor i32 %13, %2, !dbg !2561
  %16 = and i32 %15, 1, !dbg !2561
  %17 = shl nuw i32 %16, %11, !dbg !2562
  %18 = xor i32 %17, %12, !dbg !2563
  store i32 %18, ptr %9, align 4, !dbg !2563, !tbaa !916
  ret i32 %14, !dbg !2564
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2569, metadata !DIExpression()), !dbg !2572
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2570, metadata !DIExpression()), !dbg !2572
  %3 = icmp eq ptr %0, null, !dbg !2573
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2575
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2569, metadata !DIExpression()), !dbg !2572
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2576
  %6 = load i32, ptr %5, align 4, !dbg !2576, !tbaa !2577
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2571, metadata !DIExpression()), !dbg !2572
  store i32 %1, ptr %5, align 4, !dbg !2578, !tbaa !2577
  ret i32 %6, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2580 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2584, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2586, metadata !DIExpression()), !dbg !2587
  %4 = icmp eq ptr %0, null, !dbg !2588
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2590
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !2587
  store i32 10, ptr %5, align 8, !dbg !2591, !tbaa !2527
  %6 = icmp ne ptr %1, null, !dbg !2592
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2594
  br i1 %8, label %10, label %9, !dbg !2594

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2595
  unreachable, !dbg !2595

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2596
  store ptr %1, ptr %11, align 8, !dbg !2597, !tbaa !2598
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2599
  store ptr %2, ptr %12, align 8, !dbg !2600, !tbaa !2601
  ret void, !dbg !2602
}

; Function Attrs: noreturn nounwind
declare !dbg !2603 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2604 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2609, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2611, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2612, metadata !DIExpression()), !dbg !2616
  %6 = icmp eq ptr %4, null, !dbg !2617
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2613, metadata !DIExpression()), !dbg !2616
  %8 = tail call ptr @__errno_location() #41, !dbg !2618
  %9 = load i32, ptr %8, align 4, !dbg !2618, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2614, metadata !DIExpression()), !dbg !2616
  %10 = load i32, ptr %7, align 8, !dbg !2619, !tbaa !2527
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2620
  %12 = load i32, ptr %11, align 4, !dbg !2620, !tbaa !2577
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2621
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2622
  %15 = load ptr, ptr %14, align 8, !dbg !2622, !tbaa !2598
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2623
  %17 = load ptr, ptr %16, align 8, !dbg !2623, !tbaa !2601
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2624
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2615, metadata !DIExpression()), !dbg !2616
  store i32 %9, ptr %8, align 4, !dbg !2625, !tbaa !916
  ret i64 %18, !dbg !2626
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2627 {
  %10 = alloca i32, align 4, !DIAssignID !2695
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2696
  %12 = alloca i32, align 4, !DIAssignID !2697
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2698
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2673, metadata !DIExpression(), metadata !2699, metadata ptr %14, metadata !DIExpression()), !dbg !2700
  %15 = alloca i32, align 4, !DIAssignID !2701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2676, metadata !DIExpression(), metadata !2701, metadata ptr %15, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2633, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2635, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2636, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2637, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2638, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2639, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2640, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2641, metadata !DIExpression()), !dbg !2703
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2704
  %17 = icmp eq i64 %16, 1, !dbg !2705
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2645, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2646, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2703
  %18 = trunc i32 %5 to i8, !dbg !2706
  %19 = lshr i8 %18, 1, !dbg !2706
  %20 = and i8 %19, 1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2650, metadata !DIExpression()), !dbg !2703
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2707

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2708
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2709
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2710
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2711
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2703
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2712
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2713
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2650, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2647, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2646, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2645, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2636, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2641, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2640, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2637, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.label(metadata !2651), !dbg !2714
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2703
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
  ], !dbg !2715

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2637, metadata !DIExpression()), !dbg !2703
  br label %114, !dbg !2716

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2637, metadata !DIExpression()), !dbg !2703
  %43 = and i8 %37, 1, !dbg !2717
  %44 = icmp eq i8 %43, 0, !dbg !2717
  br i1 %44, label %45, label %114, !dbg !2716

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2719
  br i1 %46, label %114, label %47, !dbg !2722

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2719, !tbaa !925
  br label %114, !dbg !2719

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !609, metadata !DIExpression(), metadata !2697, metadata ptr %12, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !2698, metadata ptr %13, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !606, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 %29, metadata !607, metadata !DIExpression()), !dbg !2723
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #38, !dbg !2727
  call void @llvm.dbg.value(metadata ptr %49, metadata !608, metadata !DIExpression()), !dbg !2723
  %50 = icmp eq ptr %49, @.str.11.80, !dbg !2728
  br i1 %50, label %51, label %60, !dbg !2730

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2731
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2732
  call void @llvm.dbg.value(metadata ptr %13, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %13, metadata !2741, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 8, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 0, ptr %13, align 8, !dbg !2748
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2749
  %53 = icmp eq i64 %52, 3, !dbg !2751
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2752
  %57 = icmp eq i32 %29, 9, !dbg !2752
  %58 = select i1 %57, ptr @.str.10.82, ptr @.str.12.83, !dbg !2752
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2753
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2753
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2723
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2640, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !609, metadata !DIExpression(), metadata !2695, metadata ptr %10, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !2696, metadata ptr %11, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !606, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %29, metadata !607, metadata !DIExpression()), !dbg !2754
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #38, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %62, metadata !608, metadata !DIExpression()), !dbg !2754
  %63 = icmp eq ptr %62, @.str.12.83, !dbg !2757
  br i1 %63, label %64, label %73, !dbg !2758

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2759
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2760
  call void @llvm.dbg.value(metadata ptr %11, metadata !2733, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %11, metadata !2741, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 8, metadata !2745, metadata !DIExpression()), !dbg !2763
  store i64 0, ptr %11, align 8, !dbg !2765
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2766
  %66 = icmp eq i64 %65, 3, !dbg !2767
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2768
  %70 = icmp eq i32 %29, 9, !dbg !2768
  %71 = select i1 %70, ptr @.str.10.82, ptr @.str.12.83, !dbg !2768
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2768
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2769
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2769
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2641, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2640, metadata !DIExpression()), !dbg !2703
  %76 = and i8 %37, 1, !dbg !2770
  %77 = icmp eq i8 %76, 0, !dbg !2770
  br i1 %77, label %78, label %93, !dbg !2771

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2653, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2703
  %79 = load i8, ptr %74, align 1, !dbg !2773, !tbaa !925
  %80 = icmp eq i8 %79, 0, !dbg !2775
  br i1 %80, label %93, label %81, !dbg !2775

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2653, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2643, metadata !DIExpression()), !dbg !2703
  %85 = icmp ult i64 %84, %40, !dbg !2776
  br i1 %85, label %86, label %88, !dbg !2779

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2776
  store i8 %82, ptr %87, align 1, !dbg !2776, !tbaa !925
  br label %88, !dbg !2776

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2643, metadata !DIExpression()), !dbg !2703
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2653, metadata !DIExpression()), !dbg !2772
  %91 = load i8, ptr %90, align 1, !dbg !2773, !tbaa !925
  %92 = icmp eq i8 %91, 0, !dbg !2775
  br i1 %92, label %93, label %81, !dbg !2775, !llvm.loop !2781

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2645, metadata !DIExpression()), !dbg !2703
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2646, metadata !DIExpression()), !dbg !2703
  br label %114, !dbg !2785

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2703
  br label %98, !dbg !2786

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2647, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2648, metadata !DIExpression()), !dbg !2703
  br label %98, !dbg !2787

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2711
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2647, metadata !DIExpression()), !dbg !2703
  %101 = and i8 %100, 1, !dbg !2788
  %102 = icmp eq i8 %101, 0, !dbg !2788
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2790
  br label %104, !dbg !2790

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2703
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2706
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2647, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2637, metadata !DIExpression()), !dbg !2703
  %107 = and i8 %106, 1, !dbg !2791
  %108 = icmp eq i8 %107, 0, !dbg !2791
  br i1 %108, label %109, label %114, !dbg !2793

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2794
  br i1 %110, label %114, label %111, !dbg !2797

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2794, !tbaa !925
  br label %114, !dbg !2794

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2648, metadata !DIExpression()), !dbg !2703
  br label %114, !dbg !2798

113:                                              ; preds = %28
  call void @abort() #40, !dbg !2799
  unreachable, !dbg !2799

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2783
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.82, %45 ], [ @.str.10.82, %47 ], [ @.str.10.82, %42 ], [ %34, %28 ], [ @.str.12.83, %109 ], [ @.str.12.83, %111 ], [ @.str.12.83, %104 ], [ @.str.10.82, %41 ], !dbg !2703
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2703
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2703
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2648, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2647, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2646, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2645, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2641, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2640, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2637, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2800
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
  br label %138, !dbg !2801

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2783
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2708
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2712
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2713
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2802
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2803
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2650, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2636, metadata !DIExpression()), !dbg !2703
  %147 = icmp eq i64 %139, -1, !dbg !2804
  br i1 %147, label %148, label %152, !dbg !2805

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2806
  %150 = load i8, ptr %149, align 1, !dbg !2806, !tbaa !925
  %151 = icmp eq i8 %150, 0, !dbg !2807
  br i1 %151, label %612, label %154, !dbg !2808

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2809
  br i1 %153, label %612, label %154, !dbg !2808

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2810
  br i1 %128, label %155, label %170, !dbg !2811

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2813
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2814
  br i1 %157, label %158, label %160, !dbg !2814

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2636, metadata !DIExpression()), !dbg !2703
  br label %160, !dbg !2816

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2636, metadata !DIExpression()), !dbg !2703
  %162 = icmp ugt i64 %156, %161, !dbg !2817
  br i1 %162, label %170, label %163, !dbg !2818

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2819
  call void @llvm.dbg.value(metadata ptr %164, metadata !2820, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %119, metadata !2823, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %120, metadata !2824, metadata !DIExpression()), !dbg !2825
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2827
  %166 = icmp ne i32 %165, 0, !dbg !2828
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2829
  %168 = xor i1 %166, true, !dbg !2829
  %169 = zext i1 %168 to i8, !dbg !2829
  br i1 %167, label %170, label %666, !dbg !2829

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2810
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2636, metadata !DIExpression()), !dbg !2703
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2830
  %175 = load i8, ptr %174, align 1, !dbg !2830, !tbaa !925
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2665, metadata !DIExpression()), !dbg !2810
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
  ], !dbg !2831

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2832

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2833

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2663, metadata !DIExpression()), !dbg !2810
  %179 = and i8 %144, 1, !dbg !2837
  %180 = icmp eq i8 %179, 0, !dbg !2837
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2837
  br i1 %181, label %182, label %198, !dbg !2837

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2839
  br i1 %183, label %184, label %186, !dbg !2843

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2839
  store i8 39, ptr %185, align 1, !dbg !2839, !tbaa !925
  br label %186, !dbg !2839

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2643, metadata !DIExpression()), !dbg !2703
  %188 = icmp ult i64 %187, %146, !dbg !2844
  br i1 %188, label %189, label %191, !dbg !2847

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2844
  store i8 36, ptr %190, align 1, !dbg !2844, !tbaa !925
  br label %191, !dbg !2844

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2847
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2643, metadata !DIExpression()), !dbg !2703
  %193 = icmp ult i64 %192, %146, !dbg !2848
  br i1 %193, label %194, label %196, !dbg !2851

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2848
  store i8 39, ptr %195, align 1, !dbg !2848, !tbaa !925
  br label %196, !dbg !2848

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2652, metadata !DIExpression()), !dbg !2703
  br label %198, !dbg !2852

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2703
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2643, metadata !DIExpression()), !dbg !2703
  %201 = icmp ult i64 %199, %146, !dbg !2853
  br i1 %201, label %202, label %204, !dbg !2856

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2853
  store i8 92, ptr %203, align 1, !dbg !2853, !tbaa !925
  br label %204, !dbg !2853

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2643, metadata !DIExpression()), !dbg !2703
  br i1 %125, label %206, label %476, !dbg !2857

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2859
  %208 = icmp ult i64 %207, %171, !dbg !2860
  br i1 %208, label %209, label %465, !dbg !2861

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2862
  %211 = load i8, ptr %210, align 1, !dbg !2862, !tbaa !925
  %212 = add i8 %211, -48, !dbg !2863
  %213 = icmp ult i8 %212, 10, !dbg !2863
  br i1 %213, label %214, label %465, !dbg !2863

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2864
  br i1 %215, label %216, label %218, !dbg !2868

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2864
  store i8 48, ptr %217, align 1, !dbg !2864, !tbaa !925
  br label %218, !dbg !2864

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2643, metadata !DIExpression()), !dbg !2703
  %220 = icmp ult i64 %219, %146, !dbg !2869
  br i1 %220, label %221, label %223, !dbg !2872

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2869
  store i8 48, ptr %222, align 1, !dbg !2869, !tbaa !925
  br label %223, !dbg !2869

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2643, metadata !DIExpression()), !dbg !2703
  br label %465, !dbg !2873

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2874

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2875

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2876

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2878

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2880
  %231 = icmp ult i64 %230, %171, !dbg !2881
  br i1 %231, label %232, label %465, !dbg !2882

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2883
  %234 = load i8, ptr %233, align 1, !dbg !2883, !tbaa !925
  %235 = icmp eq i8 %234, 63, !dbg !2884
  br i1 %235, label %236, label %465, !dbg !2885

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2886
  %238 = load i8, ptr %237, align 1, !dbg !2886, !tbaa !925
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
  ], !dbg !2887

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2888

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2658, metadata !DIExpression()), !dbg !2800
  %241 = icmp ult i64 %140, %146, !dbg !2890
  br i1 %241, label %242, label %244, !dbg !2893

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2890
  store i8 63, ptr %243, align 1, !dbg !2890, !tbaa !925
  br label %244, !dbg !2890

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2643, metadata !DIExpression()), !dbg !2703
  %246 = icmp ult i64 %245, %146, !dbg !2894
  br i1 %246, label %247, label %249, !dbg !2897

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2894
  store i8 34, ptr %248, align 1, !dbg !2894, !tbaa !925
  br label %249, !dbg !2894

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2643, metadata !DIExpression()), !dbg !2703
  %251 = icmp ult i64 %250, %146, !dbg !2898
  br i1 %251, label %252, label %254, !dbg !2901

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2898
  store i8 34, ptr %253, align 1, !dbg !2898, !tbaa !925
  br label %254, !dbg !2898

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2643, metadata !DIExpression()), !dbg !2703
  %256 = icmp ult i64 %255, %146, !dbg !2902
  br i1 %256, label %257, label %259, !dbg !2905

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2902
  store i8 63, ptr %258, align 1, !dbg !2902, !tbaa !925
  br label %259, !dbg !2902

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2643, metadata !DIExpression()), !dbg !2703
  br label %465, !dbg !2906

261:                                              ; preds = %170
  br label %272, !dbg !2907

262:                                              ; preds = %170
  br label %272, !dbg !2908

263:                                              ; preds = %170
  br label %270, !dbg !2909

264:                                              ; preds = %170
  br label %270, !dbg !2910

265:                                              ; preds = %170
  br label %272, !dbg !2911

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2912

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2913

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2916

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2918

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2919
  call void @llvm.dbg.label(metadata !2666), !dbg !2920
  br i1 %133, label %272, label %655, !dbg !2921

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2919
  call void @llvm.dbg.label(metadata !2669), !dbg !2923
  br i1 %124, label %520, label %476, !dbg !2924

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2925

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2926, !tbaa !925
  %277 = icmp eq i8 %276, 0, !dbg !2928
  br i1 %277, label %278, label %465, !dbg !2929

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2930
  br i1 %279, label %280, label %465, !dbg !2932

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2664, metadata !DIExpression()), !dbg !2810
  br label %281, !dbg !2933

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2664, metadata !DIExpression()), !dbg !2810
  br i1 %133, label %465, label %655, !dbg !2934

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2664, metadata !DIExpression()), !dbg !2810
  br i1 %132, label %284, label %465, !dbg !2936

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2937

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2940
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2942
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2942
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2644, metadata !DIExpression()), !dbg !2703
  %291 = icmp ult i64 %140, %290, !dbg !2943
  br i1 %291, label %292, label %294, !dbg !2946

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2943
  store i8 39, ptr %293, align 1, !dbg !2943, !tbaa !925
  br label %294, !dbg !2943

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2643, metadata !DIExpression()), !dbg !2703
  %296 = icmp ult i64 %295, %290, !dbg !2947
  br i1 %296, label %297, label %299, !dbg !2950

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2947
  store i8 92, ptr %298, align 1, !dbg !2947, !tbaa !925
  br label %299, !dbg !2947

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2643, metadata !DIExpression()), !dbg !2703
  %301 = icmp ult i64 %300, %290, !dbg !2951
  br i1 %301, label %302, label %304, !dbg !2954

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2951
  store i8 39, ptr %303, align 1, !dbg !2951, !tbaa !925
  br label %304, !dbg !2951

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2703
  br label %465, !dbg !2955

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2956

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2670, metadata !DIExpression()), !dbg !2957
  %308 = tail call ptr @__ctype_b_loc() #41, !dbg !2958
  %309 = load ptr, ptr %308, align 8, !dbg !2958, !tbaa !846
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2958
  %312 = load i16, ptr %311, align 2, !dbg !2958, !tbaa !957
  %313 = and i16 %312, 16384, !dbg !2960
  %314 = icmp ne i16 %313, 0, !dbg !2960
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2672, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2957
  br label %355, !dbg !2961

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %14, metadata !2733, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata ptr %14, metadata !2741, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 8, metadata !2745, metadata !DIExpression()), !dbg !2965
  store i64 0, ptr %14, align 8, !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2670, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2672, metadata !DIExpression()), !dbg !2957
  %316 = icmp eq i64 %171, -1, !dbg !2968
  br i1 %316, label %317, label %319, !dbg !2970

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2636, metadata !DIExpression()), !dbg !2703
  br label %319, !dbg !2972

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2636, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2973
  %321 = sub i64 %320, %145, !dbg !2974
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2680, metadata !DIExpression()), !dbg !2702
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2976

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2670, metadata !DIExpression()), !dbg !2957
  %324 = icmp ult i64 %145, %320, !dbg !2977
  br i1 %324, label %326, label %351, !dbg !2979

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2672, metadata !DIExpression()), !dbg !2957
  br label %351, !dbg !2980

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2670, metadata !DIExpression()), !dbg !2957
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2982
  %330 = load i8, ptr %329, align 1, !dbg !2982, !tbaa !925
  %331 = icmp eq i8 %330, 0, !dbg !2979
  br i1 %331, label %351, label %332, !dbg !2983

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2670, metadata !DIExpression()), !dbg !2957
  %334 = add i64 %333, %145, !dbg !2985
  %335 = icmp eq i64 %333, %321, !dbg !2977
  br i1 %335, label %351, label %326, !dbg !2979, !llvm.loop !2986

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2681, metadata !DIExpression()), !dbg !2987
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2988
  %339 = and i1 %338, %132, !dbg !2988
  br i1 %339, label %340, label %347, !dbg !2988

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2681, metadata !DIExpression()), !dbg !2987
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2989
  %343 = load i8, ptr %342, align 1, !dbg !2989, !tbaa !925
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2991

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2681, metadata !DIExpression()), !dbg !2987
  %346 = icmp eq i64 %345, %322, !dbg !2993
  br i1 %346, label %347, label %340, !dbg !2994, !llvm.loop !2995

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2997, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %348, metadata !2999, metadata !DIExpression()), !dbg !3007
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !3009
  %350 = icmp ne i32 %349, 0, !dbg !3010
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2670, metadata !DIExpression()), !dbg !2957
  br label %351, !dbg !3011

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2670, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3012
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3013
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2670, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3012
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3013
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2810
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3014
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3014
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2670, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2636, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2664, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2810
  %359 = icmp ult i64 %357, 2, !dbg !3015
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3016
  br i1 %361, label %461, label %362, !dbg !3016

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2689, metadata !DIExpression()), !dbg !3018
  br label %364, !dbg !3019

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2703
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2802
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2800
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2810
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3020
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2643, metadata !DIExpression()), !dbg !2703
  br i1 %360, label %417, label %371, !dbg !3021

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3026

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2663, metadata !DIExpression()), !dbg !2810
  %373 = and i8 %366, 1, !dbg !3029
  %374 = icmp eq i8 %373, 0, !dbg !3029
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3029
  br i1 %375, label %376, label %392, !dbg !3029

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3031
  br i1 %377, label %378, label %380, !dbg !3035

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3031
  store i8 39, ptr %379, align 1, !dbg !3031, !tbaa !925
  br label %380, !dbg !3031

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2643, metadata !DIExpression()), !dbg !2703
  %382 = icmp ult i64 %381, %146, !dbg !3036
  br i1 %382, label %383, label %385, !dbg !3039

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3036
  store i8 36, ptr %384, align 1, !dbg !3036, !tbaa !925
  br label %385, !dbg !3036

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2643, metadata !DIExpression()), !dbg !2703
  %387 = icmp ult i64 %386, %146, !dbg !3040
  br i1 %387, label %388, label %390, !dbg !3043

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3040
  store i8 39, ptr %389, align 1, !dbg !3040, !tbaa !925
  br label %390, !dbg !3040

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2652, metadata !DIExpression()), !dbg !2703
  br label %392, !dbg !3044

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2703
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2643, metadata !DIExpression()), !dbg !2703
  %395 = icmp ult i64 %393, %146, !dbg !3045
  br i1 %395, label %396, label %398, !dbg !3048

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3045
  store i8 92, ptr %397, align 1, !dbg !3045, !tbaa !925
  br label %398, !dbg !3045

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2643, metadata !DIExpression()), !dbg !2703
  %400 = icmp ult i64 %399, %146, !dbg !3049
  br i1 %400, label %401, label %405, !dbg !3052

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3049
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3049
  store i8 %403, ptr %404, align 1, !dbg !3049, !tbaa !925
  br label %405, !dbg !3049

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2643, metadata !DIExpression()), !dbg !2703
  %407 = icmp ult i64 %406, %146, !dbg !3053
  br i1 %407, label %408, label %413, !dbg !3056

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3053
  %411 = or disjoint i8 %410, 48, !dbg !3053
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3053
  store i8 %411, ptr %412, align 1, !dbg !3053, !tbaa !925
  br label %413, !dbg !3053

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2643, metadata !DIExpression()), !dbg !2703
  %415 = and i8 %370, 7, !dbg !3057
  %416 = or disjoint i8 %415, 48, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2665, metadata !DIExpression()), !dbg !2810
  br label %426, !dbg !3059

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3060
  %419 = icmp eq i8 %418, 0, !dbg !3060
  br i1 %419, label %426, label %420, !dbg !3062

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3063
  br i1 %421, label %422, label %424, !dbg !3067

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3063
  store i8 92, ptr %423, align 1, !dbg !3063, !tbaa !925
  br label %424, !dbg !3063

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2810
  br label %426, !dbg !3068

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2703
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2802
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2810
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2810
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2643, metadata !DIExpression()), !dbg !2703
  %432 = add i64 %367, 1, !dbg !3069
  %433 = icmp ugt i64 %363, %432, !dbg !3071
  br i1 %433, label %434, label %463, !dbg !3072

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3073
  %436 = icmp ne i8 %435, 0, !dbg !3073
  %437 = and i8 %430, 1, !dbg !3073
  %438 = icmp eq i8 %437, 0, !dbg !3073
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3073
  br i1 %439, label %440, label %451, !dbg !3073

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3076
  br i1 %441, label %442, label %444, !dbg !3080

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3076
  store i8 39, ptr %443, align 1, !dbg !3076, !tbaa !925
  br label %444, !dbg !3076

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2643, metadata !DIExpression()), !dbg !2703
  %446 = icmp ult i64 %445, %146, !dbg !3081
  br i1 %446, label %447, label %449, !dbg !3084

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3081
  store i8 39, ptr %448, align 1, !dbg !3081, !tbaa !925
  br label %449, !dbg !3081

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2703
  br label %451, !dbg !3085

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3086
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2643, metadata !DIExpression()), !dbg !2703
  %454 = icmp ult i64 %452, %146, !dbg !3087
  br i1 %454, label %455, label %457, !dbg !3090

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3087
  store i8 %431, ptr %456, align 1, !dbg !3087, !tbaa !925
  br label %457, !dbg !3087

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2658, metadata !DIExpression()), !dbg !2800
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3091
  %460 = load i8, ptr %459, align 1, !dbg !3091, !tbaa !925
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2665, metadata !DIExpression()), !dbg !2810
  br label %364, !dbg !3092, !llvm.loop !3093

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2664, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2636, metadata !DIExpression()), !dbg !2703
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2664, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2636, metadata !DIExpression()), !dbg !2703
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3096
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2703
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2708
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2703
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2703
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2800
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2810
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2810
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2810
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2664, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2660, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2636, metadata !DIExpression()), !dbg !2703
  br i1 %126, label %487, label %476, !dbg !3097

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
  br i1 %137, label %488, label %509, !dbg !3099

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3100

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
  %499 = lshr i8 %490, 5, !dbg !3101
  %500 = zext nneg i8 %499 to i64, !dbg !3101
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3102
  %502 = load i32, ptr %501, align 4, !dbg !3102, !tbaa !916
  %503 = and i8 %490, 31, !dbg !3103
  %504 = zext nneg i8 %503 to i32, !dbg !3103
  %505 = shl nuw i32 1, %504, !dbg !3104
  %506 = and i32 %502, %505, !dbg !3104
  %507 = icmp eq i32 %506, 0, !dbg !3104
  %508 = and i1 %172, %507, !dbg !3105
  br i1 %508, label %558, label %520, !dbg !3105

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
  br i1 %172, label %558, label %520, !dbg !3106

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3096
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2703
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2708
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2712
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2802
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3107
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2810
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2810
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2664, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2636, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.label(metadata !2692), !dbg !3108
  br i1 %131, label %530, label %659, !dbg !3109

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2663, metadata !DIExpression()), !dbg !2810
  %531 = and i8 %525, 1, !dbg !3111
  %532 = icmp eq i8 %531, 0, !dbg !3111
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3111
  br i1 %533, label %534, label %550, !dbg !3111

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3113
  br i1 %535, label %536, label %538, !dbg !3117

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3113
  store i8 39, ptr %537, align 1, !dbg !3113, !tbaa !925
  br label %538, !dbg !3113

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2643, metadata !DIExpression()), !dbg !2703
  %540 = icmp ult i64 %539, %529, !dbg !3118
  br i1 %540, label %541, label %543, !dbg !3121

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3118
  store i8 36, ptr %542, align 1, !dbg !3118, !tbaa !925
  br label %543, !dbg !3118

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2643, metadata !DIExpression()), !dbg !2703
  %545 = icmp ult i64 %544, %529, !dbg !3122
  br i1 %545, label %546, label %548, !dbg !3125

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3122
  store i8 39, ptr %547, align 1, !dbg !3122, !tbaa !925
  br label %548, !dbg !3122

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2652, metadata !DIExpression()), !dbg !2703
  br label %550, !dbg !3126

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2810
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2643, metadata !DIExpression()), !dbg !2703
  %553 = icmp ult i64 %551, %529, !dbg !3127
  br i1 %553, label %554, label %556, !dbg !3130

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3127
  store i8 92, ptr %555, align 1, !dbg !3127, !tbaa !925
  br label %556, !dbg !3127

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2664, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2636, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.label(metadata !2693), !dbg !3131
  br label %585, !dbg !3132

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3096
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2703
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2708
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2712
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2802
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3107
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2810
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2810
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3135
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2665, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2664, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2663, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2636, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.label(metadata !2693), !dbg !3131
  %569 = and i8 %563, 1, !dbg !3132
  %570 = icmp ne i8 %569, 0, !dbg !3132
  %571 = and i8 %565, 1, !dbg !3132
  %572 = icmp eq i8 %571, 0, !dbg !3132
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3132
  br i1 %573, label %574, label %585, !dbg !3132

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3136
  br i1 %575, label %576, label %578, !dbg !3140

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3136
  store i8 39, ptr %577, align 1, !dbg !3136, !tbaa !925
  br label %578, !dbg !3136

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2643, metadata !DIExpression()), !dbg !2703
  %580 = icmp ult i64 %579, %568, !dbg !3141
  br i1 %580, label %581, label %583, !dbg !3144

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3141
  store i8 39, ptr %582, align 1, !dbg !3141, !tbaa !925
  br label %583, !dbg !3141

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2703
  br label %585, !dbg !3145

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2810
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2643, metadata !DIExpression()), !dbg !2703
  %595 = icmp ult i64 %593, %586, !dbg !3146
  br i1 %595, label %596, label %598, !dbg !3149

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3146
  store i8 %587, ptr %597, align 1, !dbg !3146, !tbaa !925
  br label %598, !dbg !3146

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2643, metadata !DIExpression()), !dbg !2703
  %600 = icmp eq i8 %588, 0, !dbg !3150
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2650, metadata !DIExpression()), !dbg !2703
  br label %602, !dbg !3153

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3096
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2703
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2708
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2712
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2713
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2802
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3107
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2658, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2652, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2650, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2636, metadata !DIExpression()), !dbg !2703
  %611 = add i64 %609, 1, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2658, metadata !DIExpression()), !dbg !2800
  br label %138, !dbg !3155, !llvm.loop !3156

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2634, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2650, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2649, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2644, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2643, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2636, metadata !DIExpression()), !dbg !2703
  %613 = icmp eq i64 %140, 0, !dbg !3158
  %614 = and i1 %132, %613, !dbg !3160
  %615 = xor i1 %614, true, !dbg !3160
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3160
  br i1 %616, label %617, label %655, !dbg !3160

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3161
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3161
  br i1 %621, label %622, label %631, !dbg !3161

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3163
  %624 = icmp eq i8 %623, 0, !dbg !3163
  br i1 %624, label %627, label %625, !dbg !3166

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3167
  br label %672, !dbg !3168

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3169
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3171
  br i1 %630, label %28, label %631, !dbg !3171

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3172
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3174
  br i1 %634, label %635, label %650, !dbg !3174

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2645, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2643, metadata !DIExpression()), !dbg !2703
  %636 = load i8, ptr %119, align 1, !dbg !3175, !tbaa !925
  %637 = icmp eq i8 %636, 0, !dbg !3178
  br i1 %637, label %650, label %638, !dbg !3178

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2645, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2643, metadata !DIExpression()), !dbg !2703
  %642 = icmp ult i64 %641, %146, !dbg !3179
  br i1 %642, label %643, label %645, !dbg !3182

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3179
  store i8 %639, ptr %644, align 1, !dbg !3179, !tbaa !925
  br label %645, !dbg !3179

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2643, metadata !DIExpression()), !dbg !2703
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3183
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2645, metadata !DIExpression()), !dbg !2703
  %648 = load i8, ptr %647, align 1, !dbg !3175, !tbaa !925
  %649 = icmp eq i8 %648, 0, !dbg !3178
  br i1 %649, label %650, label %638, !dbg !3178, !llvm.loop !3184

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2643, metadata !DIExpression()), !dbg !2703
  %652 = icmp ult i64 %651, %146, !dbg !3186
  br i1 %652, label %653, label %672, !dbg !3188

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3189
  store i8 0, ptr %654, align 1, !dbg !3190, !tbaa !925
  br label %672, !dbg !3189

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2694), !dbg !3191
  %657 = icmp eq i8 %123, 0, !dbg !3192
  %658 = select i1 %657, i32 2, i32 4, !dbg !3192
  br label %666, !dbg !3192

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2694), !dbg !3191
  %662 = icmp eq i32 %115, 2, !dbg !3194
  %663 = icmp eq i8 %123, 0, !dbg !3192
  %664 = select i1 %663, i32 2, i32 4, !dbg !3192
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3192
  br label %666, !dbg !3192

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2637, metadata !DIExpression()), !dbg !2703
  %670 = and i32 %5, -3, !dbg !3195
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3196
  br label %672, !dbg !3197

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3198
}

; Function Attrs: nounwind
declare !dbg !3199 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3201 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3205, metadata !DIExpression()), !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3208
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3214, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata ptr null, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata ptr %2, metadata !3216, metadata !DIExpression()), !dbg !3222
  %4 = icmp eq ptr %2, null, !dbg !3224
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3224
  call void @llvm.dbg.value(metadata ptr %5, metadata !3217, metadata !DIExpression()), !dbg !3222
  %6 = tail call ptr @__errno_location() #41, !dbg !3225
  %7 = load i32, ptr %6, align 4, !dbg !3225, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %7, metadata !3218, metadata !DIExpression()), !dbg !3222
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3226
  %9 = load i32, ptr %8, align 4, !dbg !3226, !tbaa !2577
  %10 = or i32 %9, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %10, metadata !3219, metadata !DIExpression()), !dbg !3222
  %11 = load i32, ptr %5, align 8, !dbg !3228, !tbaa !2527
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3229
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3230
  %14 = load ptr, ptr %13, align 8, !dbg !3230, !tbaa !2598
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3231
  %16 = load ptr, ptr %15, align 8, !dbg !3231, !tbaa !2601
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3232
  %18 = add i64 %17, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %18, metadata !3220, metadata !DIExpression()), !dbg !3222
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %19, metadata !3221, metadata !DIExpression()), !dbg !3222
  %20 = load i32, ptr %5, align 8, !dbg !3235, !tbaa !2527
  %21 = load ptr, ptr %13, align 8, !dbg !3236, !tbaa !2598
  %22 = load ptr, ptr %15, align 8, !dbg !3237, !tbaa !2601
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3238
  store i32 %7, ptr %6, align 4, !dbg !3239, !tbaa !916
  ret ptr %19, !dbg !3240
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3210 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3214, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3215, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3216, metadata !DIExpression()), !dbg !3241
  %5 = icmp eq ptr %3, null, !dbg !3242
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3217, metadata !DIExpression()), !dbg !3241
  %7 = tail call ptr @__errno_location() #41, !dbg !3243
  %8 = load i32, ptr %7, align 4, !dbg !3243, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3218, metadata !DIExpression()), !dbg !3241
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3244
  %10 = load i32, ptr %9, align 4, !dbg !3244, !tbaa !2577
  %11 = icmp eq ptr %2, null, !dbg !3245
  %12 = zext i1 %11 to i32, !dbg !3245
  %13 = or i32 %10, %12, !dbg !3246
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3219, metadata !DIExpression()), !dbg !3241
  %14 = load i32, ptr %6, align 8, !dbg !3247, !tbaa !2527
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3248
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3249
  %17 = load ptr, ptr %16, align 8, !dbg !3249, !tbaa !2598
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3250
  %19 = load ptr, ptr %18, align 8, !dbg !3250, !tbaa !2601
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3251
  %21 = add i64 %20, 1, !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3220, metadata !DIExpression()), !dbg !3241
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3221, metadata !DIExpression()), !dbg !3241
  %23 = load i32, ptr %6, align 8, !dbg !3254, !tbaa !2527
  %24 = load ptr, ptr %16, align 8, !dbg !3255, !tbaa !2598
  %25 = load ptr, ptr %18, align 8, !dbg !3256, !tbaa !2601
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3257
  store i32 %8, ptr %7, align 4, !dbg !3258, !tbaa !916
  br i1 %11, label %28, label %27, !dbg !3259

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3260, !tbaa !1143
  br label %28, !dbg !3262

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3263
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3264 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3269, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3266, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3267, metadata !DIExpression()), !dbg !3271
  %2 = load i32, ptr @nslots, align 4, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3267, metadata !DIExpression()), !dbg !3271
  %3 = icmp sgt i32 %2, 1, !dbg !3272
  br i1 %3, label %4, label %6, !dbg !3274

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3272
  br label %10, !dbg !3274

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3275
  %8 = load ptr, ptr %7, align 8, !dbg !3275, !tbaa !3277
  %9 = icmp eq ptr %8, @slot0, !dbg !3279
  br i1 %9, label %17, label %16, !dbg !3280

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3267, metadata !DIExpression()), !dbg !3271
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3281
  %13 = load ptr, ptr %12, align 8, !dbg !3281, !tbaa !3277
  tail call void @free(ptr noundef %13) #38, !dbg !3282
  %14 = add nuw nsw i64 %11, 1, !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3267, metadata !DIExpression()), !dbg !3271
  %15 = icmp eq i64 %14, %5, !dbg !3272
  br i1 %15, label %6, label %10, !dbg !3274, !llvm.loop !3284

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3286
  store i64 256, ptr @slotvec0, align 8, !dbg !3288, !tbaa !3289
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3290, !tbaa !3277
  br label %17, !dbg !3291

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3292
  br i1 %18, label %20, label %19, !dbg !3294

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3295
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3297, !tbaa !846
  br label %20, !dbg !3298

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3299, !tbaa !916
  ret void, !dbg !3300
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3301 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3303, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3304, metadata !DIExpression()), !dbg !3305
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3306
  ret ptr %3, !dbg !3307
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3308 {
  %5 = alloca i64, align 8, !DIAssignID !3328
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3322, metadata !DIExpression(), metadata !3328, metadata ptr %5, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3314, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3330
  %6 = tail call ptr @__errno_location() #41, !dbg !3331
  %7 = load i32, ptr %6, align 4, !dbg !3331, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3316, metadata !DIExpression()), !dbg !3330
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3332, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3317, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3318, metadata !DIExpression()), !dbg !3330
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3333
  br i1 %9, label %10, label %11, !dbg !3333

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3335
  unreachable, !dbg !3335

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3336, !tbaa !916
  %13 = icmp sgt i32 %12, %0, !dbg !3337
  br i1 %13, label %32, label %14, !dbg !3338

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3339
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3319, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3329
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3340
  %16 = sext i32 %12 to i64, !dbg !3341
  store i64 %16, ptr %5, align 8, !dbg !3342, !tbaa !1143, !DIAssignID !3343
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3322, metadata !DIExpression(), metadata !3343, metadata ptr %5, metadata !DIExpression()), !dbg !3329
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3344
  %18 = add nuw nsw i32 %0, 1, !dbg !3345
  %19 = sub i32 %18, %12, !dbg !3346
  %20 = sext i32 %19 to i64, !dbg !3347
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3317, metadata !DIExpression()), !dbg !3330
  store ptr %21, ptr @slotvec, align 8, !dbg !3349, !tbaa !846
  br i1 %15, label %22, label %23, !dbg !3350

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3351, !tbaa.struct !3353
  br label %23, !dbg !3354

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3355, !tbaa !916
  %25 = sext i32 %24 to i64, !dbg !3356
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3356
  %27 = load i64, ptr %5, align 8, !dbg !3357, !tbaa !1143
  %28 = sub nsw i64 %27, %25, !dbg !3358
  %29 = shl i64 %28, 4, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %26, metadata !2741, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %29, metadata !2745, metadata !DIExpression()), !dbg !3360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3362
  %30 = load i64, ptr %5, align 8, !dbg !3363, !tbaa !1143
  %31 = trunc i64 %30 to i32, !dbg !3363
  store i32 %31, ptr @nslots, align 4, !dbg !3364, !tbaa !916
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3365
  br label %32, !dbg !3366

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3317, metadata !DIExpression()), !dbg !3330
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3367
  %36 = load i64, ptr %35, align 8, !dbg !3368, !tbaa !3289
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3323, metadata !DIExpression()), !dbg !3369
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3370
  %38 = load ptr, ptr %37, align 8, !dbg !3370, !tbaa !3277
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3325, metadata !DIExpression()), !dbg !3369
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3371
  %40 = load i32, ptr %39, align 4, !dbg !3371, !tbaa !2577
  %41 = or i32 %40, 1, !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3326, metadata !DIExpression()), !dbg !3369
  %42 = load i32, ptr %3, align 8, !dbg !3373, !tbaa !2527
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3374
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3375
  %45 = load ptr, ptr %44, align 8, !dbg !3375, !tbaa !2598
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3376
  %47 = load ptr, ptr %46, align 8, !dbg !3376, !tbaa !2601
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3327, metadata !DIExpression()), !dbg !3369
  %49 = icmp ugt i64 %36, %48, !dbg !3378
  br i1 %49, label %60, label %50, !dbg !3380

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3323, metadata !DIExpression()), !dbg !3369
  store i64 %51, ptr %35, align 8, !dbg !3383, !tbaa !3289
  %52 = icmp eq ptr %38, @slot0, !dbg !3384
  br i1 %52, label %54, label %53, !dbg !3386

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3387
  br label %54, !dbg !3387

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3388
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3325, metadata !DIExpression()), !dbg !3369
  store ptr %55, ptr %37, align 8, !dbg !3389, !tbaa !3277
  %56 = load i32, ptr %3, align 8, !dbg !3390, !tbaa !2527
  %57 = load ptr, ptr %44, align 8, !dbg !3391, !tbaa !2598
  %58 = load ptr, ptr %46, align 8, !dbg !3392, !tbaa !2601
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3393
  br label %60, !dbg !3394

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3369
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3325, metadata !DIExpression()), !dbg !3369
  store i32 %7, ptr %6, align 4, !dbg !3395, !tbaa !916
  ret ptr %61, !dbg !3396
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3401, metadata !DIExpression()), !dbg !3404
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3402, metadata !DIExpression()), !dbg !3404
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3403, metadata !DIExpression()), !dbg !3404
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3405
  ret ptr %4, !dbg !3406
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3407 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3411
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3413
  ret ptr %2, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3415 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i32 0, metadata !3401, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3422
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3424
  ret ptr %3, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3426 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3433, metadata !DIExpression(), metadata !3434, metadata ptr %4, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3432, metadata !DIExpression()), !dbg !3435
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %1, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3449, !alias.scope !3437, !DIAssignID !3450
  call void @llvm.dbg.assign(metadata i8 0, metadata !3433, metadata !DIExpression(), metadata !3450, metadata ptr %4, metadata !DIExpression()), !dbg !3435
  %5 = icmp eq i32 %1, 10, !dbg !3451
  br i1 %5, label %6, label %7, !dbg !3453

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3454, !noalias !3437
  unreachable, !dbg !3454

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3455, !tbaa !2527, !alias.scope !3437, !DIAssignID !3456
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3433, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3456, metadata ptr %4, metadata !DIExpression()), !dbg !3435
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3457
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3458
  ret ptr %8, !dbg !3459
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3460 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3468, metadata !DIExpression(), metadata !3469, metadata ptr %5, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3465, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3466, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3467, metadata !DIExpression()), !dbg !3470
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472), !dbg !3475
  call void @llvm.dbg.value(metadata i32 %1, metadata !3441, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3446, metadata !DIExpression()), !dbg !3478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3478, !alias.scope !3472, !DIAssignID !3479
  call void @llvm.dbg.assign(metadata i8 0, metadata !3468, metadata !DIExpression(), metadata !3479, metadata ptr %5, metadata !DIExpression()), !dbg !3470
  %6 = icmp eq i32 %1, 10, !dbg !3480
  br i1 %6, label %7, label %8, !dbg !3481

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3482, !noalias !3472
  unreachable, !dbg !3482

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3483, !tbaa !2527, !alias.scope !3472, !DIAssignID !3484
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3468, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3484, metadata ptr %5, metadata !DIExpression()), !dbg !3470
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3485
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3486
  ret ptr %9, !dbg !3487
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3488 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3494
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3492, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3493, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3433, metadata !DIExpression(), metadata !3494, metadata ptr %3, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 0, metadata !3430, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %1, metadata !3432, metadata !DIExpression()), !dbg !3496
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3499), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3446, metadata !DIExpression()), !dbg !3505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3505, !alias.scope !3499, !DIAssignID !3506
  call void @llvm.dbg.assign(metadata i8 0, metadata !3433, metadata !DIExpression(), metadata !3506, metadata ptr %3, metadata !DIExpression()), !dbg !3496
  %4 = icmp eq i32 %0, 10, !dbg !3507
  br i1 %4, label %5, label %6, !dbg !3508

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3509, !noalias !3499
  unreachable, !dbg !3509

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3510, !tbaa !2527, !alias.scope !3499, !DIAssignID !3511
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3433, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3511, metadata ptr %3, metadata !DIExpression()), !dbg !3496
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3512
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3513
  ret ptr %7, !dbg !3514
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3515 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3522
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3519, metadata !DIExpression()), !dbg !3523
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3520, metadata !DIExpression()), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3468, metadata !DIExpression(), metadata !3522, metadata ptr %4, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata ptr %1, metadata !3466, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %2, metadata !3467, metadata !DIExpression()), !dbg !3524
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3527), !dbg !3530
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3446, metadata !DIExpression()), !dbg !3533
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3533, !alias.scope !3527, !DIAssignID !3534
  call void @llvm.dbg.assign(metadata i8 0, metadata !3468, metadata !DIExpression(), metadata !3534, metadata ptr %4, metadata !DIExpression()), !dbg !3524
  %5 = icmp eq i32 %0, 10, !dbg !3535
  br i1 %5, label %6, label %7, !dbg !3536

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3537, !noalias !3527
  unreachable, !dbg !3537

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3538, !tbaa !2527, !alias.scope !3527, !DIAssignID !3539
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3468, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3539, metadata ptr %4, metadata !DIExpression()), !dbg !3524
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3540
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3541
  ret ptr %8, !dbg !3542
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3543 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3551
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3551, metadata ptr %4, metadata !DIExpression()), !dbg !3552
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3552
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3552
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3549, metadata !DIExpression()), !dbg !3552
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3554, !tbaa.struct !3555, !DIAssignID !3556
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3556, metadata ptr %4, metadata !DIExpression()), !dbg !3552
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2544, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2545, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2547, metadata !DIExpression()), !dbg !3557
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3559
  %6 = lshr i8 %2, 5, !dbg !3560
  %7 = zext nneg i8 %6 to i64, !dbg !3560
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2548, metadata !DIExpression()), !dbg !3557
  %9 = and i8 %2, 31, !dbg !3562
  %10 = zext nneg i8 %9 to i32, !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2550, metadata !DIExpression()), !dbg !3557
  %11 = load i32, ptr %8, align 4, !dbg !3563, !tbaa !916
  %12 = lshr i32 %11, %10, !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3557
  %13 = and i32 %12, 1, !dbg !3565
  %14 = xor i32 %13, 1, !dbg !3565
  %15 = shl nuw i32 %14, %10, !dbg !3566
  %16 = xor i32 %15, %11, !dbg !3567
  store i32 %16, ptr %8, align 4, !dbg !3567, !tbaa !916
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3568
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3569
  ret ptr %17, !dbg !3570
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3571 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3577
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3575, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3576, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3577, metadata ptr %3, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 -1, metadata !3548, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i8 %1, metadata !3549, metadata !DIExpression()), !dbg !3579
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3582, !tbaa.struct !3555, !DIAssignID !3583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3583, metadata ptr %3, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata ptr %3, metadata !2544, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !3584
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3586
  %5 = lshr i8 %1, 5, !dbg !3587
  %6 = zext nneg i8 %5 to i64, !dbg !3587
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %7, metadata !2548, metadata !DIExpression()), !dbg !3584
  %8 = and i8 %1, 31, !dbg !3589
  %9 = zext nneg i8 %8 to i32, !dbg !3589
  call void @llvm.dbg.value(metadata i32 %9, metadata !2550, metadata !DIExpression()), !dbg !3584
  %10 = load i32, ptr %7, align 4, !dbg !3590, !tbaa !916
  %11 = lshr i32 %10, %9, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %11, metadata !2551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3584
  %12 = and i32 %11, 1, !dbg !3592
  %13 = xor i32 %12, 1, !dbg !3592
  %14 = shl nuw i32 %13, %9, !dbg !3593
  %15 = xor i32 %14, %10, !dbg !3594
  store i32 %15, ptr %7, align 4, !dbg !3594, !tbaa !916
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3595
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3596
  ret ptr %16, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3598 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3601
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %0, metadata !3575, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8 58, metadata !3576, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3601, metadata ptr %2, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 -1, metadata !3548, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8 58, metadata !3549, metadata !DIExpression()), !dbg !3605
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !3607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3608, !tbaa.struct !3555, !DIAssignID !3609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3609, metadata ptr %2, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %2, metadata !2544, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3610
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3612
  call void @llvm.dbg.value(metadata ptr %3, metadata !2548, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 26, metadata !2550, metadata !DIExpression()), !dbg !3610
  %4 = load i32, ptr %3, align 4, !dbg !3613, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %4, metadata !2551, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3610
  %5 = or i32 %4, 67108864, !dbg !3614
  store i32 %5, ptr %3, align 4, !dbg !3614, !tbaa !916
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3615
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3616
  ret ptr %6, !dbg !3617
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3618 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3622
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3620, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3622, metadata ptr %3, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 58, metadata !3549, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3627, !tbaa.struct !3555, !DIAssignID !3628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3550, metadata !DIExpression(), metadata !3628, metadata ptr %3, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %3, metadata !2544, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3629
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %4, metadata !2548, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 26, metadata !2550, metadata !DIExpression()), !dbg !3629
  %5 = load i32, ptr %4, align 4, !dbg !3632, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %5, metadata !2551, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3629
  %6 = or i32 %5, 67108864, !dbg !3633
  store i32 %6, ptr %4, align 4, !dbg !3633, !tbaa !916
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3634
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3635
  ret ptr %7, !dbg !3636
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3637 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3642, metadata !DIExpression(), metadata !3643, metadata ptr %4, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3446, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3639, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3640, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3641, metadata !DIExpression()), !dbg !3644
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %1, metadata !3441, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3648
  %5 = icmp eq i32 %1, 10, !dbg !3649
  br i1 %5, label %6, label %7, !dbg !3650

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3651, !noalias !3652
  unreachable, !dbg !3651

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3648
  store i32 %1, ptr %4, align 8, !dbg !3655, !tbaa.struct !3555, !DIAssignID !3656
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3655
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3642, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3656, metadata ptr %4, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3642, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3657, metadata ptr %8, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2544, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3658
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3660
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2548, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2550, metadata !DIExpression()), !dbg !3658
  %10 = load i32, ptr %9, align 4, !dbg !3661, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2551, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3658
  %11 = or i32 %10, 67108864, !dbg !3662
  store i32 %11, ptr %9, align 4, !dbg !3662, !tbaa !916, !DIAssignID !3663
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3642, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3663, metadata ptr %9, metadata !DIExpression()), !dbg !3644
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3665
  ret ptr %12, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3667 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3675
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3673, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3675, metadata ptr %5, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 %0, metadata !3682, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %1, metadata !3683, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %2, metadata !3684, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %3, metadata !3685, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 -1, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3690, !tbaa.struct !3555, !DIAssignID !3691
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3691, metadata ptr %5, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3692, metadata ptr undef, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %2, metadata !2586, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3693
  store i32 10, ptr %5, align 8, !dbg !3695, !tbaa !2527, !DIAssignID !3696
  call void @llvm.dbg.assign(metadata i32 10, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3696, metadata ptr %5, metadata !DIExpression()), !dbg !3687
  %6 = icmp ne ptr %1, null, !dbg !3697
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3698
  br i1 %8, label %10, label %9, !dbg !3698

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3699
  unreachable, !dbg !3699

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3700
  store ptr %1, ptr %11, align 8, !dbg !3701, !tbaa !2598, !DIAssignID !3702
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3702, metadata ptr %11, metadata !DIExpression()), !dbg !3687
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3703
  store ptr %2, ptr %12, align 8, !dbg !3704, !tbaa !2601, !DIAssignID !3705
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3705, metadata ptr %12, metadata !DIExpression()), !dbg !3687
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3706
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3707
  ret ptr %13, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3678 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3709
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3709, metadata ptr %6, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3682, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3683, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3684, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3685, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3686, metadata !DIExpression()), !dbg !3710
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3712, !tbaa.struct !3555, !DIAssignID !3713
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3713, metadata ptr %6, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3714, metadata ptr undef, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %6, metadata !2584, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %2, metadata !2586, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %6, metadata !2584, metadata !DIExpression()), !dbg !3715
  store i32 10, ptr %6, align 8, !dbg !3717, !tbaa !2527, !DIAssignID !3718
  call void @llvm.dbg.assign(metadata i32 10, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3718, metadata ptr %6, metadata !DIExpression()), !dbg !3710
  %7 = icmp ne ptr %1, null, !dbg !3719
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3720
  br i1 %9, label %11, label %10, !dbg !3720

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3721
  unreachable, !dbg !3721

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3722
  store ptr %1, ptr %12, align 8, !dbg !3723, !tbaa !2598, !DIAssignID !3724
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3724, metadata ptr %12, metadata !DIExpression()), !dbg !3710
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3725
  store ptr %2, ptr %13, align 8, !dbg !3726, !tbaa !2601, !DIAssignID !3727
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3727, metadata ptr %13, metadata !DIExpression()), !dbg !3710
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3728
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3729
  ret ptr %14, !dbg !3730
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3731 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3738
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3736, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %1, metadata !3673, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %2, metadata !3674, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3738, metadata ptr %4, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %1, metadata !3684, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %2, metadata !3685, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 -1, metadata !3686, metadata !DIExpression()), !dbg !3742
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3745, !tbaa.struct !3555, !DIAssignID !3746
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3746, metadata ptr %4, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3747, metadata ptr undef, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %4, metadata !2584, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %1, metadata !2586, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %4, metadata !2584, metadata !DIExpression()), !dbg !3748
  store i32 10, ptr %4, align 8, !dbg !3750, !tbaa !2527, !DIAssignID !3751
  call void @llvm.dbg.assign(metadata i32 10, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3751, metadata ptr %4, metadata !DIExpression()), !dbg !3742
  %5 = icmp ne ptr %0, null, !dbg !3752
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3753
  br i1 %7, label %9, label %8, !dbg !3753

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3754
  unreachable, !dbg !3754

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3755
  store ptr %0, ptr %10, align 8, !dbg !3756, !tbaa !2598, !DIAssignID !3757
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3757, metadata ptr %10, metadata !DIExpression()), !dbg !3742
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3758
  store ptr %1, ptr %11, align 8, !dbg !3759, !tbaa !2601, !DIAssignID !3760
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3760, metadata ptr %11, metadata !DIExpression()), !dbg !3742
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3761
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3762
  ret ptr %12, !dbg !3763
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3764 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3772
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3768, metadata !DIExpression()), !dbg !3773
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3769, metadata !DIExpression()), !dbg !3773
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3770, metadata !DIExpression()), !dbg !3773
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3771, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3772, metadata ptr %5, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %1, metadata !3684, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %2, metadata !3685, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %3, metadata !3686, metadata !DIExpression()), !dbg !3774
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3777, !tbaa.struct !3555, !DIAssignID !3778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3778, metadata ptr %5, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3779, metadata ptr undef, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %1, metadata !2586, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3780
  store i32 10, ptr %5, align 8, !dbg !3782, !tbaa !2527, !DIAssignID !3783
  call void @llvm.dbg.assign(metadata i32 10, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3783, metadata ptr %5, metadata !DIExpression()), !dbg !3774
  %6 = icmp ne ptr %0, null, !dbg !3784
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3785
  br i1 %8, label %10, label %9, !dbg !3785

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3786
  unreachable, !dbg !3786

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3787
  store ptr %0, ptr %11, align 8, !dbg !3788, !tbaa !2598, !DIAssignID !3789
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3789, metadata ptr %11, metadata !DIExpression()), !dbg !3774
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3790
  store ptr %1, ptr %12, align 8, !dbg !3791, !tbaa !2601, !DIAssignID !3792
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3792, metadata ptr %12, metadata !DIExpression()), !dbg !3774
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3793
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3794
  ret ptr %13, !dbg !3795
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3796 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3800, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3801, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3802, metadata !DIExpression()), !dbg !3803
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3804
  ret ptr %4, !dbg !3805
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 0, metadata !3800, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 %1, metadata !3802, metadata !DIExpression()), !dbg !3813
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3815
  ret ptr %3, !dbg !3816
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3817 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3821, metadata !DIExpression()), !dbg !3823
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %0, metadata !3800, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata ptr %1, metadata !3801, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 -1, metadata !3802, metadata !DIExpression()), !dbg !3824
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3826
  ret ptr %3, !dbg !3827
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3828 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3832, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 0, metadata !3821, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata ptr %0, metadata !3822, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i32 0, metadata !3800, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 -1, metadata !3802, metadata !DIExpression()), !dbg !3836
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3838
  ret ptr %2, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3840 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3879, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3880, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3881, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3882, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3884, metadata !DIExpression()), !dbg !3885
  %7 = icmp eq ptr %1, null, !dbg !3886
  br i1 %7, label %10, label %8, !dbg !3888

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3889
  br label %12, !dbg !3889

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.89, ptr noundef %2, ptr noundef %3) #38, !dbg !3890
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.3.91, i32 noundef 5) #38, !dbg !3891
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3891
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3892
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.5.93, i32 noundef 5) #38, !dbg !3893
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.94) #38, !dbg !3893
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3894
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
  ], !dbg !3895

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.7.95, i32 noundef 5) #38, !dbg !3896
  %21 = load ptr, ptr %4, align 8, !dbg !3896, !tbaa !846
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3896
  br label %147, !dbg !3898

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.8.96, i32 noundef 5) #38, !dbg !3899
  %25 = load ptr, ptr %4, align 8, !dbg !3899, !tbaa !846
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3899
  %27 = load ptr, ptr %26, align 8, !dbg !3899, !tbaa !846
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3899
  br label %147, !dbg !3900

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.9.97, i32 noundef 5) #38, !dbg !3901
  %31 = load ptr, ptr %4, align 8, !dbg !3901, !tbaa !846
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3901
  %33 = load ptr, ptr %32, align 8, !dbg !3901, !tbaa !846
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3901
  %35 = load ptr, ptr %34, align 8, !dbg !3901, !tbaa !846
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3901
  br label %147, !dbg !3902

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.10.98, i32 noundef 5) #38, !dbg !3903
  %39 = load ptr, ptr %4, align 8, !dbg !3903, !tbaa !846
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3903
  %41 = load ptr, ptr %40, align 8, !dbg !3903, !tbaa !846
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3903
  %43 = load ptr, ptr %42, align 8, !dbg !3903, !tbaa !846
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3903
  %45 = load ptr, ptr %44, align 8, !dbg !3903, !tbaa !846
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3903
  br label %147, !dbg !3904

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.11.99, i32 noundef 5) #38, !dbg !3905
  %49 = load ptr, ptr %4, align 8, !dbg !3905, !tbaa !846
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3905
  %51 = load ptr, ptr %50, align 8, !dbg !3905, !tbaa !846
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3905
  %53 = load ptr, ptr %52, align 8, !dbg !3905, !tbaa !846
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3905
  %55 = load ptr, ptr %54, align 8, !dbg !3905, !tbaa !846
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3905
  %57 = load ptr, ptr %56, align 8, !dbg !3905, !tbaa !846
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3905
  br label %147, !dbg !3906

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.12.100, i32 noundef 5) #38, !dbg !3907
  %61 = load ptr, ptr %4, align 8, !dbg !3907, !tbaa !846
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3907
  %63 = load ptr, ptr %62, align 8, !dbg !3907, !tbaa !846
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3907
  %65 = load ptr, ptr %64, align 8, !dbg !3907, !tbaa !846
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3907
  %67 = load ptr, ptr %66, align 8, !dbg !3907, !tbaa !846
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3907
  %69 = load ptr, ptr %68, align 8, !dbg !3907, !tbaa !846
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3907
  %71 = load ptr, ptr %70, align 8, !dbg !3907, !tbaa !846
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3907
  br label %147, !dbg !3908

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.13.101, i32 noundef 5) #38, !dbg !3909
  %75 = load ptr, ptr %4, align 8, !dbg !3909, !tbaa !846
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3909
  %77 = load ptr, ptr %76, align 8, !dbg !3909, !tbaa !846
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3909
  %79 = load ptr, ptr %78, align 8, !dbg !3909, !tbaa !846
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3909
  %81 = load ptr, ptr %80, align 8, !dbg !3909, !tbaa !846
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3909
  %83 = load ptr, ptr %82, align 8, !dbg !3909, !tbaa !846
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3909
  %85 = load ptr, ptr %84, align 8, !dbg !3909, !tbaa !846
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3909
  %87 = load ptr, ptr %86, align 8, !dbg !3909, !tbaa !846
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3909
  br label %147, !dbg !3910

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.14.102, i32 noundef 5) #38, !dbg !3911
  %91 = load ptr, ptr %4, align 8, !dbg !3911, !tbaa !846
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3911
  %93 = load ptr, ptr %92, align 8, !dbg !3911, !tbaa !846
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3911
  %95 = load ptr, ptr %94, align 8, !dbg !3911, !tbaa !846
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3911
  %97 = load ptr, ptr %96, align 8, !dbg !3911, !tbaa !846
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3911
  %99 = load ptr, ptr %98, align 8, !dbg !3911, !tbaa !846
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3911
  %101 = load ptr, ptr %100, align 8, !dbg !3911, !tbaa !846
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3911
  %103 = load ptr, ptr %102, align 8, !dbg !3911, !tbaa !846
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3911
  %105 = load ptr, ptr %104, align 8, !dbg !3911, !tbaa !846
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3911
  br label %147, !dbg !3912

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.15.103, i32 noundef 5) #38, !dbg !3913
  %109 = load ptr, ptr %4, align 8, !dbg !3913, !tbaa !846
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3913
  %111 = load ptr, ptr %110, align 8, !dbg !3913, !tbaa !846
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3913
  %113 = load ptr, ptr %112, align 8, !dbg !3913, !tbaa !846
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3913
  %115 = load ptr, ptr %114, align 8, !dbg !3913, !tbaa !846
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3913
  %117 = load ptr, ptr %116, align 8, !dbg !3913, !tbaa !846
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3913
  %119 = load ptr, ptr %118, align 8, !dbg !3913, !tbaa !846
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3913
  %121 = load ptr, ptr %120, align 8, !dbg !3913, !tbaa !846
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3913
  %123 = load ptr, ptr %122, align 8, !dbg !3913, !tbaa !846
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3913
  %125 = load ptr, ptr %124, align 8, !dbg !3913, !tbaa !846
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3913
  br label %147, !dbg !3914

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.16.104, i32 noundef 5) #38, !dbg !3915
  %129 = load ptr, ptr %4, align 8, !dbg !3915, !tbaa !846
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3915
  %131 = load ptr, ptr %130, align 8, !dbg !3915, !tbaa !846
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3915
  %133 = load ptr, ptr %132, align 8, !dbg !3915, !tbaa !846
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3915
  %135 = load ptr, ptr %134, align 8, !dbg !3915, !tbaa !846
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3915
  %137 = load ptr, ptr %136, align 8, !dbg !3915, !tbaa !846
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3915
  %139 = load ptr, ptr %138, align 8, !dbg !3915, !tbaa !846
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3915
  %141 = load ptr, ptr %140, align 8, !dbg !3915, !tbaa !846
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3915
  %143 = load ptr, ptr %142, align 8, !dbg !3915, !tbaa !846
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3915
  %145 = load ptr, ptr %144, align 8, !dbg !3915, !tbaa !846
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3915
  br label %147, !dbg !3916

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3918 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3922, metadata !DIExpression()), !dbg !3928
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3923, metadata !DIExpression()), !dbg !3928
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3924, metadata !DIExpression()), !dbg !3928
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !3928
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3926, metadata !DIExpression()), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3927, metadata !DIExpression()), !dbg !3928
  br label %6, !dbg !3929

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3927, metadata !DIExpression()), !dbg !3928
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3932
  %9 = load ptr, ptr %8, align 8, !dbg !3932, !tbaa !846
  %10 = icmp eq ptr %9, null, !dbg !3934
  %11 = add i64 %7, 1, !dbg !3935
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3927, metadata !DIExpression()), !dbg !3928
  br i1 %10, label %12, label %6, !dbg !3934, !llvm.loop !3936

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3938
  ret void, !dbg !3939
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3940 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3957, metadata !DIExpression(), metadata !3959, metadata ptr %6, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3951, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3952, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3953, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3954, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3955, metadata !DIExpression()), !dbg !3960
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3961
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3956, metadata !DIExpression()), !dbg !3960
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3956, metadata !DIExpression()), !dbg !3960
  %10 = icmp ult i32 %9, 41, !dbg !3962
  br i1 %10, label %11, label %16, !dbg !3962

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3962
  %13 = zext nneg i32 %9 to i64, !dbg !3962
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3962
  %15 = add nuw nsw i32 %9, 8, !dbg !3962
  store i32 %15, ptr %4, align 8, !dbg !3962
  br label %19, !dbg !3962

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3962
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3962
  store ptr %18, ptr %7, align 8, !dbg !3962
  br label %19, !dbg !3962

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3962
  %22 = load ptr, ptr %21, align 8, !dbg !3962
  store ptr %22, ptr %6, align 16, !dbg !3965, !tbaa !846
  %23 = icmp eq ptr %22, null, !dbg !3966
  br i1 %23, label %128, label %24, !dbg !3967

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3956, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3956, metadata !DIExpression()), !dbg !3960
  %25 = icmp ult i32 %20, 41, !dbg !3962
  br i1 %25, label %29, label %26, !dbg !3962

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3962
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3962
  store ptr %28, ptr %7, align 8, !dbg !3962
  br label %34, !dbg !3962

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3962
  %31 = zext nneg i32 %20 to i64, !dbg !3962
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3962
  %33 = add nuw nsw i32 %20, 8, !dbg !3962
  store i32 %33, ptr %4, align 8, !dbg !3962
  br label %34, !dbg !3962

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3962
  %37 = load ptr, ptr %36, align 8, !dbg !3962
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3968
  store ptr %37, ptr %38, align 8, !dbg !3965, !tbaa !846
  %39 = icmp eq ptr %37, null, !dbg !3966
  br i1 %39, label %128, label %40, !dbg !3967

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3956, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3956, metadata !DIExpression()), !dbg !3960
  %41 = icmp ult i32 %35, 41, !dbg !3962
  br i1 %41, label %45, label %42, !dbg !3962

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3962
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3962
  store ptr %44, ptr %7, align 8, !dbg !3962
  br label %50, !dbg !3962

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3962
  %47 = zext nneg i32 %35 to i64, !dbg !3962
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3962
  %49 = add nuw nsw i32 %35, 8, !dbg !3962
  store i32 %49, ptr %4, align 8, !dbg !3962
  br label %50, !dbg !3962

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3962
  %53 = load ptr, ptr %52, align 8, !dbg !3962
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3968
  store ptr %53, ptr %54, align 16, !dbg !3965, !tbaa !846
  %55 = icmp eq ptr %53, null, !dbg !3966
  br i1 %55, label %128, label %56, !dbg !3967

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3956, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3956, metadata !DIExpression()), !dbg !3960
  %57 = icmp ult i32 %51, 41, !dbg !3962
  br i1 %57, label %61, label %58, !dbg !3962

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3962
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3962
  store ptr %60, ptr %7, align 8, !dbg !3962
  br label %66, !dbg !3962

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3962
  %63 = zext nneg i32 %51 to i64, !dbg !3962
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3962
  %65 = add nuw nsw i32 %51, 8, !dbg !3962
  store i32 %65, ptr %4, align 8, !dbg !3962
  br label %66, !dbg !3962

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3962
  %69 = load ptr, ptr %68, align 8, !dbg !3962
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3968
  store ptr %69, ptr %70, align 8, !dbg !3965, !tbaa !846
  %71 = icmp eq ptr %69, null, !dbg !3966
  br i1 %71, label %128, label %72, !dbg !3967

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3956, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3956, metadata !DIExpression()), !dbg !3960
  %73 = icmp ult i32 %67, 41, !dbg !3962
  br i1 %73, label %77, label %74, !dbg !3962

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3962
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3962
  store ptr %76, ptr %7, align 8, !dbg !3962
  br label %82, !dbg !3962

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3962
  %79 = zext nneg i32 %67 to i64, !dbg !3962
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3962
  %81 = add nuw nsw i32 %67, 8, !dbg !3962
  store i32 %81, ptr %4, align 8, !dbg !3962
  br label %82, !dbg !3962

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3962
  %85 = load ptr, ptr %84, align 8, !dbg !3962
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3968
  store ptr %85, ptr %86, align 16, !dbg !3965, !tbaa !846
  %87 = icmp eq ptr %85, null, !dbg !3966
  br i1 %87, label %128, label %88, !dbg !3967

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3956, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3956, metadata !DIExpression()), !dbg !3960
  %89 = icmp ult i32 %83, 41, !dbg !3962
  br i1 %89, label %93, label %90, !dbg !3962

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3962
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3962
  store ptr %92, ptr %7, align 8, !dbg !3962
  br label %98, !dbg !3962

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3962
  %95 = zext nneg i32 %83 to i64, !dbg !3962
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3962
  %97 = add nuw nsw i32 %83, 8, !dbg !3962
  store i32 %97, ptr %4, align 8, !dbg !3962
  br label %98, !dbg !3962

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3962
  %100 = load ptr, ptr %99, align 8, !dbg !3962
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3968
  store ptr %100, ptr %101, align 8, !dbg !3965, !tbaa !846
  %102 = icmp eq ptr %100, null, !dbg !3966
  br i1 %102, label %128, label %103, !dbg !3967

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3956, metadata !DIExpression()), !dbg !3960
  %104 = load ptr, ptr %7, align 8, !dbg !3962
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3962
  store ptr %105, ptr %7, align 8, !dbg !3962
  %106 = load ptr, ptr %104, align 8, !dbg !3962
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3968
  store ptr %106, ptr %107, align 16, !dbg !3965, !tbaa !846
  %108 = icmp eq ptr %106, null, !dbg !3966
  br i1 %108, label %128, label %109, !dbg !3967

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3956, metadata !DIExpression()), !dbg !3960
  %110 = load ptr, ptr %7, align 8, !dbg !3962
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3962
  store ptr %111, ptr %7, align 8, !dbg !3962
  %112 = load ptr, ptr %110, align 8, !dbg !3962
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3968
  store ptr %112, ptr %113, align 8, !dbg !3965, !tbaa !846
  %114 = icmp eq ptr %112, null, !dbg !3966
  br i1 %114, label %128, label %115, !dbg !3967

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3956, metadata !DIExpression()), !dbg !3960
  %116 = load ptr, ptr %7, align 8, !dbg !3962
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3962
  store ptr %117, ptr %7, align 8, !dbg !3962
  %118 = load ptr, ptr %116, align 8, !dbg !3962
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3968
  store ptr %118, ptr %119, align 16, !dbg !3965, !tbaa !846
  %120 = icmp eq ptr %118, null, !dbg !3966
  br i1 %120, label %128, label %121, !dbg !3967

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3956, metadata !DIExpression()), !dbg !3960
  %122 = load ptr, ptr %7, align 8, !dbg !3962
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3962
  store ptr %123, ptr %7, align 8, !dbg !3962
  %124 = load ptr, ptr %122, align 8, !dbg !3962
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3968
  store ptr %124, ptr %125, align 8, !dbg !3965, !tbaa !846
  %126 = icmp eq ptr %124, null, !dbg !3966
  %127 = select i1 %126, i64 9, i64 10, !dbg !3967
  br label %128, !dbg !3967

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3969
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3970
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3971
  ret void, !dbg !3971
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3972 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3980, metadata !DIExpression(), metadata !3985, metadata ptr %5, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3976, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3977, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3978, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3979, metadata !DIExpression()), !dbg !3986
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3987
  call void @llvm.va_start(ptr nonnull %5), !dbg !3988
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3989
  call void @llvm.va_end(ptr nonnull %5), !dbg !3990
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3991
  ret void, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3992 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3993, !tbaa !846
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %1), !dbg !3993
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.17.109, i32 noundef 5) #38, !dbg !3994
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.110) #38, !dbg !3994
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.19.111, i32 noundef 5) #38, !dbg !3995
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.112, ptr noundef nonnull @.str.21.113) #38, !dbg !3995
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.22.114, i32 noundef 5) #38, !dbg !3996
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.115) #38, !dbg !3996
  ret void, !dbg !3997
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3998 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4003, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4004, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %2, metadata !4011, metadata !DIExpression()), !dbg !4012
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4014
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4020
  %5 = icmp eq ptr %4, null, !dbg !4022
  br i1 %5, label %6, label %7, !dbg !4024

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4025
  unreachable, !dbg !4025

7:                                                ; preds = %3
  ret ptr %4, !dbg !4026
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4008 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4011, metadata !DIExpression()), !dbg !4027
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4028
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4029
  %5 = icmp eq ptr %4, null, !dbg !4031
  br i1 %5, label %6, label %7, !dbg !4032

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4033
  unreachable, !dbg !4033

7:                                                ; preds = %3
  ret ptr %4, !dbg !4034
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4035 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4039, metadata !DIExpression()), !dbg !4040
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4041
  call void @llvm.dbg.value(metadata ptr %2, metadata !4015, metadata !DIExpression()), !dbg !4042
  %3 = icmp eq ptr %2, null, !dbg !4044
  br i1 %3, label %4, label %5, !dbg !4045

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4046
  unreachable, !dbg !4046

5:                                                ; preds = %1
  ret ptr %2, !dbg !4047
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4048 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4049 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %0, metadata !4055, metadata !DIExpression()), !dbg !4059
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4061
  call void @llvm.dbg.value(metadata ptr %2, metadata !4015, metadata !DIExpression()), !dbg !4062
  %3 = icmp eq ptr %2, null, !dbg !4064
  br i1 %3, label %4, label %5, !dbg !4065

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4066
  unreachable, !dbg !4066

5:                                                ; preds = %1
  ret ptr %2, !dbg !4067
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4068 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %0, metadata !4039, metadata !DIExpression()), !dbg !4074
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4076
  call void @llvm.dbg.value(metadata ptr %2, metadata !4015, metadata !DIExpression()), !dbg !4077
  %3 = icmp eq ptr %2, null, !dbg !4079
  br i1 %3, label %4, label %5, !dbg !4080

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4081
  unreachable, !dbg !4081

5:                                                ; preds = %1
  ret ptr %2, !dbg !4082
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4087, metadata !DIExpression()), !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %1, metadata !4094, metadata !DIExpression()), !dbg !4095
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4097
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4098
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4099
  %5 = icmp eq ptr %4, null, !dbg !4101
  br i1 %5, label %6, label %7, !dbg !4102

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4103
  unreachable, !dbg !4103

7:                                                ; preds = %2
  ret ptr %4, !dbg !4104
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4105 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4106 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %0, metadata !4113, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %1, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %1, metadata !4094, metadata !DIExpression()), !dbg !4119
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4121
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4122
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4123
  %5 = icmp eq ptr %4, null, !dbg !4125
  br i1 %5, label %6, label %7, !dbg !4126

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4127
  unreachable, !dbg !4127

7:                                                ; preds = %2
  ret ptr %4, !dbg !4128
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4129 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4133, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4134, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4135, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata ptr %0, metadata !4137, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %1, metadata !4140, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %2, metadata !4141, metadata !DIExpression()), !dbg !4142
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4145
  %5 = icmp eq ptr %4, null, !dbg !4147
  br i1 %5, label %6, label %7, !dbg !4148

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4149
  unreachable, !dbg !4149

7:                                                ; preds = %3
  ret ptr %4, !dbg !4150
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4151 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4155, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata ptr null, metadata !4007, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %0, metadata !4010, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %1, metadata !4011, metadata !DIExpression()), !dbg !4158
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4160
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4161
  %4 = icmp eq ptr %3, null, !dbg !4163
  br i1 %4, label %5, label %6, !dbg !4164

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4165
  unreachable, !dbg !4165

6:                                                ; preds = %2
  ret ptr %3, !dbg !4166
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4167 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr null, metadata !4133, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %0, metadata !4134, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %1, metadata !4135, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata ptr null, metadata !4137, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %0, metadata !4140, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4176
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4178
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4179
  %4 = icmp eq ptr %3, null, !dbg !4181
  br i1 %4, label %5, label %6, !dbg !4182

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4183
  unreachable, !dbg !4183

6:                                                ; preds = %2
  ret ptr %3, !dbg !4184
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4189, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4190, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %0, metadata !787, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %1, metadata !788, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 1, metadata !789, metadata !DIExpression()), !dbg !4192
  %3 = load i64, ptr %1, align 8, !dbg !4194, !tbaa !1143
  call void @llvm.dbg.value(metadata i64 %3, metadata !790, metadata !DIExpression()), !dbg !4192
  %4 = icmp eq ptr %0, null, !dbg !4195
  br i1 %4, label %5, label %8, !dbg !4197

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4198
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4201
  br label %15, !dbg !4201

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4202
  %10 = add nuw i64 %9, 1, !dbg !4202
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4202
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4202
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %13, metadata !790, metadata !DIExpression()), !dbg !4192
  br i1 %12, label %14, label %15, !dbg !4205

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4206
  unreachable, !dbg !4206

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4192
  call void @llvm.dbg.value(metadata i64 %16, metadata !790, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %16, metadata !4010, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 1, metadata !4011, metadata !DIExpression()), !dbg !4207
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4209
  call void @llvm.dbg.value(metadata ptr %17, metadata !4015, metadata !DIExpression()), !dbg !4210
  %18 = icmp eq ptr %17, null, !dbg !4212
  br i1 %18, label %19, label %20, !dbg !4213

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4214
  unreachable, !dbg !4214

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !787, metadata !DIExpression()), !dbg !4192
  store i64 %16, ptr %1, align 8, !dbg !4215, !tbaa !1143
  ret ptr %17, !dbg !4216
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !783 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !787, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !788, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !789, metadata !DIExpression()), !dbg !4217
  %4 = load i64, ptr %1, align 8, !dbg !4218, !tbaa !1143
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !790, metadata !DIExpression()), !dbg !4217
  %5 = icmp eq ptr %0, null, !dbg !4219
  br i1 %5, label %6, label %13, !dbg !4220

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4221
  br i1 %7, label %8, label %20, !dbg !4222

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4223
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !790, metadata !DIExpression()), !dbg !4217
  %10 = icmp ugt i64 %2, 128, !dbg !4225
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !790, metadata !DIExpression()), !dbg !4217
  br label %20, !dbg !4227

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4228
  %15 = add nuw i64 %14, 1, !dbg !4228
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4228
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4228
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4228
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !790, metadata !DIExpression()), !dbg !4217
  br i1 %17, label %19, label %20, !dbg !4229

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4230
  unreachable, !dbg !4230

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !790, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %21, metadata !4010, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %2, metadata !4011, metadata !DIExpression()), !dbg !4231
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %22, metadata !4015, metadata !DIExpression()), !dbg !4234
  %23 = icmp eq ptr %22, null, !dbg !4236
  br i1 %23, label %24, label %25, !dbg !4237

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4238
  unreachable, !dbg !4238

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !787, metadata !DIExpression()), !dbg !4217
  store i64 %21, ptr %1, align 8, !dbg !4239, !tbaa !1143
  ret ptr %22, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !801, metadata !DIExpression()), !dbg !4241
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !802, metadata !DIExpression()), !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !803, metadata !DIExpression()), !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !804, metadata !DIExpression()), !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !805, metadata !DIExpression()), !dbg !4241
  %6 = load i64, ptr %1, align 8, !dbg !4242, !tbaa !1143
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !806, metadata !DIExpression()), !dbg !4241
  %7 = ashr i64 %6, 1, !dbg !4243
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4243
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4243
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !807, metadata !DIExpression()), !dbg !4241
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !807, metadata !DIExpression()), !dbg !4241
  %12 = icmp sgt i64 %3, -1, !dbg !4246
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4248
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !807, metadata !DIExpression()), !dbg !4241
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4249
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4249
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !808, metadata !DIExpression()), !dbg !4241
  %18 = icmp slt i64 %17, 128, !dbg !4249
  %19 = select i1 %18, i64 128, i64 0, !dbg !4249
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !809, metadata !DIExpression()), !dbg !4241
  %21 = icmp eq i64 %20, 0, !dbg !4250
  br i1 %21, label %26, label %22, !dbg !4252

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !807, metadata !DIExpression()), !dbg !4241
  %24 = srem i64 %20, %4, !dbg !4255
  %25 = sub nsw i64 %20, %24, !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !808, metadata !DIExpression()), !dbg !4241
  br label %26, !dbg !4257

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4241
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !808, metadata !DIExpression()), !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !807, metadata !DIExpression()), !dbg !4241
  %29 = icmp eq ptr %0, null, !dbg !4258
  br i1 %29, label %30, label %31, !dbg !4260

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4261, !tbaa !1143
  br label %31, !dbg !4262

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4263
  %33 = icmp slt i64 %32, %2, !dbg !4265
  br i1 %33, label %34, label %46, !dbg !4266

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4267
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4267
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4267
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !807, metadata !DIExpression()), !dbg !4241
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4268
  br i1 %40, label %45, label %41, !dbg !4268

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4269
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4269
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !808, metadata !DIExpression()), !dbg !4241
  br i1 %43, label %45, label %46, !dbg !4270

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #40, !dbg !4271
  unreachable, !dbg !4271

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4241
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !808, metadata !DIExpression()), !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !807, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %0, metadata !4087, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %48, metadata !4088, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 %48, metadata !4094, metadata !DIExpression()), !dbg !4274
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4276
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !4277
  call void @llvm.dbg.value(metadata ptr %50, metadata !4015, metadata !DIExpression()), !dbg !4278
  %51 = icmp eq ptr %50, null, !dbg !4280
  br i1 %51, label %52, label %53, !dbg !4281

52:                                               ; preds = %46
  tail call void @xalloc_die() #40, !dbg !4282
  unreachable, !dbg !4282

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !801, metadata !DIExpression()), !dbg !4241
  store i64 %47, ptr %1, align 8, !dbg !4283, !tbaa !1143
  ret ptr %50, !dbg !4284
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4285 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4287, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 1, metadata !4292, metadata !DIExpression()), !dbg !4293
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4295
  call void @llvm.dbg.value(metadata ptr %2, metadata !4015, metadata !DIExpression()), !dbg !4296
  %3 = icmp eq ptr %2, null, !dbg !4298
  br i1 %3, label %4, label %5, !dbg !4299

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4300
  unreachable, !dbg !4300

5:                                                ; preds = %1
  ret ptr %2, !dbg !4301
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4302 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4290 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4303
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4304
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4305
  %4 = icmp eq ptr %3, null, !dbg !4307
  br i1 %4, label %5, label %6, !dbg !4308

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4309
  unreachable, !dbg !4309

6:                                                ; preds = %2
  ret ptr %3, !dbg !4310
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4311 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %0, metadata !4315, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 1, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %0, metadata !4321, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 1, metadata !4324, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %0, metadata !4321, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 1, metadata !4324, metadata !DIExpression()), !dbg !4325
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4327
  call void @llvm.dbg.value(metadata ptr %2, metadata !4015, metadata !DIExpression()), !dbg !4328
  %3 = icmp eq ptr %2, null, !dbg !4330
  br i1 %3, label %4, label %5, !dbg !4331

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4332
  unreachable, !dbg !4332

5:                                                ; preds = %1
  ret ptr %2, !dbg !4333
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4316 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4315, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 %0, metadata !4321, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %1, metadata !4324, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %0, metadata !4321, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %1, metadata !4324, metadata !DIExpression()), !dbg !4335
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4337
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4338
  %4 = icmp eq ptr %3, null, !dbg !4340
  br i1 %4, label %5, label %6, !dbg !4341

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4342
  unreachable, !dbg !4342

6:                                                ; preds = %2
  ret ptr %3, !dbg !4343
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4344 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4348, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %1, metadata !4039, metadata !DIExpression()), !dbg !4351
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4353
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4354
  %4 = icmp eq ptr %3, null, !dbg !4356
  br i1 %4, label %5, label %6, !dbg !4357

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4358
  unreachable, !dbg !4358

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4359, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %1, metadata !4363, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4366
  ret ptr %3, !dbg !4367
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4372, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4053, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %1, metadata !4055, metadata !DIExpression()), !dbg !4377
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4379
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4380
  %4 = icmp eq ptr %3, null, !dbg !4382
  br i1 %4, label %5, label %6, !dbg !4383

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4384
  unreachable, !dbg !4384

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4359, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i64 %1, metadata !4363, metadata !DIExpression()), !dbg !4385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4387
  ret ptr %3, !dbg !4388
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4389 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4394, metadata !DIExpression()), !dbg !4396
  %3 = add nsw i64 %1, 1, !dbg !4397
  call void @llvm.dbg.value(metadata i64 %3, metadata !4053, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %3, metadata !4055, metadata !DIExpression()), !dbg !4400
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4402
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4403
  %5 = icmp eq ptr %4, null, !dbg !4405
  br i1 %5, label %6, label %7, !dbg !4406

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4407
  unreachable, !dbg !4407

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4395, metadata !DIExpression()), !dbg !4396
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4408
  store i8 0, ptr %8, align 1, !dbg !4409, !tbaa !925
  call void @llvm.dbg.value(metadata ptr %4, metadata !4359, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %1, metadata !4363, metadata !DIExpression()), !dbg !4410
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4412
  ret ptr %4, !dbg !4413
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4414 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4416, metadata !DIExpression()), !dbg !4417
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4418
  %3 = add i64 %2, 1, !dbg !4419
  call void @llvm.dbg.value(metadata ptr %0, metadata !4348, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i64 %3, metadata !4349, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i64 %3, metadata !4039, metadata !DIExpression()), !dbg !4422
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4424
  call void @llvm.dbg.value(metadata ptr %4, metadata !4015, metadata !DIExpression()), !dbg !4425
  %5 = icmp eq ptr %4, null, !dbg !4427
  br i1 %5, label %6, label %7, !dbg !4428

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4429
  unreachable, !dbg !4429

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4359, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %3, metadata !4363, metadata !DIExpression()), !dbg !4430
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4432
  ret ptr %4, !dbg !4433
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4434 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4439, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4436, metadata !DIExpression()), !dbg !4440
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.132, ptr noundef nonnull @.str.2.133, i32 noundef 5) #38, !dbg !4439
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.134, ptr noundef %2) #38, !dbg !4439
  %3 = icmp eq i32 %1, 0, !dbg !4439
  tail call void @llvm.assume(i1 %3), !dbg !4439
  tail call void @abort() #40, !dbg !4441
  unreachable, !dbg !4441
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4442 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4485, metadata !DIExpression(), metadata !4504, metadata ptr %3, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4481, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4483, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4484, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4506
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4489, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4491, metadata !DIExpression()), !dbg !4507
  br label %4, !dbg !4508

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4505
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4507
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4505
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4509
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4510
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4482, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4483, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4491, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4489, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4484, metadata !DIExpression()), !dbg !4505
  %11 = load i8, ptr %6, align 1, !dbg !4510, !tbaa !925
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4511

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4505
  %13 = icmp slt i64 %7, 80, !dbg !4512
  br i1 %13, label %14, label %43, !dbg !4515

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4516
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4507
  store i8 114, ptr %10, align 1, !dbg !4517, !tbaa !925
  br label %43, !dbg !4518

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4505
  %17 = or i32 %8, 576, !dbg !4519
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4483, metadata !DIExpression()), !dbg !4505
  %18 = icmp slt i64 %7, 80, !dbg !4520
  br i1 %18, label %19, label %43, !dbg !4522

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4523
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4507
  store i8 119, ptr %10, align 1, !dbg !4524, !tbaa !925
  br label %43, !dbg !4525

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4505
  %22 = or i32 %8, 1088, !dbg !4526
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4483, metadata !DIExpression()), !dbg !4505
  %23 = icmp slt i64 %7, 80, !dbg !4527
  br i1 %23, label %24, label %43, !dbg !4529

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4530
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4507
  store i8 97, ptr %10, align 1, !dbg !4531, !tbaa !925
  br label %43, !dbg !4532

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4483, metadata !DIExpression()), !dbg !4505
  %27 = icmp slt i64 %7, 80, !dbg !4533
  br i1 %27, label %28, label %43, !dbg !4535

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4536
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4507
  store i8 98, ptr %10, align 1, !dbg !4537, !tbaa !925
  br label %43, !dbg !4538

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4505
  %31 = icmp slt i64 %7, 80, !dbg !4539
  br i1 %31, label %32, label %43, !dbg !4541

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4542
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4507
  store i8 43, ptr %10, align 1, !dbg !4543, !tbaa !925
  br label %43, !dbg !4544

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4545
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4483, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4484, metadata !DIExpression()), !dbg !4505
  br label %43, !dbg !4546

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4547
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4483, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4484, metadata !DIExpression()), !dbg !4505
  br label %43, !dbg !4548

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39, !dbg !4549
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4492, metadata !DIExpression()), !dbg !4550
  %40 = sub nsw i64 80, %7, !dbg !4551
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4553
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4492, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %10, metadata !4554, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata ptr %6, metadata !4557, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %41, metadata !4558, metadata !DIExpression()), !dbg !4559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #38, !dbg !4561
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4562
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4491, metadata !DIExpression()), !dbg !4507
  br label %49, !dbg !4563

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4505
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4505
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4482, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4483, metadata !DIExpression()), !dbg !4505
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4507
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4484, metadata !DIExpression()), !dbg !4505
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4564
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4489, metadata !DIExpression()), !dbg !4507
  br label %4, !dbg !4565, !llvm.loop !4566

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4491, metadata !DIExpression()), !dbg !4507
  store i8 0, ptr %50, align 1, !dbg !4568, !tbaa !925
  %51 = and i8 %5, 1, !dbg !4569
  %52 = icmp eq i8 %51, 0, !dbg !4569
  br i1 %52, label %64, label %53, !dbg !4570

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !4571
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #38, !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4497, metadata !DIExpression()), !dbg !4573
  %56 = icmp slt i32 %55, 0, !dbg !4574
  br i1 %56, label %66, label %57, !dbg !4576

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #38, !dbg !4577
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4500, metadata !DIExpression()), !dbg !4573
  %59 = icmp eq ptr %58, null, !dbg !4578
  br i1 %59, label %60, label %66, !dbg !4579

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #41, !dbg !4580
  %62 = load i32, ptr %61, align 4, !dbg !4580, !tbaa !916
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4501, metadata !DIExpression()), !dbg !4581
  %63 = tail call i32 @close(i32 noundef %55) #38, !dbg !4582
  store i32 %62, ptr %61, align 4, !dbg !4583, !tbaa !916
  br label %66, !dbg !4584

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata ptr %1, metadata !4588, metadata !DIExpression()), !dbg !4589
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4591
  br label %66, !dbg !4592

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4505
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !4593
  ret ptr %67, !dbg !4593
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4594 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !4597 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4600 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4601 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4604 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4647
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4643, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4647
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4649, metadata !DIExpression()), !dbg !4652
  %3 = load i32, ptr %0, align 8, !dbg !4654, !tbaa !1486
  %4 = and i32 %3, 32, !dbg !4655
  %5 = icmp eq i32 %4, 0, !dbg !4655
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4647
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4656
  %7 = icmp eq i32 %6, 0, !dbg !4657
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4647
  br i1 %5, label %8, label %18, !dbg !4658

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4660
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4647
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4661
  %11 = xor i1 %7, true, !dbg !4661
  %12 = sext i1 %11 to i32, !dbg !4661
  br i1 %10, label %21, label %13, !dbg !4661

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4662
  %15 = load i32, ptr %14, align 4, !dbg !4662, !tbaa !916
  %16 = icmp ne i32 %15, 9, !dbg !4663
  %17 = sext i1 %16 to i32, !dbg !4664
  br label %21, !dbg !4664

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4665

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4667
  store i32 0, ptr %20, align 4, !dbg !4669, !tbaa !916
  br label %21, !dbg !4667

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4647
  ret i32 %22, !dbg !4670
}

; Function Attrs: nounwind
declare !dbg !4671 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4674 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4679, metadata !DIExpression()), !dbg !4684
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4680, metadata !DIExpression()), !dbg !4684
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4681, metadata !DIExpression()), !dbg !4684
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4682, metadata !DIExpression()), !dbg !4684
  %5 = icmp eq ptr %1, null, !dbg !4685
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4687
  %7 = select i1 %5, ptr @.str.141, ptr %1, !dbg !4687
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4681, metadata !DIExpression()), !dbg !4684
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4680, metadata !DIExpression()), !dbg !4684
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4679, metadata !DIExpression()), !dbg !4684
  %9 = icmp eq ptr %3, null, !dbg !4688
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4690
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4682, metadata !DIExpression()), !dbg !4684
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !4691
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4683, metadata !DIExpression()), !dbg !4684
  %12 = icmp ult i64 %11, -3, !dbg !4692
  br i1 %12, label %13, label %17, !dbg !4694

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !4695
  %15 = icmp eq i32 %14, 0, !dbg !4695
  br i1 %15, label %16, label %29, !dbg !4696

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4697, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata ptr %10, metadata !4704, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.value(metadata i32 0, metadata !4707, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.value(metadata i64 8, metadata !4708, metadata !DIExpression()), !dbg !4709
  store i64 0, ptr %10, align 1, !dbg !4711
  br label %29, !dbg !4712

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4713
  br i1 %18, label %19, label %20, !dbg !4715

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4716
  unreachable, !dbg !4716

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4717

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4719
  br i1 %23, label %29, label %24, !dbg !4720

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4721
  br i1 %25, label %29, label %26, !dbg !4724

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4725, !tbaa !925
  %28 = zext i8 %27 to i32, !dbg !4726
  store i32 %28, ptr %6, align 4, !dbg !4727, !tbaa !916
  br label %29, !dbg !4728

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4684
  ret i64 %30, !dbg !4729
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4730 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4736 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4738, metadata !DIExpression()), !dbg !4742
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4739, metadata !DIExpression()), !dbg !4742
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4740, metadata !DIExpression()), !dbg !4742
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4743
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4743
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4741, metadata !DIExpression()), !dbg !4742
  br i1 %5, label %6, label %8, !dbg !4745

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !4746
  store i32 12, ptr %7, align 4, !dbg !4748, !tbaa !916
  br label %12, !dbg !4749

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4743
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata ptr %0, metadata !4750, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i64 %9, metadata !4753, metadata !DIExpression()), !dbg !4754
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4756
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4757
  br label %12, !dbg !4758

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4742
  ret ptr %13, !dbg !4759
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4760 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4769
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4765, metadata !DIExpression(), metadata !4769, metadata ptr %2, metadata !DIExpression()), !dbg !4770
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4764, metadata !DIExpression()), !dbg !4770
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4771
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4772
  %4 = icmp eq i32 %3, 0, !dbg !4772
  br i1 %4, label %5, label %12, !dbg !4774

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4775, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata !883, metadata !4778, metadata !DIExpression()), !dbg !4779
  %6 = load i16, ptr %2, align 16, !dbg !4782
  %7 = icmp eq i16 %6, 67, !dbg !4782
  br i1 %7, label %11, label %8, !dbg !4783

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4775, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata ptr @.str.1.146, metadata !4778, metadata !DIExpression()), !dbg !4784
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.146, i64 6), !dbg !4786
  %10 = icmp eq i32 %9, 0, !dbg !4787
  br i1 %10, label %11, label %12, !dbg !4788

11:                                               ; preds = %8, %5
  br label %12, !dbg !4789

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4770
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4790
  ret i1 %13, !dbg !4790
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4791 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4795, metadata !DIExpression()), !dbg !4798
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4796, metadata !DIExpression()), !dbg !4798
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4797, metadata !DIExpression()), !dbg !4798
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4799
  ret i32 %4, !dbg !4800
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4801 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4805, metadata !DIExpression()), !dbg !4806
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4807
  ret ptr %2, !dbg !4808
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4809 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4811, metadata !DIExpression()), !dbg !4813
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4814
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4812, metadata !DIExpression()), !dbg !4813
  ret ptr %2, !dbg !4815
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4816 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4818, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4819, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4820, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %0, metadata !4811, metadata !DIExpression()), !dbg !4826
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4828
  call void @llvm.dbg.value(metadata ptr %4, metadata !4812, metadata !DIExpression()), !dbg !4826
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4821, metadata !DIExpression()), !dbg !4825
  %5 = icmp eq ptr %4, null, !dbg !4829
  br i1 %5, label %6, label %9, !dbg !4830

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4831
  br i1 %7, label %19, label %8, !dbg !4834

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4835, !tbaa !925
  br label %19, !dbg !4836

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4837
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4822, metadata !DIExpression()), !dbg !4838
  %11 = icmp ult i64 %10, %2, !dbg !4839
  br i1 %11, label %12, label %14, !dbg !4841

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4842
  call void @llvm.dbg.value(metadata ptr %1, metadata !4844, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata ptr %4, metadata !4847, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %13, metadata !4848, metadata !DIExpression()), !dbg !4849
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4851
  br label %19, !dbg !4852

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4853
  br i1 %15, label %19, label %16, !dbg !4856

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4857
  call void @llvm.dbg.value(metadata ptr %1, metadata !4844, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata ptr %4, metadata !4847, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %17, metadata !4848, metadata !DIExpression()), !dbg !4859
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4861
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4862
  store i8 0, ptr %18, align 1, !dbg !4863, !tbaa !925
  br label %19, !dbg !4864

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4865
  ret i32 %20, !dbg !4866
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #35 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!74, !425, !429, !444, !725, !757, !762, !764, !767, !769, !771, !495, !509, !560, !773, !717, !779, !811, !813, !815, !741, !817, !819, !823, !825}
!llvm.ident = !{!827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827}
!llvm.module.flags = !{!828, !829, !830, !831, !832, !833, !834}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/paste.c", directory: "/src", checksumkind: CSK_MD5, checksum: "043eec2995868248cd7453e271fe4ea7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1632, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 204)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 952, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 119)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1328, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 166)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 69)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 5)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "longopts", scope: !74, file: !2, line: 74, type: !407, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/paste.o -MD -MP -MF src/.deps/paste.Tpo -c src/paste.c -o src/.paste.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !131, globals: !142, splitDebugInlining: false, nameTableKind: None)
!75 = !{!76, !82, !97, !112, !116, !119, !122}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 337, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!81 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !83, line: 42, baseType: !84, size: 32, elements: !85)
!83 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!84 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!86 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!87 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!88 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!89 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!90 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!91 = !DIEnumerator(name: "c_quoting_style", value: 5)
!92 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!93 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!94 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!95 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!96 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 46, baseType: !84, size: 32, elements: !99)
!98 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!100 = !DIEnumerator(name: "_ISupper", value: 256)
!101 = !DIEnumerator(name: "_ISlower", value: 512)
!102 = !DIEnumerator(name: "_ISalpha", value: 1024)
!103 = !DIEnumerator(name: "_ISdigit", value: 2048)
!104 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!105 = !DIEnumerator(name: "_ISspace", value: 8192)
!106 = !DIEnumerator(name: "_ISprint", value: 16384)
!107 = !DIEnumerator(name: "_ISgraph", value: 32768)
!108 = !DIEnumerator(name: "_ISblank", value: 1)
!109 = !DIEnumerator(name: "_IScntrl", value: 2)
!110 = !DIEnumerator(name: "_ISpunct", value: 4)
!111 = !DIEnumerator(name: "_ISalnum", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 127, baseType: !84, size: 32, elements: !114)
!113 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!114 = !{!115}
!115 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 131, baseType: !84, size: 32, elements: !117)
!117 = !{!118}
!118 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 130, baseType: !84, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 44, baseType: !84, size: 32, elements: !124)
!123 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!126 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!127 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!128 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!129 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!130 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!131 = !{!132, !133, !78, !134, !135, !138, !140, !141}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 18, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!142 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !143, !148, !153, !158, !163, !165, !170, !173, !175, !177, !180, !185, !190, !272, !274, !276, !281, !283, !285, !287, !289, !291, !293, !295, !297, !302, !307, !309, !311, !313, !315, !317, !319, !324, !329, !331, !336, !338, !340, !342, !344, !346, !351, !353, !355, !360, !365, !370, !375, !377, !382, !384, !386, !72, !388, !390, !396, !398, !400, !402}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 3)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 14)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 15)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 16)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !49, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 52)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !74, file: !2, line: 55, type: !172, isLocal: true, isDefinition: true)
!172 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "serial_merge", scope: !74, file: !2, line: 59, type: !172, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "delims", scope: !74, file: !2, line: 63, type: !132, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "delim_lens", scope: !74, file: !2, line: 67, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !77, line: 729, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 56)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !77, line: 736, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 75)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !192, file: !77, line: 575, type: !78, isLocal: true, isDefinition: true)
!192 = distinct !DISubprogram(name: "oputs_", scope: !77, file: !77, line: 573, type: !193, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !195)
!193 = !DISubroutineType(cc: DW_CC_nocall, types: !194)
!194 = !{null, !138, !138}
!195 = !{!196, !197, !198, !201, !202, !203, !204, !208, !209, !210, !211, !213, !266, !267, !268, !270, !271}
!196 = !DILocalVariable(name: "program", arg: 1, scope: !192, file: !77, line: 573, type: !138)
!197 = !DILocalVariable(name: "option", arg: 2, scope: !192, file: !77, line: 573, type: !138)
!198 = !DILocalVariable(name: "term", scope: !199, file: !77, line: 585, type: !138)
!199 = distinct !DILexicalBlock(scope: !200, file: !77, line: 582, column: 5)
!200 = distinct !DILexicalBlock(scope: !192, file: !77, line: 581, column: 7)
!201 = !DILocalVariable(name: "double_space", scope: !192, file: !77, line: 594, type: !172)
!202 = !DILocalVariable(name: "first_word", scope: !192, file: !77, line: 595, type: !138)
!203 = !DILocalVariable(name: "option_text", scope: !192, file: !77, line: 596, type: !138)
!204 = !DILocalVariable(name: "s", scope: !205, file: !77, line: 608, type: !138)
!205 = distinct !DILexicalBlock(scope: !206, file: !77, line: 605, column: 5)
!206 = distinct !DILexicalBlock(scope: !207, file: !77, line: 604, column: 12)
!207 = distinct !DILexicalBlock(scope: !192, file: !77, line: 597, column: 7)
!208 = !DILocalVariable(name: "spaces", scope: !205, file: !77, line: 609, type: !135)
!209 = !DILocalVariable(name: "anchor_len", scope: !192, file: !77, line: 620, type: !135)
!210 = !DILocalVariable(name: "desc_text", scope: !192, file: !77, line: 625, type: !138)
!211 = !DILocalVariable(name: "__ptr", scope: !212, file: !77, line: 644, type: !138)
!212 = distinct !DILexicalBlock(scope: !192, file: !77, line: 644, column: 3)
!213 = !DILocalVariable(name: "__stream", scope: !212, file: !77, line: 644, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !217)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !235, !237, !238, !239, !243, !244, !246, !247, !250, !252, !255, !258, !259, !260, !261, !262}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !217, file: !218, line: 51, baseType: !78, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !217, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !217, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !217, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !217, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !217, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !217, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !217, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !217, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !217, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !217, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !217, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !217, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !218, line: 36, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !217, file: !218, line: 70, baseType: !236, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !217, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !217, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !217, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !241, line: 152, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!242 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !217, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !217, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !217, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !217, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !218, line: 43, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !217, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !241, line: 153, baseType: !242)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !217, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !218, line: 37, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !217, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !218, line: 38, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !217, file: !218, line: 93, baseType: !236, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !217, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !217, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !217, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !217, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 20)
!266 = !DILocalVariable(name: "__cnt", scope: !212, file: !77, line: 644, type: !135)
!267 = !DILocalVariable(name: "url_program", scope: !192, file: !77, line: 648, type: !138)
!268 = !DILocalVariable(name: "__ptr", scope: !269, file: !77, line: 686, type: !138)
!269 = distinct !DILexicalBlock(scope: !192, file: !77, line: 686, column: 3)
!270 = !DILocalVariable(name: "__stream", scope: !269, file: !77, line: 686, type: !214)
!271 = !DILocalVariable(name: "__cnt", scope: !269, file: !77, line: 686, type: !135)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !77, line: 585, type: !69, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !77, line: 586, type: !69, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !77, line: 595, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 4)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !77, line: 620, type: !19, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !49, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !69, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !278, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !145, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !77, line: 650, type: !69, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !19, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !19, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !77, line: 652, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 7)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !77, line: 653, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 8)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !77, line: 654, type: !59, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !77, line: 655, type: !59, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !77, line: 656, type: !59, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !77, line: 657, type: !59, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !77, line: 663, type: !299, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !77, line: 664, type: !59, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 17)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 40)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !155, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 61)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !77, line: 679, type: !145, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !77, line: 683, type: !69, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !77, line: 688, type: !69, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !77, line: 691, type: !304, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !77, line: 839, type: !160, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !77, line: 840, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 22)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !77, line: 841, type: !155, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !77, line: 862, type: !278, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !77, line: 868, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 71)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !77, line: 875, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 27)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 51)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 12)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !299, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 11)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !160, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !69, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !304, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "line_delim", scope: !74, file: !2, line: 72, type: !140, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "num_delims", scope: !74, file: !2, line: 70, type: !392, isLocal: true, isDefinition: true)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !393, line: 130, baseType: !394)
!393 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !395, line: 18, baseType: !242)
!395 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !49, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !145, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !77, line: 952, type: !372, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 25)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1536, elements: !20)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !410, line: 50, size: 256, elements: !411)
!410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!411 = !{!412, !413, !414, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !410, line: 52, baseType: !138, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !409, file: !410, line: 55, baseType: !78, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !409, file: !410, line: 56, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !410, line: 57, baseType: !78, size: 32, offset: 192)
!417 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!418 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!419 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !422, line: 3, type: !155, isLocal: true, isDefinition: true)
!422 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "Version", scope: !425, file: !422, line: 3, type: !138, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !422, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !426, splitDebugInlining: false, nameTableKind: None)
!426 = !{!420, !423}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "file_name", scope: !429, file: !430, line: 45, type: !138, isLocal: true, isDefinition: true)
!429 = distinct !DICompileUnit(language: DW_LANG_C11, file: !430, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !431, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!431 = !{!432, !434, !436, !438, !427, !440}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !430, line: 121, type: !299, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !430, line: 121, type: !372, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !430, line: 123, type: !299, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !430, line: 126, type: !145, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !429, file: !430, line: 55, type: !172, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !444, file: !445, line: 66, type: !490, isLocal: false, isDefinition: true)
!444 = distinct !DICompileUnit(language: DW_LANG_C11, file: !445, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !446, globals: !447, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!446 = !{!133, !140}
!447 = !{!448, !450, !469, !471, !473, !475, !442, !477, !479, !481, !483, !488}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !445, line: 272, type: !69, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "old_file_name", scope: !452, file: !445, line: 304, type: !138, isLocal: true, isDefinition: true)
!452 = distinct !DISubprogram(name: "verror_at_line", scope: !445, file: !445, line: 298, type: !453, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !462)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !78, !78, !138, !84, !138, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !456, file: !445, baseType: !84, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !456, file: !445, baseType: !84, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !456, file: !445, baseType: !133, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !456, file: !445, baseType: !133, size: 64, offset: 128)
!462 = !{!463, !464, !465, !466, !467, !468}
!463 = !DILocalVariable(name: "status", arg: 1, scope: !452, file: !445, line: 298, type: !78)
!464 = !DILocalVariable(name: "errnum", arg: 2, scope: !452, file: !445, line: 298, type: !78)
!465 = !DILocalVariable(name: "file_name", arg: 3, scope: !452, file: !445, line: 298, type: !138)
!466 = !DILocalVariable(name: "line_number", arg: 4, scope: !452, file: !445, line: 298, type: !84)
!467 = !DILocalVariable(name: "message", arg: 5, scope: !452, file: !445, line: 298, type: !138)
!468 = !DILocalVariable(name: "args", arg: 6, scope: !452, file: !445, line: 298, type: !455)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "old_line_number", scope: !452, file: !445, line: 305, type: !84, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !445, line: 338, type: !278, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !445, line: 346, type: !304, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !445, line: 346, type: !49, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "error_message_count", scope: !444, file: !445, line: 69, type: !84, isLocal: false, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !444, file: !445, line: 295, type: !78, isLocal: false, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !445, line: 208, type: !299, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !445, line: 208, type: !485, isLocal: true, isDefinition: true)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 21)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !445, line: 214, type: !69, isLocal: true, isDefinition: true)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "program_name", scope: !495, file: !496, line: 31, type: !138, isLocal: false, isDefinition: true)
!495 = distinct !DICompileUnit(language: DW_LANG_C11, file: !496, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !497, globals: !498, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!497 = !{!133, !132}
!498 = !{!493, !499, !501}
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !496, line: 46, type: !304, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !496, line: 49, type: !278, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "utf07FF", scope: !505, file: !506, line: 46, type: !533, isLocal: true, isDefinition: true)
!505 = distinct !DISubprogram(name: "proper_name_lite", scope: !506, file: !506, line: 38, type: !507, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !511)
!506 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!507 = !DISubroutineType(types: !508)
!508 = !{!138, !138, !138}
!509 = distinct !DICompileUnit(language: DW_LANG_C11, file: !506, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !510, splitDebugInlining: false, nameTableKind: None)
!510 = !{!503}
!511 = !{!512, !513, !514, !515, !520}
!512 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !505, file: !506, line: 38, type: !138)
!513 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !505, file: !506, line: 38, type: !138)
!514 = !DILocalVariable(name: "translation", scope: !505, file: !506, line: 40, type: !138)
!515 = !DILocalVariable(name: "w", scope: !505, file: !506, line: 47, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !517, line: 37, baseType: !518)
!517 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !241, line: 57, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !241, line: 42, baseType: !84)
!520 = !DILocalVariable(name: "mbs", scope: !505, file: !506, line: 48, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !523)
!522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !525)
!524 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !525, file: !524, line: 15, baseType: !78, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !525, file: !524, line: 20, baseType: !529, size: 32, offset: 32)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !524, line: 16, size: 32, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !529, file: !524, line: 18, baseType: !84, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !529, file: !524, line: 19, baseType: !278, size: 32)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !50)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !536, line: 78, type: !304, isLocal: true, isDefinition: true)
!536 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !536, line: 79, type: !19, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !536, line: 80, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 13)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !536, line: 81, type: !541, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !536, line: 82, type: !263, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !536, line: 83, type: !49, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !536, line: 84, type: !304, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !536, line: 85, type: !299, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !536, line: 86, type: !299, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !536, line: 87, type: !304, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !560, file: !536, line: 76, type: !634, isLocal: false, isDefinition: true)
!560 = distinct !DICompileUnit(language: DW_LANG_C11, file: !536, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !569, globals: !570, splitDebugInlining: false, nameTableKind: None)
!561 = !{!562, !564, !97}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !563, line: 42, baseType: !84, size: 32, elements: !85)
!563 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !563, line: 254, baseType: !84, size: 32, elements: !565)
!565 = !{!566, !567, !568}
!566 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!567 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!568 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!569 = !{!133, !78, !134, !135}
!570 = !{!534, !537, !539, !544, !546, !548, !550, !552, !554, !556, !558, !571, !575, !585, !587, !592, !594, !596, !598, !600, !623, !630, !632}
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !560, file: !536, line: 92, type: !573, isLocal: false, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 320, elements: !60)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !560, file: !536, line: 1040, type: !577, isLocal: false, isDefinition: true)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !536, line: 56, size: 448, elements: !578)
!578 = !{!579, !580, !581, !583, !584}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !577, file: !536, line: 59, baseType: !562, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !536, line: 62, baseType: !78, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !577, file: !536, line: 66, baseType: !582, size: 256, offset: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !305)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !577, file: !536, line: 69, baseType: !138, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !577, file: !536, line: 72, baseType: !138, size: 64, offset: 384)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !560, file: !536, line: 107, type: !577, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "slot0", scope: !560, file: !536, line: 831, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 256)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !536, line: 321, type: !49, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !536, line: 357, type: !49, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !536, line: 358, type: !49, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !536, line: 199, type: !299, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "quote", scope: !602, file: !536, line: 228, type: !621, isLocal: true, isDefinition: true)
!602 = distinct !DISubprogram(name: "gettext_quote", scope: !536, file: !536, line: 197, type: !603, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!138, !138, !562}
!605 = !{!606, !607, !608, !609, !610}
!606 = !DILocalVariable(name: "msgid", arg: 1, scope: !602, file: !536, line: 197, type: !138)
!607 = !DILocalVariable(name: "s", arg: 2, scope: !602, file: !536, line: 197, type: !562)
!608 = !DILocalVariable(name: "translation", scope: !602, file: !536, line: 199, type: !138)
!609 = !DILocalVariable(name: "w", scope: !602, file: !536, line: 229, type: !516)
!610 = !DILocalVariable(name: "mbs", scope: !602, file: !536, line: 230, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !613, file: !524, line: 15, baseType: !78, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !613, file: !524, line: 20, baseType: !617, size: 32, offset: 32)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !524, line: 16, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !617, file: !524, line: 18, baseType: !84, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !617, file: !524, line: 19, baseType: !278, size: 32)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !622)
!622 = !{!51, !280}
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "slotvec", scope: !560, file: !536, line: 834, type: !625, isLocal: true, isDefinition: true)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !536, line: 823, size: 128, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !626, file: !536, line: 825, baseType: !135, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !536, line: 826, baseType: !132, size: 64, offset: 64)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "nslots", scope: !560, file: !536, line: 832, type: !78, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "slotvec0", scope: !560, file: !536, line: 833, type: !626, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 704, elements: !380)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !638, line: 67, type: !372, isLocal: true, isDefinition: true)
!638 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !638, line: 69, type: !299, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !638, line: 83, type: !299, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !638, line: 83, type: !278, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !638, line: 85, type: !49, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !638, line: 88, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 171)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !638, line: 88, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 34)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !638, line: 105, type: !160, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !638, line: 109, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 23)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !638, line: 113, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 28)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !638, line: 120, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 32)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !638, line: 127, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 36)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !638, line: 134, type: !326, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !638, line: 142, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 44)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !638, line: 150, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 48)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !638, line: 159, type: !167, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !638, line: 170, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 60)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !638, line: 248, type: !263, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !638, line: 248, type: !348, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !638, line: 254, type: !263, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !638, line: 254, type: !150, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !638, line: 254, type: !326, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !638, line: 259, type: !3, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !638, line: 259, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 29)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !717, file: !718, line: 26, type: !720, isLocal: false, isDefinition: true)
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!719 = !{!715}
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 47)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "exit_failure", scope: !725, file: !726, line: 24, type: !728, isLocal: false, isDefinition: true)
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!727 = !{!723}
!728 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !145, isLocal: true, isDefinition: true)
!731 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !299, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !321, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 108, type: !54, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "internal_state", scope: !741, file: !738, line: 97, type: !744, isLocal: true, isDefinition: true)
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !742, globals: !743, splitDebugInlining: false, nameTableKind: None)
!742 = !{!133, !135, !140}
!743 = !{!736, !739}
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !746, file: !524, line: 15, baseType: !78, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !746, file: !524, line: 20, baseType: !750, size: 32, offset: 32)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !524, line: 16, size: 32, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !750, file: !524, line: 18, baseType: !84, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !750, file: !524, line: 19, baseType: !278, size: 32)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !756, line: 35, type: !19, isLocal: true, isDefinition: true)
!756 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!759 = !{!760}
!760 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !761, line: 44, baseType: !84, size: 32, elements: !124)
!761 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!766 = !{!133}
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !774, retainedTypes: !766, globals: !778, splitDebugInlining: false, nameTableKind: None)
!774 = !{!775}
!775 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !638, line: 40, baseType: !84, size: 32, elements: !776)
!776 = !{!777}
!777 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!778 = !{!636, !639, !641, !643, !645, !647, !652, !657, !659, !664, !669, !674, !679, !681, !686, !691, !693, !698, !700, !702, !704, !706, !708, !710}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !781, retainedTypes: !810, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!781 = !{!782, !793}
!782 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !783, file: !780, line: 188, baseType: !84, size: 32, elements: !791)
!783 = distinct !DISubprogram(name: "x2nrealloc", scope: !780, file: !780, line: 176, type: !784, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!133, !133, !179, !135}
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "p", arg: 1, scope: !783, file: !780, line: 176, type: !133)
!788 = !DILocalVariable(name: "pn", arg: 2, scope: !783, file: !780, line: 176, type: !179)
!789 = !DILocalVariable(name: "s", arg: 3, scope: !783, file: !780, line: 176, type: !135)
!790 = !DILocalVariable(name: "n", scope: !783, file: !780, line: 178, type: !135)
!791 = !{!792}
!792 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!793 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !794, file: !780, line: 228, baseType: !84, size: 32, elements: !791)
!794 = distinct !DISubprogram(name: "xpalloc", scope: !780, file: !780, line: 223, type: !795, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !800)
!795 = !DISubroutineType(types: !796)
!796 = !{!133, !133, !797, !798, !394, !798}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !799, line: 130, baseType: !394)
!799 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809}
!801 = !DILocalVariable(name: "pa", arg: 1, scope: !794, file: !780, line: 223, type: !133)
!802 = !DILocalVariable(name: "pn", arg: 2, scope: !794, file: !780, line: 223, type: !797)
!803 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !794, file: !780, line: 223, type: !798)
!804 = !DILocalVariable(name: "n_max", arg: 4, scope: !794, file: !780, line: 223, type: !394)
!805 = !DILocalVariable(name: "s", arg: 5, scope: !794, file: !780, line: 223, type: !798)
!806 = !DILocalVariable(name: "n0", scope: !794, file: !780, line: 230, type: !798)
!807 = !DILocalVariable(name: "n", scope: !794, file: !780, line: 237, type: !798)
!808 = !DILocalVariable(name: "nbytes", scope: !794, file: !780, line: 248, type: !798)
!809 = !DILocalVariable(name: "adjusted_nbytes", scope: !794, file: !780, line: 252, type: !798)
!810 = !{!132, !133}
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !812, splitDebugInlining: false, nameTableKind: None)
!812 = !{!729, !732, !734}
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !820, splitDebugInlining: false, nameTableKind: None)
!820 = !{!821, !754}
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !756, line: 35, type: !49, isLocal: true, isDefinition: true)
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!827 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!828 = !{i32 7, !"Dwarf Version", i32 5}
!829 = !{i32 2, !"Debug Info Version", i32 3}
!830 = !{i32 1, !"wchar_size", i32 4}
!831 = !{i32 8, !"PIC Level", i32 2}
!832 = !{i32 7, !"PIE Level", i32 2}
!833 = !{i32 7, !"uwtable", i32 2}
!834 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!835 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 447, type: !836, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !78}
!838 = !{!839}
!839 = !DILocalVariable(name: "status", arg: 1, scope: !835, file: !2, line: 447, type: !78)
!840 = !DILocation(line: 0, scope: !835)
!841 = !DILocation(line: 449, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !835, file: !2, line: 449, column: 7)
!843 = !DILocation(line: 449, column: 7, scope: !835)
!844 = !DILocation(line: 450, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !2, line: 450, column: 5)
!846 = !{!847, !847, i64 0}
!847 = !{!"any pointer", !848, i64 0}
!848 = !{!"omnipotent char", !849, i64 0}
!849 = !{!"Simple C/C++ TBAA"}
!850 = !DILocation(line: 453, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !842, file: !2, line: 452, column: 5)
!852 = !DILocation(line: 457, column: 7, scope: !851)
!853 = !DILocation(line: 729, column: 3, scope: !854, inlinedAt: !855)
!854 = distinct !DISubprogram(name: "emit_stdin_note", scope: !77, file: !77, line: 727, type: !491, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!855 = distinct !DILocation(line: 464, column: 7, scope: !851)
!856 = !DILocation(line: 736, column: 3, scope: !857, inlinedAt: !858)
!857 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !491, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!858 = distinct !DILocation(line: 465, column: 7, scope: !851)
!859 = !DILocation(line: 467, column: 7, scope: !851)
!860 = !DILocation(line: 472, column: 7, scope: !851)
!861 = !DILocation(line: 478, column: 7, scope: !851)
!862 = !DILocation(line: 482, column: 7, scope: !851)
!863 = !DILocation(line: 483, column: 7, scope: !851)
!864 = !DILocalVariable(name: "program", arg: 1, scope: !865, file: !77, line: 836, type: !138)
!865 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !866, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !138}
!868 = !{!864, !869, !876, !877, !879, !880}
!869 = !DILocalVariable(name: "infomap", scope: !865, file: !77, line: 838, type: !870)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 896, elements: !300)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !865, file: !77, line: 838, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !872, file: !77, line: 838, baseType: !138, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !872, file: !77, line: 838, baseType: !138, size: 64, offset: 64)
!876 = !DILocalVariable(name: "node", scope: !865, file: !77, line: 848, type: !138)
!877 = !DILocalVariable(name: "map_prog", scope: !865, file: !77, line: 849, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!879 = !DILocalVariable(name: "lc_messages", scope: !865, file: !77, line: 861, type: !138)
!880 = !DILocalVariable(name: "url_program", scope: !865, file: !77, line: 874, type: !138)
!881 = !DILocation(line: 0, scope: !865, inlinedAt: !882)
!882 = distinct !DILocation(line: 485, column: 7, scope: !851)
!883 = !{}
!884 = !DILocation(line: 857, column: 3, scope: !865, inlinedAt: !882)
!885 = !DILocation(line: 861, column: 29, scope: !865, inlinedAt: !882)
!886 = !DILocation(line: 862, column: 7, scope: !887, inlinedAt: !882)
!887 = distinct !DILexicalBlock(scope: !865, file: !77, line: 862, column: 7)
!888 = !DILocation(line: 862, column: 19, scope: !887, inlinedAt: !882)
!889 = !DILocation(line: 862, column: 22, scope: !887, inlinedAt: !882)
!890 = !DILocation(line: 862, column: 7, scope: !865, inlinedAt: !882)
!891 = !DILocation(line: 868, column: 7, scope: !892, inlinedAt: !882)
!892 = distinct !DILexicalBlock(scope: !887, file: !77, line: 863, column: 5)
!893 = !DILocation(line: 870, column: 5, scope: !892, inlinedAt: !882)
!894 = !DILocation(line: 875, column: 3, scope: !865, inlinedAt: !882)
!895 = !DILocation(line: 877, column: 3, scope: !865, inlinedAt: !882)
!896 = !DILocation(line: 487, column: 3, scope: !835)
!897 = !DISubprogram(name: "dcgettext", scope: !898, file: !898, line: 51, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!899 = !DISubroutineType(types: !900)
!900 = !{!132, !138, !138, !78}
!901 = !DISubprogram(name: "__fprintf_chk", scope: !902, file: !902, line: 93, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!903 = !DISubroutineType(types: !904)
!904 = !{!78, !905, !78, !906, null}
!905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !214)
!906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!907 = !DISubprogram(name: "__printf_chk", scope: !902, file: !902, line: 95, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!78, !78, !906, null}
!910 = !DISubprogram(name: "fputs_unlocked", scope: !911, file: !911, line: 691, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!912 = !DISubroutineType(types: !913)
!913 = !{!78, !906, !905}
!914 = !DILocation(line: 0, scope: !192)
!915 = !DILocation(line: 581, column: 7, scope: !200)
!916 = !{!917, !917, i64 0}
!917 = !{!"int", !848, i64 0}
!918 = !DILocation(line: 581, column: 19, scope: !200)
!919 = !DILocation(line: 581, column: 7, scope: !192)
!920 = !DILocation(line: 585, column: 26, scope: !199)
!921 = !DILocation(line: 0, scope: !199)
!922 = !DILocation(line: 586, column: 23, scope: !199)
!923 = !DILocation(line: 586, column: 28, scope: !199)
!924 = !DILocation(line: 586, column: 32, scope: !199)
!925 = !{!848, !848, i64 0}
!926 = !DILocation(line: 586, column: 38, scope: !199)
!927 = !DILocalVariable(name: "__s1", arg: 1, scope: !928, file: !929, line: 1359, type: !138)
!928 = distinct !DISubprogram(name: "streq", scope: !929, file: !929, line: 1359, type: !930, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !932)
!929 = !DIFile(filename: "./lib/string.h", directory: "/src")
!930 = !DISubroutineType(types: !931)
!931 = !{!172, !138, !138}
!932 = !{!927, !933}
!933 = !DILocalVariable(name: "__s2", arg: 2, scope: !928, file: !929, line: 1359, type: !138)
!934 = !DILocation(line: 0, scope: !928, inlinedAt: !935)
!935 = distinct !DILocation(line: 586, column: 41, scope: !199)
!936 = !DILocation(line: 1361, column: 11, scope: !928, inlinedAt: !935)
!937 = !DILocation(line: 1361, column: 10, scope: !928, inlinedAt: !935)
!938 = !DILocation(line: 586, column: 19, scope: !199)
!939 = !DILocation(line: 587, column: 5, scope: !199)
!940 = !DILocation(line: 588, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !192, file: !77, line: 588, column: 7)
!942 = !DILocation(line: 588, column: 7, scope: !192)
!943 = !DILocation(line: 590, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !77, line: 589, column: 5)
!945 = !DILocation(line: 591, column: 7, scope: !944)
!946 = !DILocation(line: 595, column: 37, scope: !192)
!947 = !DILocation(line: 595, column: 35, scope: !192)
!948 = !DILocation(line: 596, column: 29, scope: !192)
!949 = !DILocation(line: 597, column: 8, scope: !207)
!950 = !DILocation(line: 597, column: 7, scope: !192)
!951 = !DILocation(line: 604, column: 24, scope: !206)
!952 = !DILocation(line: 604, column: 12, scope: !207)
!953 = !DILocation(line: 0, scope: !205)
!954 = !DILocation(line: 610, column: 16, scope: !205)
!955 = !DILocation(line: 610, column: 7, scope: !205)
!956 = !DILocation(line: 611, column: 21, scope: !205)
!957 = !{!958, !958, i64 0}
!958 = !{!"short", !848, i64 0}
!959 = !DILocation(line: 611, column: 19, scope: !205)
!960 = !DILocation(line: 611, column: 16, scope: !205)
!961 = !DILocation(line: 610, column: 30, scope: !205)
!962 = distinct !{!962, !955, !956, !963}
!963 = !{!"llvm.loop.mustprogress"}
!964 = !DILocation(line: 612, column: 18, scope: !965)
!965 = distinct !DILexicalBlock(scope: !205, file: !77, line: 612, column: 11)
!966 = !DILocation(line: 612, column: 11, scope: !205)
!967 = !DILocation(line: 620, column: 23, scope: !192)
!968 = !DILocation(line: 625, column: 39, scope: !192)
!969 = !DILocation(line: 626, column: 3, scope: !192)
!970 = !DILocation(line: 626, column: 10, scope: !192)
!971 = !DILocation(line: 626, column: 21, scope: !192)
!972 = !DILocation(line: 628, column: 44, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !77, line: 628, column: 11)
!974 = distinct !DILexicalBlock(scope: !192, file: !77, line: 627, column: 5)
!975 = !DILocation(line: 628, column: 32, scope: !973)
!976 = !DILocation(line: 628, column: 49, scope: !973)
!977 = !DILocation(line: 628, column: 11, scope: !974)
!978 = !DILocation(line: 630, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !77, line: 630, column: 11)
!980 = !DILocation(line: 630, column: 11, scope: !974)
!981 = !DILocation(line: 632, column: 26, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !77, line: 632, column: 15)
!983 = distinct !DILexicalBlock(scope: !979, file: !77, line: 631, column: 9)
!984 = !DILocation(line: 632, column: 34, scope: !982)
!985 = !DILocation(line: 632, column: 37, scope: !982)
!986 = !DILocation(line: 632, column: 15, scope: !983)
!987 = !DILocation(line: 636, column: 16, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !77, line: 636, column: 15)
!989 = !DILocation(line: 636, column: 29, scope: !988)
!990 = !DILocation(line: 640, column: 16, scope: !974)
!991 = distinct !{!991, !969, !992, !963}
!992 = !DILocation(line: 641, column: 5, scope: !192)
!993 = !DILocation(line: 644, column: 3, scope: !192)
!994 = !DILocation(line: 0, scope: !928, inlinedAt: !995)
!995 = distinct !DILocation(line: 648, column: 31, scope: !192)
!996 = !DILocation(line: 0, scope: !928, inlinedAt: !997)
!997 = distinct !DILocation(line: 649, column: 31, scope: !192)
!998 = !DILocation(line: 0, scope: !928, inlinedAt: !999)
!999 = distinct !DILocation(line: 650, column: 31, scope: !192)
!1000 = !DILocation(line: 0, scope: !928, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 651, column: 31, scope: !192)
!1002 = !DILocation(line: 0, scope: !928, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 652, column: 31, scope: !192)
!1004 = !DILocation(line: 0, scope: !928, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 653, column: 31, scope: !192)
!1006 = !DILocation(line: 0, scope: !928, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 654, column: 31, scope: !192)
!1008 = !DILocation(line: 0, scope: !928, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 655, column: 31, scope: !192)
!1010 = !DILocation(line: 0, scope: !928, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 656, column: 31, scope: !192)
!1012 = !DILocation(line: 0, scope: !928, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 657, column: 31, scope: !192)
!1014 = !DILocation(line: 663, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !192, file: !77, line: 663, column: 7)
!1016 = !DILocation(line: 664, column: 7, scope: !1015)
!1017 = !DILocation(line: 664, column: 10, scope: !1015)
!1018 = !DILocation(line: 663, column: 7, scope: !192)
!1019 = !DILocation(line: 669, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !77, line: 665, column: 5)
!1021 = !DILocation(line: 671, column: 5, scope: !1020)
!1022 = !DILocation(line: 676, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !77, line: 673, column: 5)
!1024 = !DILocation(line: 679, column: 3, scope: !192)
!1025 = !DILocation(line: 683, column: 3, scope: !192)
!1026 = !DILocation(line: 686, column: 3, scope: !192)
!1027 = !DILocation(line: 688, column: 3, scope: !192)
!1028 = !DILocation(line: 691, column: 3, scope: !192)
!1029 = !DILocation(line: 695, column: 3, scope: !192)
!1030 = !DILocation(line: 696, column: 1, scope: !192)
!1031 = !DISubprogram(name: "setlocale", scope: !1032, file: !1032, line: 122, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!132, !78, !138}
!1035 = !DISubprogram(name: "strncmp", scope: !1036, file: !1036, line: 159, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!78, !138, !138, !135}
!1039 = !DISubprogram(name: "exit", scope: !1040, file: !1040, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1040 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1041 = !DISubprogram(name: "getenv", scope: !1040, file: !1040, line: 641, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!132, !138}
!1044 = !DISubprogram(name: "strcmp", scope: !1036, file: !1036, line: 156, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!78, !138, !138}
!1047 = !DISubprogram(name: "strspn", scope: !1036, file: !1036, line: 297, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!137, !138, !138}
!1050 = !DISubprogram(name: "strchr", scope: !1036, file: !1036, line: 246, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!132, !138, !78}
!1053 = !DISubprogram(name: "__ctype_b_loc", scope: !98, file: !98, line: 79, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1059 = !DISubprogram(name: "strcspn", scope: !1036, file: !1036, line: 293, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubprogram(name: "fwrite_unlocked", scope: !911, file: !911, line: 704, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!135, !1063, !135, !135, !905}
!1063 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1066 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 491, type: !1067, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1070)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!78, !78, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076}
!1071 = !DILocalVariable(name: "argc", arg: 1, scope: !1066, file: !2, line: 491, type: !78)
!1072 = !DILocalVariable(name: "argv", arg: 2, scope: !1066, file: !2, line: 491, type: !1069)
!1073 = !DILocalVariable(name: "optc", scope: !1066, file: !2, line: 493, type: !78)
!1074 = !DILocalVariable(name: "delim_arg", scope: !1066, file: !2, line: 494, type: !138)
!1075 = !DILocalVariable(name: "nfiles", scope: !1066, file: !2, line: 530, type: !78)
!1076 = !DILocalVariable(name: "ok", scope: !1066, file: !2, line: 546, type: !172)
!1077 = distinct !DIAssignID()
!1078 = distinct !DIAssignID()
!1079 = !DILocation(line: 0, scope: !1066)
!1080 = !DILocation(line: 497, column: 21, scope: !1066)
!1081 = !DILocation(line: 497, column: 3, scope: !1066)
!1082 = !DILocation(line: 498, column: 3, scope: !1066)
!1083 = !DILocation(line: 499, column: 3, scope: !1066)
!1084 = !DILocation(line: 500, column: 3, scope: !1066)
!1085 = !DILocation(line: 502, column: 3, scope: !1066)
!1086 = !DILocation(line: 504, column: 3, scope: !1066)
!1087 = !DILocation(line: 504, column: 18, scope: !1066)
!1088 = !DILocation(line: 510, column: 24, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 507, column: 9)
!1090 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 505, column: 5)
!1091 = !DILocation(line: 510, column: 34, scope: !1089)
!1092 = !DILocation(line: 511, column: 11, scope: !1089)
!1093 = distinct !{!1093, !1086, !1094, !963}
!1094 = !DILocation(line: 528, column: 5, scope: !1066)
!1095 = !DILocation(line: 514, column: 24, scope: !1089)
!1096 = !DILocation(line: 515, column: 11, scope: !1089)
!1097 = !DILocation(line: 518, column: 22, scope: !1089)
!1098 = !DILocation(line: 519, column: 11, scope: !1089)
!1099 = !DILocation(line: 521, column: 9, scope: !1089)
!1100 = !DILocation(line: 523, column: 9, scope: !1089)
!1101 = !DILocation(line: 526, column: 11, scope: !1089)
!1102 = !DILocation(line: 530, column: 23, scope: !1066)
!1103 = !DILocation(line: 530, column: 21, scope: !1066)
!1104 = !DILocation(line: 531, column: 14, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 531, column: 7)
!1106 = !DILocation(line: 531, column: 7, scope: !1066)
!1107 = !DILocation(line: 533, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 532, column: 5)
!1109 = !DILocation(line: 533, column: 20, scope: !1108)
!1110 = !DILocation(line: 535, column: 5, scope: !1108)
!1111 = !DILocalVariable(name: "strptr", arg: 1, scope: !1112, file: !2, line: 93, type: !138)
!1112 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 93, type: !1113, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!78, !138}
!1115 = !{!1111, !1116, !1117, !1118, !1119, !1120, !1122}
!1116 = !DILocalVariable(name: "strout", scope: !1112, file: !2, line: 95, type: !132)
!1117 = !DILocalVariable(name: "backslash_at_end", scope: !1112, file: !2, line: 96, type: !172)
!1118 = !DILocalVariable(name: "s", scope: !1112, file: !2, line: 101, type: !138)
!1119 = !DILocalVariable(name: "idx", scope: !1112, file: !2, line: 102, type: !392)
!1120 = !DILabel(scope: !1121, name: "copy_character", file: !2, line: 141)
!1121 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 105, column: 5)
!1122 = !DILocalVariable(name: "g", scope: !1121, file: !2, line: 142, type: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !113, line: 143, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 138, size: 64, elements: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1124, file: !113, line: 140, baseType: !516, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1124, file: !113, line: 141, baseType: !140, size: 8, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1124, file: !113, line: 142, baseType: !140, size: 8, offset: 40)
!1129 = !DILocation(line: 0, scope: !1112, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 537, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 537, column: 7)
!1132 = !DILocation(line: 95, column: 18, scope: !1112, inlinedAt: !1130)
!1133 = !DILocation(line: 98, column: 10, scope: !1112, inlinedAt: !1130)
!1134 = !DILocation(line: 99, column: 26, scope: !1112, inlinedAt: !1130)
!1135 = !DILocation(line: 99, column: 16, scope: !1112, inlinedAt: !1130)
!1136 = !DILocation(line: 99, column: 14, scope: !1112, inlinedAt: !1130)
!1137 = !DILocation(line: 104, column: 10, scope: !1112, inlinedAt: !1130)
!1138 = !DILocation(line: 104, column: 3, scope: !1112, inlinedAt: !1130)
!1139 = !DILocation(line: 148, column: 11, scope: !1112, inlinedAt: !1130)
!1140 = !DILocation(line: 152, column: 21, scope: !1141, inlinedAt: !1130)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 151, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 150, column: 7)
!1143 = !{!1144, !1144, i64 0}
!1144 = !{!"long", !848, i64 0}
!1145 = !DILocation(line: 537, column: 7, scope: !1066)
!1146 = !DILocation(line: 106, column: 14, scope: !1147, inlinedAt: !1130)
!1147 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 106, column: 11)
!1148 = !DILocation(line: 106, column: 11, scope: !1121, inlinedAt: !1130)
!1149 = !DILocation(line: 108, column: 12, scope: !1150, inlinedAt: !1130)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 107, column: 9)
!1151 = !DILocation(line: 109, column: 15, scope: !1152, inlinedAt: !1130)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 109, column: 15)
!1153 = !DILocation(line: 109, column: 15, scope: !1150, inlinedAt: !1130)
!1154 = !DILocation(line: 122, column: 15, scope: !1155, inlinedAt: !1130)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 121, column: 13)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 114, column: 20)
!1157 = !DILocation(line: 0, scope: !1158, inlinedAt: !1130)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 123, column: 17)
!1159 = !DILocation(line: 0, scope: !1156, inlinedAt: !1130)
!1160 = !DILocation(line: 138, column: 11, scope: !1150, inlinedAt: !1130)
!1161 = !DILocation(line: 0, scope: !1121, inlinedAt: !1130)
!1162 = distinct !{!1162, !1138, !1163, !963}
!1163 = !DILocation(line: 146, column: 5, scope: !1112, inlinedAt: !1130)
!1164 = !DILocation(line: 291, column: 21, scope: !1165, inlinedAt: !1175)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !113, line: 291, column: 7)
!1166 = distinct !DISubprogram(name: "mcel_scant", scope: !113, file: !113, line: 288, type: !1167, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1123, !138, !4}
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DILocalVariable(name: "p", arg: 1, scope: !1166, file: !113, line: 288, type: !138)
!1171 = !DILocalVariable(name: "terminator", arg: 2, scope: !1166, file: !113, line: 288, type: !4)
!1172 = !DILocalVariable(name: "lim", scope: !1166, file: !113, line: 296, type: !138)
!1173 = !DILocalVariable(name: "i", scope: !1174, file: !113, line: 297, type: !78)
!1174 = distinct !DILexicalBlock(scope: !1166, file: !113, line: 297, column: 3)
!1175 = distinct !DILocation(line: 309, column: 10, scope: !1176, inlinedAt: !1181)
!1176 = distinct !DISubprogram(name: "mcel_scanz", scope: !113, file: !113, line: 307, type: !1177, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1123, !138}
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "p", arg: 1, scope: !1176, file: !113, line: 307, type: !138)
!1181 = distinct !DILocation(line: 142, column: 18, scope: !1121, inlinedAt: !1130)
!1182 = !DILocation(line: 141, column: 7, scope: !1121, inlinedAt: !1130)
!1183 = !DILocation(line: 0, scope: !1176, inlinedAt: !1181)
!1184 = !DILocation(line: 0, scope: !1166, inlinedAt: !1175)
!1185 = !DILocalVariable(name: "c", arg: 1, scope: !1186, file: !113, line: 215, type: !4)
!1186 = distinct !DISubprogram(name: "mcel_isbasic", scope: !113, file: !113, line: 215, type: !1187, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!172, !4}
!1189 = !{!1185}
!1190 = !DILocation(line: 0, scope: !1186, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 291, column: 7, scope: !1165, inlinedAt: !1175)
!1192 = !DILocation(line: 217, column: 10, scope: !1186, inlinedAt: !1191)
!1193 = !DILocation(line: 291, column: 7, scope: !1166, inlinedAt: !1175)
!1194 = !DILocation(line: 296, column: 23, scope: !1166, inlinedAt: !1175)
!1195 = !DILocation(line: 0, scope: !1174, inlinedAt: !1175)
!1196 = !DILocation(line: 298, column: 12, scope: !1197, inlinedAt: !1175)
!1197 = distinct !DILexicalBlock(scope: !1174, file: !113, line: 297, column: 3)
!1198 = !DILocation(line: 298, column: 17, scope: !1197, inlinedAt: !1175)
!1199 = !DILocation(line: 298, column: 9, scope: !1197, inlinedAt: !1175)
!1200 = !DILocalVariable(name: "mbs", scope: !1201, file: !113, line: 244, type: !1210)
!1201 = distinct !DISubprogram(name: "mcel_scan", scope: !113, file: !113, line: 230, type: !1202, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1123, !138, !138}
!1204 = !{!1205, !1206, !1207, !1200, !1208, !1209}
!1205 = !DILocalVariable(name: "p", arg: 1, scope: !1201, file: !113, line: 230, type: !138)
!1206 = !DILocalVariable(name: "lim", arg: 2, scope: !1201, file: !113, line: 230, type: !138)
!1207 = !DILocalVariable(name: "c", scope: !1201, file: !113, line: 235, type: !4)
!1208 = !DILocalVariable(name: "ch", scope: !1201, file: !113, line: 267, type: !516)
!1209 = !DILocalVariable(name: "len", scope: !1201, file: !113, line: 268, type: !135)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1212, file: !524, line: 15, baseType: !78, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1212, file: !524, line: 20, baseType: !1216, size: 32, offset: 32)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !524, line: 16, size: 32, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1216, file: !524, line: 18, baseType: !84, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1216, file: !524, line: 19, baseType: !278, size: 32)
!1220 = !DILocation(line: 0, scope: !1201, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 299, column: 10, scope: !1166, inlinedAt: !1175)
!1222 = !DILocation(line: 0, scope: !1186, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 236, column: 7, scope: !1224, inlinedAt: !1221)
!1224 = distinct !DILexicalBlock(scope: !1201, file: !113, line: 236, column: 7)
!1225 = !DILocation(line: 244, column: 3, scope: !1201, inlinedAt: !1221)
!1226 = !DILocation(line: 244, column: 30, scope: !1201, inlinedAt: !1221)
!1227 = !{!1228, !917, i64 0}
!1228 = !{!"", !917, i64 0, !848, i64 4}
!1229 = distinct !DIAssignID()
!1230 = !DILocation(line: 267, column: 3, scope: !1201, inlinedAt: !1221)
!1231 = !DILocation(line: 268, column: 38, scope: !1201, inlinedAt: !1221)
!1232 = !DILocation(line: 268, column: 16, scope: !1201, inlinedAt: !1221)
!1233 = !DILocation(line: 274, column: 7, scope: !1234, inlinedAt: !1221)
!1234 = distinct !DILexicalBlock(scope: !1201, file: !113, line: 274, column: 7)
!1235 = !DILocation(line: 274, column: 7, scope: !1201, inlinedAt: !1221)
!1236 = !{!"branch_weights", i32 1, i32 2000}
!1237 = !DILocation(line: 280, column: 1, scope: !1201, inlinedAt: !1221)
!1238 = !DILocalVariable(name: "__dest", arg: 1, scope: !1239, file: !1240, line: 42, type: !1243)
!1239 = distinct !DISubprogram(name: "mempcpy", scope: !1240, file: !1240, line: 42, type: !1241, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1244)
!1240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!133, !1243, !1063, !135}
!1243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!1244 = !{!1238, !1245, !1246}
!1245 = !DILocalVariable(name: "__src", arg: 2, scope: !1239, file: !1240, line: 42, type: !1063)
!1246 = !DILocalVariable(name: "__len", arg: 3, scope: !1239, file: !1240, line: 42, type: !135)
!1247 = !DILocation(line: 0, scope: !1239, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 143, column: 16, scope: !1121, inlinedAt: !1130)
!1249 = !DILocation(line: 45, column: 10, scope: !1239, inlinedAt: !1248)
!1250 = !DILocation(line: 144, column: 9, scope: !1121, inlinedAt: !1130)
!1251 = !DILocation(line: 145, column: 7, scope: !1121, inlinedAt: !1130)
!1252 = !DILocation(line: 145, column: 25, scope: !1121, inlinedAt: !1130)
!1253 = !DILocation(line: 150, column: 11, scope: !1142, inlinedAt: !1130)
!1254 = !DILocation(line: 150, column: 7, scope: !1112, inlinedAt: !1130)
!1255 = !DILocation(line: 156, column: 14, scope: !1112, inlinedAt: !1130)
!1256 = !DILocation(line: 541, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 538, column: 5)
!1258 = !DILocation(line: 546, column: 15, scope: !1066)
!1259 = !DILocation(line: 547, column: 15, scope: !1066)
!1260 = !DILocation(line: 547, column: 29, scope: !1066)
!1261 = !DILocation(line: 547, column: 24, scope: !1066)
!1262 = !DILocation(line: 546, column: 14, scope: !1066)
!1263 = !{ptr @paste_parallel, ptr @paste_serial}
!1264 = !DILocation(line: 549, column: 9, scope: !1066)
!1265 = !DILocation(line: 549, column: 3, scope: !1066)
!1266 = !DILocation(line: 550, column: 9, scope: !1066)
!1267 = !DILocation(line: 550, column: 3, scope: !1066)
!1268 = !DILocation(line: 552, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 552, column: 7)
!1270 = !DILocation(line: 552, column: 23, scope: !1269)
!1271 = !DILocation(line: 552, column: 34, scope: !1269)
!1272 = !DILocation(line: 552, column: 26, scope: !1269)
!1273 = !DILocation(line: 552, column: 41, scope: !1269)
!1274 = !DILocation(line: 552, column: 7, scope: !1066)
!1275 = !DILocation(line: 553, column: 5, scope: !1269)
!1276 = !DILocation(line: 554, column: 10, scope: !1066)
!1277 = !DILocation(line: 554, column: 3, scope: !1066)
!1278 = !DISubprogram(name: "bindtextdomain", scope: !898, file: !898, line: 86, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!132, !138, !138}
!1281 = !DISubprogram(name: "textdomain", scope: !898, file: !898, line: 82, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1282 = !DISubprogram(name: "atexit", scope: !1040, file: !1040, line: 602, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!78, !490}
!1285 = !DISubprogram(name: "getopt_long", scope: !410, file: !410, line: 66, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!78, !78, !1288, !138, !1290, !415}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1291 = !DISubprogram(name: "strlen", scope: !1036, file: !1036, line: 407, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!137, !138}
!1294 = !DISubprogram(name: "mbrtoc32", scope: !517, file: !517, line: 57, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!135, !1297, !906, !135, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1301 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 364, type: !1302, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!172, !135, !1069}
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1315, !1316, !1317}
!1305 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1301, file: !2, line: 364, type: !135)
!1306 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1301, file: !2, line: 364, type: !1069)
!1307 = !DILocalVariable(name: "ok", scope: !1301, file: !2, line: 366, type: !172)
!1308 = !DILocalVariable(name: "charnew", scope: !1301, file: !2, line: 367, type: !78)
!1309 = !DILocalVariable(name: "charold", scope: !1301, file: !2, line: 367, type: !78)
!1310 = !DILocalVariable(name: "fileptr", scope: !1301, file: !2, line: 368, type: !214)
!1311 = !DILocalVariable(name: "saved_errno", scope: !1312, file: !2, line: 372, type: !78)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 371, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 370, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 370, column: 3)
!1315 = !DILocalVariable(name: "is_stdin", scope: !1312, file: !2, line: 373, type: !172)
!1316 = !DILocalVariable(name: "delimidx", scope: !1312, file: !2, line: 391, type: !392)
!1317 = !DILocalVariable(name: "delimoff", scope: !1312, file: !2, line: 392, type: !392)
!1318 = !DILocation(line: 0, scope: !1301)
!1319 = !DILocation(line: 370, column: 3, scope: !1314)
!1320 = !DILocation(line: 373, column: 30, scope: !1312)
!1321 = !DILocation(line: 0, scope: !928, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 373, column: 23, scope: !1312)
!1323 = !DILocation(line: 1361, column: 11, scope: !928, inlinedAt: !1322)
!1324 = !DILocation(line: 1361, column: 10, scope: !928, inlinedAt: !1322)
!1325 = !DILocation(line: 0, scope: !1312)
!1326 = !DILocation(line: 374, column: 11, scope: !1312)
!1327 = !DILocation(line: 376, column: 27, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 375, column: 9)
!1329 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 374, column: 11)
!1330 = !DILocation(line: 377, column: 21, scope: !1328)
!1331 = !DILocation(line: 378, column: 9, scope: !1328)
!1332 = !DILocation(line: 381, column: 21, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 380, column: 9)
!1334 = !DILocation(line: 382, column: 23, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 382, column: 15)
!1336 = !DILocation(line: 382, column: 15, scope: !1333)
!1337 = !DILocation(line: 384, column: 15, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 383, column: 13)
!1339 = !DILocation(line: 386, column: 15, scope: !1338)
!1340 = !DILocation(line: 388, column: 11, scope: !1333)
!1341 = !DILocation(line: 0, scope: !1329)
!1342 = !DILocalVariable(name: "__fp", arg: 1, scope: !1343, file: !1344, line: 66, type: !214)
!1343 = distinct !DISubprogram(name: "getc_unlocked", scope: !1344, file: !1344, line: 66, type: !1345, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1347)
!1344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!78, !214}
!1347 = !{!1342}
!1348 = !DILocation(line: 0, scope: !1343, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 394, column: 17, scope: !1312)
!1350 = !DILocation(line: 68, column: 10, scope: !1343, inlinedAt: !1349)
!1351 = !{!1352, !847, i64 8}
!1352 = !{!"_IO_FILE", !917, i64 0, !847, i64 8, !847, i64 16, !847, i64 24, !847, i64 32, !847, i64 40, !847, i64 48, !847, i64 56, !847, i64 64, !847, i64 72, !847, i64 80, !847, i64 88, !847, i64 96, !847, i64 104, !917, i64 112, !917, i64 116, !1144, i64 120, !958, i64 128, !848, i64 130, !848, i64 131, !847, i64 136, !1144, i64 144, !847, i64 152, !847, i64 160, !847, i64 168, !847, i64 176, !1144, i64 184, !917, i64 192, !848, i64 196}
!1353 = !{!1352, !847, i64 16}
!1354 = !{!"branch_weights", i32 2000, i32 1}
!1355 = !DILocation(line: 395, column: 21, scope: !1312)
!1356 = !DILocation(line: 396, column: 11, scope: !1312)
!1357 = !DILocation(line: 396, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 396, column: 11)
!1359 = !DILocation(line: 404, column: 11, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 397, column: 9)
!1361 = !DILocation(line: 428, column: 22, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 428, column: 11)
!1363 = !DILocation(line: 428, column: 11, scope: !1312)
!1364 = !DILocation(line: 0, scope: !1343, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 404, column: 29, scope: !1360)
!1366 = !DILocation(line: 68, column: 10, scope: !1343, inlinedAt: !1365)
!1367 = !DILocation(line: 404, column: 45, scope: !1360)
!1368 = !DILocation(line: 407, column: 30, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 407, column: 19)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 405, column: 13)
!1371 = !DILocation(line: 407, column: 27, scope: !1369)
!1372 = !DILocation(line: 407, column: 19, scope: !1370)
!1373 = !DILocation(line: 409, column: 52, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 408, column: 17)
!1375 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1376, file: !2, line: 174, type: !138)
!1376 = distinct !DISubprogram(name: "output_delim", scope: !2, file: !2, line: 174, type: !1377, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !138, !135}
!1379 = !{!1375, !1380, !1381, !1384, !1385}
!1380 = !DILocalVariable(name: "len", arg: 2, scope: !1376, file: !2, line: 174, type: !135)
!1381 = !DILocalVariable(name: "__ptr", scope: !1382, file: !2, line: 176, type: !138)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 176, column: 18)
!1383 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 176, column: 7)
!1384 = !DILocalVariable(name: "__stream", scope: !1382, file: !2, line: 176, type: !214)
!1385 = !DILocalVariable(name: "__cnt", scope: !1382, file: !2, line: 176, type: !135)
!1386 = !DILocation(line: 0, scope: !1376, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 409, column: 19, scope: !1374)
!1388 = !DILocation(line: 176, column: 11, scope: !1383, inlinedAt: !1387)
!1389 = !DILocation(line: 176, column: 15, scope: !1383, inlinedAt: !1387)
!1390 = !DILocation(line: 409, column: 33, scope: !1374)
!1391 = !DILocation(line: 409, column: 40, scope: !1374)
!1392 = !DILocation(line: 176, column: 18, scope: !1383, inlinedAt: !1387)
!1393 = !DILocation(line: 176, column: 52, scope: !1383, inlinedAt: !1387)
!1394 = !DILocation(line: 176, column: 7, scope: !1376, inlinedAt: !1387)
!1395 = !DILocation(line: 410, column: 31, scope: !1374)
!1396 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1400)
!1397 = distinct !DISubprogram(name: "write_error", scope: !77, file: !77, line: 946, type: !491, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1398)
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "saved_errno", scope: !1397, file: !77, line: 948, type: !78)
!1400 = distinct !DILocation(line: 177, column: 5, scope: !1383, inlinedAt: !1387)
!1401 = !DILocation(line: 0, scope: !1397, inlinedAt: !1400)
!1402 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1400)
!1403 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1400)
!1404 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1400)
!1405 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1400)
!1406 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1400)
!1407 = !DILocation(line: 410, column: 28, scope: !1374)
!1408 = !DILocation(line: 411, column: 23, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 411, column: 23)
!1410 = !DILocation(line: 411, column: 37, scope: !1409)
!1411 = !DILocation(line: 411, column: 34, scope: !1409)
!1412 = !DILocation(line: 411, column: 23, scope: !1374)
!1413 = distinct !{!1413, !1359, !1414, !963}
!1414 = !DILocation(line: 421, column: 13, scope: !1360)
!1415 = !DILocalVariable(name: "c", arg: 1, scope: !1416, file: !2, line: 164, type: !4)
!1416 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 164, type: !1417, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !4}
!1419 = !{!1415}
!1420 = !DILocation(line: 0, scope: !1416, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 418, column: 17, scope: !1369)
!1422 = !DILocalVariable(name: "__c", arg: 1, scope: !1423, file: !1344, line: 108, type: !78)
!1423 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1344, file: !1344, line: 108, type: !1424, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!78, !78}
!1426 = !{!1422}
!1427 = !DILocation(line: 0, scope: !1423, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1421)
!1429 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 166, column: 7)
!1430 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1428)
!1431 = !{!1352, !847, i64 40}
!1432 = !{!1352, !847, i64 48}
!1433 = !DILocation(line: 418, column: 27, scope: !1369)
!1434 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1421)
!1435 = !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1421)
!1436 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1421)
!1437 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1421)
!1439 = !DILocation(line: 0, scope: !1397, inlinedAt: !1438)
!1440 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1438)
!1441 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1438)
!1442 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1438)
!1443 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1438)
!1444 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1438)
!1445 = !DILocation(line: 422, column: 25, scope: !1360)
!1446 = !DILocation(line: 0, scope: !1416, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 425, column: 11, scope: !1360)
!1448 = !DILocation(line: 0, scope: !1423, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1447)
!1450 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1449)
!1451 = !DILocation(line: 425, column: 21, scope: !1360)
!1452 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1447)
!1453 = !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1447)
!1454 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1447)
!1455 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1447)
!1457 = !DILocation(line: 0, scope: !1397, inlinedAt: !1456)
!1458 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1456)
!1459 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1456)
!1460 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1456)
!1461 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1456)
!1462 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1456)
!1463 = !DILocation(line: 428, column: 19, scope: !1362)
!1464 = !DILocation(line: 0, scope: !1416, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 429, column: 9, scope: !1362)
!1466 = !DILocation(line: 0, scope: !1423, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1465)
!1468 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1467)
!1469 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1465)
!1470 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1465)
!1471 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1465)
!1473 = !DILocation(line: 0, scope: !1397, inlinedAt: !1472)
!1474 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1472)
!1475 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1472)
!1476 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1472)
!1477 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1472)
!1478 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1472)
!1479 = !DILocalVariable(name: "__stream", arg: 1, scope: !1480, file: !1344, line: 135, type: !214)
!1480 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1344, file: !1344, line: 135, type: !1345, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1481)
!1481 = !{!1479}
!1482 = !DILocation(line: 0, scope: !1480, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 431, column: 12, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 431, column: 11)
!1485 = !DILocation(line: 137, column: 10, scope: !1480, inlinedAt: !1483)
!1486 = !{!1352, !917, i64 0}
!1487 = !DILocation(line: 431, column: 12, scope: !1484)
!1488 = !DILocation(line: 431, column: 11, scope: !1312)
!1489 = !DILocation(line: 433, column: 11, scope: !1312)
!1490 = !DILocation(line: 434, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 433, column: 11)
!1492 = !DILocation(line: 435, column: 16, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 435, column: 16)
!1494 = !DILocation(line: 435, column: 33, scope: !1493)
!1495 = !DILocation(line: 435, column: 38, scope: !1493)
!1496 = !DILocation(line: 436, column: 23, scope: !1493)
!1497 = !DILocation(line: 436, column: 9, scope: !1493)
!1498 = !DILocation(line: 437, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 437, column: 11)
!1500 = !DILocation(line: 437, column: 11, scope: !1312)
!1501 = !DILocation(line: 370, column: 24, scope: !1313)
!1502 = !DILocation(line: 370, column: 35, scope: !1313)
!1503 = distinct !{!1503, !1319, !1504, !963}
!1504 = !DILocation(line: 442, column: 5, scope: !1314)
!1505 = !DILocation(line: 443, column: 10, scope: !1301)
!1506 = !DILocation(line: 443, column: 3, scope: !1301)
!1507 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 185, type: !1302, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1515, !1516, !1517, !1519, !1520, !1521, !1522, !1524, !1527, !1528, !1529, !1536, !1537, !1538, !1549, !1550, !1551, !1553}
!1509 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1507, file: !2, line: 185, type: !135)
!1510 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1507, file: !2, line: 185, type: !1069)
!1511 = !DILocalVariable(name: "ok", scope: !1507, file: !2, line: 187, type: !172)
!1512 = !DILocalVariable(name: "delbuf", scope: !1507, file: !2, line: 192, type: !132)
!1513 = !DILocalVariable(name: "fileptr", scope: !1507, file: !2, line: 196, type: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1515 = !DILocalVariable(name: "files_open", scope: !1507, file: !2, line: 199, type: !135)
!1516 = !DILocalVariable(name: "opened_stdin", scope: !1507, file: !2, line: 202, type: !172)
!1517 = !DILocalVariable(name: "somedone", scope: !1518, file: !2, line: 236, type: !172)
!1518 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 234, column: 5)
!1519 = !DILocalVariable(name: "delimidx", scope: !1518, file: !2, line: 237, type: !392)
!1520 = !DILocalVariable(name: "delimoff", scope: !1518, file: !2, line: 238, type: !392)
!1521 = !DILocalVariable(name: "delims_saved", scope: !1518, file: !2, line: 239, type: !392)
!1522 = !DILocalVariable(name: "i", scope: !1523, file: !2, line: 241, type: !135)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 241, column: 7)
!1524 = !DILocalVariable(name: "chr", scope: !1525, file: !2, line: 243, type: !78)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 242, column: 9)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 241, column: 7)
!1527 = !DILocalVariable(name: "err", scope: !1525, file: !2, line: 244, type: !78)
!1528 = !DILocalVariable(name: "sometodo", scope: !1525, file: !2, line: 245, type: !172)
!1529 = !DILocalVariable(name: "__ptr", scope: !1530, file: !2, line: 253, type: !138)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 253, column: 23)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 253, column: 23)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 252, column: 17)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 251, column: 19)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 248, column: 13)
!1535 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 247, column: 15)
!1536 = !DILocalVariable(name: "__stream", scope: !1530, file: !2, line: 253, type: !214)
!1537 = !DILocalVariable(name: "__cnt", scope: !1530, file: !2, line: 253, type: !135)
!1538 = !DILocalVariable(name: "__ptr", scope: !1539, file: !2, line: 300, type: !138)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 300, column: 31)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 300, column: 31)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 299, column: 25)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 298, column: 27)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 296, column: 21)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 295, column: 23)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 292, column: 17)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 291, column: 19)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 270, column: 13)
!1548 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 269, column: 15)
!1549 = !DILocalVariable(name: "__stream", scope: !1539, file: !2, line: 300, type: !214)
!1550 = !DILocalVariable(name: "__cnt", scope: !1539, file: !2, line: 300, type: !135)
!1551 = !DILocalVariable(name: "len", scope: !1552, file: !2, line: 312, type: !135)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 310, column: 17)
!1553 = !DILocalVariable(name: "c", scope: !1554, file: !2, line: 348, type: !4)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 345, column: 17)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 332, column: 19)
!1556 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 327, column: 13)
!1557 = !DILocation(line: 0, scope: !1507)
!1558 = !DILocation(line: 192, column: 35, scope: !1507)
!1559 = !DILocation(line: 192, column: 42, scope: !1507)
!1560 = !DILocation(line: 192, column: 40, scope: !1507)
!1561 = !DILocation(line: 192, column: 53, scope: !1507)
!1562 = !DILocation(line: 192, column: 18, scope: !1507)
!1563 = !DILocation(line: 196, column: 37, scope: !1507)
!1564 = !DILocation(line: 196, column: 20, scope: !1507)
!1565 = !DILocation(line: 208, column: 35, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 208, column: 3)
!1567 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 208, column: 3)
!1568 = !DILocation(line: 208, column: 3, scope: !1567)
!1569 = !DILocation(line: 210, column: 18, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 210, column: 11)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 209, column: 5)
!1572 = !DILocation(line: 0, scope: !928, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 210, column: 11, scope: !1570)
!1574 = !DILocation(line: 1361, column: 11, scope: !928, inlinedAt: !1573)
!1575 = !DILocation(line: 1361, column: 10, scope: !928, inlinedAt: !1573)
!1576 = !DILocation(line: 210, column: 11, scope: !1571)
!1577 = !DILocation(line: 212, column: 27, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 211, column: 9)
!1579 = !DILocation(line: 213, column: 33, scope: !1578)
!1580 = !DILocation(line: 213, column: 11, scope: !1578)
!1581 = !DILocation(line: 213, column: 31, scope: !1578)
!1582 = !DILocation(line: 214, column: 9, scope: !1578)
!1583 = !DILocation(line: 217, column: 33, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 216, column: 9)
!1585 = !DILocation(line: 217, column: 11, scope: !1584)
!1586 = !DILocation(line: 217, column: 31, scope: !1584)
!1587 = !DILocation(line: 218, column: 35, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 218, column: 15)
!1589 = !DILocation(line: 218, column: 15, scope: !1584)
!1590 = !DILocation(line: 219, column: 13, scope: !1588)
!1591 = !DILocation(line: 220, column: 20, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 220, column: 20)
!1593 = !DILocation(line: 220, column: 49, scope: !1592)
!1594 = !DILocation(line: 220, column: 20, scope: !1588)
!1595 = !DILocation(line: 222, column: 11, scope: !1584)
!1596 = !DILocation(line: 208, column: 45, scope: !1566)
!1597 = distinct !{!1597, !1568, !1598, !963}
!1598 = !DILocation(line: 224, column: 5, scope: !1567)
!1599 = !DILocation(line: 226, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 226, column: 7)
!1601 = !DILocation(line: 226, column: 20, scope: !1600)
!1602 = !DILocation(line: 233, column: 3, scope: !1507)
!1603 = !DILocation(line: 226, column: 23, scope: !1600)
!1604 = !DILocation(line: 226, column: 7, scope: !1507)
!1605 = !DILocation(line: 227, column: 5, scope: !1600)
!1606 = !DILocation(line: 208, column: 19, scope: !1567)
!1607 = !DILocation(line: 187, column: 8, scope: !1507)
!1608 = !DILocation(line: 0, scope: !1525)
!1609 = distinct !{!1609, !1602, !1610, !963}
!1610 = !DILocation(line: 353, column: 5, scope: !1507)
!1611 = !DILocation(line: 0, scope: !1518)
!1612 = !DILocation(line: 0, scope: !1523)
!1613 = !DILocation(line: 241, column: 7, scope: !1523)
!1614 = !DILocation(line: 247, column: 15, scope: !1535)
!1615 = !DILocation(line: 247, column: 15, scope: !1525)
!1616 = !DILocation(line: 0, scope: !1343, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 249, column: 21, scope: !1534)
!1618 = !DILocation(line: 68, column: 10, scope: !1343, inlinedAt: !1617)
!1619 = !DILocation(line: 250, column: 21, scope: !1534)
!1620 = !DILocation(line: 251, column: 23, scope: !1533)
!1621 = !DILocation(line: 251, column: 30, scope: !1533)
!1622 = !DILocation(line: 253, column: 23, scope: !1531)
!1623 = !DILocation(line: 253, column: 64, scope: !1531)
!1624 = !DILocation(line: 253, column: 23, scope: !1532)
!1625 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 254, column: 21, scope: !1531)
!1627 = !DILocation(line: 0, scope: !1397, inlinedAt: !1626)
!1628 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1626)
!1629 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1626)
!1630 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1626)
!1631 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1626)
!1632 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1626)
!1633 = !DILocation(line: 258, column: 26, scope: !1534)
!1634 = !DILocation(line: 258, column: 15, scope: !1534)
!1635 = !DILocation(line: 261, column: 30, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 261, column: 23)
!1637 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 259, column: 17)
!1638 = !DILocation(line: 261, column: 27, scope: !1636)
!1639 = !DILocation(line: 261, column: 23, scope: !1637)
!1640 = !DILocation(line: 0, scope: !1416, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 263, column: 19, scope: !1637)
!1642 = !DILocation(line: 0, scope: !1423, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1641)
!1644 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1643)
!1645 = !DILocation(line: 263, column: 29, scope: !1637)
!1646 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1641)
!1647 = !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1641)
!1648 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1641)
!1649 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1641)
!1651 = !DILocation(line: 0, scope: !1397, inlinedAt: !1650)
!1652 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1650)
!1653 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1650)
!1654 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1650)
!1655 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1650)
!1656 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1650)
!1657 = !DILocation(line: 0, scope: !1343, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 264, column: 25, scope: !1637)
!1659 = !DILocation(line: 68, column: 10, scope: !1343, inlinedAt: !1658)
!1660 = distinct !{!1660, !1634, !1661, !963}
!1661 = !DILocation(line: 266, column: 17, scope: !1534)
!1662 = !DILocation(line: 265, column: 25, scope: !1637)
!1663 = !DILocation(line: 269, column: 15, scope: !1525)
!1664 = !DILocation(line: 0, scope: !1480, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 275, column: 24, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 275, column: 23)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 274, column: 17)
!1668 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 273, column: 19)
!1669 = !DILocation(line: 137, column: 10, scope: !1480, inlinedAt: !1665)
!1670 = !DILocation(line: 275, column: 24, scope: !1666)
!1671 = !DILocation(line: 275, column: 23, scope: !1667)
!1672 = !DILocation(line: 277, column: 37, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 277, column: 23)
!1674 = !DILocation(line: 277, column: 34, scope: !1673)
!1675 = !DILocation(line: 277, column: 23, scope: !1667)
!1676 = !DILocation(line: 278, column: 21, scope: !1673)
!1677 = !DILocation(line: 279, column: 28, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 279, column: 28)
!1679 = !DILocation(line: 279, column: 48, scope: !1678)
!1680 = !DILocation(line: 279, column: 55, scope: !1678)
!1681 = !DILocation(line: 280, column: 27, scope: !1678)
!1682 = !DILocation(line: 280, column: 21, scope: !1678)
!1683 = !DILocation(line: 281, column: 23, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 281, column: 23)
!1685 = !DILocation(line: 281, column: 23, scope: !1667)
!1686 = !DILocation(line: 283, column: 23, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 282, column: 21)
!1688 = !DILocation(line: 285, column: 21, scope: !1687)
!1689 = !DILocation(line: 287, column: 30, scope: !1667)
!1690 = !DILocation(line: 288, column: 29, scope: !1667)
!1691 = !DILocation(line: 289, column: 17, scope: !1667)
!1692 = !DILocation(line: 291, column: 21, scope: !1546)
!1693 = !DILocation(line: 291, column: 25, scope: !1546)
!1694 = !DILocation(line: 291, column: 19, scope: !1547)
!1695 = !DILocation(line: 295, column: 23, scope: !1544)
!1696 = !DILocation(line: 295, column: 23, scope: !1545)
!1697 = !DILocation(line: 298, column: 27, scope: !1542)
!1698 = !DILocation(line: 298, column: 27, scope: !1543)
!1699 = !DILocation(line: 300, column: 31, scope: !1540)
!1700 = !DILocation(line: 301, column: 31, scope: !1540)
!1701 = !DILocation(line: 300, column: 31, scope: !1541)
!1702 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 302, column: 29, scope: !1540)
!1704 = !DILocation(line: 0, scope: !1397, inlinedAt: !1703)
!1705 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1703)
!1706 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1703)
!1707 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1703)
!1708 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1703)
!1709 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1703)
!1710 = !DILocation(line: 305, column: 33, scope: !1543)
!1711 = !DILocation(line: 0, scope: !1416, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 305, column: 23, scope: !1543)
!1713 = !DILocation(line: 0, scope: !1423, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1712)
!1715 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1714)
!1716 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1712)
!1717 = !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1712)
!1718 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1712)
!1719 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1712)
!1721 = !DILocation(line: 0, scope: !1397, inlinedAt: !1720)
!1722 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1720)
!1723 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1720)
!1724 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1720)
!1725 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1720)
!1726 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1720)
!1727 = !DILocation(line: 312, column: 32, scope: !1552)
!1728 = !DILocation(line: 0, scope: !1552)
!1729 = !DILocation(line: 313, column: 27, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 313, column: 23)
!1731 = !DILocation(line: 313, column: 23, scope: !1552)
!1732 = !DILocation(line: 315, column: 38, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 314, column: 21)
!1734 = !DILocation(line: 315, column: 54, scope: !1733)
!1735 = !DILocation(line: 315, column: 61, scope: !1733)
!1736 = !DILocalVariable(name: "__dest", arg: 1, scope: !1737, file: !1240, line: 26, type: !1243)
!1737 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 26, type: !1241, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1738)
!1738 = !{!1736, !1739, !1740}
!1739 = !DILocalVariable(name: "__src", arg: 2, scope: !1737, file: !1240, line: 26, type: !1063)
!1740 = !DILocalVariable(name: "__len", arg: 3, scope: !1737, file: !1240, line: 26, type: !135)
!1741 = !DILocation(line: 0, scope: !1737, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 315, column: 23, scope: !1733)
!1743 = !DILocation(line: 29, column: 10, scope: !1737, inlinedAt: !1742)
!1744 = !DILocation(line: 316, column: 36, scope: !1733)
!1745 = !DILocation(line: 317, column: 21, scope: !1733)
!1746 = !DILocation(line: 318, column: 28, scope: !1552)
!1747 = !DILocation(line: 319, column: 23, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 319, column: 23)
!1749 = !DILocation(line: 319, column: 37, scope: !1748)
!1750 = !DILocation(line: 319, column: 34, scope: !1748)
!1751 = !DILocation(line: 319, column: 23, scope: !1552)
!1752 = !DILocation(line: 325, column: 13, scope: !1547)
!1753 = !DILocation(line: 332, column: 21, scope: !1555)
!1754 = !DILocation(line: 332, column: 25, scope: !1555)
!1755 = !DILocation(line: 332, column: 19, scope: !1556)
!1756 = !DILocation(line: 334, column: 30, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 334, column: 23)
!1758 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 333, column: 17)
!1759 = !DILocation(line: 334, column: 27, scope: !1757)
!1760 = !DILocation(line: 334, column: 41, scope: !1757)
!1761 = !DILocation(line: 0, scope: !1416, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 335, column: 21, scope: !1757)
!1763 = !DILocation(line: 0, scope: !1423, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1762)
!1765 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1764)
!1766 = !DILocation(line: 335, column: 31, scope: !1757)
!1767 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1762)
!1768 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1762)
!1769 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1762)
!1771 = !DILocation(line: 0, scope: !1397, inlinedAt: !1770)
!1772 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1770)
!1773 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1770)
!1774 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1770)
!1775 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1770)
!1776 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1770)
!1777 = !DILocation(line: 336, column: 52, scope: !1758)
!1778 = !DILocation(line: 0, scope: !1376, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 336, column: 19, scope: !1758)
!1780 = !DILocation(line: 176, column: 11, scope: !1383, inlinedAt: !1779)
!1781 = !DILocation(line: 176, column: 15, scope: !1383, inlinedAt: !1779)
!1782 = !DILocation(line: 336, column: 33, scope: !1758)
!1783 = !DILocation(line: 336, column: 40, scope: !1758)
!1784 = !DILocation(line: 176, column: 18, scope: !1383, inlinedAt: !1779)
!1785 = !DILocation(line: 176, column: 52, scope: !1383, inlinedAt: !1779)
!1786 = !DILocation(line: 176, column: 7, scope: !1376, inlinedAt: !1779)
!1787 = !DILocation(line: 337, column: 31, scope: !1758)
!1788 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 177, column: 5, scope: !1383, inlinedAt: !1779)
!1790 = !DILocation(line: 0, scope: !1397, inlinedAt: !1789)
!1791 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1789)
!1792 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1789)
!1793 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1789)
!1794 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1789)
!1795 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1789)
!1796 = !DILocation(line: 337, column: 28, scope: !1758)
!1797 = !DILocation(line: 338, column: 23, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 338, column: 23)
!1799 = !DILocation(line: 338, column: 37, scope: !1798)
!1800 = !DILocation(line: 338, column: 34, scope: !1798)
!1801 = !DILocation(line: 338, column: 23, scope: !1758)
!1802 = !DILocation(line: 348, column: 33, scope: !1554)
!1803 = !DILocation(line: 348, column: 29, scope: !1554)
!1804 = !DILocation(line: 0, scope: !1554)
!1805 = !DILocation(line: 0, scope: !1416, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 349, column: 19, scope: !1554)
!1807 = !DILocation(line: 0, scope: !1423, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1806)
!1809 = !DILocation(line: 110, column: 10, scope: !1423, inlinedAt: !1808)
!1810 = !DILocation(line: 348, column: 28, scope: !1554)
!1811 = !DILocation(line: 166, column: 7, scope: !1416, inlinedAt: !1806)
!1812 = !DILocation(line: 166, column: 7, scope: !1429, inlinedAt: !1806)
!1813 = !DILocation(line: 166, column: 19, scope: !1429, inlinedAt: !1806)
!1814 = !DILocation(line: 948, column: 21, scope: !1397, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 167, column: 5, scope: !1429, inlinedAt: !1806)
!1816 = !DILocation(line: 0, scope: !1397, inlinedAt: !1815)
!1817 = !DILocation(line: 949, column: 3, scope: !1397, inlinedAt: !1815)
!1818 = !DILocation(line: 950, column: 11, scope: !1397, inlinedAt: !1815)
!1819 = !DILocation(line: 950, column: 3, scope: !1397, inlinedAt: !1815)
!1820 = !DILocation(line: 951, column: 3, scope: !1397, inlinedAt: !1815)
!1821 = !DILocation(line: 952, column: 3, scope: !1397, inlinedAt: !1815)
!1822 = !DILocation(line: 241, column: 53, scope: !1526)
!1823 = !DILocation(line: 241, column: 28, scope: !1526)
!1824 = !DILocation(line: 241, column: 37, scope: !1526)
!1825 = distinct !{!1825, !1613, !1826, !963}
!1826 = !DILocation(line: 352, column: 9, scope: !1523)
!1827 = !DILocation(line: 356, column: 10, scope: !1507)
!1828 = !DILocation(line: 354, column: 3, scope: !1507)
!1829 = !DILocation(line: 355, column: 3, scope: !1507)
!1830 = !DILocation(line: 356, column: 3, scope: !1507)
!1831 = !DISubprogram(name: "free", scope: !1040, file: !1040, line: 555, type: !1832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !133}
!1834 = !DISubprogram(name: "__errno_location", scope: !1835, file: !1835, line: 37, type: !1836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1835 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!415}
!1838 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1040, file: !1040, line: 98, type: !1839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!135}
!1841 = !DISubprogram(name: "fileno_unlocked", scope: !911, file: !911, line: 814, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = !DISubprogram(name: "__uflow", scope: !911, file: !911, line: 885, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1843 = !DISubprogram(name: "fflush_unlocked", scope: !911, file: !911, line: 239, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1844 = !DISubprogram(name: "clearerr_unlocked", scope: !911, file: !911, line: 794, type: !1845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !214}
!1847 = !DISubprogram(name: "__overflow", scope: !911, file: !911, line: 886, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!78, !214, !78}
!1850 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !430, file: !430, line: 50, type: !866, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1851)
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "file", arg: 1, scope: !1850, file: !430, line: 50, type: !138)
!1853 = !DILocation(line: 0, scope: !1850)
!1854 = !DILocation(line: 52, column: 13, scope: !1850)
!1855 = !DILocation(line: 53, column: 1, scope: !1850)
!1856 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !430, file: !430, line: 87, type: !1857, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !172}
!1859 = !{!1860}
!1860 = !DILocalVariable(name: "ignore", arg: 1, scope: !1856, file: !430, line: 87, type: !172)
!1861 = !DILocation(line: 0, scope: !1856)
!1862 = !DILocation(line: 89, column: 16, scope: !1856)
!1863 = !{!1864, !1864, i64 0}
!1864 = !{!"_Bool", !848, i64 0}
!1865 = !DILocation(line: 90, column: 1, scope: !1856)
!1866 = distinct !DISubprogram(name: "close_stdout", scope: !430, file: !430, line: 116, type: !491, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1867)
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "write_error", scope: !1869, file: !430, line: 121, type: !138)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !430, line: 120, column: 5)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !430, line: 118, column: 7)
!1871 = !DILocation(line: 118, column: 21, scope: !1870)
!1872 = !DILocation(line: 118, column: 7, scope: !1870)
!1873 = !DILocation(line: 118, column: 29, scope: !1870)
!1874 = !DILocation(line: 119, column: 7, scope: !1870)
!1875 = !DILocation(line: 119, column: 12, scope: !1870)
!1876 = !{i8 0, i8 2}
!1877 = !DILocation(line: 119, column: 25, scope: !1870)
!1878 = !DILocation(line: 119, column: 28, scope: !1870)
!1879 = !DILocation(line: 119, column: 34, scope: !1870)
!1880 = !DILocation(line: 118, column: 7, scope: !1866)
!1881 = !DILocation(line: 121, column: 33, scope: !1869)
!1882 = !DILocation(line: 0, scope: !1869)
!1883 = !DILocation(line: 122, column: 11, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1869, file: !430, line: 122, column: 11)
!1885 = !DILocation(line: 0, scope: !1884)
!1886 = !DILocation(line: 122, column: 11, scope: !1869)
!1887 = !DILocation(line: 123, column: 9, scope: !1884)
!1888 = !DILocation(line: 126, column: 9, scope: !1884)
!1889 = !DILocation(line: 128, column: 14, scope: !1869)
!1890 = !DILocation(line: 128, column: 7, scope: !1869)
!1891 = !DILocation(line: 133, column: 42, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1866, file: !430, line: 133, column: 7)
!1893 = !DILocation(line: 133, column: 28, scope: !1892)
!1894 = !DILocation(line: 133, column: 50, scope: !1892)
!1895 = !DILocation(line: 133, column: 7, scope: !1866)
!1896 = !DILocation(line: 134, column: 12, scope: !1892)
!1897 = !DILocation(line: 134, column: 5, scope: !1892)
!1898 = !DILocation(line: 135, column: 1, scope: !1866)
!1899 = !DISubprogram(name: "_exit", scope: !1900, file: !1900, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1900 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1901 = distinct !DISubprogram(name: "verror", scope: !445, file: !445, line: 251, type: !1902, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !78, !78, !138, !455}
!1904 = !{!1905, !1906, !1907, !1908}
!1905 = !DILocalVariable(name: "status", arg: 1, scope: !1901, file: !445, line: 251, type: !78)
!1906 = !DILocalVariable(name: "errnum", arg: 2, scope: !1901, file: !445, line: 251, type: !78)
!1907 = !DILocalVariable(name: "message", arg: 3, scope: !1901, file: !445, line: 251, type: !138)
!1908 = !DILocalVariable(name: "args", arg: 4, scope: !1901, file: !445, line: 251, type: !455)
!1909 = !DILocation(line: 0, scope: !1901)
!1910 = !DILocation(line: 261, column: 3, scope: !1901)
!1911 = !DILocation(line: 265, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1901, file: !445, line: 265, column: 7)
!1913 = !DILocation(line: 265, column: 7, scope: !1901)
!1914 = !DILocation(line: 266, column: 5, scope: !1912)
!1915 = !DILocation(line: 272, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !445, line: 268, column: 5)
!1917 = !DILocation(line: 276, column: 3, scope: !1901)
!1918 = !DILocation(line: 282, column: 1, scope: !1901)
!1919 = distinct !DISubprogram(name: "flush_stdout", scope: !445, file: !445, line: 163, type: !491, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1920)
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "stdout_fd", scope: !1919, file: !445, line: 166, type: !78)
!1922 = !DILocation(line: 0, scope: !1919)
!1923 = !DILocalVariable(name: "fd", arg: 1, scope: !1924, file: !445, line: 145, type: !78)
!1924 = distinct !DISubprogram(name: "is_open", scope: !445, file: !445, line: 145, type: !1424, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1925)
!1925 = !{!1923}
!1926 = !DILocation(line: 0, scope: !1924, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 182, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !445, line: 182, column: 7)
!1929 = !DILocation(line: 157, column: 15, scope: !1924, inlinedAt: !1927)
!1930 = !DILocation(line: 157, column: 12, scope: !1924, inlinedAt: !1927)
!1931 = !DILocation(line: 182, column: 7, scope: !1919)
!1932 = !DILocation(line: 184, column: 5, scope: !1928)
!1933 = !DILocation(line: 185, column: 1, scope: !1919)
!1934 = distinct !DISubprogram(name: "error_tail", scope: !445, file: !445, line: 219, type: !1902, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1935)
!1935 = !{!1936, !1937, !1938, !1939}
!1936 = !DILocalVariable(name: "status", arg: 1, scope: !1934, file: !445, line: 219, type: !78)
!1937 = !DILocalVariable(name: "errnum", arg: 2, scope: !1934, file: !445, line: 219, type: !78)
!1938 = !DILocalVariable(name: "message", arg: 3, scope: !1934, file: !445, line: 219, type: !138)
!1939 = !DILocalVariable(name: "args", arg: 4, scope: !1934, file: !445, line: 219, type: !455)
!1940 = distinct !DIAssignID()
!1941 = !DILocation(line: 0, scope: !1934)
!1942 = !DILocation(line: 229, column: 13, scope: !1934)
!1943 = !DILocalVariable(name: "__stream", arg: 1, scope: !1944, file: !902, line: 132, type: !1947)
!1944 = distinct !DISubprogram(name: "vfprintf", scope: !902, file: !902, line: 132, type: !1945, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1982)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!78, !1947, !906, !455}
!1947 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !1950)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1950, file: !218, line: 51, baseType: !78, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1950, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1950, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1950, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1950, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1950, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1950, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1950, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1950, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1950, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1950, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1950, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1950, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1950, file: !218, line: 70, baseType: !1966, size: 64, offset: 832)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1950, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1950, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1950, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1950, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1950, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1950, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1950, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1950, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1950, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1950, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1950, file: !218, line: 93, baseType: !1966, size: 64, offset: 1344)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1950, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1950, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1950, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1950, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!1982 = !{!1943, !1983, !1984}
!1983 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1944, file: !902, line: 133, type: !906)
!1984 = !DILocalVariable(name: "__ap", arg: 3, scope: !1944, file: !902, line: 133, type: !455)
!1985 = !DILocation(line: 0, scope: !1944, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 229, column: 3, scope: !1934)
!1987 = !DILocation(line: 135, column: 10, scope: !1944, inlinedAt: !1986)
!1988 = !DILocation(line: 232, column: 3, scope: !1934)
!1989 = !DILocation(line: 233, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1934, file: !445, line: 233, column: 7)
!1991 = !DILocation(line: 233, column: 7, scope: !1934)
!1992 = !DILocalVariable(name: "errbuf", scope: !1993, file: !445, line: 193, type: !1997)
!1993 = distinct !DISubprogram(name: "print_errno_message", scope: !445, file: !445, line: 188, type: !836, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1994)
!1994 = !{!1995, !1996, !1992}
!1995 = !DILocalVariable(name: "errnum", arg: 1, scope: !1993, file: !445, line: 188, type: !78)
!1996 = !DILocalVariable(name: "s", scope: !1993, file: !445, line: 190, type: !138)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1998)
!1998 = !{!1999}
!1999 = !DISubrange(count: 1024)
!2000 = !DILocation(line: 0, scope: !1993, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 234, column: 5, scope: !1990)
!2002 = !DILocation(line: 193, column: 3, scope: !1993, inlinedAt: !2001)
!2003 = !DILocation(line: 195, column: 7, scope: !1993, inlinedAt: !2001)
!2004 = !DILocation(line: 207, column: 9, scope: !2005, inlinedAt: !2001)
!2005 = distinct !DILexicalBlock(scope: !1993, file: !445, line: 207, column: 7)
!2006 = !DILocation(line: 207, column: 7, scope: !1993, inlinedAt: !2001)
!2007 = !DILocation(line: 208, column: 9, scope: !2005, inlinedAt: !2001)
!2008 = !DILocation(line: 208, column: 5, scope: !2005, inlinedAt: !2001)
!2009 = !DILocation(line: 214, column: 3, scope: !1993, inlinedAt: !2001)
!2010 = !DILocation(line: 216, column: 1, scope: !1993, inlinedAt: !2001)
!2011 = !DILocation(line: 234, column: 5, scope: !1990)
!2012 = !DILocation(line: 238, column: 3, scope: !1934)
!2013 = !DILocalVariable(name: "__c", arg: 1, scope: !2014, file: !1344, line: 101, type: !78)
!2014 = distinct !DISubprogram(name: "putc_unlocked", scope: !1344, file: !1344, line: 101, type: !2015, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!78, !78, !1948}
!2017 = !{!2013, !2018}
!2018 = !DILocalVariable(name: "__stream", arg: 2, scope: !2014, file: !1344, line: 101, type: !1948)
!2019 = !DILocation(line: 0, scope: !2014, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 238, column: 3, scope: !1934)
!2021 = !DILocation(line: 103, column: 10, scope: !2014, inlinedAt: !2020)
!2022 = !DILocation(line: 240, column: 3, scope: !1934)
!2023 = !DILocation(line: 241, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1934, file: !445, line: 241, column: 7)
!2025 = !DILocation(line: 241, column: 7, scope: !1934)
!2026 = !DILocation(line: 242, column: 5, scope: !2024)
!2027 = !DILocation(line: 243, column: 1, scope: !1934)
!2028 = !DISubprogram(name: "__vfprintf_chk", scope: !902, file: !902, line: 96, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!78, !1947, !78, !906, !455}
!2031 = !DISubprogram(name: "strerror_r", scope: !1036, file: !1036, line: 444, type: !2032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!132, !78, !132, !135}
!2034 = !DISubprogram(name: "fcntl", scope: !2035, file: !2035, line: 149, type: !2036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!78, !78, !78, null}
!2038 = distinct !DISubprogram(name: "error", scope: !445, file: !445, line: 285, type: !2039, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !78, !78, !138, null}
!2041 = !{!2042, !2043, !2044, !2045}
!2042 = !DILocalVariable(name: "status", arg: 1, scope: !2038, file: !445, line: 285, type: !78)
!2043 = !DILocalVariable(name: "errnum", arg: 2, scope: !2038, file: !445, line: 285, type: !78)
!2044 = !DILocalVariable(name: "message", arg: 3, scope: !2038, file: !445, line: 285, type: !138)
!2045 = !DILocalVariable(name: "ap", scope: !2038, file: !445, line: 287, type: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !911, line: 52, baseType: !2047)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2048, line: 12, baseType: !2049)
!2048 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !445, baseType: !2050)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 192, elements: !55)
!2051 = distinct !DIAssignID()
!2052 = !DILocation(line: 0, scope: !2038)
!2053 = !DILocation(line: 287, column: 3, scope: !2038)
!2054 = !DILocation(line: 288, column: 3, scope: !2038)
!2055 = !DILocation(line: 289, column: 3, scope: !2038)
!2056 = !DILocation(line: 290, column: 3, scope: !2038)
!2057 = !DILocation(line: 291, column: 1, scope: !2038)
!2058 = !DILocation(line: 0, scope: !452)
!2059 = !DILocation(line: 302, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !452, file: !445, line: 302, column: 7)
!2061 = !DILocation(line: 302, column: 7, scope: !452)
!2062 = !DILocation(line: 307, column: 11, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !445, line: 307, column: 11)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !445, line: 303, column: 5)
!2065 = !DILocation(line: 307, column: 27, scope: !2063)
!2066 = !DILocation(line: 308, column: 11, scope: !2063)
!2067 = !DILocation(line: 308, column: 28, scope: !2063)
!2068 = !DILocation(line: 308, column: 25, scope: !2063)
!2069 = !DILocation(line: 309, column: 15, scope: !2063)
!2070 = !DILocation(line: 309, column: 33, scope: !2063)
!2071 = !DILocation(line: 310, column: 19, scope: !2063)
!2072 = !DILocation(line: 311, column: 22, scope: !2063)
!2073 = !DILocation(line: 311, column: 56, scope: !2063)
!2074 = !DILocation(line: 307, column: 11, scope: !2064)
!2075 = !DILocation(line: 316, column: 21, scope: !2064)
!2076 = !DILocation(line: 317, column: 23, scope: !2064)
!2077 = !DILocation(line: 318, column: 5, scope: !2064)
!2078 = !DILocation(line: 327, column: 3, scope: !452)
!2079 = !DILocation(line: 331, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !452, file: !445, line: 331, column: 7)
!2081 = !DILocation(line: 331, column: 7, scope: !452)
!2082 = !DILocation(line: 332, column: 5, scope: !2080)
!2083 = !DILocation(line: 338, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !445, line: 334, column: 5)
!2085 = !DILocation(line: 346, column: 3, scope: !452)
!2086 = !DILocation(line: 350, column: 3, scope: !452)
!2087 = !DILocation(line: 356, column: 1, scope: !452)
!2088 = distinct !DISubprogram(name: "error_at_line", scope: !445, file: !445, line: 359, type: !2089, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !78, !78, !138, !84, !138, null}
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097}
!2092 = !DILocalVariable(name: "status", arg: 1, scope: !2088, file: !445, line: 359, type: !78)
!2093 = !DILocalVariable(name: "errnum", arg: 2, scope: !2088, file: !445, line: 359, type: !78)
!2094 = !DILocalVariable(name: "file_name", arg: 3, scope: !2088, file: !445, line: 359, type: !138)
!2095 = !DILocalVariable(name: "line_number", arg: 4, scope: !2088, file: !445, line: 360, type: !84)
!2096 = !DILocalVariable(name: "message", arg: 5, scope: !2088, file: !445, line: 360, type: !138)
!2097 = !DILocalVariable(name: "ap", scope: !2088, file: !445, line: 362, type: !2046)
!2098 = distinct !DIAssignID()
!2099 = !DILocation(line: 0, scope: !2088)
!2100 = !DILocation(line: 362, column: 3, scope: !2088)
!2101 = !DILocation(line: 363, column: 3, scope: !2088)
!2102 = !DILocation(line: 364, column: 3, scope: !2088)
!2103 = !DILocation(line: 366, column: 3, scope: !2088)
!2104 = !DILocation(line: 367, column: 1, scope: !2088)
!2105 = distinct !DISubprogram(name: "fdadvise", scope: !758, file: !758, line: 25, type: !2106, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !2110)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !78, !2108, !2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !911, line: 63, baseType: !240)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !761, line: 51, baseType: !760)
!2110 = !{!2111, !2112, !2113, !2114}
!2111 = !DILocalVariable(name: "fd", arg: 1, scope: !2105, file: !758, line: 25, type: !78)
!2112 = !DILocalVariable(name: "offset", arg: 2, scope: !2105, file: !758, line: 25, type: !2108)
!2113 = !DILocalVariable(name: "len", arg: 3, scope: !2105, file: !758, line: 25, type: !2108)
!2114 = !DILocalVariable(name: "advice", arg: 4, scope: !2105, file: !758, line: 25, type: !2109)
!2115 = !DILocation(line: 0, scope: !2105)
!2116 = !DILocation(line: 28, column: 3, scope: !2105)
!2117 = !DILocation(line: 30, column: 1, scope: !2105)
!2118 = !DISubprogram(name: "posix_fadvise", scope: !2035, file: !2035, line: 273, type: !2119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!78, !78, !2108, !2108, !78}
!2121 = distinct !DISubprogram(name: "fadvise", scope: !758, file: !758, line: 33, type: !2122, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !2158)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2124, !2109}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2126)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2126, file: !218, line: 51, baseType: !78, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2126, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2126, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2126, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2126, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2126, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2126, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2126, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2126, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2126, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2126, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2126, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2126, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2126, file: !218, line: 70, baseType: !2142, size: 64, offset: 832)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2126, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2126, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2126, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2126, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2126, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2126, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2126, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2126, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2126, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2126, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2126, file: !218, line: 93, baseType: !2142, size: 64, offset: 1344)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2126, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2126, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2126, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2126, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2158 = !{!2159, !2160}
!2159 = !DILocalVariable(name: "fp", arg: 1, scope: !2121, file: !758, line: 33, type: !2124)
!2160 = !DILocalVariable(name: "advice", arg: 2, scope: !2121, file: !758, line: 33, type: !2109)
!2161 = !DILocation(line: 0, scope: !2121)
!2162 = !DILocation(line: 35, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2121, file: !758, line: 35, column: 7)
!2164 = !DILocation(line: 35, column: 7, scope: !2121)
!2165 = !DILocation(line: 36, column: 15, scope: !2163)
!2166 = !DILocation(line: 0, scope: !2105, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 36, column: 5, scope: !2163)
!2168 = !DILocation(line: 28, column: 3, scope: !2105, inlinedAt: !2167)
!2169 = !DILocation(line: 36, column: 5, scope: !2163)
!2170 = !DILocation(line: 37, column: 1, scope: !2121)
!2171 = !DISubprogram(name: "fileno", scope: !911, file: !911, line: 809, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!78, !2124}
!2174 = distinct !DISubprogram(name: "rpl_fclose", scope: !763, file: !763, line: 58, type: !2175, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2211)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!78, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2179, file: !218, line: 51, baseType: !78, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2179, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2179, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2179, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2179, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2179, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2179, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2179, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2179, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2179, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2179, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2179, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2179, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2179, file: !218, line: 70, baseType: !2195, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2179, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2179, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2179, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2179, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2179, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2179, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2179, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2179, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2179, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2179, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2179, file: !218, line: 93, baseType: !2195, size: 64, offset: 1344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2179, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2179, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2179, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2179, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DILocalVariable(name: "fp", arg: 1, scope: !2174, file: !763, line: 58, type: !2177)
!2213 = !DILocalVariable(name: "saved_errno", scope: !2174, file: !763, line: 60, type: !78)
!2214 = !DILocalVariable(name: "fd", scope: !2174, file: !763, line: 63, type: !78)
!2215 = !DILocalVariable(name: "result", scope: !2174, file: !763, line: 74, type: !78)
!2216 = !DILocation(line: 0, scope: !2174)
!2217 = !DILocation(line: 63, column: 12, scope: !2174)
!2218 = !DILocation(line: 64, column: 10, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2174, file: !763, line: 64, column: 7)
!2220 = !DILocation(line: 64, column: 7, scope: !2174)
!2221 = !DILocation(line: 65, column: 12, scope: !2219)
!2222 = !DILocation(line: 65, column: 5, scope: !2219)
!2223 = !DILocation(line: 70, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2174, file: !763, line: 70, column: 7)
!2225 = !DILocation(line: 70, column: 23, scope: !2224)
!2226 = !DILocation(line: 70, column: 33, scope: !2224)
!2227 = !DILocation(line: 70, column: 26, scope: !2224)
!2228 = !DILocation(line: 70, column: 59, scope: !2224)
!2229 = !DILocation(line: 71, column: 7, scope: !2224)
!2230 = !DILocation(line: 71, column: 10, scope: !2224)
!2231 = !DILocation(line: 70, column: 7, scope: !2174)
!2232 = !DILocation(line: 100, column: 12, scope: !2174)
!2233 = !DILocation(line: 105, column: 7, scope: !2174)
!2234 = !DILocation(line: 72, column: 19, scope: !2224)
!2235 = !DILocation(line: 105, column: 19, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2174, file: !763, line: 105, column: 7)
!2237 = !DILocation(line: 107, column: 13, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2236, file: !763, line: 106, column: 5)
!2239 = !DILocation(line: 109, column: 5, scope: !2238)
!2240 = !DILocation(line: 112, column: 1, scope: !2174)
!2241 = !DISubprogram(name: "fclose", scope: !911, file: !911, line: 178, type: !2175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2242 = !DISubprogram(name: "__freading", scope: !2243, file: !2243, line: 51, type: !2175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2243 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2244 = !DISubprogram(name: "lseek", scope: !1900, file: !1900, line: 339, type: !2245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!240, !78, !240, !78}
!2247 = distinct !DISubprogram(name: "rpl_fflush", scope: !765, file: !765, line: 130, type: !2248, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2284)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!78, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2252, file: !218, line: 51, baseType: !78, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2252, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2252, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2252, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2252, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2252, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2252, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2252, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2252, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2252, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2252, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2252, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2252, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2252, file: !218, line: 70, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2252, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2252, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2252, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2252, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2252, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2252, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2252, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2252, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2252, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2252, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2252, file: !218, line: 93, baseType: !2268, size: 64, offset: 1344)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2252, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2252, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2252, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2252, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2284 = !{!2285}
!2285 = !DILocalVariable(name: "stream", arg: 1, scope: !2247, file: !765, line: 130, type: !2250)
!2286 = !DILocation(line: 0, scope: !2247)
!2287 = !DILocation(line: 151, column: 14, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2247, file: !765, line: 151, column: 7)
!2289 = !DILocation(line: 151, column: 22, scope: !2288)
!2290 = !DILocation(line: 151, column: 27, scope: !2288)
!2291 = !DILocation(line: 151, column: 7, scope: !2247)
!2292 = !DILocation(line: 152, column: 12, scope: !2288)
!2293 = !DILocation(line: 152, column: 5, scope: !2288)
!2294 = !DILocalVariable(name: "fp", arg: 1, scope: !2295, file: !765, line: 42, type: !2250)
!2295 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !765, file: !765, line: 42, type: !2296, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !2250}
!2298 = !{!2294}
!2299 = !DILocation(line: 0, scope: !2295, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 157, column: 3, scope: !2247)
!2301 = !DILocation(line: 44, column: 12, scope: !2302, inlinedAt: !2300)
!2302 = distinct !DILexicalBlock(scope: !2295, file: !765, line: 44, column: 7)
!2303 = !DILocation(line: 44, column: 19, scope: !2302, inlinedAt: !2300)
!2304 = !DILocation(line: 44, column: 7, scope: !2295, inlinedAt: !2300)
!2305 = !DILocation(line: 46, column: 5, scope: !2302, inlinedAt: !2300)
!2306 = !DILocation(line: 159, column: 10, scope: !2247)
!2307 = !DILocation(line: 159, column: 3, scope: !2247)
!2308 = !DILocation(line: 236, column: 1, scope: !2247)
!2309 = !DISubprogram(name: "fflush", scope: !911, file: !911, line: 230, type: !2248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = distinct !DISubprogram(name: "fpurge", scope: !768, file: !768, line: 32, type: !2311, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2347)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!78, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2315, file: !218, line: 51, baseType: !78, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2315, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2315, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2315, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2315, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2315, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2315, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2315, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2315, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2315, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2315, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2315, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2315, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2315, file: !218, line: 70, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2315, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2315, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2315, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2315, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2315, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2315, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2315, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2315, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2315, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2315, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2315, file: !218, line: 93, baseType: !2331, size: 64, offset: 1344)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2315, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2315, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2315, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2315, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "fp", arg: 1, scope: !2310, file: !768, line: 32, type: !2313)
!2349 = !DILocation(line: 0, scope: !2310)
!2350 = !DILocation(line: 36, column: 3, scope: !2310)
!2351 = !DILocation(line: 38, column: 3, scope: !2310)
!2352 = !DISubprogram(name: "__fpurge", scope: !2243, file: !2243, line: 72, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2313}
!2355 = distinct !DISubprogram(name: "rpl_fseeko", scope: !770, file: !770, line: 28, type: !2356, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2392)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!78, !2358, !2108, !78}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2360, file: !218, line: 51, baseType: !78, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2360, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2360, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2360, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2360, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2360, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2360, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2360, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2360, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2360, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2360, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2360, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2360, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2360, file: !218, line: 70, baseType: !2376, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2360, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2360, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2360, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2360, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2360, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2360, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2360, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2360, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2360, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2360, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2360, file: !218, line: 93, baseType: !2376, size: 64, offset: 1344)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2360, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2360, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2360, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2360, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DILocalVariable(name: "fp", arg: 1, scope: !2355, file: !770, line: 28, type: !2358)
!2394 = !DILocalVariable(name: "offset", arg: 2, scope: !2355, file: !770, line: 28, type: !2108)
!2395 = !DILocalVariable(name: "whence", arg: 3, scope: !2355, file: !770, line: 28, type: !78)
!2396 = !DILocalVariable(name: "pos", scope: !2397, file: !770, line: 123, type: !2108)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !770, line: 119, column: 5)
!2398 = distinct !DILexicalBlock(scope: !2355, file: !770, line: 55, column: 7)
!2399 = !DILocation(line: 0, scope: !2355)
!2400 = !DILocation(line: 55, column: 12, scope: !2398)
!2401 = !DILocation(line: 55, column: 33, scope: !2398)
!2402 = !DILocation(line: 55, column: 25, scope: !2398)
!2403 = !DILocation(line: 56, column: 7, scope: !2398)
!2404 = !DILocation(line: 56, column: 15, scope: !2398)
!2405 = !DILocation(line: 56, column: 37, scope: !2398)
!2406 = !{!1352, !847, i64 32}
!2407 = !DILocation(line: 56, column: 29, scope: !2398)
!2408 = !DILocation(line: 57, column: 7, scope: !2398)
!2409 = !DILocation(line: 57, column: 15, scope: !2398)
!2410 = !{!1352, !847, i64 72}
!2411 = !DILocation(line: 57, column: 29, scope: !2398)
!2412 = !DILocation(line: 55, column: 7, scope: !2355)
!2413 = !DILocation(line: 123, column: 26, scope: !2397)
!2414 = !DILocation(line: 123, column: 19, scope: !2397)
!2415 = !DILocation(line: 0, scope: !2397)
!2416 = !DILocation(line: 124, column: 15, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2397, file: !770, line: 124, column: 11)
!2418 = !DILocation(line: 124, column: 11, scope: !2397)
!2419 = !DILocation(line: 135, column: 19, scope: !2397)
!2420 = !DILocation(line: 136, column: 12, scope: !2397)
!2421 = !DILocation(line: 136, column: 20, scope: !2397)
!2422 = !{!1352, !1144, i64 144}
!2423 = !DILocation(line: 167, column: 7, scope: !2397)
!2424 = !DILocation(line: 169, column: 10, scope: !2355)
!2425 = !DILocation(line: 169, column: 3, scope: !2355)
!2426 = !DILocation(line: 170, column: 1, scope: !2355)
!2427 = !DISubprogram(name: "fseeko", scope: !911, file: !911, line: 736, type: !2428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!78, !2358, !240, !78}
!2430 = distinct !DISubprogram(name: "getprogname", scope: !772, file: !772, line: 54, type: !2431, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!138}
!2433 = !DILocation(line: 58, column: 10, scope: !2430)
!2434 = !DILocation(line: 58, column: 3, scope: !2430)
!2435 = distinct !DISubprogram(name: "set_program_name", scope: !496, file: !496, line: 37, type: !866, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "argv0", arg: 1, scope: !2435, file: !496, line: 37, type: !138)
!2438 = !DILocalVariable(name: "slash", scope: !2435, file: !496, line: 44, type: !138)
!2439 = !DILocalVariable(name: "base", scope: !2435, file: !496, line: 45, type: !138)
!2440 = !DILocation(line: 0, scope: !2435)
!2441 = !DILocation(line: 44, column: 23, scope: !2435)
!2442 = !DILocation(line: 45, column: 22, scope: !2435)
!2443 = !DILocation(line: 46, column: 17, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2435, file: !496, line: 46, column: 7)
!2445 = !DILocation(line: 46, column: 9, scope: !2444)
!2446 = !DILocation(line: 46, column: 25, scope: !2444)
!2447 = !DILocation(line: 46, column: 40, scope: !2444)
!2448 = !DILocalVariable(name: "__s1", arg: 1, scope: !2449, file: !929, line: 974, type: !1064)
!2449 = distinct !DISubprogram(name: "memeq", scope: !929, file: !929, line: 974, type: !2450, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!172, !1064, !1064, !135}
!2452 = !{!2448, !2453, !2454}
!2453 = !DILocalVariable(name: "__s2", arg: 2, scope: !2449, file: !929, line: 974, type: !1064)
!2454 = !DILocalVariable(name: "__n", arg: 3, scope: !2449, file: !929, line: 974, type: !135)
!2455 = !DILocation(line: 0, scope: !2449, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 46, column: 28, scope: !2444)
!2457 = !DILocation(line: 976, column: 11, scope: !2449, inlinedAt: !2456)
!2458 = !DILocation(line: 976, column: 10, scope: !2449, inlinedAt: !2456)
!2459 = !DILocation(line: 46, column: 7, scope: !2435)
!2460 = !DILocation(line: 49, column: 11, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !496, line: 49, column: 11)
!2462 = distinct !DILexicalBlock(scope: !2444, file: !496, line: 47, column: 5)
!2463 = !DILocation(line: 49, column: 36, scope: !2461)
!2464 = !DILocation(line: 49, column: 11, scope: !2462)
!2465 = !DILocation(line: 65, column: 16, scope: !2435)
!2466 = !DILocation(line: 71, column: 27, scope: !2435)
!2467 = !DILocation(line: 74, column: 33, scope: !2435)
!2468 = !DILocation(line: 76, column: 1, scope: !2435)
!2469 = !DISubprogram(name: "strrchr", scope: !1036, file: !1036, line: 273, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2470 = distinct !DIAssignID()
!2471 = !DILocation(line: 0, scope: !505)
!2472 = distinct !DIAssignID()
!2473 = !DILocation(line: 40, column: 29, scope: !505)
!2474 = !DILocation(line: 41, column: 19, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !505, file: !506, line: 41, column: 7)
!2476 = !DILocation(line: 41, column: 7, scope: !505)
!2477 = !DILocation(line: 47, column: 3, scope: !505)
!2478 = !DILocation(line: 48, column: 3, scope: !505)
!2479 = !DILocalVariable(name: "ps", arg: 1, scope: !2480, file: !2481, line: 1135, type: !2484)
!2480 = distinct !DISubprogram(name: "mbszero", scope: !2481, file: !2481, line: 1135, type: !2482, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !2485)
!2481 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2485 = !{!2479}
!2486 = !DILocation(line: 0, scope: !2480, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 48, column: 18, scope: !505)
!2488 = !DILocalVariable(name: "__dest", arg: 1, scope: !2489, file: !1240, line: 57, type: !133)
!2489 = distinct !DISubprogram(name: "memset", scope: !1240, file: !1240, line: 57, type: !2490, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!133, !133, !78, !135}
!2492 = !{!2488, !2493, !2494}
!2493 = !DILocalVariable(name: "__ch", arg: 2, scope: !2489, file: !1240, line: 57, type: !78)
!2494 = !DILocalVariable(name: "__len", arg: 3, scope: !2489, file: !1240, line: 57, type: !135)
!2495 = !DILocation(line: 0, scope: !2489, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 1137, column: 3, scope: !2480, inlinedAt: !2487)
!2497 = !DILocation(line: 59, column: 10, scope: !2489, inlinedAt: !2496)
!2498 = !DILocation(line: 49, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !505, file: !506, line: 49, column: 7)
!2500 = !DILocation(line: 49, column: 39, scope: !2499)
!2501 = !DILocation(line: 49, column: 44, scope: !2499)
!2502 = !DILocation(line: 54, column: 1, scope: !505)
!2503 = distinct !DISubprogram(name: "clone_quoting_options", scope: !536, file: !536, line: 113, type: !2504, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2507)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2506, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "o", arg: 1, scope: !2503, file: !536, line: 113, type: !2506)
!2509 = !DILocalVariable(name: "saved_errno", scope: !2503, file: !536, line: 115, type: !78)
!2510 = !DILocalVariable(name: "p", scope: !2503, file: !536, line: 116, type: !2506)
!2511 = !DILocation(line: 0, scope: !2503)
!2512 = !DILocation(line: 115, column: 21, scope: !2503)
!2513 = !DILocation(line: 116, column: 40, scope: !2503)
!2514 = !DILocation(line: 116, column: 31, scope: !2503)
!2515 = !DILocation(line: 118, column: 9, scope: !2503)
!2516 = !DILocation(line: 119, column: 3, scope: !2503)
!2517 = distinct !DISubprogram(name: "get_quoting_style", scope: !536, file: !536, line: 124, type: !2518, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2522)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!562, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "o", arg: 1, scope: !2517, file: !536, line: 124, type: !2520)
!2524 = !DILocation(line: 0, scope: !2517)
!2525 = !DILocation(line: 126, column: 11, scope: !2517)
!2526 = !DILocation(line: 126, column: 46, scope: !2517)
!2527 = !{!2528, !917, i64 0}
!2528 = !{!"quoting_options", !917, i64 0, !917, i64 4, !848, i64 8, !847, i64 40, !847, i64 48}
!2529 = !DILocation(line: 126, column: 3, scope: !2517)
!2530 = distinct !DISubprogram(name: "set_quoting_style", scope: !536, file: !536, line: 132, type: !2531, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !2506, !562}
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "o", arg: 1, scope: !2530, file: !536, line: 132, type: !2506)
!2535 = !DILocalVariable(name: "s", arg: 2, scope: !2530, file: !536, line: 132, type: !562)
!2536 = !DILocation(line: 0, scope: !2530)
!2537 = !DILocation(line: 134, column: 4, scope: !2530)
!2538 = !DILocation(line: 134, column: 45, scope: !2530)
!2539 = !DILocation(line: 135, column: 1, scope: !2530)
!2540 = distinct !DISubprogram(name: "set_char_quoting", scope: !536, file: !536, line: 143, type: !2541, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!78, !2506, !4, !78}
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2550, !2551}
!2544 = !DILocalVariable(name: "o", arg: 1, scope: !2540, file: !536, line: 143, type: !2506)
!2545 = !DILocalVariable(name: "c", arg: 2, scope: !2540, file: !536, line: 143, type: !4)
!2546 = !DILocalVariable(name: "i", arg: 3, scope: !2540, file: !536, line: 143, type: !78)
!2547 = !DILocalVariable(name: "uc", scope: !2540, file: !536, line: 145, type: !140)
!2548 = !DILocalVariable(name: "p", scope: !2540, file: !536, line: 146, type: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2550 = !DILocalVariable(name: "shift", scope: !2540, file: !536, line: 148, type: !78)
!2551 = !DILocalVariable(name: "r", scope: !2540, file: !536, line: 149, type: !84)
!2552 = !DILocation(line: 0, scope: !2540)
!2553 = !DILocation(line: 147, column: 6, scope: !2540)
!2554 = !DILocation(line: 147, column: 41, scope: !2540)
!2555 = !DILocation(line: 147, column: 62, scope: !2540)
!2556 = !DILocation(line: 147, column: 57, scope: !2540)
!2557 = !DILocation(line: 148, column: 15, scope: !2540)
!2558 = !DILocation(line: 149, column: 21, scope: !2540)
!2559 = !DILocation(line: 149, column: 24, scope: !2540)
!2560 = !DILocation(line: 149, column: 34, scope: !2540)
!2561 = !DILocation(line: 150, column: 19, scope: !2540)
!2562 = !DILocation(line: 150, column: 24, scope: !2540)
!2563 = !DILocation(line: 150, column: 6, scope: !2540)
!2564 = !DILocation(line: 151, column: 3, scope: !2540)
!2565 = distinct !DISubprogram(name: "set_quoting_flags", scope: !536, file: !536, line: 159, type: !2566, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!78, !2506, !78}
!2568 = !{!2569, !2570, !2571}
!2569 = !DILocalVariable(name: "o", arg: 1, scope: !2565, file: !536, line: 159, type: !2506)
!2570 = !DILocalVariable(name: "i", arg: 2, scope: !2565, file: !536, line: 159, type: !78)
!2571 = !DILocalVariable(name: "r", scope: !2565, file: !536, line: 163, type: !78)
!2572 = !DILocation(line: 0, scope: !2565)
!2573 = !DILocation(line: 161, column: 8, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2565, file: !536, line: 161, column: 7)
!2575 = !DILocation(line: 161, column: 7, scope: !2565)
!2576 = !DILocation(line: 163, column: 14, scope: !2565)
!2577 = !{!2528, !917, i64 4}
!2578 = !DILocation(line: 164, column: 12, scope: !2565)
!2579 = !DILocation(line: 165, column: 3, scope: !2565)
!2580 = distinct !DISubprogram(name: "set_custom_quoting", scope: !536, file: !536, line: 169, type: !2581, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2506, !138, !138}
!2583 = !{!2584, !2585, !2586}
!2584 = !DILocalVariable(name: "o", arg: 1, scope: !2580, file: !536, line: 169, type: !2506)
!2585 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2580, file: !536, line: 170, type: !138)
!2586 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2580, file: !536, line: 170, type: !138)
!2587 = !DILocation(line: 0, scope: !2580)
!2588 = !DILocation(line: 172, column: 8, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2580, file: !536, line: 172, column: 7)
!2590 = !DILocation(line: 172, column: 7, scope: !2580)
!2591 = !DILocation(line: 174, column: 12, scope: !2580)
!2592 = !DILocation(line: 175, column: 8, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !536, line: 175, column: 7)
!2594 = !DILocation(line: 175, column: 19, scope: !2593)
!2595 = !DILocation(line: 176, column: 5, scope: !2593)
!2596 = !DILocation(line: 177, column: 6, scope: !2580)
!2597 = !DILocation(line: 177, column: 17, scope: !2580)
!2598 = !{!2528, !847, i64 40}
!2599 = !DILocation(line: 178, column: 6, scope: !2580)
!2600 = !DILocation(line: 178, column: 18, scope: !2580)
!2601 = !{!2528, !847, i64 48}
!2602 = !DILocation(line: 179, column: 1, scope: !2580)
!2603 = !DISubprogram(name: "abort", scope: !1040, file: !1040, line: 598, type: !491, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2604 = distinct !DISubprogram(name: "quotearg_buffer", scope: !536, file: !536, line: 774, type: !2605, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!135, !132, !135, !138, !135, !2520}
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2608 = !DILocalVariable(name: "buffer", arg: 1, scope: !2604, file: !536, line: 774, type: !132)
!2609 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2604, file: !536, line: 774, type: !135)
!2610 = !DILocalVariable(name: "arg", arg: 3, scope: !2604, file: !536, line: 775, type: !138)
!2611 = !DILocalVariable(name: "argsize", arg: 4, scope: !2604, file: !536, line: 775, type: !135)
!2612 = !DILocalVariable(name: "o", arg: 5, scope: !2604, file: !536, line: 776, type: !2520)
!2613 = !DILocalVariable(name: "p", scope: !2604, file: !536, line: 778, type: !2520)
!2614 = !DILocalVariable(name: "saved_errno", scope: !2604, file: !536, line: 779, type: !78)
!2615 = !DILocalVariable(name: "r", scope: !2604, file: !536, line: 780, type: !135)
!2616 = !DILocation(line: 0, scope: !2604)
!2617 = !DILocation(line: 778, column: 37, scope: !2604)
!2618 = !DILocation(line: 779, column: 21, scope: !2604)
!2619 = !DILocation(line: 781, column: 43, scope: !2604)
!2620 = !DILocation(line: 781, column: 53, scope: !2604)
!2621 = !DILocation(line: 781, column: 63, scope: !2604)
!2622 = !DILocation(line: 782, column: 43, scope: !2604)
!2623 = !DILocation(line: 782, column: 58, scope: !2604)
!2624 = !DILocation(line: 780, column: 14, scope: !2604)
!2625 = !DILocation(line: 783, column: 9, scope: !2604)
!2626 = !DILocation(line: 784, column: 3, scope: !2604)
!2627 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !536, file: !536, line: 251, type: !2628, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2632)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!135, !132, !135, !138, !135, !562, !78, !2630, !138, !138}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2658, !2660, !2663, !2664, !2665, !2666, !2669, !2670, !2672, !2673, !2676, !2680, !2681, !2689, !2692, !2693, !2694}
!2633 = !DILocalVariable(name: "buffer", arg: 1, scope: !2627, file: !536, line: 251, type: !132)
!2634 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2627, file: !536, line: 251, type: !135)
!2635 = !DILocalVariable(name: "arg", arg: 3, scope: !2627, file: !536, line: 252, type: !138)
!2636 = !DILocalVariable(name: "argsize", arg: 4, scope: !2627, file: !536, line: 252, type: !135)
!2637 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2627, file: !536, line: 253, type: !562)
!2638 = !DILocalVariable(name: "flags", arg: 6, scope: !2627, file: !536, line: 253, type: !78)
!2639 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2627, file: !536, line: 254, type: !2630)
!2640 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2627, file: !536, line: 255, type: !138)
!2641 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2627, file: !536, line: 256, type: !138)
!2642 = !DILocalVariable(name: "unibyte_locale", scope: !2627, file: !536, line: 258, type: !172)
!2643 = !DILocalVariable(name: "len", scope: !2627, file: !536, line: 260, type: !135)
!2644 = !DILocalVariable(name: "orig_buffersize", scope: !2627, file: !536, line: 261, type: !135)
!2645 = !DILocalVariable(name: "quote_string", scope: !2627, file: !536, line: 262, type: !138)
!2646 = !DILocalVariable(name: "quote_string_len", scope: !2627, file: !536, line: 263, type: !135)
!2647 = !DILocalVariable(name: "backslash_escapes", scope: !2627, file: !536, line: 264, type: !172)
!2648 = !DILocalVariable(name: "elide_outer_quotes", scope: !2627, file: !536, line: 265, type: !172)
!2649 = !DILocalVariable(name: "encountered_single_quote", scope: !2627, file: !536, line: 266, type: !172)
!2650 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2627, file: !536, line: 267, type: !172)
!2651 = !DILabel(scope: !2627, name: "process_input", file: !536, line: 308)
!2652 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2627, file: !536, line: 309, type: !172)
!2653 = !DILocalVariable(name: "lq", scope: !2654, file: !536, line: 361, type: !138)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !536, line: 361, column: 11)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !536, line: 360, column: 13)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !536, line: 333, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 312, column: 5)
!2658 = !DILocalVariable(name: "i", scope: !2659, file: !536, line: 395, type: !135)
!2659 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 395, column: 3)
!2660 = !DILocalVariable(name: "is_right_quote", scope: !2661, file: !536, line: 397, type: !172)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !536, line: 396, column: 5)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !536, line: 395, column: 3)
!2663 = !DILocalVariable(name: "escaping", scope: !2661, file: !536, line: 398, type: !172)
!2664 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2661, file: !536, line: 399, type: !172)
!2665 = !DILocalVariable(name: "c", scope: !2661, file: !536, line: 417, type: !140)
!2666 = !DILabel(scope: !2667, name: "c_and_shell_escape", file: !536, line: 502)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 478, column: 9)
!2668 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 419, column: 9)
!2669 = !DILabel(scope: !2667, name: "c_escape", file: !536, line: 507)
!2670 = !DILocalVariable(name: "m", scope: !2671, file: !536, line: 598, type: !135)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 596, column: 11)
!2672 = !DILocalVariable(name: "printable", scope: !2671, file: !536, line: 600, type: !172)
!2673 = !DILocalVariable(name: "mbs", scope: !2674, file: !536, line: 609, type: !611)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !536, line: 608, column: 15)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !536, line: 602, column: 17)
!2676 = !DILocalVariable(name: "w", scope: !2677, file: !536, line: 618, type: !516)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !536, line: 617, column: 19)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !536, line: 616, column: 17)
!2679 = distinct !DILexicalBlock(scope: !2674, file: !536, line: 616, column: 17)
!2680 = !DILocalVariable(name: "bytes", scope: !2677, file: !536, line: 619, type: !135)
!2681 = !DILocalVariable(name: "j", scope: !2682, file: !536, line: 648, type: !135)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !536, line: 648, column: 29)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !536, line: 647, column: 27)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !536, line: 645, column: 29)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !536, line: 636, column: 23)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !536, line: 628, column: 30)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !536, line: 623, column: 30)
!2688 = distinct !DILexicalBlock(scope: !2677, file: !536, line: 621, column: 25)
!2689 = !DILocalVariable(name: "ilim", scope: !2690, file: !536, line: 674, type: !135)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !536, line: 671, column: 15)
!2691 = distinct !DILexicalBlock(scope: !2671, file: !536, line: 670, column: 17)
!2692 = !DILabel(scope: !2661, name: "store_escape", file: !536, line: 709)
!2693 = !DILabel(scope: !2661, name: "store_c", file: !536, line: 712)
!2694 = !DILabel(scope: !2627, name: "force_outer_quoting_style", file: !536, line: 753)
!2695 = distinct !DIAssignID()
!2696 = distinct !DIAssignID()
!2697 = distinct !DIAssignID()
!2698 = distinct !DIAssignID()
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 0, scope: !2674)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 0, scope: !2677)
!2703 = !DILocation(line: 0, scope: !2627)
!2704 = !DILocation(line: 258, column: 25, scope: !2627)
!2705 = !DILocation(line: 258, column: 36, scope: !2627)
!2706 = !DILocation(line: 265, column: 8, scope: !2627)
!2707 = !DILocation(line: 267, column: 3, scope: !2627)
!2708 = !DILocation(line: 261, column: 10, scope: !2627)
!2709 = !DILocation(line: 262, column: 15, scope: !2627)
!2710 = !DILocation(line: 263, column: 10, scope: !2627)
!2711 = !DILocation(line: 264, column: 8, scope: !2627)
!2712 = !DILocation(line: 266, column: 8, scope: !2627)
!2713 = !DILocation(line: 267, column: 8, scope: !2627)
!2714 = !DILocation(line: 308, column: 2, scope: !2627)
!2715 = !DILocation(line: 311, column: 3, scope: !2627)
!2716 = !DILocation(line: 318, column: 11, scope: !2657)
!2717 = !DILocation(line: 318, column: 12, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2657, file: !536, line: 318, column: 11)
!2719 = !DILocation(line: 319, column: 9, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !536, line: 319, column: 9)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !536, line: 319, column: 9)
!2722 = !DILocation(line: 319, column: 9, scope: !2721)
!2723 = !DILocation(line: 0, scope: !602, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 357, column: 26, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !536, line: 335, column: 11)
!2726 = distinct !DILexicalBlock(scope: !2656, file: !536, line: 334, column: 13)
!2727 = !DILocation(line: 199, column: 29, scope: !602, inlinedAt: !2724)
!2728 = !DILocation(line: 201, column: 19, scope: !2729, inlinedAt: !2724)
!2729 = distinct !DILexicalBlock(scope: !602, file: !536, line: 201, column: 7)
!2730 = !DILocation(line: 201, column: 7, scope: !602, inlinedAt: !2724)
!2731 = !DILocation(line: 229, column: 3, scope: !602, inlinedAt: !2724)
!2732 = !DILocation(line: 230, column: 3, scope: !602, inlinedAt: !2724)
!2733 = !DILocalVariable(name: "ps", arg: 1, scope: !2734, file: !2481, line: 1135, type: !2737)
!2734 = distinct !DISubprogram(name: "mbszero", scope: !2481, file: !2481, line: 1135, type: !2735, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2738)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2738 = !{!2733}
!2739 = !DILocation(line: 0, scope: !2734, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 230, column: 18, scope: !602, inlinedAt: !2724)
!2741 = !DILocalVariable(name: "__dest", arg: 1, scope: !2742, file: !1240, line: 57, type: !133)
!2742 = distinct !DISubprogram(name: "memset", scope: !1240, file: !1240, line: 57, type: !2490, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2743)
!2743 = !{!2741, !2744, !2745}
!2744 = !DILocalVariable(name: "__ch", arg: 2, scope: !2742, file: !1240, line: 57, type: !78)
!2745 = !DILocalVariable(name: "__len", arg: 3, scope: !2742, file: !1240, line: 57, type: !135)
!2746 = !DILocation(line: 0, scope: !2742, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1137, column: 3, scope: !2734, inlinedAt: !2740)
!2748 = !DILocation(line: 59, column: 10, scope: !2742, inlinedAt: !2747)
!2749 = !DILocation(line: 231, column: 7, scope: !2750, inlinedAt: !2724)
!2750 = distinct !DILexicalBlock(scope: !602, file: !536, line: 231, column: 7)
!2751 = !DILocation(line: 231, column: 40, scope: !2750, inlinedAt: !2724)
!2752 = !DILocation(line: 231, column: 45, scope: !2750, inlinedAt: !2724)
!2753 = !DILocation(line: 235, column: 1, scope: !602, inlinedAt: !2724)
!2754 = !DILocation(line: 0, scope: !602, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 358, column: 27, scope: !2725)
!2756 = !DILocation(line: 199, column: 29, scope: !602, inlinedAt: !2755)
!2757 = !DILocation(line: 201, column: 19, scope: !2729, inlinedAt: !2755)
!2758 = !DILocation(line: 201, column: 7, scope: !602, inlinedAt: !2755)
!2759 = !DILocation(line: 229, column: 3, scope: !602, inlinedAt: !2755)
!2760 = !DILocation(line: 230, column: 3, scope: !602, inlinedAt: !2755)
!2761 = !DILocation(line: 0, scope: !2734, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 230, column: 18, scope: !602, inlinedAt: !2755)
!2763 = !DILocation(line: 0, scope: !2742, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1137, column: 3, scope: !2734, inlinedAt: !2762)
!2765 = !DILocation(line: 59, column: 10, scope: !2742, inlinedAt: !2764)
!2766 = !DILocation(line: 231, column: 7, scope: !2750, inlinedAt: !2755)
!2767 = !DILocation(line: 231, column: 40, scope: !2750, inlinedAt: !2755)
!2768 = !DILocation(line: 231, column: 45, scope: !2750, inlinedAt: !2755)
!2769 = !DILocation(line: 235, column: 1, scope: !602, inlinedAt: !2755)
!2770 = !DILocation(line: 360, column: 14, scope: !2655)
!2771 = !DILocation(line: 360, column: 13, scope: !2656)
!2772 = !DILocation(line: 0, scope: !2654)
!2773 = !DILocation(line: 361, column: 45, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2654, file: !536, line: 361, column: 11)
!2775 = !DILocation(line: 361, column: 11, scope: !2654)
!2776 = !DILocation(line: 362, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !536, line: 362, column: 13)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !536, line: 362, column: 13)
!2779 = !DILocation(line: 362, column: 13, scope: !2778)
!2780 = !DILocation(line: 361, column: 52, scope: !2774)
!2781 = distinct !{!2781, !2775, !2782, !963}
!2782 = !DILocation(line: 362, column: 13, scope: !2654)
!2783 = !DILocation(line: 260, column: 10, scope: !2627)
!2784 = !DILocation(line: 365, column: 28, scope: !2656)
!2785 = !DILocation(line: 367, column: 7, scope: !2657)
!2786 = !DILocation(line: 370, column: 7, scope: !2657)
!2787 = !DILocation(line: 373, column: 7, scope: !2657)
!2788 = !DILocation(line: 376, column: 12, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2657, file: !536, line: 376, column: 11)
!2790 = !DILocation(line: 376, column: 11, scope: !2657)
!2791 = !DILocation(line: 381, column: 12, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2657, file: !536, line: 381, column: 11)
!2793 = !DILocation(line: 381, column: 11, scope: !2657)
!2794 = !DILocation(line: 382, column: 9, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !536, line: 382, column: 9)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !536, line: 382, column: 9)
!2797 = !DILocation(line: 382, column: 9, scope: !2796)
!2798 = !DILocation(line: 389, column: 7, scope: !2657)
!2799 = !DILocation(line: 392, column: 7, scope: !2657)
!2800 = !DILocation(line: 0, scope: !2659)
!2801 = !DILocation(line: 395, column: 8, scope: !2659)
!2802 = !DILocation(line: 309, column: 8, scope: !2627)
!2803 = !DILocation(line: 395, scope: !2659)
!2804 = !DILocation(line: 395, column: 34, scope: !2662)
!2805 = !DILocation(line: 395, column: 26, scope: !2662)
!2806 = !DILocation(line: 395, column: 48, scope: !2662)
!2807 = !DILocation(line: 395, column: 55, scope: !2662)
!2808 = !DILocation(line: 395, column: 3, scope: !2659)
!2809 = !DILocation(line: 395, column: 67, scope: !2662)
!2810 = !DILocation(line: 0, scope: !2661)
!2811 = !DILocation(line: 402, column: 11, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 401, column: 11)
!2813 = !DILocation(line: 404, column: 17, scope: !2812)
!2814 = !DILocation(line: 405, column: 39, scope: !2812)
!2815 = !DILocation(line: 409, column: 32, scope: !2812)
!2816 = !DILocation(line: 405, column: 19, scope: !2812)
!2817 = !DILocation(line: 405, column: 15, scope: !2812)
!2818 = !DILocation(line: 410, column: 11, scope: !2812)
!2819 = !DILocation(line: 410, column: 25, scope: !2812)
!2820 = !DILocalVariable(name: "__s1", arg: 1, scope: !2821, file: !929, line: 974, type: !1064)
!2821 = distinct !DISubprogram(name: "memeq", scope: !929, file: !929, line: 974, type: !2450, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2822)
!2822 = !{!2820, !2823, !2824}
!2823 = !DILocalVariable(name: "__s2", arg: 2, scope: !2821, file: !929, line: 974, type: !1064)
!2824 = !DILocalVariable(name: "__n", arg: 3, scope: !2821, file: !929, line: 974, type: !135)
!2825 = !DILocation(line: 0, scope: !2821, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 410, column: 14, scope: !2812)
!2827 = !DILocation(line: 976, column: 11, scope: !2821, inlinedAt: !2826)
!2828 = !DILocation(line: 976, column: 10, scope: !2821, inlinedAt: !2826)
!2829 = !DILocation(line: 401, column: 11, scope: !2661)
!2830 = !DILocation(line: 417, column: 25, scope: !2661)
!2831 = !DILocation(line: 418, column: 7, scope: !2661)
!2832 = !DILocation(line: 421, column: 15, scope: !2668)
!2833 = !DILocation(line: 423, column: 15, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !536, line: 423, column: 15)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !536, line: 422, column: 13)
!2836 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 421, column: 15)
!2837 = !DILocation(line: 423, column: 15, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !536, line: 423, column: 15)
!2839 = !DILocation(line: 423, column: 15, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !536, line: 423, column: 15)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !536, line: 423, column: 15)
!2842 = distinct !DILexicalBlock(scope: !2838, file: !536, line: 423, column: 15)
!2843 = !DILocation(line: 423, column: 15, scope: !2841)
!2844 = !DILocation(line: 423, column: 15, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !536, line: 423, column: 15)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !536, line: 423, column: 15)
!2847 = !DILocation(line: 423, column: 15, scope: !2846)
!2848 = !DILocation(line: 423, column: 15, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !536, line: 423, column: 15)
!2850 = distinct !DILexicalBlock(scope: !2842, file: !536, line: 423, column: 15)
!2851 = !DILocation(line: 423, column: 15, scope: !2850)
!2852 = !DILocation(line: 423, column: 15, scope: !2842)
!2853 = !DILocation(line: 423, column: 15, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !536, line: 423, column: 15)
!2855 = distinct !DILexicalBlock(scope: !2834, file: !536, line: 423, column: 15)
!2856 = !DILocation(line: 423, column: 15, scope: !2855)
!2857 = !DILocation(line: 431, column: 19, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2835, file: !536, line: 430, column: 19)
!2859 = !DILocation(line: 431, column: 24, scope: !2858)
!2860 = !DILocation(line: 431, column: 28, scope: !2858)
!2861 = !DILocation(line: 431, column: 38, scope: !2858)
!2862 = !DILocation(line: 431, column: 48, scope: !2858)
!2863 = !DILocation(line: 431, column: 59, scope: !2858)
!2864 = !DILocation(line: 433, column: 19, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !536, line: 433, column: 19)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !536, line: 433, column: 19)
!2867 = distinct !DILexicalBlock(scope: !2858, file: !536, line: 432, column: 17)
!2868 = !DILocation(line: 433, column: 19, scope: !2866)
!2869 = !DILocation(line: 434, column: 19, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !536, line: 434, column: 19)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !536, line: 434, column: 19)
!2872 = !DILocation(line: 434, column: 19, scope: !2871)
!2873 = !DILocation(line: 435, column: 17, scope: !2867)
!2874 = !DILocation(line: 442, column: 20, scope: !2836)
!2875 = !DILocation(line: 447, column: 11, scope: !2668)
!2876 = !DILocation(line: 450, column: 19, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 448, column: 13)
!2878 = !DILocation(line: 456, column: 19, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2877, file: !536, line: 455, column: 19)
!2880 = !DILocation(line: 456, column: 24, scope: !2879)
!2881 = !DILocation(line: 456, column: 28, scope: !2879)
!2882 = !DILocation(line: 456, column: 38, scope: !2879)
!2883 = !DILocation(line: 456, column: 41, scope: !2879)
!2884 = !DILocation(line: 456, column: 52, scope: !2879)
!2885 = !DILocation(line: 455, column: 19, scope: !2877)
!2886 = !DILocation(line: 457, column: 25, scope: !2879)
!2887 = !DILocation(line: 457, column: 17, scope: !2879)
!2888 = !DILocation(line: 464, column: 25, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2879, file: !536, line: 458, column: 19)
!2890 = !DILocation(line: 468, column: 21, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !536, line: 468, column: 21)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !536, line: 468, column: 21)
!2893 = !DILocation(line: 468, column: 21, scope: !2892)
!2894 = !DILocation(line: 469, column: 21, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !536, line: 469, column: 21)
!2896 = distinct !DILexicalBlock(scope: !2889, file: !536, line: 469, column: 21)
!2897 = !DILocation(line: 469, column: 21, scope: !2896)
!2898 = !DILocation(line: 470, column: 21, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !536, line: 470, column: 21)
!2900 = distinct !DILexicalBlock(scope: !2889, file: !536, line: 470, column: 21)
!2901 = !DILocation(line: 470, column: 21, scope: !2900)
!2902 = !DILocation(line: 471, column: 21, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !536, line: 471, column: 21)
!2904 = distinct !DILexicalBlock(scope: !2889, file: !536, line: 471, column: 21)
!2905 = !DILocation(line: 471, column: 21, scope: !2904)
!2906 = !DILocation(line: 472, column: 21, scope: !2889)
!2907 = !DILocation(line: 482, column: 33, scope: !2667)
!2908 = !DILocation(line: 483, column: 33, scope: !2667)
!2909 = !DILocation(line: 485, column: 33, scope: !2667)
!2910 = !DILocation(line: 486, column: 33, scope: !2667)
!2911 = !DILocation(line: 487, column: 33, scope: !2667)
!2912 = !DILocation(line: 490, column: 17, scope: !2667)
!2913 = !DILocation(line: 492, column: 21, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !536, line: 491, column: 15)
!2915 = distinct !DILexicalBlock(scope: !2667, file: !536, line: 490, column: 17)
!2916 = !DILocation(line: 499, column: 35, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2667, file: !536, line: 499, column: 17)
!2918 = !DILocation(line: 499, column: 57, scope: !2917)
!2919 = !DILocation(line: 0, scope: !2667)
!2920 = !DILocation(line: 502, column: 11, scope: !2667)
!2921 = !DILocation(line: 504, column: 17, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2667, file: !536, line: 503, column: 17)
!2923 = !DILocation(line: 507, column: 11, scope: !2667)
!2924 = !DILocation(line: 508, column: 17, scope: !2667)
!2925 = !DILocation(line: 517, column: 15, scope: !2668)
!2926 = !DILocation(line: 517, column: 40, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 517, column: 15)
!2928 = !DILocation(line: 517, column: 47, scope: !2927)
!2929 = !DILocation(line: 517, column: 18, scope: !2927)
!2930 = !DILocation(line: 521, column: 17, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 521, column: 15)
!2932 = !DILocation(line: 521, column: 15, scope: !2668)
!2933 = !DILocation(line: 525, column: 11, scope: !2668)
!2934 = !DILocation(line: 537, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 536, column: 15)
!2936 = !DILocation(line: 544, column: 15, scope: !2668)
!2937 = !DILocation(line: 546, column: 19, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !536, line: 545, column: 13)
!2939 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 544, column: 15)
!2940 = !DILocation(line: 549, column: 19, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !536, line: 549, column: 19)
!2942 = !DILocation(line: 549, column: 30, scope: !2941)
!2943 = !DILocation(line: 558, column: 15, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !536, line: 558, column: 15)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !536, line: 558, column: 15)
!2946 = !DILocation(line: 558, column: 15, scope: !2945)
!2947 = !DILocation(line: 559, column: 15, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !536, line: 559, column: 15)
!2949 = distinct !DILexicalBlock(scope: !2938, file: !536, line: 559, column: 15)
!2950 = !DILocation(line: 559, column: 15, scope: !2949)
!2951 = !DILocation(line: 560, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !536, line: 560, column: 15)
!2953 = distinct !DILexicalBlock(scope: !2938, file: !536, line: 560, column: 15)
!2954 = !DILocation(line: 560, column: 15, scope: !2953)
!2955 = !DILocation(line: 562, column: 13, scope: !2938)
!2956 = !DILocation(line: 602, column: 17, scope: !2671)
!2957 = !DILocation(line: 0, scope: !2671)
!2958 = !DILocation(line: 605, column: 29, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2675, file: !536, line: 603, column: 15)
!2960 = !DILocation(line: 605, column: 27, scope: !2959)
!2961 = !DILocation(line: 606, column: 15, scope: !2959)
!2962 = !DILocation(line: 609, column: 17, scope: !2674)
!2963 = !DILocation(line: 0, scope: !2734, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 609, column: 32, scope: !2674)
!2965 = !DILocation(line: 0, scope: !2742, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1137, column: 3, scope: !2734, inlinedAt: !2964)
!2967 = !DILocation(line: 59, column: 10, scope: !2742, inlinedAt: !2966)
!2968 = !DILocation(line: 613, column: 29, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2674, file: !536, line: 613, column: 21)
!2970 = !DILocation(line: 613, column: 21, scope: !2674)
!2971 = !DILocation(line: 614, column: 29, scope: !2969)
!2972 = !DILocation(line: 614, column: 19, scope: !2969)
!2973 = !DILocation(line: 618, column: 21, scope: !2677)
!2974 = !DILocation(line: 620, column: 54, scope: !2677)
!2975 = !DILocation(line: 619, column: 36, scope: !2677)
!2976 = !DILocation(line: 621, column: 25, scope: !2677)
!2977 = !DILocation(line: 631, column: 38, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2686, file: !536, line: 629, column: 23)
!2979 = !DILocation(line: 631, column: 48, scope: !2978)
!2980 = !DILocation(line: 626, column: 25, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2687, file: !536, line: 624, column: 23)
!2982 = !DILocation(line: 631, column: 51, scope: !2978)
!2983 = !DILocation(line: 631, column: 25, scope: !2978)
!2984 = !DILocation(line: 632, column: 28, scope: !2978)
!2985 = !DILocation(line: 631, column: 34, scope: !2978)
!2986 = distinct !{!2986, !2983, !2984, !963}
!2987 = !DILocation(line: 0, scope: !2682)
!2988 = !DILocation(line: 646, column: 29, scope: !2684)
!2989 = !DILocation(line: 649, column: 39, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2682, file: !536, line: 648, column: 29)
!2991 = !DILocation(line: 649, column: 31, scope: !2990)
!2992 = !DILocation(line: 648, column: 60, scope: !2990)
!2993 = !DILocation(line: 648, column: 50, scope: !2990)
!2994 = !DILocation(line: 648, column: 29, scope: !2682)
!2995 = distinct !{!2995, !2994, !2996, !963}
!2996 = !DILocation(line: 654, column: 33, scope: !2682)
!2997 = !DILocation(line: 657, column: 43, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2685, file: !536, line: 657, column: 29)
!2999 = !DILocalVariable(name: "wc", arg: 1, scope: !3000, file: !3001, line: 865, type: !3004)
!3000 = distinct !DISubprogram(name: "c32isprint", scope: !3001, file: !3001, line: 865, type: !3002, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3006)
!3001 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!78, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3005, line: 20, baseType: !84)
!3005 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3006 = !{!2999}
!3007 = !DILocation(line: 0, scope: !3000, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 657, column: 31, scope: !2998)
!3009 = !DILocation(line: 871, column: 10, scope: !3000, inlinedAt: !3008)
!3010 = !DILocation(line: 657, column: 31, scope: !2998)
!3011 = !DILocation(line: 664, column: 23, scope: !2677)
!3012 = !DILocation(line: 665, column: 19, scope: !2678)
!3013 = !DILocation(line: 666, column: 15, scope: !2675)
!3014 = !DILocation(line: 0, scope: !2675)
!3015 = !DILocation(line: 670, column: 19, scope: !2691)
!3016 = !DILocation(line: 670, column: 23, scope: !2691)
!3017 = !DILocation(line: 674, column: 33, scope: !2690)
!3018 = !DILocation(line: 0, scope: !2690)
!3019 = !DILocation(line: 676, column: 17, scope: !2690)
!3020 = !DILocation(line: 398, column: 12, scope: !2661)
!3021 = !DILocation(line: 678, column: 43, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !536, line: 678, column: 25)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !536, line: 677, column: 19)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !536, line: 676, column: 17)
!3025 = distinct !DILexicalBlock(scope: !2690, file: !536, line: 676, column: 17)
!3026 = !DILocation(line: 680, column: 25, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !536, line: 680, column: 25)
!3028 = distinct !DILexicalBlock(scope: !3022, file: !536, line: 679, column: 23)
!3029 = !DILocation(line: 680, column: 25, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !536, line: 680, column: 25)
!3031 = !DILocation(line: 680, column: 25, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !536, line: 680, column: 25)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !536, line: 680, column: 25)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !536, line: 680, column: 25)
!3035 = !DILocation(line: 680, column: 25, scope: !3033)
!3036 = !DILocation(line: 680, column: 25, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !536, line: 680, column: 25)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !536, line: 680, column: 25)
!3039 = !DILocation(line: 680, column: 25, scope: !3038)
!3040 = !DILocation(line: 680, column: 25, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !536, line: 680, column: 25)
!3042 = distinct !DILexicalBlock(scope: !3034, file: !536, line: 680, column: 25)
!3043 = !DILocation(line: 680, column: 25, scope: !3042)
!3044 = !DILocation(line: 680, column: 25, scope: !3034)
!3045 = !DILocation(line: 680, column: 25, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !536, line: 680, column: 25)
!3047 = distinct !DILexicalBlock(scope: !3027, file: !536, line: 680, column: 25)
!3048 = !DILocation(line: 680, column: 25, scope: !3047)
!3049 = !DILocation(line: 681, column: 25, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !536, line: 681, column: 25)
!3051 = distinct !DILexicalBlock(scope: !3028, file: !536, line: 681, column: 25)
!3052 = !DILocation(line: 681, column: 25, scope: !3051)
!3053 = !DILocation(line: 682, column: 25, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !536, line: 682, column: 25)
!3055 = distinct !DILexicalBlock(scope: !3028, file: !536, line: 682, column: 25)
!3056 = !DILocation(line: 682, column: 25, scope: !3055)
!3057 = !DILocation(line: 683, column: 38, scope: !3028)
!3058 = !DILocation(line: 683, column: 33, scope: !3028)
!3059 = !DILocation(line: 684, column: 23, scope: !3028)
!3060 = !DILocation(line: 685, column: 30, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3022, file: !536, line: 685, column: 30)
!3062 = !DILocation(line: 685, column: 30, scope: !3022)
!3063 = !DILocation(line: 687, column: 25, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !536, line: 687, column: 25)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !536, line: 687, column: 25)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !536, line: 686, column: 23)
!3067 = !DILocation(line: 687, column: 25, scope: !3065)
!3068 = !DILocation(line: 689, column: 23, scope: !3066)
!3069 = !DILocation(line: 690, column: 35, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3023, file: !536, line: 690, column: 25)
!3071 = !DILocation(line: 690, column: 30, scope: !3070)
!3072 = !DILocation(line: 690, column: 25, scope: !3023)
!3073 = !DILocation(line: 692, column: 21, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !536, line: 692, column: 21)
!3075 = distinct !DILexicalBlock(scope: !3023, file: !536, line: 692, column: 21)
!3076 = !DILocation(line: 692, column: 21, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !536, line: 692, column: 21)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !536, line: 692, column: 21)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !536, line: 692, column: 21)
!3080 = !DILocation(line: 692, column: 21, scope: !3078)
!3081 = !DILocation(line: 692, column: 21, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !536, line: 692, column: 21)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !536, line: 692, column: 21)
!3084 = !DILocation(line: 692, column: 21, scope: !3083)
!3085 = !DILocation(line: 692, column: 21, scope: !3079)
!3086 = !DILocation(line: 0, scope: !3023)
!3087 = !DILocation(line: 693, column: 21, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !536, line: 693, column: 21)
!3089 = distinct !DILexicalBlock(scope: !3023, file: !536, line: 693, column: 21)
!3090 = !DILocation(line: 693, column: 21, scope: !3089)
!3091 = !DILocation(line: 694, column: 25, scope: !3023)
!3092 = !DILocation(line: 676, column: 17, scope: !3024)
!3093 = distinct !{!3093, !3094, !3095}
!3094 = !DILocation(line: 676, column: 17, scope: !3025)
!3095 = !DILocation(line: 695, column: 19, scope: !3025)
!3096 = !DILocation(line: 409, column: 30, scope: !2812)
!3097 = !DILocation(line: 702, column: 34, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 702, column: 11)
!3099 = !DILocation(line: 704, column: 14, scope: !3098)
!3100 = !DILocation(line: 705, column: 14, scope: !3098)
!3101 = !DILocation(line: 705, column: 35, scope: !3098)
!3102 = !DILocation(line: 705, column: 17, scope: !3098)
!3103 = !DILocation(line: 705, column: 47, scope: !3098)
!3104 = !DILocation(line: 705, column: 65, scope: !3098)
!3105 = !DILocation(line: 706, column: 11, scope: !3098)
!3106 = !DILocation(line: 702, column: 11, scope: !2661)
!3107 = !DILocation(line: 395, column: 15, scope: !2659)
!3108 = !DILocation(line: 709, column: 5, scope: !2661)
!3109 = !DILocation(line: 710, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 710, column: 7)
!3111 = !DILocation(line: 710, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3110, file: !536, line: 710, column: 7)
!3113 = !DILocation(line: 710, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !536, line: 710, column: 7)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !536, line: 710, column: 7)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !536, line: 710, column: 7)
!3117 = !DILocation(line: 710, column: 7, scope: !3115)
!3118 = !DILocation(line: 710, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !536, line: 710, column: 7)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !536, line: 710, column: 7)
!3121 = !DILocation(line: 710, column: 7, scope: !3120)
!3122 = !DILocation(line: 710, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !536, line: 710, column: 7)
!3124 = distinct !DILexicalBlock(scope: !3116, file: !536, line: 710, column: 7)
!3125 = !DILocation(line: 710, column: 7, scope: !3124)
!3126 = !DILocation(line: 710, column: 7, scope: !3116)
!3127 = !DILocation(line: 710, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !536, line: 710, column: 7)
!3129 = distinct !DILexicalBlock(scope: !3110, file: !536, line: 710, column: 7)
!3130 = !DILocation(line: 710, column: 7, scope: !3129)
!3131 = !DILocation(line: 712, column: 5, scope: !2661)
!3132 = !DILocation(line: 713, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !536, line: 713, column: 7)
!3134 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 713, column: 7)
!3135 = !DILocation(line: 417, column: 21, scope: !2661)
!3136 = !DILocation(line: 713, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !536, line: 713, column: 7)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !536, line: 713, column: 7)
!3139 = distinct !DILexicalBlock(scope: !3133, file: !536, line: 713, column: 7)
!3140 = !DILocation(line: 713, column: 7, scope: !3138)
!3141 = !DILocation(line: 713, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !536, line: 713, column: 7)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !536, line: 713, column: 7)
!3144 = !DILocation(line: 713, column: 7, scope: !3143)
!3145 = !DILocation(line: 713, column: 7, scope: !3139)
!3146 = !DILocation(line: 714, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !536, line: 714, column: 7)
!3148 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 714, column: 7)
!3149 = !DILocation(line: 714, column: 7, scope: !3148)
!3150 = !DILocation(line: 716, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2661, file: !536, line: 716, column: 11)
!3152 = !DILocation(line: 716, column: 11, scope: !2661)
!3153 = !DILocation(line: 718, column: 5, scope: !2662)
!3154 = !DILocation(line: 395, column: 82, scope: !2662)
!3155 = !DILocation(line: 395, column: 3, scope: !2662)
!3156 = distinct !{!3156, !2808, !3157, !963}
!3157 = !DILocation(line: 718, column: 5, scope: !2659)
!3158 = !DILocation(line: 720, column: 11, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 720, column: 7)
!3160 = !DILocation(line: 720, column: 16, scope: !3159)
!3161 = !DILocation(line: 728, column: 51, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 728, column: 7)
!3163 = !DILocation(line: 731, column: 11, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !536, line: 731, column: 11)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !536, line: 730, column: 5)
!3166 = !DILocation(line: 731, column: 11, scope: !3165)
!3167 = !DILocation(line: 732, column: 16, scope: !3164)
!3168 = !DILocation(line: 732, column: 9, scope: !3164)
!3169 = !DILocation(line: 736, column: 18, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3164, file: !536, line: 736, column: 16)
!3171 = !DILocation(line: 736, column: 29, scope: !3170)
!3172 = !DILocation(line: 745, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 745, column: 7)
!3174 = !DILocation(line: 745, column: 20, scope: !3173)
!3175 = !DILocation(line: 746, column: 12, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !536, line: 746, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3173, file: !536, line: 746, column: 5)
!3178 = !DILocation(line: 746, column: 5, scope: !3177)
!3179 = !DILocation(line: 747, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !536, line: 747, column: 7)
!3181 = distinct !DILexicalBlock(scope: !3176, file: !536, line: 747, column: 7)
!3182 = !DILocation(line: 747, column: 7, scope: !3181)
!3183 = !DILocation(line: 746, column: 39, scope: !3176)
!3184 = distinct !{!3184, !3178, !3185, !963}
!3185 = !DILocation(line: 747, column: 7, scope: !3177)
!3186 = !DILocation(line: 749, column: 11, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 749, column: 7)
!3188 = !DILocation(line: 749, column: 7, scope: !2627)
!3189 = !DILocation(line: 750, column: 5, scope: !3187)
!3190 = !DILocation(line: 750, column: 17, scope: !3187)
!3191 = !DILocation(line: 753, column: 2, scope: !2627)
!3192 = !DILocation(line: 756, column: 51, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !2627, file: !536, line: 756, column: 7)
!3194 = !DILocation(line: 756, column: 21, scope: !3193)
!3195 = !DILocation(line: 760, column: 42, scope: !2627)
!3196 = !DILocation(line: 758, column: 10, scope: !2627)
!3197 = !DILocation(line: 758, column: 3, scope: !2627)
!3198 = !DILocation(line: 762, column: 1, scope: !2627)
!3199 = !DISubprogram(name: "iswprint", scope: !3200, file: !3200, line: 120, type: !3002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3201 = distinct !DISubprogram(name: "quotearg_alloc", scope: !536, file: !536, line: 788, type: !3202, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!132, !138, !135, !2520}
!3204 = !{!3205, !3206, !3207}
!3205 = !DILocalVariable(name: "arg", arg: 1, scope: !3201, file: !536, line: 788, type: !138)
!3206 = !DILocalVariable(name: "argsize", arg: 2, scope: !3201, file: !536, line: 788, type: !135)
!3207 = !DILocalVariable(name: "o", arg: 3, scope: !3201, file: !536, line: 789, type: !2520)
!3208 = !DILocation(line: 0, scope: !3201)
!3209 = !DILocalVariable(name: "arg", arg: 1, scope: !3210, file: !536, line: 801, type: !138)
!3210 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !536, file: !536, line: 801, type: !3211, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!132, !138, !135, !179, !2520}
!3213 = !{!3209, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3214 = !DILocalVariable(name: "argsize", arg: 2, scope: !3210, file: !536, line: 801, type: !135)
!3215 = !DILocalVariable(name: "size", arg: 3, scope: !3210, file: !536, line: 801, type: !179)
!3216 = !DILocalVariable(name: "o", arg: 4, scope: !3210, file: !536, line: 802, type: !2520)
!3217 = !DILocalVariable(name: "p", scope: !3210, file: !536, line: 804, type: !2520)
!3218 = !DILocalVariable(name: "saved_errno", scope: !3210, file: !536, line: 805, type: !78)
!3219 = !DILocalVariable(name: "flags", scope: !3210, file: !536, line: 807, type: !78)
!3220 = !DILocalVariable(name: "bufsize", scope: !3210, file: !536, line: 808, type: !135)
!3221 = !DILocalVariable(name: "buf", scope: !3210, file: !536, line: 812, type: !132)
!3222 = !DILocation(line: 0, scope: !3210, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 791, column: 10, scope: !3201)
!3224 = !DILocation(line: 804, column: 37, scope: !3210, inlinedAt: !3223)
!3225 = !DILocation(line: 805, column: 21, scope: !3210, inlinedAt: !3223)
!3226 = !DILocation(line: 807, column: 18, scope: !3210, inlinedAt: !3223)
!3227 = !DILocation(line: 807, column: 24, scope: !3210, inlinedAt: !3223)
!3228 = !DILocation(line: 808, column: 72, scope: !3210, inlinedAt: !3223)
!3229 = !DILocation(line: 809, column: 56, scope: !3210, inlinedAt: !3223)
!3230 = !DILocation(line: 810, column: 49, scope: !3210, inlinedAt: !3223)
!3231 = !DILocation(line: 811, column: 49, scope: !3210, inlinedAt: !3223)
!3232 = !DILocation(line: 808, column: 20, scope: !3210, inlinedAt: !3223)
!3233 = !DILocation(line: 811, column: 62, scope: !3210, inlinedAt: !3223)
!3234 = !DILocation(line: 812, column: 15, scope: !3210, inlinedAt: !3223)
!3235 = !DILocation(line: 813, column: 60, scope: !3210, inlinedAt: !3223)
!3236 = !DILocation(line: 815, column: 32, scope: !3210, inlinedAt: !3223)
!3237 = !DILocation(line: 815, column: 47, scope: !3210, inlinedAt: !3223)
!3238 = !DILocation(line: 813, column: 3, scope: !3210, inlinedAt: !3223)
!3239 = !DILocation(line: 816, column: 9, scope: !3210, inlinedAt: !3223)
!3240 = !DILocation(line: 791, column: 3, scope: !3201)
!3241 = !DILocation(line: 0, scope: !3210)
!3242 = !DILocation(line: 804, column: 37, scope: !3210)
!3243 = !DILocation(line: 805, column: 21, scope: !3210)
!3244 = !DILocation(line: 807, column: 18, scope: !3210)
!3245 = !DILocation(line: 807, column: 27, scope: !3210)
!3246 = !DILocation(line: 807, column: 24, scope: !3210)
!3247 = !DILocation(line: 808, column: 72, scope: !3210)
!3248 = !DILocation(line: 809, column: 56, scope: !3210)
!3249 = !DILocation(line: 810, column: 49, scope: !3210)
!3250 = !DILocation(line: 811, column: 49, scope: !3210)
!3251 = !DILocation(line: 808, column: 20, scope: !3210)
!3252 = !DILocation(line: 811, column: 62, scope: !3210)
!3253 = !DILocation(line: 812, column: 15, scope: !3210)
!3254 = !DILocation(line: 813, column: 60, scope: !3210)
!3255 = !DILocation(line: 815, column: 32, scope: !3210)
!3256 = !DILocation(line: 815, column: 47, scope: !3210)
!3257 = !DILocation(line: 813, column: 3, scope: !3210)
!3258 = !DILocation(line: 816, column: 9, scope: !3210)
!3259 = !DILocation(line: 817, column: 7, scope: !3210)
!3260 = !DILocation(line: 818, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3210, file: !536, line: 817, column: 7)
!3262 = !DILocation(line: 818, column: 5, scope: !3261)
!3263 = !DILocation(line: 819, column: 3, scope: !3210)
!3264 = distinct !DISubprogram(name: "quotearg_free", scope: !536, file: !536, line: 837, type: !491, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3265)
!3265 = !{!3266, !3267}
!3266 = !DILocalVariable(name: "sv", scope: !3264, file: !536, line: 839, type: !625)
!3267 = !DILocalVariable(name: "i", scope: !3268, file: !536, line: 840, type: !78)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !536, line: 840, column: 3)
!3269 = !DILocation(line: 839, column: 24, scope: !3264)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 0, scope: !3268)
!3272 = !DILocation(line: 840, column: 21, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3268, file: !536, line: 840, column: 3)
!3274 = !DILocation(line: 840, column: 3, scope: !3268)
!3275 = !DILocation(line: 842, column: 13, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3264, file: !536, line: 842, column: 7)
!3277 = !{!3278, !847, i64 8}
!3278 = !{!"slotvec", !1144, i64 0, !847, i64 8}
!3279 = !DILocation(line: 842, column: 17, scope: !3276)
!3280 = !DILocation(line: 842, column: 7, scope: !3264)
!3281 = !DILocation(line: 841, column: 17, scope: !3273)
!3282 = !DILocation(line: 841, column: 5, scope: !3273)
!3283 = !DILocation(line: 840, column: 32, scope: !3273)
!3284 = distinct !{!3284, !3274, !3285, !963}
!3285 = !DILocation(line: 841, column: 20, scope: !3268)
!3286 = !DILocation(line: 844, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3276, file: !536, line: 843, column: 5)
!3288 = !DILocation(line: 845, column: 21, scope: !3287)
!3289 = !{!3278, !1144, i64 0}
!3290 = !DILocation(line: 846, column: 20, scope: !3287)
!3291 = !DILocation(line: 847, column: 5, scope: !3287)
!3292 = !DILocation(line: 848, column: 10, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3264, file: !536, line: 848, column: 7)
!3294 = !DILocation(line: 848, column: 7, scope: !3264)
!3295 = !DILocation(line: 850, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !536, line: 849, column: 5)
!3297 = !DILocation(line: 851, column: 15, scope: !3296)
!3298 = !DILocation(line: 852, column: 5, scope: !3296)
!3299 = !DILocation(line: 853, column: 10, scope: !3264)
!3300 = !DILocation(line: 854, column: 1, scope: !3264)
!3301 = distinct !DISubprogram(name: "quotearg_n", scope: !536, file: !536, line: 919, type: !1033, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3302)
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "n", arg: 1, scope: !3301, file: !536, line: 919, type: !78)
!3304 = !DILocalVariable(name: "arg", arg: 2, scope: !3301, file: !536, line: 919, type: !138)
!3305 = !DILocation(line: 0, scope: !3301)
!3306 = !DILocation(line: 921, column: 10, scope: !3301)
!3307 = !DILocation(line: 921, column: 3, scope: !3301)
!3308 = distinct !DISubprogram(name: "quotearg_n_options", scope: !536, file: !536, line: 866, type: !3309, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!132, !78, !138, !135, !2520}
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3322, !3323, !3325, !3326, !3327}
!3312 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !536, line: 866, type: !78)
!3313 = !DILocalVariable(name: "arg", arg: 2, scope: !3308, file: !536, line: 866, type: !138)
!3314 = !DILocalVariable(name: "argsize", arg: 3, scope: !3308, file: !536, line: 866, type: !135)
!3315 = !DILocalVariable(name: "options", arg: 4, scope: !3308, file: !536, line: 867, type: !2520)
!3316 = !DILocalVariable(name: "saved_errno", scope: !3308, file: !536, line: 869, type: !78)
!3317 = !DILocalVariable(name: "sv", scope: !3308, file: !536, line: 871, type: !625)
!3318 = !DILocalVariable(name: "nslots_max", scope: !3308, file: !536, line: 873, type: !78)
!3319 = !DILocalVariable(name: "preallocated", scope: !3320, file: !536, line: 879, type: !172)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !536, line: 878, column: 5)
!3321 = distinct !DILexicalBlock(scope: !3308, file: !536, line: 877, column: 7)
!3322 = !DILocalVariable(name: "new_nslots", scope: !3320, file: !536, line: 880, type: !798)
!3323 = !DILocalVariable(name: "size", scope: !3324, file: !536, line: 891, type: !135)
!3324 = distinct !DILexicalBlock(scope: !3308, file: !536, line: 890, column: 3)
!3325 = !DILocalVariable(name: "val", scope: !3324, file: !536, line: 892, type: !132)
!3326 = !DILocalVariable(name: "flags", scope: !3324, file: !536, line: 894, type: !78)
!3327 = !DILocalVariable(name: "qsize", scope: !3324, file: !536, line: 895, type: !135)
!3328 = distinct !DIAssignID()
!3329 = !DILocation(line: 0, scope: !3320)
!3330 = !DILocation(line: 0, scope: !3308)
!3331 = !DILocation(line: 869, column: 21, scope: !3308)
!3332 = !DILocation(line: 871, column: 24, scope: !3308)
!3333 = !DILocation(line: 874, column: 17, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3308, file: !536, line: 874, column: 7)
!3335 = !DILocation(line: 875, column: 5, scope: !3334)
!3336 = !DILocation(line: 877, column: 7, scope: !3321)
!3337 = !DILocation(line: 877, column: 14, scope: !3321)
!3338 = !DILocation(line: 877, column: 7, scope: !3308)
!3339 = !DILocation(line: 879, column: 31, scope: !3320)
!3340 = !DILocation(line: 880, column: 7, scope: !3320)
!3341 = !DILocation(line: 880, column: 26, scope: !3320)
!3342 = !DILocation(line: 880, column: 13, scope: !3320)
!3343 = distinct !DIAssignID()
!3344 = !DILocation(line: 882, column: 31, scope: !3320)
!3345 = !DILocation(line: 883, column: 33, scope: !3320)
!3346 = !DILocation(line: 883, column: 42, scope: !3320)
!3347 = !DILocation(line: 883, column: 31, scope: !3320)
!3348 = !DILocation(line: 882, column: 22, scope: !3320)
!3349 = !DILocation(line: 882, column: 15, scope: !3320)
!3350 = !DILocation(line: 884, column: 11, scope: !3320)
!3351 = !DILocation(line: 885, column: 15, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3320, file: !536, line: 884, column: 11)
!3353 = !{i64 0, i64 8, !1143, i64 8, i64 8, !846}
!3354 = !DILocation(line: 885, column: 9, scope: !3352)
!3355 = !DILocation(line: 886, column: 20, scope: !3320)
!3356 = !DILocation(line: 886, column: 18, scope: !3320)
!3357 = !DILocation(line: 886, column: 32, scope: !3320)
!3358 = !DILocation(line: 886, column: 43, scope: !3320)
!3359 = !DILocation(line: 886, column: 53, scope: !3320)
!3360 = !DILocation(line: 0, scope: !2742, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 886, column: 7, scope: !3320)
!3362 = !DILocation(line: 59, column: 10, scope: !2742, inlinedAt: !3361)
!3363 = !DILocation(line: 887, column: 16, scope: !3320)
!3364 = !DILocation(line: 887, column: 14, scope: !3320)
!3365 = !DILocation(line: 888, column: 5, scope: !3321)
!3366 = !DILocation(line: 888, column: 5, scope: !3320)
!3367 = !DILocation(line: 891, column: 19, scope: !3324)
!3368 = !DILocation(line: 891, column: 25, scope: !3324)
!3369 = !DILocation(line: 0, scope: !3324)
!3370 = !DILocation(line: 892, column: 23, scope: !3324)
!3371 = !DILocation(line: 894, column: 26, scope: !3324)
!3372 = !DILocation(line: 894, column: 32, scope: !3324)
!3373 = !DILocation(line: 896, column: 55, scope: !3324)
!3374 = !DILocation(line: 897, column: 55, scope: !3324)
!3375 = !DILocation(line: 898, column: 55, scope: !3324)
!3376 = !DILocation(line: 899, column: 55, scope: !3324)
!3377 = !DILocation(line: 895, column: 20, scope: !3324)
!3378 = !DILocation(line: 901, column: 14, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3324, file: !536, line: 901, column: 9)
!3380 = !DILocation(line: 901, column: 9, scope: !3324)
!3381 = !DILocation(line: 903, column: 35, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !536, line: 902, column: 7)
!3383 = !DILocation(line: 903, column: 20, scope: !3382)
!3384 = !DILocation(line: 904, column: 17, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !536, line: 904, column: 13)
!3386 = !DILocation(line: 904, column: 13, scope: !3382)
!3387 = !DILocation(line: 905, column: 11, scope: !3385)
!3388 = !DILocation(line: 906, column: 27, scope: !3382)
!3389 = !DILocation(line: 906, column: 19, scope: !3382)
!3390 = !DILocation(line: 907, column: 69, scope: !3382)
!3391 = !DILocation(line: 909, column: 44, scope: !3382)
!3392 = !DILocation(line: 910, column: 44, scope: !3382)
!3393 = !DILocation(line: 907, column: 9, scope: !3382)
!3394 = !DILocation(line: 911, column: 7, scope: !3382)
!3395 = !DILocation(line: 913, column: 11, scope: !3324)
!3396 = !DILocation(line: 914, column: 5, scope: !3324)
!3397 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !536, file: !536, line: 925, type: !3398, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!132, !78, !138, !135}
!3400 = !{!3401, !3402, !3403}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !536, line: 925, type: !78)
!3402 = !DILocalVariable(name: "arg", arg: 2, scope: !3397, file: !536, line: 925, type: !138)
!3403 = !DILocalVariable(name: "argsize", arg: 3, scope: !3397, file: !536, line: 925, type: !135)
!3404 = !DILocation(line: 0, scope: !3397)
!3405 = !DILocation(line: 927, column: 10, scope: !3397)
!3406 = !DILocation(line: 927, column: 3, scope: !3397)
!3407 = distinct !DISubprogram(name: "quotearg", scope: !536, file: !536, line: 931, type: !1042, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3408)
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "arg", arg: 1, scope: !3407, file: !536, line: 931, type: !138)
!3410 = !DILocation(line: 0, scope: !3407)
!3411 = !DILocation(line: 0, scope: !3301, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 933, column: 10, scope: !3407)
!3413 = !DILocation(line: 921, column: 10, scope: !3301, inlinedAt: !3412)
!3414 = !DILocation(line: 933, column: 3, scope: !3407)
!3415 = distinct !DISubprogram(name: "quotearg_mem", scope: !536, file: !536, line: 937, type: !3416, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!132, !138, !135}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "arg", arg: 1, scope: !3415, file: !536, line: 937, type: !138)
!3420 = !DILocalVariable(name: "argsize", arg: 2, scope: !3415, file: !536, line: 937, type: !135)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 0, scope: !3397, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 939, column: 10, scope: !3415)
!3424 = !DILocation(line: 927, column: 10, scope: !3397, inlinedAt: !3423)
!3425 = !DILocation(line: 939, column: 3, scope: !3415)
!3426 = distinct !DISubprogram(name: "quotearg_n_style", scope: !536, file: !536, line: 943, type: !3427, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!132, !78, !562, !138}
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3426, file: !536, line: 943, type: !78)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3426, file: !536, line: 943, type: !562)
!3432 = !DILocalVariable(name: "arg", arg: 3, scope: !3426, file: !536, line: 943, type: !138)
!3433 = !DILocalVariable(name: "o", scope: !3426, file: !536, line: 945, type: !2521)
!3434 = distinct !DIAssignID()
!3435 = !DILocation(line: 0, scope: !3426)
!3436 = !DILocation(line: 945, column: 3, scope: !3426)
!3437 = !{!3438}
!3438 = distinct !{!3438, !3439, !"quoting_options_from_style: argument 0"}
!3439 = distinct !{!3439, !"quoting_options_from_style"}
!3440 = !DILocation(line: 945, column: 36, scope: !3426)
!3441 = !DILocalVariable(name: "style", arg: 1, scope: !3442, file: !536, line: 183, type: !562)
!3442 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !536, file: !536, line: 183, type: !3443, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!577, !562}
!3445 = !{!3441, !3446}
!3446 = !DILocalVariable(name: "o", scope: !3442, file: !536, line: 185, type: !577)
!3447 = !DILocation(line: 0, scope: !3442, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 945, column: 36, scope: !3426)
!3449 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3448)
!3450 = distinct !DIAssignID()
!3451 = !DILocation(line: 186, column: 13, scope: !3452, inlinedAt: !3448)
!3452 = distinct !DILexicalBlock(scope: !3442, file: !536, line: 186, column: 7)
!3453 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3448)
!3454 = !DILocation(line: 187, column: 5, scope: !3452, inlinedAt: !3448)
!3455 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3448)
!3456 = distinct !DIAssignID()
!3457 = !DILocation(line: 946, column: 10, scope: !3426)
!3458 = !DILocation(line: 947, column: 1, scope: !3426)
!3459 = !DILocation(line: 946, column: 3, scope: !3426)
!3460 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !536, file: !536, line: 950, type: !3461, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!132, !78, !562, !138, !135}
!3463 = !{!3464, !3465, !3466, !3467, !3468}
!3464 = !DILocalVariable(name: "n", arg: 1, scope: !3460, file: !536, line: 950, type: !78)
!3465 = !DILocalVariable(name: "s", arg: 2, scope: !3460, file: !536, line: 950, type: !562)
!3466 = !DILocalVariable(name: "arg", arg: 3, scope: !3460, file: !536, line: 951, type: !138)
!3467 = !DILocalVariable(name: "argsize", arg: 4, scope: !3460, file: !536, line: 951, type: !135)
!3468 = !DILocalVariable(name: "o", scope: !3460, file: !536, line: 953, type: !2521)
!3469 = distinct !DIAssignID()
!3470 = !DILocation(line: 0, scope: !3460)
!3471 = !DILocation(line: 953, column: 3, scope: !3460)
!3472 = !{!3473}
!3473 = distinct !{!3473, !3474, !"quoting_options_from_style: argument 0"}
!3474 = distinct !{!3474, !"quoting_options_from_style"}
!3475 = !DILocation(line: 953, column: 36, scope: !3460)
!3476 = !DILocation(line: 0, scope: !3442, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 953, column: 36, scope: !3460)
!3478 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3477)
!3479 = distinct !DIAssignID()
!3480 = !DILocation(line: 186, column: 13, scope: !3452, inlinedAt: !3477)
!3481 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3477)
!3482 = !DILocation(line: 187, column: 5, scope: !3452, inlinedAt: !3477)
!3483 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3477)
!3484 = distinct !DIAssignID()
!3485 = !DILocation(line: 954, column: 10, scope: !3460)
!3486 = !DILocation(line: 955, column: 1, scope: !3460)
!3487 = !DILocation(line: 954, column: 3, scope: !3460)
!3488 = distinct !DISubprogram(name: "quotearg_style", scope: !536, file: !536, line: 958, type: !3489, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!132, !562, !138}
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "s", arg: 1, scope: !3488, file: !536, line: 958, type: !562)
!3493 = !DILocalVariable(name: "arg", arg: 2, scope: !3488, file: !536, line: 958, type: !138)
!3494 = distinct !DIAssignID()
!3495 = !DILocation(line: 0, scope: !3488)
!3496 = !DILocation(line: 0, scope: !3426, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 960, column: 10, scope: !3488)
!3498 = !DILocation(line: 945, column: 3, scope: !3426, inlinedAt: !3497)
!3499 = !{!3500}
!3500 = distinct !{!3500, !3501, !"quoting_options_from_style: argument 0"}
!3501 = distinct !{!3501, !"quoting_options_from_style"}
!3502 = !DILocation(line: 945, column: 36, scope: !3426, inlinedAt: !3497)
!3503 = !DILocation(line: 0, scope: !3442, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 945, column: 36, scope: !3426, inlinedAt: !3497)
!3505 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3504)
!3506 = distinct !DIAssignID()
!3507 = !DILocation(line: 186, column: 13, scope: !3452, inlinedAt: !3504)
!3508 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3504)
!3509 = !DILocation(line: 187, column: 5, scope: !3452, inlinedAt: !3504)
!3510 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3504)
!3511 = distinct !DIAssignID()
!3512 = !DILocation(line: 946, column: 10, scope: !3426, inlinedAt: !3497)
!3513 = !DILocation(line: 947, column: 1, scope: !3426, inlinedAt: !3497)
!3514 = !DILocation(line: 960, column: 3, scope: !3488)
!3515 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !536, file: !536, line: 964, type: !3516, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!132, !562, !138, !135}
!3518 = !{!3519, !3520, !3521}
!3519 = !DILocalVariable(name: "s", arg: 1, scope: !3515, file: !536, line: 964, type: !562)
!3520 = !DILocalVariable(name: "arg", arg: 2, scope: !3515, file: !536, line: 964, type: !138)
!3521 = !DILocalVariable(name: "argsize", arg: 3, scope: !3515, file: !536, line: 964, type: !135)
!3522 = distinct !DIAssignID()
!3523 = !DILocation(line: 0, scope: !3515)
!3524 = !DILocation(line: 0, scope: !3460, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 966, column: 10, scope: !3515)
!3526 = !DILocation(line: 953, column: 3, scope: !3460, inlinedAt: !3525)
!3527 = !{!3528}
!3528 = distinct !{!3528, !3529, !"quoting_options_from_style: argument 0"}
!3529 = distinct !{!3529, !"quoting_options_from_style"}
!3530 = !DILocation(line: 953, column: 36, scope: !3460, inlinedAt: !3525)
!3531 = !DILocation(line: 0, scope: !3442, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 953, column: 36, scope: !3460, inlinedAt: !3525)
!3533 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3532)
!3534 = distinct !DIAssignID()
!3535 = !DILocation(line: 186, column: 13, scope: !3452, inlinedAt: !3532)
!3536 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3532)
!3537 = !DILocation(line: 187, column: 5, scope: !3452, inlinedAt: !3532)
!3538 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3532)
!3539 = distinct !DIAssignID()
!3540 = !DILocation(line: 954, column: 10, scope: !3460, inlinedAt: !3525)
!3541 = !DILocation(line: 955, column: 1, scope: !3460, inlinedAt: !3525)
!3542 = !DILocation(line: 966, column: 3, scope: !3515)
!3543 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !536, file: !536, line: 970, type: !3544, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!132, !138, !135, !4}
!3546 = !{!3547, !3548, !3549, !3550}
!3547 = !DILocalVariable(name: "arg", arg: 1, scope: !3543, file: !536, line: 970, type: !138)
!3548 = !DILocalVariable(name: "argsize", arg: 2, scope: !3543, file: !536, line: 970, type: !135)
!3549 = !DILocalVariable(name: "ch", arg: 3, scope: !3543, file: !536, line: 970, type: !4)
!3550 = !DILocalVariable(name: "options", scope: !3543, file: !536, line: 972, type: !577)
!3551 = distinct !DIAssignID()
!3552 = !DILocation(line: 0, scope: !3543)
!3553 = !DILocation(line: 972, column: 3, scope: !3543)
!3554 = !DILocation(line: 973, column: 13, scope: !3543)
!3555 = !{i64 0, i64 4, !916, i64 4, i64 4, !916, i64 8, i64 32, !925, i64 40, i64 8, !846, i64 48, i64 8, !846}
!3556 = distinct !DIAssignID()
!3557 = !DILocation(line: 0, scope: !2540, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 974, column: 3, scope: !3543)
!3559 = !DILocation(line: 147, column: 41, scope: !2540, inlinedAt: !3558)
!3560 = !DILocation(line: 147, column: 62, scope: !2540, inlinedAt: !3558)
!3561 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3558)
!3562 = !DILocation(line: 148, column: 15, scope: !2540, inlinedAt: !3558)
!3563 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3558)
!3564 = !DILocation(line: 149, column: 24, scope: !2540, inlinedAt: !3558)
!3565 = !DILocation(line: 150, column: 19, scope: !2540, inlinedAt: !3558)
!3566 = !DILocation(line: 150, column: 24, scope: !2540, inlinedAt: !3558)
!3567 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3558)
!3568 = !DILocation(line: 975, column: 10, scope: !3543)
!3569 = !DILocation(line: 976, column: 1, scope: !3543)
!3570 = !DILocation(line: 975, column: 3, scope: !3543)
!3571 = distinct !DISubprogram(name: "quotearg_char", scope: !536, file: !536, line: 979, type: !3572, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!132, !138, !4}
!3574 = !{!3575, !3576}
!3575 = !DILocalVariable(name: "arg", arg: 1, scope: !3571, file: !536, line: 979, type: !138)
!3576 = !DILocalVariable(name: "ch", arg: 2, scope: !3571, file: !536, line: 979, type: !4)
!3577 = distinct !DIAssignID()
!3578 = !DILocation(line: 0, scope: !3571)
!3579 = !DILocation(line: 0, scope: !3543, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 981, column: 10, scope: !3571)
!3581 = !DILocation(line: 972, column: 3, scope: !3543, inlinedAt: !3580)
!3582 = !DILocation(line: 973, column: 13, scope: !3543, inlinedAt: !3580)
!3583 = distinct !DIAssignID()
!3584 = !DILocation(line: 0, scope: !2540, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 974, column: 3, scope: !3543, inlinedAt: !3580)
!3586 = !DILocation(line: 147, column: 41, scope: !2540, inlinedAt: !3585)
!3587 = !DILocation(line: 147, column: 62, scope: !2540, inlinedAt: !3585)
!3588 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3585)
!3589 = !DILocation(line: 148, column: 15, scope: !2540, inlinedAt: !3585)
!3590 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3585)
!3591 = !DILocation(line: 149, column: 24, scope: !2540, inlinedAt: !3585)
!3592 = !DILocation(line: 150, column: 19, scope: !2540, inlinedAt: !3585)
!3593 = !DILocation(line: 150, column: 24, scope: !2540, inlinedAt: !3585)
!3594 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3585)
!3595 = !DILocation(line: 975, column: 10, scope: !3543, inlinedAt: !3580)
!3596 = !DILocation(line: 976, column: 1, scope: !3543, inlinedAt: !3580)
!3597 = !DILocation(line: 981, column: 3, scope: !3571)
!3598 = distinct !DISubprogram(name: "quotearg_colon", scope: !536, file: !536, line: 985, type: !1042, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3599)
!3599 = !{!3600}
!3600 = !DILocalVariable(name: "arg", arg: 1, scope: !3598, file: !536, line: 985, type: !138)
!3601 = distinct !DIAssignID()
!3602 = !DILocation(line: 0, scope: !3598)
!3603 = !DILocation(line: 0, scope: !3571, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 987, column: 10, scope: !3598)
!3605 = !DILocation(line: 0, scope: !3543, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 981, column: 10, scope: !3571, inlinedAt: !3604)
!3607 = !DILocation(line: 972, column: 3, scope: !3543, inlinedAt: !3606)
!3608 = !DILocation(line: 973, column: 13, scope: !3543, inlinedAt: !3606)
!3609 = distinct !DIAssignID()
!3610 = !DILocation(line: 0, scope: !2540, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 974, column: 3, scope: !3543, inlinedAt: !3606)
!3612 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3611)
!3613 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3611)
!3614 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3611)
!3615 = !DILocation(line: 975, column: 10, scope: !3543, inlinedAt: !3606)
!3616 = !DILocation(line: 976, column: 1, scope: !3543, inlinedAt: !3606)
!3617 = !DILocation(line: 987, column: 3, scope: !3598)
!3618 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !536, file: !536, line: 991, type: !3416, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3619)
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "arg", arg: 1, scope: !3618, file: !536, line: 991, type: !138)
!3621 = !DILocalVariable(name: "argsize", arg: 2, scope: !3618, file: !536, line: 991, type: !135)
!3622 = distinct !DIAssignID()
!3623 = !DILocation(line: 0, scope: !3618)
!3624 = !DILocation(line: 0, scope: !3543, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 993, column: 10, scope: !3618)
!3626 = !DILocation(line: 972, column: 3, scope: !3543, inlinedAt: !3625)
!3627 = !DILocation(line: 973, column: 13, scope: !3543, inlinedAt: !3625)
!3628 = distinct !DIAssignID()
!3629 = !DILocation(line: 0, scope: !2540, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 974, column: 3, scope: !3543, inlinedAt: !3625)
!3631 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3630)
!3632 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3630)
!3633 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3630)
!3634 = !DILocation(line: 975, column: 10, scope: !3543, inlinedAt: !3625)
!3635 = !DILocation(line: 976, column: 1, scope: !3543, inlinedAt: !3625)
!3636 = !DILocation(line: 993, column: 3, scope: !3618)
!3637 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !536, file: !536, line: 997, type: !3427, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3638)
!3638 = !{!3639, !3640, !3641, !3642}
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !536, line: 997, type: !78)
!3640 = !DILocalVariable(name: "s", arg: 2, scope: !3637, file: !536, line: 997, type: !562)
!3641 = !DILocalVariable(name: "arg", arg: 3, scope: !3637, file: !536, line: 997, type: !138)
!3642 = !DILocalVariable(name: "options", scope: !3637, file: !536, line: 999, type: !577)
!3643 = distinct !DIAssignID()
!3644 = !DILocation(line: 0, scope: !3637)
!3645 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1000, column: 13, scope: !3637)
!3647 = !DILocation(line: 999, column: 3, scope: !3637)
!3648 = !DILocation(line: 0, scope: !3442, inlinedAt: !3646)
!3649 = !DILocation(line: 186, column: 13, scope: !3452, inlinedAt: !3646)
!3650 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3646)
!3651 = !DILocation(line: 187, column: 5, scope: !3452, inlinedAt: !3646)
!3652 = !{!3653}
!3653 = distinct !{!3653, !3654, !"quoting_options_from_style: argument 0"}
!3654 = distinct !{!3654, !"quoting_options_from_style"}
!3655 = !DILocation(line: 1000, column: 13, scope: !3637)
!3656 = distinct !DIAssignID()
!3657 = distinct !DIAssignID()
!3658 = !DILocation(line: 0, scope: !2540, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 1001, column: 3, scope: !3637)
!3660 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3659)
!3661 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3659)
!3662 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3659)
!3663 = distinct !DIAssignID()
!3664 = !DILocation(line: 1002, column: 10, scope: !3637)
!3665 = !DILocation(line: 1003, column: 1, scope: !3637)
!3666 = !DILocation(line: 1002, column: 3, scope: !3637)
!3667 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !536, file: !536, line: 1006, type: !3668, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!132, !78, !138, !138, !138}
!3670 = !{!3671, !3672, !3673, !3674}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3667, file: !536, line: 1006, type: !78)
!3672 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3667, file: !536, line: 1006, type: !138)
!3673 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3667, file: !536, line: 1007, type: !138)
!3674 = !DILocalVariable(name: "arg", arg: 4, scope: !3667, file: !536, line: 1007, type: !138)
!3675 = distinct !DIAssignID()
!3676 = !DILocation(line: 0, scope: !3667)
!3677 = !DILocalVariable(name: "o", scope: !3678, file: !536, line: 1018, type: !577)
!3678 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !536, file: !536, line: 1014, type: !3679, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!132, !78, !138, !138, !138, !135}
!3681 = !{!3682, !3683, !3684, !3685, !3686, !3677}
!3682 = !DILocalVariable(name: "n", arg: 1, scope: !3678, file: !536, line: 1014, type: !78)
!3683 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3678, file: !536, line: 1014, type: !138)
!3684 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3678, file: !536, line: 1015, type: !138)
!3685 = !DILocalVariable(name: "arg", arg: 4, scope: !3678, file: !536, line: 1016, type: !138)
!3686 = !DILocalVariable(name: "argsize", arg: 5, scope: !3678, file: !536, line: 1016, type: !135)
!3687 = !DILocation(line: 0, scope: !3678, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 1009, column: 10, scope: !3667)
!3689 = !DILocation(line: 1018, column: 3, scope: !3678, inlinedAt: !3688)
!3690 = !DILocation(line: 1018, column: 30, scope: !3678, inlinedAt: !3688)
!3691 = distinct !DIAssignID()
!3692 = distinct !DIAssignID()
!3693 = !DILocation(line: 0, scope: !2580, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 1019, column: 3, scope: !3678, inlinedAt: !3688)
!3695 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3694)
!3696 = distinct !DIAssignID()
!3697 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3694)
!3698 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3694)
!3699 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3694)
!3700 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3694)
!3701 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3694)
!3702 = distinct !DIAssignID()
!3703 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3694)
!3704 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3694)
!3705 = distinct !DIAssignID()
!3706 = !DILocation(line: 1020, column: 10, scope: !3678, inlinedAt: !3688)
!3707 = !DILocation(line: 1021, column: 1, scope: !3678, inlinedAt: !3688)
!3708 = !DILocation(line: 1009, column: 3, scope: !3667)
!3709 = distinct !DIAssignID()
!3710 = !DILocation(line: 0, scope: !3678)
!3711 = !DILocation(line: 1018, column: 3, scope: !3678)
!3712 = !DILocation(line: 1018, column: 30, scope: !3678)
!3713 = distinct !DIAssignID()
!3714 = distinct !DIAssignID()
!3715 = !DILocation(line: 0, scope: !2580, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 1019, column: 3, scope: !3678)
!3717 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3716)
!3718 = distinct !DIAssignID()
!3719 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3716)
!3720 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3716)
!3721 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3716)
!3722 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3716)
!3723 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3716)
!3724 = distinct !DIAssignID()
!3725 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3716)
!3726 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3716)
!3727 = distinct !DIAssignID()
!3728 = !DILocation(line: 1020, column: 10, scope: !3678)
!3729 = !DILocation(line: 1021, column: 1, scope: !3678)
!3730 = !DILocation(line: 1020, column: 3, scope: !3678)
!3731 = distinct !DISubprogram(name: "quotearg_custom", scope: !536, file: !536, line: 1024, type: !3732, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!132, !138, !138, !138}
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3731, file: !536, line: 1024, type: !138)
!3736 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3731, file: !536, line: 1024, type: !138)
!3737 = !DILocalVariable(name: "arg", arg: 3, scope: !3731, file: !536, line: 1025, type: !138)
!3738 = distinct !DIAssignID()
!3739 = !DILocation(line: 0, scope: !3731)
!3740 = !DILocation(line: 0, scope: !3667, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 1027, column: 10, scope: !3731)
!3742 = !DILocation(line: 0, scope: !3678, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 1009, column: 10, scope: !3667, inlinedAt: !3741)
!3744 = !DILocation(line: 1018, column: 3, scope: !3678, inlinedAt: !3743)
!3745 = !DILocation(line: 1018, column: 30, scope: !3678, inlinedAt: !3743)
!3746 = distinct !DIAssignID()
!3747 = distinct !DIAssignID()
!3748 = !DILocation(line: 0, scope: !2580, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 1019, column: 3, scope: !3678, inlinedAt: !3743)
!3750 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3749)
!3751 = distinct !DIAssignID()
!3752 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3749)
!3753 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3749)
!3754 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3749)
!3755 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3749)
!3756 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3749)
!3757 = distinct !DIAssignID()
!3758 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3749)
!3759 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3749)
!3760 = distinct !DIAssignID()
!3761 = !DILocation(line: 1020, column: 10, scope: !3678, inlinedAt: !3743)
!3762 = !DILocation(line: 1021, column: 1, scope: !3678, inlinedAt: !3743)
!3763 = !DILocation(line: 1027, column: 3, scope: !3731)
!3764 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !536, file: !536, line: 1031, type: !3765, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!132, !138, !138, !138, !135}
!3767 = !{!3768, !3769, !3770, !3771}
!3768 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3764, file: !536, line: 1031, type: !138)
!3769 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3764, file: !536, line: 1031, type: !138)
!3770 = !DILocalVariable(name: "arg", arg: 3, scope: !3764, file: !536, line: 1032, type: !138)
!3771 = !DILocalVariable(name: "argsize", arg: 4, scope: !3764, file: !536, line: 1032, type: !135)
!3772 = distinct !DIAssignID()
!3773 = !DILocation(line: 0, scope: !3764)
!3774 = !DILocation(line: 0, scope: !3678, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 1034, column: 10, scope: !3764)
!3776 = !DILocation(line: 1018, column: 3, scope: !3678, inlinedAt: !3775)
!3777 = !DILocation(line: 1018, column: 30, scope: !3678, inlinedAt: !3775)
!3778 = distinct !DIAssignID()
!3779 = distinct !DIAssignID()
!3780 = !DILocation(line: 0, scope: !2580, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1019, column: 3, scope: !3678, inlinedAt: !3775)
!3782 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3781)
!3783 = distinct !DIAssignID()
!3784 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3781)
!3785 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3781)
!3786 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3781)
!3787 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3781)
!3788 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3781)
!3789 = distinct !DIAssignID()
!3790 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3781)
!3791 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3781)
!3792 = distinct !DIAssignID()
!3793 = !DILocation(line: 1020, column: 10, scope: !3678, inlinedAt: !3775)
!3794 = !DILocation(line: 1021, column: 1, scope: !3678, inlinedAt: !3775)
!3795 = !DILocation(line: 1034, column: 3, scope: !3764)
!3796 = distinct !DISubprogram(name: "quote_n_mem", scope: !536, file: !536, line: 1049, type: !3797, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3799)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!138, !78, !138, !135}
!3799 = !{!3800, !3801, !3802}
!3800 = !DILocalVariable(name: "n", arg: 1, scope: !3796, file: !536, line: 1049, type: !78)
!3801 = !DILocalVariable(name: "arg", arg: 2, scope: !3796, file: !536, line: 1049, type: !138)
!3802 = !DILocalVariable(name: "argsize", arg: 3, scope: !3796, file: !536, line: 1049, type: !135)
!3803 = !DILocation(line: 0, scope: !3796)
!3804 = !DILocation(line: 1051, column: 10, scope: !3796)
!3805 = !DILocation(line: 1051, column: 3, scope: !3796)
!3806 = distinct !DISubprogram(name: "quote_mem", scope: !536, file: !536, line: 1055, type: !3807, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!138, !138, !135}
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "arg", arg: 1, scope: !3806, file: !536, line: 1055, type: !138)
!3811 = !DILocalVariable(name: "argsize", arg: 2, scope: !3806, file: !536, line: 1055, type: !135)
!3812 = !DILocation(line: 0, scope: !3806)
!3813 = !DILocation(line: 0, scope: !3796, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 1057, column: 10, scope: !3806)
!3815 = !DILocation(line: 1051, column: 10, scope: !3796, inlinedAt: !3814)
!3816 = !DILocation(line: 1057, column: 3, scope: !3806)
!3817 = distinct !DISubprogram(name: "quote_n", scope: !536, file: !536, line: 1061, type: !3818, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!138, !78, !138}
!3820 = !{!3821, !3822}
!3821 = !DILocalVariable(name: "n", arg: 1, scope: !3817, file: !536, line: 1061, type: !78)
!3822 = !DILocalVariable(name: "arg", arg: 2, scope: !3817, file: !536, line: 1061, type: !138)
!3823 = !DILocation(line: 0, scope: !3817)
!3824 = !DILocation(line: 0, scope: !3796, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 1063, column: 10, scope: !3817)
!3826 = !DILocation(line: 1051, column: 10, scope: !3796, inlinedAt: !3825)
!3827 = !DILocation(line: 1063, column: 3, scope: !3817)
!3828 = distinct !DISubprogram(name: "quote", scope: !536, file: !536, line: 1067, type: !3829, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!138, !138}
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "arg", arg: 1, scope: !3828, file: !536, line: 1067, type: !138)
!3833 = !DILocation(line: 0, scope: !3828)
!3834 = !DILocation(line: 0, scope: !3817, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 1069, column: 10, scope: !3828)
!3836 = !DILocation(line: 0, scope: !3796, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 1063, column: 10, scope: !3817, inlinedAt: !3835)
!3838 = !DILocation(line: 1051, column: 10, scope: !3796, inlinedAt: !3837)
!3839 = !DILocation(line: 1069, column: 3, scope: !3828)
!3840 = distinct !DISubprogram(name: "version_etc_arn", scope: !638, file: !638, line: 61, type: !3841, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3878)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !3843, !138, !138, !138, !3877, !135}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3845, file: !218, line: 51, baseType: !78, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3845, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3845, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3845, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3845, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3845, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3845, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3845, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3845, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3845, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3845, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3845, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3845, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3845, file: !218, line: 70, baseType: !3861, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3845, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3845, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3845, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3845, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3845, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3845, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3845, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3845, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3845, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3845, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3845, file: !218, line: 93, baseType: !3861, size: 64, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3845, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3845, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3845, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3845, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3884}
!3879 = !DILocalVariable(name: "stream", arg: 1, scope: !3840, file: !638, line: 61, type: !3843)
!3880 = !DILocalVariable(name: "command_name", arg: 2, scope: !3840, file: !638, line: 62, type: !138)
!3881 = !DILocalVariable(name: "package", arg: 3, scope: !3840, file: !638, line: 62, type: !138)
!3882 = !DILocalVariable(name: "version", arg: 4, scope: !3840, file: !638, line: 63, type: !138)
!3883 = !DILocalVariable(name: "authors", arg: 5, scope: !3840, file: !638, line: 64, type: !3877)
!3884 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3840, file: !638, line: 64, type: !135)
!3885 = !DILocation(line: 0, scope: !3840)
!3886 = !DILocation(line: 66, column: 7, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3840, file: !638, line: 66, column: 7)
!3888 = !DILocation(line: 66, column: 7, scope: !3840)
!3889 = !DILocation(line: 67, column: 5, scope: !3887)
!3890 = !DILocation(line: 69, column: 5, scope: !3887)
!3891 = !DILocation(line: 83, column: 3, scope: !3840)
!3892 = !DILocation(line: 85, column: 3, scope: !3840)
!3893 = !DILocation(line: 88, column: 3, scope: !3840)
!3894 = !DILocation(line: 95, column: 3, scope: !3840)
!3895 = !DILocation(line: 97, column: 3, scope: !3840)
!3896 = !DILocation(line: 105, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3840, file: !638, line: 98, column: 5)
!3898 = !DILocation(line: 106, column: 7, scope: !3897)
!3899 = !DILocation(line: 109, column: 7, scope: !3897)
!3900 = !DILocation(line: 110, column: 7, scope: !3897)
!3901 = !DILocation(line: 113, column: 7, scope: !3897)
!3902 = !DILocation(line: 115, column: 7, scope: !3897)
!3903 = !DILocation(line: 120, column: 7, scope: !3897)
!3904 = !DILocation(line: 122, column: 7, scope: !3897)
!3905 = !DILocation(line: 127, column: 7, scope: !3897)
!3906 = !DILocation(line: 129, column: 7, scope: !3897)
!3907 = !DILocation(line: 134, column: 7, scope: !3897)
!3908 = !DILocation(line: 137, column: 7, scope: !3897)
!3909 = !DILocation(line: 142, column: 7, scope: !3897)
!3910 = !DILocation(line: 145, column: 7, scope: !3897)
!3911 = !DILocation(line: 150, column: 7, scope: !3897)
!3912 = !DILocation(line: 154, column: 7, scope: !3897)
!3913 = !DILocation(line: 159, column: 7, scope: !3897)
!3914 = !DILocation(line: 163, column: 7, scope: !3897)
!3915 = !DILocation(line: 170, column: 7, scope: !3897)
!3916 = !DILocation(line: 174, column: 7, scope: !3897)
!3917 = !DILocation(line: 176, column: 1, scope: !3840)
!3918 = distinct !DISubprogram(name: "version_etc_ar", scope: !638, file: !638, line: 183, type: !3919, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3843, !138, !138, !138, !3877}
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927}
!3922 = !DILocalVariable(name: "stream", arg: 1, scope: !3918, file: !638, line: 183, type: !3843)
!3923 = !DILocalVariable(name: "command_name", arg: 2, scope: !3918, file: !638, line: 184, type: !138)
!3924 = !DILocalVariable(name: "package", arg: 3, scope: !3918, file: !638, line: 184, type: !138)
!3925 = !DILocalVariable(name: "version", arg: 4, scope: !3918, file: !638, line: 185, type: !138)
!3926 = !DILocalVariable(name: "authors", arg: 5, scope: !3918, file: !638, line: 185, type: !3877)
!3927 = !DILocalVariable(name: "n_authors", scope: !3918, file: !638, line: 187, type: !135)
!3928 = !DILocation(line: 0, scope: !3918)
!3929 = !DILocation(line: 189, column: 8, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3918, file: !638, line: 189, column: 3)
!3931 = !DILocation(line: 189, scope: !3930)
!3932 = !DILocation(line: 189, column: 23, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3930, file: !638, line: 189, column: 3)
!3934 = !DILocation(line: 189, column: 3, scope: !3930)
!3935 = !DILocation(line: 189, column: 52, scope: !3933)
!3936 = distinct !{!3936, !3934, !3937, !963}
!3937 = !DILocation(line: 190, column: 5, scope: !3930)
!3938 = !DILocation(line: 191, column: 3, scope: !3918)
!3939 = !DILocation(line: 192, column: 1, scope: !3918)
!3940 = distinct !DISubprogram(name: "version_etc_va", scope: !638, file: !638, line: 199, type: !3941, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3950)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !3843, !138, !138, !138, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3944, file: !638, line: 192, baseType: !84, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3944, file: !638, line: 192, baseType: !84, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3944, file: !638, line: 192, baseType: !133, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3944, file: !638, line: 192, baseType: !133, size: 64, offset: 128)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957}
!3951 = !DILocalVariable(name: "stream", arg: 1, scope: !3940, file: !638, line: 199, type: !3843)
!3952 = !DILocalVariable(name: "command_name", arg: 2, scope: !3940, file: !638, line: 200, type: !138)
!3953 = !DILocalVariable(name: "package", arg: 3, scope: !3940, file: !638, line: 200, type: !138)
!3954 = !DILocalVariable(name: "version", arg: 4, scope: !3940, file: !638, line: 201, type: !138)
!3955 = !DILocalVariable(name: "authors", arg: 5, scope: !3940, file: !638, line: 201, type: !3943)
!3956 = !DILocalVariable(name: "n_authors", scope: !3940, file: !638, line: 203, type: !135)
!3957 = !DILocalVariable(name: "authtab", scope: !3940, file: !638, line: 204, type: !3958)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !60)
!3959 = distinct !DIAssignID()
!3960 = !DILocation(line: 0, scope: !3940)
!3961 = !DILocation(line: 204, column: 3, scope: !3940)
!3962 = !DILocation(line: 208, column: 35, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !638, line: 206, column: 3)
!3964 = distinct !DILexicalBlock(scope: !3940, file: !638, line: 206, column: 3)
!3965 = !DILocation(line: 208, column: 33, scope: !3963)
!3966 = !DILocation(line: 208, column: 67, scope: !3963)
!3967 = !DILocation(line: 206, column: 3, scope: !3964)
!3968 = !DILocation(line: 208, column: 14, scope: !3963)
!3969 = !DILocation(line: 0, scope: !3964)
!3970 = !DILocation(line: 211, column: 3, scope: !3940)
!3971 = !DILocation(line: 213, column: 1, scope: !3940)
!3972 = distinct !DISubprogram(name: "version_etc", scope: !638, file: !638, line: 230, type: !3973, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3843, !138, !138, !138, null}
!3975 = !{!3976, !3977, !3978, !3979, !3980}
!3976 = !DILocalVariable(name: "stream", arg: 1, scope: !3972, file: !638, line: 230, type: !3843)
!3977 = !DILocalVariable(name: "command_name", arg: 2, scope: !3972, file: !638, line: 231, type: !138)
!3978 = !DILocalVariable(name: "package", arg: 3, scope: !3972, file: !638, line: 231, type: !138)
!3979 = !DILocalVariable(name: "version", arg: 4, scope: !3972, file: !638, line: 232, type: !138)
!3980 = !DILocalVariable(name: "authors", scope: !3972, file: !638, line: 234, type: !3981)
!3981 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !911, line: 52, baseType: !3982)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2048, line: 12, baseType: !3983)
!3983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !638, baseType: !3984)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3944, size: 192, elements: !55)
!3985 = distinct !DIAssignID()
!3986 = !DILocation(line: 0, scope: !3972)
!3987 = !DILocation(line: 234, column: 3, scope: !3972)
!3988 = !DILocation(line: 235, column: 3, scope: !3972)
!3989 = !DILocation(line: 236, column: 3, scope: !3972)
!3990 = !DILocation(line: 237, column: 3, scope: !3972)
!3991 = !DILocation(line: 238, column: 1, scope: !3972)
!3992 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !638, file: !638, line: 241, type: !491, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773)
!3993 = !DILocation(line: 243, column: 3, scope: !3992)
!3994 = !DILocation(line: 248, column: 3, scope: !3992)
!3995 = !DILocation(line: 254, column: 3, scope: !3992)
!3996 = !DILocation(line: 259, column: 3, scope: !3992)
!3997 = !DILocation(line: 261, column: 1, scope: !3992)
!3998 = distinct !DISubprogram(name: "xnrealloc", scope: !3999, file: !3999, line: 147, type: !4000, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4002)
!3999 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!133, !133, !135, !135}
!4002 = !{!4003, !4004, !4005}
!4003 = !DILocalVariable(name: "p", arg: 1, scope: !3998, file: !3999, line: 147, type: !133)
!4004 = !DILocalVariable(name: "n", arg: 2, scope: !3998, file: !3999, line: 147, type: !135)
!4005 = !DILocalVariable(name: "s", arg: 3, scope: !3998, file: !3999, line: 147, type: !135)
!4006 = !DILocation(line: 0, scope: !3998)
!4007 = !DILocalVariable(name: "p", arg: 1, scope: !4008, file: !780, line: 83, type: !133)
!4008 = distinct !DISubprogram(name: "xreallocarray", scope: !780, file: !780, line: 83, type: !4000, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4009)
!4009 = !{!4007, !4010, !4011}
!4010 = !DILocalVariable(name: "n", arg: 2, scope: !4008, file: !780, line: 83, type: !135)
!4011 = !DILocalVariable(name: "s", arg: 3, scope: !4008, file: !780, line: 83, type: !135)
!4012 = !DILocation(line: 0, scope: !4008, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 149, column: 10, scope: !3998)
!4014 = !DILocation(line: 85, column: 25, scope: !4008, inlinedAt: !4013)
!4015 = !DILocalVariable(name: "p", arg: 1, scope: !4016, file: !780, line: 37, type: !133)
!4016 = distinct !DISubprogram(name: "check_nonnull", scope: !780, file: !780, line: 37, type: !4017, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!133, !133}
!4019 = !{!4015}
!4020 = !DILocation(line: 0, scope: !4016, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 85, column: 10, scope: !4008, inlinedAt: !4013)
!4022 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4021)
!4023 = distinct !DILexicalBlock(scope: !4016, file: !780, line: 39, column: 7)
!4024 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4021)
!4025 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4021)
!4026 = !DILocation(line: 149, column: 3, scope: !3998)
!4027 = !DILocation(line: 0, scope: !4008)
!4028 = !DILocation(line: 85, column: 25, scope: !4008)
!4029 = !DILocation(line: 0, scope: !4016, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 85, column: 10, scope: !4008)
!4031 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4030)
!4033 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4030)
!4034 = !DILocation(line: 85, column: 3, scope: !4008)
!4035 = distinct !DISubprogram(name: "xmalloc", scope: !780, file: !780, line: 47, type: !4036, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!133, !135}
!4038 = !{!4039}
!4039 = !DILocalVariable(name: "s", arg: 1, scope: !4035, file: !780, line: 47, type: !135)
!4040 = !DILocation(line: 0, scope: !4035)
!4041 = !DILocation(line: 49, column: 25, scope: !4035)
!4042 = !DILocation(line: 0, scope: !4016, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 49, column: 10, scope: !4035)
!4044 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4043)
!4045 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4043)
!4046 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4043)
!4047 = !DILocation(line: 49, column: 3, scope: !4035)
!4048 = !DISubprogram(name: "malloc", scope: !1040, file: !1040, line: 540, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4049 = distinct !DISubprogram(name: "ximalloc", scope: !780, file: !780, line: 53, type: !4050, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!133, !798}
!4052 = !{!4053}
!4053 = !DILocalVariable(name: "s", arg: 1, scope: !4049, file: !780, line: 53, type: !798)
!4054 = !DILocation(line: 0, scope: !4049)
!4055 = !DILocalVariable(name: "s", arg: 1, scope: !4056, file: !4057, line: 55, type: !798)
!4056 = distinct !DISubprogram(name: "imalloc", scope: !4057, file: !4057, line: 55, type: !4050, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4058)
!4057 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4058 = !{!4055}
!4059 = !DILocation(line: 0, scope: !4056, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 55, column: 25, scope: !4049)
!4061 = !DILocation(line: 57, column: 26, scope: !4056, inlinedAt: !4060)
!4062 = !DILocation(line: 0, scope: !4016, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 55, column: 10, scope: !4049)
!4064 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4063)
!4065 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4063)
!4066 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4063)
!4067 = !DILocation(line: 55, column: 3, scope: !4049)
!4068 = distinct !DISubprogram(name: "xcharalloc", scope: !780, file: !780, line: 59, type: !4069, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!132, !135}
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "n", arg: 1, scope: !4068, file: !780, line: 59, type: !135)
!4073 = !DILocation(line: 0, scope: !4068)
!4074 = !DILocation(line: 0, scope: !4035, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 61, column: 10, scope: !4068)
!4076 = !DILocation(line: 49, column: 25, scope: !4035, inlinedAt: !4075)
!4077 = !DILocation(line: 0, scope: !4016, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 49, column: 10, scope: !4035, inlinedAt: !4075)
!4079 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4078)
!4080 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4078)
!4081 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4078)
!4082 = !DILocation(line: 61, column: 3, scope: !4068)
!4083 = distinct !DISubprogram(name: "xrealloc", scope: !780, file: !780, line: 68, type: !4084, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!133, !133, !135}
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "p", arg: 1, scope: !4083, file: !780, line: 68, type: !133)
!4088 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !780, line: 68, type: !135)
!4089 = !DILocation(line: 0, scope: !4083)
!4090 = !DILocalVariable(name: "ptr", arg: 1, scope: !4091, file: !4092, line: 2057, type: !133)
!4091 = distinct !DISubprogram(name: "rpl_realloc", scope: !4092, file: !4092, line: 2057, type: !4084, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4093)
!4092 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4093 = !{!4090, !4094}
!4094 = !DILocalVariable(name: "size", arg: 2, scope: !4091, file: !4092, line: 2057, type: !135)
!4095 = !DILocation(line: 0, scope: !4091, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 70, column: 25, scope: !4083)
!4097 = !DILocation(line: 2059, column: 24, scope: !4091, inlinedAt: !4096)
!4098 = !DILocation(line: 2059, column: 10, scope: !4091, inlinedAt: !4096)
!4099 = !DILocation(line: 0, scope: !4016, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 70, column: 10, scope: !4083)
!4101 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4100)
!4102 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4100)
!4103 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4100)
!4104 = !DILocation(line: 70, column: 3, scope: !4083)
!4105 = !DISubprogram(name: "realloc", scope: !1040, file: !1040, line: 551, type: !4084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4106 = distinct !DISubprogram(name: "xirealloc", scope: !780, file: !780, line: 74, type: !4107, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4109)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!133, !133, !798}
!4109 = !{!4110, !4111}
!4110 = !DILocalVariable(name: "p", arg: 1, scope: !4106, file: !780, line: 74, type: !133)
!4111 = !DILocalVariable(name: "s", arg: 2, scope: !4106, file: !780, line: 74, type: !798)
!4112 = !DILocation(line: 0, scope: !4106)
!4113 = !DILocalVariable(name: "p", arg: 1, scope: !4114, file: !4057, line: 66, type: !133)
!4114 = distinct !DISubprogram(name: "irealloc", scope: !4057, file: !4057, line: 66, type: !4107, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4115)
!4115 = !{!4113, !4116}
!4116 = !DILocalVariable(name: "s", arg: 2, scope: !4114, file: !4057, line: 66, type: !798)
!4117 = !DILocation(line: 0, scope: !4114, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 76, column: 25, scope: !4106)
!4119 = !DILocation(line: 0, scope: !4091, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 68, column: 26, scope: !4114, inlinedAt: !4118)
!4121 = !DILocation(line: 2059, column: 24, scope: !4091, inlinedAt: !4120)
!4122 = !DILocation(line: 2059, column: 10, scope: !4091, inlinedAt: !4120)
!4123 = !DILocation(line: 0, scope: !4016, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 76, column: 10, scope: !4106)
!4125 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4124)
!4126 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4124)
!4127 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4124)
!4128 = !DILocation(line: 76, column: 3, scope: !4106)
!4129 = distinct !DISubprogram(name: "xireallocarray", scope: !780, file: !780, line: 89, type: !4130, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!133, !133, !798, !798}
!4132 = !{!4133, !4134, !4135}
!4133 = !DILocalVariable(name: "p", arg: 1, scope: !4129, file: !780, line: 89, type: !133)
!4134 = !DILocalVariable(name: "n", arg: 2, scope: !4129, file: !780, line: 89, type: !798)
!4135 = !DILocalVariable(name: "s", arg: 3, scope: !4129, file: !780, line: 89, type: !798)
!4136 = !DILocation(line: 0, scope: !4129)
!4137 = !DILocalVariable(name: "p", arg: 1, scope: !4138, file: !4057, line: 98, type: !133)
!4138 = distinct !DISubprogram(name: "ireallocarray", scope: !4057, file: !4057, line: 98, type: !4130, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4139)
!4139 = !{!4137, !4140, !4141}
!4140 = !DILocalVariable(name: "n", arg: 2, scope: !4138, file: !4057, line: 98, type: !798)
!4141 = !DILocalVariable(name: "s", arg: 3, scope: !4138, file: !4057, line: 98, type: !798)
!4142 = !DILocation(line: 0, scope: !4138, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 91, column: 25, scope: !4129)
!4144 = !DILocation(line: 101, column: 13, scope: !4138, inlinedAt: !4143)
!4145 = !DILocation(line: 0, scope: !4016, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 91, column: 10, scope: !4129)
!4147 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4146)
!4148 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4146)
!4149 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4146)
!4150 = !DILocation(line: 91, column: 3, scope: !4129)
!4151 = distinct !DISubprogram(name: "xnmalloc", scope: !780, file: !780, line: 98, type: !4152, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!133, !135, !135}
!4154 = !{!4155, !4156}
!4155 = !DILocalVariable(name: "n", arg: 1, scope: !4151, file: !780, line: 98, type: !135)
!4156 = !DILocalVariable(name: "s", arg: 2, scope: !4151, file: !780, line: 98, type: !135)
!4157 = !DILocation(line: 0, scope: !4151)
!4158 = !DILocation(line: 0, scope: !4008, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 100, column: 10, scope: !4151)
!4160 = !DILocation(line: 85, column: 25, scope: !4008, inlinedAt: !4159)
!4161 = !DILocation(line: 0, scope: !4016, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 85, column: 10, scope: !4008, inlinedAt: !4159)
!4163 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4162)
!4164 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4162)
!4165 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4162)
!4166 = !DILocation(line: 100, column: 3, scope: !4151)
!4167 = distinct !DISubprogram(name: "xinmalloc", scope: !780, file: !780, line: 104, type: !4168, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!133, !798, !798}
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "n", arg: 1, scope: !4167, file: !780, line: 104, type: !798)
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4167, file: !780, line: 104, type: !798)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocation(line: 0, scope: !4129, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 106, column: 10, scope: !4167)
!4176 = !DILocation(line: 0, scope: !4138, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 91, column: 25, scope: !4129, inlinedAt: !4175)
!4178 = !DILocation(line: 101, column: 13, scope: !4138, inlinedAt: !4177)
!4179 = !DILocation(line: 0, scope: !4016, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 91, column: 10, scope: !4129, inlinedAt: !4175)
!4181 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4180)
!4182 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4180)
!4183 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4180)
!4184 = !DILocation(line: 106, column: 3, scope: !4167)
!4185 = distinct !DISubprogram(name: "x2realloc", scope: !780, file: !780, line: 116, type: !4186, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!133, !133, !179}
!4188 = !{!4189, !4190}
!4189 = !DILocalVariable(name: "p", arg: 1, scope: !4185, file: !780, line: 116, type: !133)
!4190 = !DILocalVariable(name: "ps", arg: 2, scope: !4185, file: !780, line: 116, type: !179)
!4191 = !DILocation(line: 0, scope: !4185)
!4192 = !DILocation(line: 0, scope: !783, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 118, column: 10, scope: !4185)
!4194 = !DILocation(line: 178, column: 14, scope: !783, inlinedAt: !4193)
!4195 = !DILocation(line: 180, column: 9, scope: !4196, inlinedAt: !4193)
!4196 = distinct !DILexicalBlock(scope: !783, file: !780, line: 180, column: 7)
!4197 = !DILocation(line: 180, column: 7, scope: !783, inlinedAt: !4193)
!4198 = !DILocation(line: 182, column: 13, scope: !4199, inlinedAt: !4193)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !780, line: 182, column: 11)
!4200 = distinct !DILexicalBlock(scope: !4196, file: !780, line: 181, column: 5)
!4201 = !DILocation(line: 182, column: 11, scope: !4200, inlinedAt: !4193)
!4202 = !DILocation(line: 197, column: 11, scope: !4203, inlinedAt: !4193)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !780, line: 197, column: 11)
!4204 = distinct !DILexicalBlock(scope: !4196, file: !780, line: 195, column: 5)
!4205 = !DILocation(line: 197, column: 11, scope: !4204, inlinedAt: !4193)
!4206 = !DILocation(line: 198, column: 9, scope: !4203, inlinedAt: !4193)
!4207 = !DILocation(line: 0, scope: !4008, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 201, column: 7, scope: !783, inlinedAt: !4193)
!4209 = !DILocation(line: 85, column: 25, scope: !4008, inlinedAt: !4208)
!4210 = !DILocation(line: 0, scope: !4016, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 85, column: 10, scope: !4008, inlinedAt: !4208)
!4212 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4211)
!4213 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4211)
!4214 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4211)
!4215 = !DILocation(line: 202, column: 7, scope: !783, inlinedAt: !4193)
!4216 = !DILocation(line: 118, column: 3, scope: !4185)
!4217 = !DILocation(line: 0, scope: !783)
!4218 = !DILocation(line: 178, column: 14, scope: !783)
!4219 = !DILocation(line: 180, column: 9, scope: !4196)
!4220 = !DILocation(line: 180, column: 7, scope: !783)
!4221 = !DILocation(line: 182, column: 13, scope: !4199)
!4222 = !DILocation(line: 182, column: 11, scope: !4200)
!4223 = !DILocation(line: 190, column: 30, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4199, file: !780, line: 183, column: 9)
!4225 = !DILocation(line: 191, column: 16, scope: !4224)
!4226 = !DILocation(line: 191, column: 13, scope: !4224)
!4227 = !DILocation(line: 192, column: 9, scope: !4224)
!4228 = !DILocation(line: 197, column: 11, scope: !4203)
!4229 = !DILocation(line: 197, column: 11, scope: !4204)
!4230 = !DILocation(line: 198, column: 9, scope: !4203)
!4231 = !DILocation(line: 0, scope: !4008, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 201, column: 7, scope: !783)
!4233 = !DILocation(line: 85, column: 25, scope: !4008, inlinedAt: !4232)
!4234 = !DILocation(line: 0, scope: !4016, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 85, column: 10, scope: !4008, inlinedAt: !4232)
!4236 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4235)
!4239 = !DILocation(line: 202, column: 7, scope: !783)
!4240 = !DILocation(line: 203, column: 3, scope: !783)
!4241 = !DILocation(line: 0, scope: !794)
!4242 = !DILocation(line: 230, column: 14, scope: !794)
!4243 = !DILocation(line: 238, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !794, file: !780, line: 238, column: 7)
!4245 = !DILocation(line: 238, column: 7, scope: !794)
!4246 = !DILocation(line: 240, column: 9, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !794, file: !780, line: 240, column: 7)
!4248 = !DILocation(line: 240, column: 18, scope: !4247)
!4249 = !DILocation(line: 253, column: 8, scope: !794)
!4250 = !DILocation(line: 256, column: 7, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !794, file: !780, line: 256, column: 7)
!4252 = !DILocation(line: 256, column: 7, scope: !794)
!4253 = !DILocation(line: 258, column: 27, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !780, line: 257, column: 5)
!4255 = !DILocation(line: 259, column: 50, scope: !4254)
!4256 = !DILocation(line: 259, column: 32, scope: !4254)
!4257 = !DILocation(line: 260, column: 5, scope: !4254)
!4258 = !DILocation(line: 262, column: 9, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !794, file: !780, line: 262, column: 7)
!4260 = !DILocation(line: 262, column: 7, scope: !794)
!4261 = !DILocation(line: 263, column: 9, scope: !4259)
!4262 = !DILocation(line: 263, column: 5, scope: !4259)
!4263 = !DILocation(line: 264, column: 9, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !794, file: !780, line: 264, column: 7)
!4265 = !DILocation(line: 264, column: 14, scope: !4264)
!4266 = !DILocation(line: 265, column: 7, scope: !4264)
!4267 = !DILocation(line: 265, column: 11, scope: !4264)
!4268 = !DILocation(line: 266, column: 11, scope: !4264)
!4269 = !DILocation(line: 267, column: 14, scope: !4264)
!4270 = !DILocation(line: 264, column: 7, scope: !794)
!4271 = !DILocation(line: 268, column: 5, scope: !4264)
!4272 = !DILocation(line: 0, scope: !4083, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 269, column: 8, scope: !794)
!4274 = !DILocation(line: 0, scope: !4091, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 70, column: 25, scope: !4083, inlinedAt: !4273)
!4276 = !DILocation(line: 2059, column: 24, scope: !4091, inlinedAt: !4275)
!4277 = !DILocation(line: 2059, column: 10, scope: !4091, inlinedAt: !4275)
!4278 = !DILocation(line: 0, scope: !4016, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 70, column: 10, scope: !4083, inlinedAt: !4273)
!4280 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4279)
!4281 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4279)
!4282 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4279)
!4283 = !DILocation(line: 270, column: 7, scope: !794)
!4284 = !DILocation(line: 271, column: 3, scope: !794)
!4285 = distinct !DISubprogram(name: "xzalloc", scope: !780, file: !780, line: 279, type: !4036, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4286)
!4286 = !{!4287}
!4287 = !DILocalVariable(name: "s", arg: 1, scope: !4285, file: !780, line: 279, type: !135)
!4288 = !DILocation(line: 0, scope: !4285)
!4289 = !DILocalVariable(name: "n", arg: 1, scope: !4290, file: !780, line: 294, type: !135)
!4290 = distinct !DISubprogram(name: "xcalloc", scope: !780, file: !780, line: 294, type: !4152, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4291)
!4291 = !{!4289, !4292}
!4292 = !DILocalVariable(name: "s", arg: 2, scope: !4290, file: !780, line: 294, type: !135)
!4293 = !DILocation(line: 0, scope: !4290, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 281, column: 10, scope: !4285)
!4295 = !DILocation(line: 296, column: 25, scope: !4290, inlinedAt: !4294)
!4296 = !DILocation(line: 0, scope: !4016, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 296, column: 10, scope: !4290, inlinedAt: !4294)
!4298 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4297)
!4299 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4297)
!4300 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4297)
!4301 = !DILocation(line: 281, column: 3, scope: !4285)
!4302 = !DISubprogram(name: "calloc", scope: !1040, file: !1040, line: 543, type: !4152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4303 = !DILocation(line: 0, scope: !4290)
!4304 = !DILocation(line: 296, column: 25, scope: !4290)
!4305 = !DILocation(line: 0, scope: !4016, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 296, column: 10, scope: !4290)
!4307 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4306)
!4308 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4306)
!4309 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4306)
!4310 = !DILocation(line: 296, column: 3, scope: !4290)
!4311 = distinct !DISubprogram(name: "xizalloc", scope: !780, file: !780, line: 285, type: !4050, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4312)
!4312 = !{!4313}
!4313 = !DILocalVariable(name: "s", arg: 1, scope: !4311, file: !780, line: 285, type: !798)
!4314 = !DILocation(line: 0, scope: !4311)
!4315 = !DILocalVariable(name: "n", arg: 1, scope: !4316, file: !780, line: 300, type: !798)
!4316 = distinct !DISubprogram(name: "xicalloc", scope: !780, file: !780, line: 300, type: !4168, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4317)
!4317 = !{!4315, !4318}
!4318 = !DILocalVariable(name: "s", arg: 2, scope: !4316, file: !780, line: 300, type: !798)
!4319 = !DILocation(line: 0, scope: !4316, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 287, column: 10, scope: !4311)
!4321 = !DILocalVariable(name: "n", arg: 1, scope: !4322, file: !4057, line: 77, type: !798)
!4322 = distinct !DISubprogram(name: "icalloc", scope: !4057, file: !4057, line: 77, type: !4168, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4323)
!4323 = !{!4321, !4324}
!4324 = !DILocalVariable(name: "s", arg: 2, scope: !4322, file: !4057, line: 77, type: !798)
!4325 = !DILocation(line: 0, scope: !4322, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 302, column: 25, scope: !4316, inlinedAt: !4320)
!4327 = !DILocation(line: 91, column: 10, scope: !4322, inlinedAt: !4326)
!4328 = !DILocation(line: 0, scope: !4016, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 302, column: 10, scope: !4316, inlinedAt: !4320)
!4330 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4329)
!4331 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4329)
!4332 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4329)
!4333 = !DILocation(line: 287, column: 3, scope: !4311)
!4334 = !DILocation(line: 0, scope: !4316)
!4335 = !DILocation(line: 0, scope: !4322, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 302, column: 25, scope: !4316)
!4337 = !DILocation(line: 91, column: 10, scope: !4322, inlinedAt: !4336)
!4338 = !DILocation(line: 0, scope: !4016, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 302, column: 10, scope: !4316)
!4340 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4339)
!4341 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4339)
!4342 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4339)
!4343 = !DILocation(line: 302, column: 3, scope: !4316)
!4344 = distinct !DISubprogram(name: "xmemdup", scope: !780, file: !780, line: 310, type: !4345, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!133, !1064, !135}
!4347 = !{!4348, !4349}
!4348 = !DILocalVariable(name: "p", arg: 1, scope: !4344, file: !780, line: 310, type: !1064)
!4349 = !DILocalVariable(name: "s", arg: 2, scope: !4344, file: !780, line: 310, type: !135)
!4350 = !DILocation(line: 0, scope: !4344)
!4351 = !DILocation(line: 0, scope: !4035, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 312, column: 18, scope: !4344)
!4353 = !DILocation(line: 49, column: 25, scope: !4035, inlinedAt: !4352)
!4354 = !DILocation(line: 0, scope: !4016, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 49, column: 10, scope: !4035, inlinedAt: !4352)
!4356 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4355)
!4357 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4355)
!4358 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4355)
!4359 = !DILocalVariable(name: "__dest", arg: 1, scope: !4360, file: !1240, line: 26, type: !1243)
!4360 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 26, type: !1241, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4361)
!4361 = !{!4359, !4362, !4363}
!4362 = !DILocalVariable(name: "__src", arg: 2, scope: !4360, file: !1240, line: 26, type: !1063)
!4363 = !DILocalVariable(name: "__len", arg: 3, scope: !4360, file: !1240, line: 26, type: !135)
!4364 = !DILocation(line: 0, scope: !4360, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 312, column: 10, scope: !4344)
!4366 = !DILocation(line: 29, column: 10, scope: !4360, inlinedAt: !4365)
!4367 = !DILocation(line: 312, column: 3, scope: !4344)
!4368 = distinct !DISubprogram(name: "ximemdup", scope: !780, file: !780, line: 316, type: !4369, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!133, !1064, !798}
!4371 = !{!4372, !4373}
!4372 = !DILocalVariable(name: "p", arg: 1, scope: !4368, file: !780, line: 316, type: !1064)
!4373 = !DILocalVariable(name: "s", arg: 2, scope: !4368, file: !780, line: 316, type: !798)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocation(line: 0, scope: !4049, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 318, column: 18, scope: !4368)
!4377 = !DILocation(line: 0, scope: !4056, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 55, column: 25, scope: !4049, inlinedAt: !4376)
!4379 = !DILocation(line: 57, column: 26, scope: !4056, inlinedAt: !4378)
!4380 = !DILocation(line: 0, scope: !4016, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 55, column: 10, scope: !4049, inlinedAt: !4376)
!4382 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4381)
!4383 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4381)
!4384 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4381)
!4385 = !DILocation(line: 0, scope: !4360, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 318, column: 10, scope: !4368)
!4387 = !DILocation(line: 29, column: 10, scope: !4360, inlinedAt: !4386)
!4388 = !DILocation(line: 318, column: 3, scope: !4368)
!4389 = distinct !DISubprogram(name: "ximemdup0", scope: !780, file: !780, line: 325, type: !4390, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!132, !1064, !798}
!4392 = !{!4393, !4394, !4395}
!4393 = !DILocalVariable(name: "p", arg: 1, scope: !4389, file: !780, line: 325, type: !1064)
!4394 = !DILocalVariable(name: "s", arg: 2, scope: !4389, file: !780, line: 325, type: !798)
!4395 = !DILocalVariable(name: "result", scope: !4389, file: !780, line: 327, type: !132)
!4396 = !DILocation(line: 0, scope: !4389)
!4397 = !DILocation(line: 327, column: 30, scope: !4389)
!4398 = !DILocation(line: 0, scope: !4049, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 327, column: 18, scope: !4389)
!4400 = !DILocation(line: 0, scope: !4056, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 55, column: 25, scope: !4049, inlinedAt: !4399)
!4402 = !DILocation(line: 57, column: 26, scope: !4056, inlinedAt: !4401)
!4403 = !DILocation(line: 0, scope: !4016, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 55, column: 10, scope: !4049, inlinedAt: !4399)
!4405 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4404)
!4406 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4404)
!4407 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4404)
!4408 = !DILocation(line: 328, column: 3, scope: !4389)
!4409 = !DILocation(line: 328, column: 13, scope: !4389)
!4410 = !DILocation(line: 0, scope: !4360, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 329, column: 10, scope: !4389)
!4412 = !DILocation(line: 29, column: 10, scope: !4360, inlinedAt: !4411)
!4413 = !DILocation(line: 329, column: 3, scope: !4389)
!4414 = distinct !DISubprogram(name: "xstrdup", scope: !780, file: !780, line: 335, type: !1042, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4415)
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "string", arg: 1, scope: !4414, file: !780, line: 335, type: !138)
!4417 = !DILocation(line: 0, scope: !4414)
!4418 = !DILocation(line: 337, column: 27, scope: !4414)
!4419 = !DILocation(line: 337, column: 43, scope: !4414)
!4420 = !DILocation(line: 0, scope: !4344, inlinedAt: !4421)
!4421 = distinct !DILocation(line: 337, column: 10, scope: !4414)
!4422 = !DILocation(line: 0, scope: !4035, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 312, column: 18, scope: !4344, inlinedAt: !4421)
!4424 = !DILocation(line: 49, column: 25, scope: !4035, inlinedAt: !4423)
!4425 = !DILocation(line: 0, scope: !4016, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 49, column: 10, scope: !4035, inlinedAt: !4423)
!4427 = !DILocation(line: 39, column: 8, scope: !4023, inlinedAt: !4426)
!4428 = !DILocation(line: 39, column: 7, scope: !4016, inlinedAt: !4426)
!4429 = !DILocation(line: 40, column: 5, scope: !4023, inlinedAt: !4426)
!4430 = !DILocation(line: 0, scope: !4360, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 312, column: 10, scope: !4344, inlinedAt: !4421)
!4432 = !DILocation(line: 29, column: 10, scope: !4360, inlinedAt: !4431)
!4433 = !DILocation(line: 337, column: 3, scope: !4414)
!4434 = distinct !DISubprogram(name: "xalloc_die", scope: !731, file: !731, line: 32, type: !491, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4435)
!4435 = !{!4436}
!4436 = !DILocalVariable(name: "__errstatus", scope: !4437, file: !731, line: 34, type: !4438)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !731, line: 34, column: 3)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4439 = !DILocation(line: 34, column: 3, scope: !4437)
!4440 = !DILocation(line: 0, scope: !4437)
!4441 = !DILocation(line: 40, column: 3, scope: !4434)
!4442 = distinct !DISubprogram(name: "rpl_fopen", scope: !814, file: !814, line: 46, type: !4443, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4479)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4445, !138, !138}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4447)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4447, file: !218, line: 51, baseType: !78, size: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4447, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4447, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4447, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4447, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4447, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4447, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4447, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4447, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4447, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4447, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4447, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4447, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4447, file: !218, line: 70, baseType: !4463, size: 64, offset: 832)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4447, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4447, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4447, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4447, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4447, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4447, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4447, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4447, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4447, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4447, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4447, file: !218, line: 93, baseType: !4463, size: 64, offset: 1344)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4447, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4447, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4447, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4447, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4489, !4491, !4492, !4497, !4500, !4501}
!4480 = !DILocalVariable(name: "filename", arg: 1, scope: !4442, file: !814, line: 46, type: !138)
!4481 = !DILocalVariable(name: "mode", arg: 2, scope: !4442, file: !814, line: 46, type: !138)
!4482 = !DILocalVariable(name: "open_direction", scope: !4442, file: !814, line: 54, type: !78)
!4483 = !DILocalVariable(name: "open_flags", scope: !4442, file: !814, line: 55, type: !78)
!4484 = !DILocalVariable(name: "open_flags_gnu", scope: !4442, file: !814, line: 57, type: !172)
!4485 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4442, file: !814, line: 59, type: !4486)
!4486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4487)
!4487 = !{!4488}
!4488 = !DISubrange(count: 81)
!4489 = !DILocalVariable(name: "p", scope: !4490, file: !814, line: 62, type: !138)
!4490 = distinct !DILexicalBlock(scope: !4442, file: !814, line: 61, column: 3)
!4491 = !DILocalVariable(name: "q", scope: !4490, file: !814, line: 64, type: !132)
!4492 = !DILocalVariable(name: "len", scope: !4493, file: !814, line: 128, type: !135)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !814, line: 127, column: 9)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !814, line: 68, column: 7)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !814, line: 67, column: 5)
!4496 = distinct !DILexicalBlock(scope: !4490, file: !814, line: 67, column: 5)
!4497 = !DILocalVariable(name: "fd", scope: !4498, file: !814, line: 199, type: !78)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !814, line: 198, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4442, file: !814, line: 197, column: 7)
!4500 = !DILocalVariable(name: "fp", scope: !4498, file: !814, line: 204, type: !4445)
!4501 = !DILocalVariable(name: "saved_errno", scope: !4502, file: !814, line: 207, type: !78)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !814, line: 206, column: 9)
!4503 = distinct !DILexicalBlock(scope: !4498, file: !814, line: 205, column: 11)
!4504 = distinct !DIAssignID()
!4505 = !DILocation(line: 0, scope: !4442)
!4506 = !DILocation(line: 59, column: 3, scope: !4442)
!4507 = !DILocation(line: 0, scope: !4490)
!4508 = !DILocation(line: 67, column: 5, scope: !4490)
!4509 = !DILocation(line: 54, column: 7, scope: !4442)
!4510 = !DILocation(line: 67, column: 12, scope: !4495)
!4511 = !DILocation(line: 67, column: 5, scope: !4496)
!4512 = !DILocation(line: 74, column: 19, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !814, line: 74, column: 17)
!4514 = distinct !DILexicalBlock(scope: !4494, file: !814, line: 70, column: 11)
!4515 = !DILocation(line: 74, column: 17, scope: !4514)
!4516 = !DILocation(line: 75, column: 17, scope: !4513)
!4517 = !DILocation(line: 75, column: 20, scope: !4513)
!4518 = !DILocation(line: 75, column: 15, scope: !4513)
!4519 = !DILocation(line: 80, column: 24, scope: !4514)
!4520 = !DILocation(line: 82, column: 19, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4514, file: !814, line: 82, column: 17)
!4522 = !DILocation(line: 82, column: 17, scope: !4514)
!4523 = !DILocation(line: 83, column: 17, scope: !4521)
!4524 = !DILocation(line: 83, column: 20, scope: !4521)
!4525 = !DILocation(line: 83, column: 15, scope: !4521)
!4526 = !DILocation(line: 88, column: 24, scope: !4514)
!4527 = !DILocation(line: 90, column: 19, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4514, file: !814, line: 90, column: 17)
!4529 = !DILocation(line: 90, column: 17, scope: !4514)
!4530 = !DILocation(line: 91, column: 17, scope: !4528)
!4531 = !DILocation(line: 91, column: 20, scope: !4528)
!4532 = !DILocation(line: 91, column: 15, scope: !4528)
!4533 = !DILocation(line: 100, column: 19, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4514, file: !814, line: 100, column: 17)
!4535 = !DILocation(line: 100, column: 17, scope: !4514)
!4536 = !DILocation(line: 101, column: 17, scope: !4534)
!4537 = !DILocation(line: 101, column: 20, scope: !4534)
!4538 = !DILocation(line: 101, column: 15, scope: !4534)
!4539 = !DILocation(line: 107, column: 19, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4514, file: !814, line: 107, column: 17)
!4541 = !DILocation(line: 107, column: 17, scope: !4514)
!4542 = !DILocation(line: 108, column: 17, scope: !4540)
!4543 = !DILocation(line: 108, column: 20, scope: !4540)
!4544 = !DILocation(line: 108, column: 15, scope: !4540)
!4545 = !DILocation(line: 113, column: 24, scope: !4514)
!4546 = !DILocation(line: 115, column: 13, scope: !4514)
!4547 = !DILocation(line: 117, column: 24, scope: !4514)
!4548 = !DILocation(line: 119, column: 13, scope: !4514)
!4549 = !DILocation(line: 128, column: 24, scope: !4493)
!4550 = !DILocation(line: 0, scope: !4493)
!4551 = !DILocation(line: 129, column: 48, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4493, file: !814, line: 129, column: 15)
!4553 = !DILocation(line: 129, column: 15, scope: !4493)
!4554 = !DILocalVariable(name: "__dest", arg: 1, scope: !4555, file: !1240, line: 26, type: !1243)
!4555 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 26, type: !1241, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4556)
!4556 = !{!4554, !4557, !4558}
!4557 = !DILocalVariable(name: "__src", arg: 2, scope: !4555, file: !1240, line: 26, type: !1063)
!4558 = !DILocalVariable(name: "__len", arg: 3, scope: !4555, file: !1240, line: 26, type: !135)
!4559 = !DILocation(line: 0, scope: !4555, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 131, column: 11, scope: !4493)
!4561 = !DILocation(line: 29, column: 10, scope: !4555, inlinedAt: !4560)
!4562 = !DILocation(line: 132, column: 13, scope: !4493)
!4563 = !DILocation(line: 135, column: 9, scope: !4494)
!4564 = !DILocation(line: 67, column: 25, scope: !4495)
!4565 = !DILocation(line: 67, column: 5, scope: !4495)
!4566 = distinct !{!4566, !4511, !4567, !963}
!4567 = !DILocation(line: 136, column: 7, scope: !4496)
!4568 = !DILocation(line: 138, column: 8, scope: !4490)
!4569 = !DILocation(line: 197, column: 7, scope: !4499)
!4570 = !DILocation(line: 197, column: 7, scope: !4442)
!4571 = !DILocation(line: 199, column: 47, scope: !4498)
!4572 = !DILocation(line: 199, column: 16, scope: !4498)
!4573 = !DILocation(line: 0, scope: !4498)
!4574 = !DILocation(line: 201, column: 14, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4498, file: !814, line: 201, column: 11)
!4576 = !DILocation(line: 201, column: 11, scope: !4498)
!4577 = !DILocation(line: 204, column: 18, scope: !4498)
!4578 = !DILocation(line: 205, column: 14, scope: !4503)
!4579 = !DILocation(line: 205, column: 11, scope: !4498)
!4580 = !DILocation(line: 207, column: 29, scope: !4502)
!4581 = !DILocation(line: 0, scope: !4502)
!4582 = !DILocation(line: 208, column: 11, scope: !4502)
!4583 = !DILocation(line: 209, column: 17, scope: !4502)
!4584 = !DILocation(line: 210, column: 9, scope: !4502)
!4585 = !DILocalVariable(name: "filename", arg: 1, scope: !4586, file: !814, line: 30, type: !138)
!4586 = distinct !DISubprogram(name: "orig_fopen", scope: !814, file: !814, line: 30, type: !4443, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4587)
!4587 = !{!4585, !4588}
!4588 = !DILocalVariable(name: "mode", arg: 2, scope: !4586, file: !814, line: 30, type: !138)
!4589 = !DILocation(line: 0, scope: !4586, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 219, column: 10, scope: !4442)
!4591 = !DILocation(line: 32, column: 10, scope: !4586, inlinedAt: !4590)
!4592 = !DILocation(line: 219, column: 3, scope: !4442)
!4593 = !DILocation(line: 220, column: 1, scope: !4442)
!4594 = !DISubprogram(name: "open", scope: !2035, file: !2035, line: 181, type: !4595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!78, !138, !78, null}
!4597 = !DISubprogram(name: "fdopen", scope: !911, file: !911, line: 293, type: !4598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!4445, !78, !138}
!4600 = !DISubprogram(name: "close", scope: !1900, file: !1900, line: 358, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4601 = !DISubprogram(name: "fopen", scope: !911, file: !911, line: 258, type: !4602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4445, !906, !906}
!4604 = distinct !DISubprogram(name: "close_stream", scope: !816, file: !816, line: 55, type: !4605, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4641)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!78, !4607}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4609)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4609, file: !218, line: 51, baseType: !78, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4609, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4609, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4609, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4609, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4609, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4609, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4609, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4609, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4609, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4609, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4609, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4609, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4609, file: !218, line: 70, baseType: !4625, size: 64, offset: 832)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4609, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4609, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4609, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4609, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4609, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4609, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4609, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4609, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4609, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4609, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4609, file: !218, line: 93, baseType: !4625, size: 64, offset: 1344)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4609, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4609, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4609, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4609, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4641 = !{!4642, !4643, !4645, !4646}
!4642 = !DILocalVariable(name: "stream", arg: 1, scope: !4604, file: !816, line: 55, type: !4607)
!4643 = !DILocalVariable(name: "some_pending", scope: !4604, file: !816, line: 57, type: !4644)
!4644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!4645 = !DILocalVariable(name: "prev_fail", scope: !4604, file: !816, line: 58, type: !4644)
!4646 = !DILocalVariable(name: "fclose_fail", scope: !4604, file: !816, line: 59, type: !4644)
!4647 = !DILocation(line: 0, scope: !4604)
!4648 = !DILocation(line: 57, column: 30, scope: !4604)
!4649 = !DILocalVariable(name: "__stream", arg: 1, scope: !4650, file: !1344, line: 135, type: !4607)
!4650 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1344, file: !1344, line: 135, type: !4605, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4651)
!4651 = !{!4649}
!4652 = !DILocation(line: 0, scope: !4650, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 58, column: 27, scope: !4604)
!4654 = !DILocation(line: 137, column: 10, scope: !4650, inlinedAt: !4653)
!4655 = !DILocation(line: 58, column: 43, scope: !4604)
!4656 = !DILocation(line: 59, column: 29, scope: !4604)
!4657 = !DILocation(line: 59, column: 45, scope: !4604)
!4658 = !DILocation(line: 69, column: 17, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4604, file: !816, line: 69, column: 7)
!4660 = !DILocation(line: 57, column: 50, scope: !4604)
!4661 = !DILocation(line: 69, column: 33, scope: !4659)
!4662 = !DILocation(line: 69, column: 53, scope: !4659)
!4663 = !DILocation(line: 69, column: 59, scope: !4659)
!4664 = !DILocation(line: 69, column: 7, scope: !4604)
!4665 = !DILocation(line: 71, column: 11, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4659, file: !816, line: 70, column: 5)
!4667 = !DILocation(line: 72, column: 9, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4666, file: !816, line: 71, column: 11)
!4669 = !DILocation(line: 72, column: 15, scope: !4668)
!4670 = !DILocation(line: 77, column: 1, scope: !4604)
!4671 = !DISubprogram(name: "__fpending", scope: !2243, file: !2243, line: 75, type: !4672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!135, !4607}
!4674 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !738, file: !738, line: 100, type: !4675, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4678)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!135, !1298, !138, !135, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!4678 = !{!4679, !4680, !4681, !4682, !4683}
!4679 = !DILocalVariable(name: "pwc", arg: 1, scope: !4674, file: !738, line: 100, type: !1298)
!4680 = !DILocalVariable(name: "s", arg: 2, scope: !4674, file: !738, line: 100, type: !138)
!4681 = !DILocalVariable(name: "n", arg: 3, scope: !4674, file: !738, line: 100, type: !135)
!4682 = !DILocalVariable(name: "ps", arg: 4, scope: !4674, file: !738, line: 100, type: !4677)
!4683 = !DILocalVariable(name: "ret", scope: !4674, file: !738, line: 130, type: !135)
!4684 = !DILocation(line: 0, scope: !4674)
!4685 = !DILocation(line: 105, column: 9, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4674, file: !738, line: 105, column: 7)
!4687 = !DILocation(line: 105, column: 7, scope: !4674)
!4688 = !DILocation(line: 117, column: 10, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4674, file: !738, line: 117, column: 7)
!4690 = !DILocation(line: 117, column: 7, scope: !4674)
!4691 = !DILocation(line: 130, column: 16, scope: !4674)
!4692 = !DILocation(line: 135, column: 11, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4674, file: !738, line: 135, column: 7)
!4694 = !DILocation(line: 135, column: 25, scope: !4693)
!4695 = !DILocation(line: 135, column: 30, scope: !4693)
!4696 = !DILocation(line: 135, column: 7, scope: !4674)
!4697 = !DILocalVariable(name: "ps", arg: 1, scope: !4698, file: !2481, line: 1135, type: !4677)
!4698 = distinct !DISubprogram(name: "mbszero", scope: !2481, file: !2481, line: 1135, type: !4699, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4677}
!4701 = !{!4697}
!4702 = !DILocation(line: 0, scope: !4698, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 137, column: 5, scope: !4693)
!4704 = !DILocalVariable(name: "__dest", arg: 1, scope: !4705, file: !1240, line: 57, type: !133)
!4705 = distinct !DISubprogram(name: "memset", scope: !1240, file: !1240, line: 57, type: !2490, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4706)
!4706 = !{!4704, !4707, !4708}
!4707 = !DILocalVariable(name: "__ch", arg: 2, scope: !4705, file: !1240, line: 57, type: !78)
!4708 = !DILocalVariable(name: "__len", arg: 3, scope: !4705, file: !1240, line: 57, type: !135)
!4709 = !DILocation(line: 0, scope: !4705, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 1137, column: 3, scope: !4698, inlinedAt: !4703)
!4711 = !DILocation(line: 59, column: 10, scope: !4705, inlinedAt: !4710)
!4712 = !DILocation(line: 137, column: 5, scope: !4693)
!4713 = !DILocation(line: 138, column: 11, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4674, file: !738, line: 138, column: 7)
!4715 = !DILocation(line: 138, column: 7, scope: !4674)
!4716 = !DILocation(line: 139, column: 5, scope: !4714)
!4717 = !DILocation(line: 143, column: 26, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4674, file: !738, line: 143, column: 7)
!4719 = !DILocation(line: 143, column: 41, scope: !4718)
!4720 = !DILocation(line: 143, column: 7, scope: !4674)
!4721 = !DILocation(line: 145, column: 15, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !738, line: 145, column: 11)
!4723 = distinct !DILexicalBlock(scope: !4718, file: !738, line: 144, column: 5)
!4724 = !DILocation(line: 145, column: 11, scope: !4723)
!4725 = !DILocation(line: 146, column: 32, scope: !4722)
!4726 = !DILocation(line: 146, column: 16, scope: !4722)
!4727 = !DILocation(line: 146, column: 14, scope: !4722)
!4728 = !DILocation(line: 146, column: 9, scope: !4722)
!4729 = !DILocation(line: 286, column: 1, scope: !4674)
!4730 = !DISubprogram(name: "mbsinit", scope: !4731, file: !4731, line: 293, type: !4732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4731 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!78, !4734}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!4736 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !818, file: !818, line: 27, type: !4000, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4737)
!4737 = !{!4738, !4739, !4740, !4741}
!4738 = !DILocalVariable(name: "ptr", arg: 1, scope: !4736, file: !818, line: 27, type: !133)
!4739 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4736, file: !818, line: 27, type: !135)
!4740 = !DILocalVariable(name: "size", arg: 3, scope: !4736, file: !818, line: 27, type: !135)
!4741 = !DILocalVariable(name: "nbytes", scope: !4736, file: !818, line: 29, type: !135)
!4742 = !DILocation(line: 0, scope: !4736)
!4743 = !DILocation(line: 30, column: 7, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4736, file: !818, line: 30, column: 7)
!4745 = !DILocation(line: 30, column: 7, scope: !4736)
!4746 = !DILocation(line: 32, column: 7, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4744, file: !818, line: 31, column: 5)
!4748 = !DILocation(line: 32, column: 13, scope: !4747)
!4749 = !DILocation(line: 33, column: 7, scope: !4747)
!4750 = !DILocalVariable(name: "ptr", arg: 1, scope: !4751, file: !4092, line: 2057, type: !133)
!4751 = distinct !DISubprogram(name: "rpl_realloc", scope: !4092, file: !4092, line: 2057, type: !4084, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4752)
!4752 = !{!4750, !4753}
!4753 = !DILocalVariable(name: "size", arg: 2, scope: !4751, file: !4092, line: 2057, type: !135)
!4754 = !DILocation(line: 0, scope: !4751, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 37, column: 10, scope: !4736)
!4756 = !DILocation(line: 2059, column: 24, scope: !4751, inlinedAt: !4755)
!4757 = !DILocation(line: 2059, column: 10, scope: !4751, inlinedAt: !4755)
!4758 = !DILocation(line: 37, column: 3, scope: !4736)
!4759 = !DILocation(line: 38, column: 1, scope: !4736)
!4760 = distinct !DISubprogram(name: "hard_locale", scope: !756, file: !756, line: 28, type: !4761, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4763)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!172, !78}
!4763 = !{!4764, !4765}
!4764 = !DILocalVariable(name: "category", arg: 1, scope: !4760, file: !756, line: 28, type: !78)
!4765 = !DILocalVariable(name: "locale", scope: !4760, file: !756, line: 30, type: !4766)
!4766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4767)
!4767 = !{!4768}
!4768 = !DISubrange(count: 257)
!4769 = distinct !DIAssignID()
!4770 = !DILocation(line: 0, scope: !4760)
!4771 = !DILocation(line: 30, column: 3, scope: !4760)
!4772 = !DILocation(line: 32, column: 7, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4760, file: !756, line: 32, column: 7)
!4774 = !DILocation(line: 32, column: 7, scope: !4760)
!4775 = !DILocalVariable(name: "__s1", arg: 1, scope: !4776, file: !929, line: 1359, type: !138)
!4776 = distinct !DISubprogram(name: "streq", scope: !929, file: !929, line: 1359, type: !930, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4777)
!4777 = !{!4775, !4778}
!4778 = !DILocalVariable(name: "__s2", arg: 2, scope: !4776, file: !929, line: 1359, type: !138)
!4779 = !DILocation(line: 0, scope: !4776, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 35, column: 9, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4760, file: !756, line: 35, column: 7)
!4782 = !DILocation(line: 1361, column: 11, scope: !4776, inlinedAt: !4780)
!4783 = !DILocation(line: 35, column: 29, scope: !4781)
!4784 = !DILocation(line: 0, scope: !4776, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 35, column: 32, scope: !4781)
!4786 = !DILocation(line: 1361, column: 11, scope: !4776, inlinedAt: !4785)
!4787 = !DILocation(line: 1361, column: 10, scope: !4776, inlinedAt: !4785)
!4788 = !DILocation(line: 35, column: 7, scope: !4760)
!4789 = !DILocation(line: 46, column: 3, scope: !4760)
!4790 = !DILocation(line: 47, column: 1, scope: !4760)
!4791 = distinct !DISubprogram(name: "setlocale_null_r", scope: !824, file: !824, line: 154, type: !4792, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!78, !78, !132, !135}
!4794 = !{!4795, !4796, !4797}
!4795 = !DILocalVariable(name: "category", arg: 1, scope: !4791, file: !824, line: 154, type: !78)
!4796 = !DILocalVariable(name: "buf", arg: 2, scope: !4791, file: !824, line: 154, type: !132)
!4797 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4791, file: !824, line: 154, type: !135)
!4798 = !DILocation(line: 0, scope: !4791)
!4799 = !DILocation(line: 159, column: 10, scope: !4791)
!4800 = !DILocation(line: 159, column: 3, scope: !4791)
!4801 = distinct !DISubprogram(name: "setlocale_null", scope: !824, file: !824, line: 186, type: !4802, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!138, !78}
!4804 = !{!4805}
!4805 = !DILocalVariable(name: "category", arg: 1, scope: !4801, file: !824, line: 186, type: !78)
!4806 = !DILocation(line: 0, scope: !4801)
!4807 = !DILocation(line: 189, column: 10, scope: !4801)
!4808 = !DILocation(line: 189, column: 3, scope: !4801)
!4809 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !826, file: !826, line: 35, type: !4802, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4810)
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "category", arg: 1, scope: !4809, file: !826, line: 35, type: !78)
!4812 = !DILocalVariable(name: "result", scope: !4809, file: !826, line: 37, type: !138)
!4813 = !DILocation(line: 0, scope: !4809)
!4814 = !DILocation(line: 37, column: 24, scope: !4809)
!4815 = !DILocation(line: 62, column: 3, scope: !4809)
!4816 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !826, file: !826, line: 66, type: !4792, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822}
!4818 = !DILocalVariable(name: "category", arg: 1, scope: !4816, file: !826, line: 66, type: !78)
!4819 = !DILocalVariable(name: "buf", arg: 2, scope: !4816, file: !826, line: 66, type: !132)
!4820 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4816, file: !826, line: 66, type: !135)
!4821 = !DILocalVariable(name: "result", scope: !4816, file: !826, line: 111, type: !138)
!4822 = !DILocalVariable(name: "length", scope: !4823, file: !826, line: 125, type: !135)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !826, line: 124, column: 5)
!4824 = distinct !DILexicalBlock(scope: !4816, file: !826, line: 113, column: 7)
!4825 = !DILocation(line: 0, scope: !4816)
!4826 = !DILocation(line: 0, scope: !4809, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 111, column: 24, scope: !4816)
!4828 = !DILocation(line: 37, column: 24, scope: !4809, inlinedAt: !4827)
!4829 = !DILocation(line: 113, column: 14, scope: !4824)
!4830 = !DILocation(line: 113, column: 7, scope: !4816)
!4831 = !DILocation(line: 116, column: 19, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !826, line: 116, column: 11)
!4833 = distinct !DILexicalBlock(scope: !4824, file: !826, line: 114, column: 5)
!4834 = !DILocation(line: 116, column: 11, scope: !4833)
!4835 = !DILocation(line: 120, column: 16, scope: !4832)
!4836 = !DILocation(line: 120, column: 9, scope: !4832)
!4837 = !DILocation(line: 125, column: 23, scope: !4823)
!4838 = !DILocation(line: 0, scope: !4823)
!4839 = !DILocation(line: 126, column: 18, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4823, file: !826, line: 126, column: 11)
!4841 = !DILocation(line: 126, column: 11, scope: !4823)
!4842 = !DILocation(line: 128, column: 39, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4840, file: !826, line: 127, column: 9)
!4844 = !DILocalVariable(name: "__dest", arg: 1, scope: !4845, file: !1240, line: 26, type: !1243)
!4845 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 26, type: !1241, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4846)
!4846 = !{!4844, !4847, !4848}
!4847 = !DILocalVariable(name: "__src", arg: 2, scope: !4845, file: !1240, line: 26, type: !1063)
!4848 = !DILocalVariable(name: "__len", arg: 3, scope: !4845, file: !1240, line: 26, type: !135)
!4849 = !DILocation(line: 0, scope: !4845, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 128, column: 11, scope: !4843)
!4851 = !DILocation(line: 29, column: 10, scope: !4845, inlinedAt: !4850)
!4852 = !DILocation(line: 129, column: 11, scope: !4843)
!4853 = !DILocation(line: 133, column: 23, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !826, line: 133, column: 15)
!4855 = distinct !DILexicalBlock(scope: !4840, file: !826, line: 132, column: 9)
!4856 = !DILocation(line: 133, column: 15, scope: !4855)
!4857 = !DILocation(line: 138, column: 44, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4854, file: !826, line: 134, column: 13)
!4859 = !DILocation(line: 0, scope: !4845, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 138, column: 15, scope: !4858)
!4861 = !DILocation(line: 29, column: 10, scope: !4845, inlinedAt: !4860)
!4862 = !DILocation(line: 139, column: 15, scope: !4858)
!4863 = !DILocation(line: 139, column: 32, scope: !4858)
!4864 = !DILocation(line: 140, column: 13, scope: !4858)
!4865 = !DILocation(line: 0, scope: !4824)
!4866 = !DILocation(line: 145, column: 1, scope: !4816)
