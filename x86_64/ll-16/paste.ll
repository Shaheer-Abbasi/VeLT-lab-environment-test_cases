; ModuleID = 'src/paste.bc'
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
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !416
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !417
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !148
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !158
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !163
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !165
@delims = internal unnamed_addr global ptr null, align 8, !dbg !175
@delim_lens = internal unnamed_addr global ptr null, align 8, !dbg !177
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !418
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
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !395
@.str.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !397
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !399
@.str.65 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !401
@switch.table.main = private unnamed_addr constant [14 x i8] c"\\\08\08\08\08\0C\08\08\08\0A\08\0D\09\0B", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !419
@Version = dso_local local_unnamed_addr global ptr @.str.26, align 8, !dbg !422
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !426
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !439
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !431
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !433
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !435
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !437
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !441
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !447
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !479
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !449
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !569
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !583
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !621
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !628
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !585
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !630
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !573
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !590
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !592
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !594
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !596
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !598
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !634
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !637
@.str.2.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !639
@.str.3.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !641
@.str.4.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !643
@.str.5.93 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !645
@.str.6.94 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !650
@.str.7.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !655
@.str.8.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !657
@.str.9.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !662
@.str.10.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !667
@.str.11.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !672
@.str.12.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !677
@.str.13.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !679
@.str.14.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !684
@.str.15.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !689
@.str.16.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !691
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.109 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !696
@.str.18.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !698
@.str.19.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !700
@.str.20.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !702
@.str.21.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !704
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !706
@.str.23.115 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !708
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !713
@exit_failure = dso_local global i32 1, align 4, !dbg !721
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !727
@.str.1.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !730
@.str.2.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !732
@.str.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !734
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !737
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !752

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !834
  %2 = icmp eq i32 %0, 0, !dbg !835
  br i1 %2, label %8, label %3, !dbg !837

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !838, !tbaa !840
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !838
  %6 = load ptr, ptr @program_name, align 8, !dbg !838, !tbaa !840
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !838
  br label %40, !dbg !838

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !844
  %10 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !840
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !844
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !846
  %13 = load ptr, ptr @stdout, align 8, !dbg !846, !tbaa !840
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !846
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #37, !dbg !847
  %16 = load ptr, ptr @stdout, align 8, !dbg !847, !tbaa !840
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !847
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #37, !dbg !851
  %19 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !840
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !851
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !854
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !854
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !855
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !855
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !856
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !857
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !857
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !858
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !858
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !859, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr poison, metadata !871, metadata !DIExpression()), !dbg !876
  tail call void @emit_bug_reporting_address() #37, !dbg !878
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !879
  call void @llvm.dbg.value(metadata ptr %26, metadata !874, metadata !DIExpression()), !dbg !876
  %27 = icmp eq ptr %26, null, !dbg !880
  br i1 %27, label %35, label %28, !dbg !882

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #38, !dbg !883
  %30 = icmp eq i32 %29, 0, !dbg !883
  br i1 %30, label %35, label %31, !dbg !884

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #37, !dbg !885
  %33 = load ptr, ptr @stdout, align 8, !dbg !885, !tbaa !840
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !885
  br label %35, !dbg !887

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !875, metadata !DIExpression()), !dbg !876
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !888
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #37, !dbg !888
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !889
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #37, !dbg !889
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !890
  unreachable, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !891 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !895 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !901 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !904 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !192 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %0, metadata !197, metadata !DIExpression()), !dbg !908
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !909, !tbaa !910
  %3 = icmp eq i32 %2, -1, !dbg !912
  br i1 %3, label %4, label %16, !dbg !913

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #37, !dbg !914
  call void @llvm.dbg.value(metadata ptr %5, metadata !198, metadata !DIExpression()), !dbg !915
  %6 = icmp eq ptr %5, null, !dbg !916
  br i1 %6, label %14, label %7, !dbg !917

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !918, !tbaa !919
  %9 = icmp eq i8 %8, 0, !dbg !918
  br i1 %9, label %14, label %10, !dbg !920

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !921, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !927, metadata !DIExpression()), !dbg !928
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #38, !dbg !930
  %12 = icmp eq i32 %11, 0, !dbg !931
  %13 = zext i1 %12 to i32, !dbg !920
  br label %14, !dbg !920

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !932, !tbaa !910
  br label %16, !dbg !933

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !934
  %18 = icmp eq i32 %17, 0, !dbg !934
  br i1 %18, label %22, label %19, !dbg !936

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !937, !tbaa !840
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !937
  br label %128, !dbg !939

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !201, metadata !DIExpression()), !dbg !908
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #38, !dbg !940
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !941
  call void @llvm.dbg.value(metadata ptr %24, metadata !202, metadata !DIExpression()), !dbg !908
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !942
  call void @llvm.dbg.value(metadata ptr %25, metadata !203, metadata !DIExpression()), !dbg !908
  %26 = icmp eq ptr %25, null, !dbg !943
  br i1 %26, label %58, label %27, !dbg !944

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !945
  br i1 %28, label %58, label %29, !dbg !946

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !204, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !208, metadata !DIExpression()), !dbg !947
  %30 = icmp ult ptr %24, %25, !dbg !948
  br i1 %30, label %31, label %52, !dbg !949

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !908
  %33 = load ptr, ptr %32, align 8, !tbaa !840
  br label %34, !dbg !949

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !204, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 %36, metadata !208, metadata !DIExpression()), !dbg !947
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !950
  call void @llvm.dbg.value(metadata ptr %37, metadata !204, metadata !DIExpression()), !dbg !947
  %38 = load i8, ptr %35, align 1, !dbg !950, !tbaa !919
  %39 = sext i8 %38 to i64, !dbg !950
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !950
  %41 = load i16, ptr %40, align 2, !dbg !950, !tbaa !951
  %42 = freeze i16 %41, !dbg !953
  %43 = lshr i16 %42, 13, !dbg !953
  %44 = and i16 %43, 1, !dbg !953
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !954
  call void @llvm.dbg.value(metadata i64 %46, metadata !208, metadata !DIExpression()), !dbg !947
  %47 = icmp ult ptr %37, %25, !dbg !948
  %48 = icmp ult i64 %46, 2, !dbg !955
  %49 = select i1 %47, i1 %48, i1 false, !dbg !955
  br i1 %49, label %34, label %50, !dbg !949, !llvm.loop !956

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !958
  br i1 %51, label %52, label %54, !dbg !960

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !960

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !960
  call void @llvm.dbg.value(metadata i8 %57, metadata !201, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %56, metadata !203, metadata !DIExpression()), !dbg !908
  br label %58, !dbg !961

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !908
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %60, metadata !201, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %59, metadata !203, metadata !DIExpression()), !dbg !908
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.25) #38, !dbg !962
  call void @llvm.dbg.value(metadata i64 %61, metadata !209, metadata !DIExpression()), !dbg !908
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !963
  call void @llvm.dbg.value(metadata ptr %62, metadata !210, metadata !DIExpression()), !dbg !908
  br label %63, !dbg !964

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !908
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %65, metadata !201, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %64, metadata !210, metadata !DIExpression()), !dbg !908
  %66 = load i8, ptr %64, align 1, !dbg !965, !tbaa !919
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !966

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !967
  %69 = load i8, ptr %68, align 1, !dbg !970, !tbaa !919
  %70 = icmp eq i8 %69, 45, !dbg !971
  %71 = select i1 %70, i8 0, i8 %65, !dbg !972
  br label %72, !dbg !972

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %73, metadata !201, metadata !DIExpression()), !dbg !908
  %74 = tail call ptr @__ctype_b_loc() #40, !dbg !973
  %75 = load ptr, ptr %74, align 8, !dbg !973, !tbaa !840
  %76 = sext i8 %66 to i64, !dbg !973
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !973
  %78 = load i16, ptr %77, align 2, !dbg !973, !tbaa !951
  %79 = and i16 %78, 8192, !dbg !973
  %80 = icmp eq i16 %79, 0, !dbg !973
  br i1 %80, label %96, label %81, !dbg !975

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !976
  br i1 %82, label %98, label %83, !dbg !979

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !980
  %85 = load i8, ptr %84, align 1, !dbg !980, !tbaa !919
  %86 = sext i8 %85 to i64, !dbg !980
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !980
  %88 = load i16, ptr %87, align 2, !dbg !980, !tbaa !951
  %89 = and i16 %88, 8192, !dbg !980
  %90 = icmp eq i16 %89, 0, !dbg !980
  br i1 %90, label %91, label %98, !dbg !981

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !982
  %93 = icmp ne i8 %92, 0, !dbg !982
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !984
  br i1 %95, label %96, label %98, !dbg !984

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !985
  call void @llvm.dbg.value(metadata ptr %97, metadata !210, metadata !DIExpression()), !dbg !908
  br label %63, !dbg !964, !llvm.loop !986

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !988
  %100 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !840
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !267, metadata !DIExpression()), !dbg !908
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #38, !dbg !1009
  %103 = icmp eq i32 %102, 0, !dbg !1009
  br i1 %103, label %107, label %104, !dbg !1011

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #38, !dbg !1012
  %106 = icmp eq i32 %105, 0, !dbg !1012
  br i1 %106, label %107, label %110, !dbg !1013

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1014
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #37, !dbg !1014
  br label %113, !dbg !1016

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1017
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #37, !dbg !1017
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !840
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %114), !dbg !1019
  %116 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !840
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %116), !dbg !1020
  %118 = ptrtoint ptr %64 to i64, !dbg !1021
  %119 = sub i64 %118, %99, !dbg !1021
  %120 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !840
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1021
  %122 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !840
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %122), !dbg !1022
  %124 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !840
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %124), !dbg !1023
  %126 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !840
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1024
  br label %128, !dbg !1025

128:                                              ; preds = %113, %19
  ret void, !dbg !1025
}

; Function Attrs: nounwind
declare !dbg !1026 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1030 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1034 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1036 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1039 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1042 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1048 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1054 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1055 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1061 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1066, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr %1, metadata !1067, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1069, metadata !DIExpression()), !dbg !1072
  %5 = load ptr, ptr %1, align 8, !dbg !1073, !tbaa !840
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1074
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #37, !dbg !1075
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #37, !dbg !1076
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #37, !dbg !1077
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1078
  br label %10, !dbg !1079

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %18, %14 ], [ @.str.9, %2 ]
  br label %12, !dbg !1079

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata ptr %11, metadata !1069, metadata !DIExpression()), !dbg !1072
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %13, metadata !1068, metadata !DIExpression()), !dbg !1072
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 100, label %14
    i32 115, label %19
    i32 122, label %20
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !1079

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1081, !tbaa !840
  %16 = load i8, ptr %15, align 1, !dbg !1081, !tbaa !919
  %17 = icmp eq i8 %16, 0, !dbg !1084
  %18 = select i1 %17, ptr @.str.14, ptr %15, !dbg !1081
  call void @llvm.dbg.value(metadata ptr %18, metadata !1069, metadata !DIExpression()), !dbg !1072
  br label %10, !dbg !1085, !llvm.loop !1086

19:                                               ; preds = %12
  store i1 true, ptr @serial_merge, align 1, !dbg !1088
  br label %21, !dbg !1089

20:                                               ; preds = %12
  store i1 true, ptr @line_delim, align 1, !dbg !1090
  br label %21, !dbg !1091

21:                                               ; preds = %20, %19
  br label %12, !dbg !1072, !llvm.loop !1086

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #41, !dbg !1092
  unreachable, !dbg !1092

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1093, !tbaa !840
  %25 = load ptr, ptr @Version, align 8, !dbg !1093, !tbaa !840
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #37, !dbg !1093
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #37, !dbg !1093
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #37, !dbg !1093
  tail call void @exit(i32 noundef 0) #39, !dbg !1093
  unreachable, !dbg !1093

28:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #41, !dbg !1094
  unreachable, !dbg !1094

29:                                               ; preds = %12
  %30 = load i32, ptr @optind, align 4, !dbg !1095, !tbaa !910
  %31 = sub nsw i32 %0, %30, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %31, metadata !1070, metadata !DIExpression()), !dbg !1072
  %32 = icmp eq i32 %31, 0, !dbg !1097
  br i1 %32, label %33, label %36, !dbg !1099

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64, !dbg !1100
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1100
  store ptr @.str.18, ptr %35, align 8, !dbg !1102, !tbaa !840
  call void @llvm.dbg.value(metadata i32 1, metadata !1070, metadata !DIExpression()), !dbg !1072
  br label %36, !dbg !1103

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 1, %33 ], [ %31, %29 ], !dbg !1072
  call void @llvm.dbg.value(metadata i32 %37, metadata !1070, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr %11, metadata !1104, metadata !DIExpression()), !dbg !1122
  %38 = tail call noalias nonnull ptr @xstrdup(ptr noundef %11) #37, !dbg !1125
  call void @llvm.dbg.value(metadata ptr %38, metadata !1109, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 0, metadata !1110, metadata !DIExpression()), !dbg !1122
  store ptr %38, ptr @delims, align 8, !dbg !1126, !tbaa !840
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #38, !dbg !1127
  %40 = icmp eq i64 %39, 0, !dbg !1127
  %41 = select i1 %40, i64 1, i64 %39, !dbg !1127
  %42 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %41, i64 noundef 8) #42, !dbg !1128
  store ptr %42, ptr @delim_lens, align 8, !dbg !1129, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %11, metadata !1111, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 0, metadata !1112, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %38, metadata !1109, metadata !DIExpression()), !dbg !1122
  %43 = load i8, ptr %11, align 1, !dbg !1130, !tbaa !919
  %44 = icmp eq i8 %43, 0, !dbg !1131
  br i1 %44, label %45, label %46, !dbg !1131

45:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1110, metadata !DIExpression()), !dbg !1122
  store i8 0, ptr %38, align 1, !dbg !1132, !tbaa !919
  store i64 0, ptr %42, align 8, !dbg !1133, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 1, metadata !1112, metadata !DIExpression()), !dbg !1122
  br label %124, !dbg !1138

46:                                               ; preds = %36, %78
  %47 = phi ptr [ %79, %78 ], [ %42, %36 ]
  %48 = phi ptr [ %80, %78 ], [ %42, %36 ]
  %49 = phi i8 [ %84, %78 ], [ %43, %36 ]
  %50 = phi ptr [ %82, %78 ], [ %38, %36 ]
  %51 = phi ptr [ %81, %78 ], [ %11, %36 ]
  %52 = phi i64 [ %83, %78 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata ptr %50, metadata !1109, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %51, metadata !1111, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %52, metadata !1112, metadata !DIExpression()), !dbg !1122
  %53 = icmp eq i8 %49, 92, !dbg !1139
  br i1 %53, label %54, label %87, !dbg !1141

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %55, metadata !1111, metadata !DIExpression()), !dbg !1122
  %56 = load i8, ptr %55, align 1, !dbg !1144, !tbaa !919
  switch i8 %56, label %57 [
    i8 0, label %117
    i8 48, label %72
  ], !dbg !1146

57:                                               ; preds = %54
  %58 = sext i8 %56 to i32, !dbg !1144
  %59 = add nsw i32 %58, -92, !dbg !1147
  %60 = call i32 @llvm.fshl.i32(i32 %58, i32 %59, i32 31), !dbg !1147
  %61 = icmp ult i32 %60, 14, !dbg !1147
  br i1 %61, label %62, label %87, !dbg !1147

62:                                               ; preds = %57
  %63 = trunc i32 %60 to i16, !dbg !1147
  %64 = lshr i16 14889, %63, !dbg !1147
  %65 = and i16 %64, 1, !dbg !1147
  %66 = icmp eq i16 %65, 0, !dbg !1147
  br i1 %66, label %87, label %67, !dbg !1147

67:                                               ; preds = %62
  %68 = sext i32 %60 to i64, !dbg !1147
  %69 = getelementptr inbounds [14 x i8], ptr @switch.table.main, i64 0, i64 %68, !dbg !1147
  %70 = load i8, ptr %69, align 1, !dbg !1147
  store i8 %70, ptr %50, align 1, !dbg !1150, !tbaa !919
  %71 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %71, metadata !1109, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %51, metadata !1111, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %52, metadata !1112, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1122
  br label %72

72:                                               ; preds = %67, %54
  %73 = phi ptr [ %47, %67 ], [ %48, %54 ]
  %74 = phi i64 [ 1, %67 ], [ 0, %54 ]
  %75 = phi ptr [ %71, %67 ], [ %50, %54 ], !dbg !1122
  %76 = getelementptr inbounds i64, ptr %73, i64 %52, !dbg !1152
  store i64 %74, ptr %76, align 8, !dbg !1152, !tbaa !1136
  %77 = getelementptr inbounds i8, ptr %51, i64 2, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %75, metadata !1109, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %77, metadata !1111, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %52, metadata !1112, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1122
  br label %78, !dbg !1153

78:                                               ; preds = %111, %72
  %79 = phi ptr [ %47, %72 ], [ %115, %111 ]
  %80 = phi ptr [ %73, %72 ], [ %115, %111 ]
  %81 = phi ptr [ %77, %72 ], [ %114, %111 ]
  %82 = phi ptr [ %75, %72 ], [ %113, %111 ]
  %83 = add nuw nsw i64 %52, 1, !dbg !1154
  call void @llvm.dbg.value(metadata ptr %82, metadata !1109, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %81, metadata !1111, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %83, metadata !1112, metadata !DIExpression()), !dbg !1122
  %84 = load i8, ptr %81, align 1, !dbg !1130, !tbaa !919
  %85 = icmp eq i8 %84, 0, !dbg !1131
  br i1 %85, label %86, label %46, !dbg !1131, !llvm.loop !1155

86:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i8 poison, metadata !1110, metadata !DIExpression()), !dbg !1122
  store i8 0, ptr %82, align 1, !dbg !1132, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %83, metadata !1112, metadata !DIExpression()), !dbg !1122
  br label %124, !dbg !1138

87:                                               ; preds = %62, %57, %46
  %88 = phi i8 [ %49, %46 ], [ %56, %57 ], [ %56, %62 ], !dbg !1157
  %89 = phi ptr [ %51, %46 ], [ %55, %57 ], [ %55, %62 ], !dbg !1122
  call void @llvm.dbg.value(metadata ptr %89, metadata !1111, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.label(metadata !1121), !dbg !1175
  call void @llvm.dbg.value(metadata ptr %89, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata ptr %89, metadata !1163, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 0, metadata !1164, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %88, metadata !1178, metadata !DIExpression()), !dbg !1183
  %90 = icmp sgt i8 %88, -1, !dbg !1185
  br i1 %90, label %111, label %91, !dbg !1186

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, ptr %89, i64 1, !dbg !1187
  call void @llvm.dbg.value(metadata i32 0, metadata !1166, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr %92, metadata !1165, metadata !DIExpression()), !dbg !1177
  %93 = load i8, ptr %92, align 1, !dbg !1189, !tbaa !919
  %94 = icmp ne i8 %93, 0, !dbg !1191
  %95 = zext i1 %94 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95, !dbg !1192
  call void @llvm.dbg.value(metadata i32 1, metadata !1166, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr %96, metadata !1165, metadata !DIExpression()), !dbg !1177
  %97 = load i8, ptr %96, align 1, !dbg !1189, !tbaa !919
  %98 = icmp ne i8 %97, 0, !dbg !1191
  %99 = zext i1 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99, !dbg !1192
  call void @llvm.dbg.value(metadata i32 2, metadata !1166, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr %100, metadata !1165, metadata !DIExpression()), !dbg !1177
  %101 = load i8, ptr %100, align 1, !dbg !1189, !tbaa !919
  %102 = icmp ne i8 %101, 0, !dbg !1191
  %103 = zext i1 %102 to i64
  %104 = getelementptr inbounds i8, ptr %100, i64 %103, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %104, metadata !1165, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 3, metadata !1166, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr %89, metadata !1193, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %104, metadata !1198, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8 %88, metadata !1199, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8 %88, metadata !1178, metadata !DIExpression()), !dbg !1215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1218
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1219
  store i32 0, ptr %3, align 4, !dbg !1220, !tbaa !1221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1223
  %105 = ptrtoint ptr %104 to i64, !dbg !1224
  %106 = ptrtoint ptr %89 to i64, !dbg !1224
  %107 = sub i64 %105, %106, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %4, metadata !1211, metadata !DIExpression(DW_OP_deref)), !dbg !1213
  %108 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %89, i64 noundef %107, ptr noundef nonnull %3) #37, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %108, metadata !1212, metadata !DIExpression()), !dbg !1213
  %109 = icmp slt i64 %108, 0, !dbg !1226
  %110 = select i1 %109, i64 1, i64 %108, !dbg !1228, !prof !1229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1230
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1230
  br label %111

111:                                              ; preds = %91, %87
  %112 = phi i64 [ %110, %91 ], [ 1, %87 ], !dbg !1177
  call void @llvm.dbg.value(metadata i64 %112, metadata !1113, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %112, metadata !1113, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %112, metadata !1113, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %50, metadata !1231, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr %89, metadata !1238, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %112, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %50, ptr noundef nonnull align 1 %89, i64 noundef %112, i1 noundef false) #37, !dbg !1242
  %113 = getelementptr inbounds i8, ptr %50, i64 %112, !dbg !1242
  call void @llvm.dbg.value(metadata ptr %113, metadata !1109, metadata !DIExpression()), !dbg !1122
  %114 = getelementptr inbounds i8, ptr %89, i64 %112, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %114, metadata !1111, metadata !DIExpression()), !dbg !1122
  %115 = load ptr, ptr @delim_lens, align 8, !dbg !1244, !tbaa !840
  call void @llvm.dbg.value(metadata i64 %52, metadata !1112, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1122
  %116 = getelementptr inbounds i64, ptr %115, i64 %52, !dbg !1244
  store i64 %112, ptr %116, align 8, !dbg !1245, !tbaa !1136
  br label %78, !dbg !1131

117:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i8 poison, metadata !1110, metadata !DIExpression()), !dbg !1122
  store i8 0, ptr %50, align 1, !dbg !1132, !tbaa !919
  %118 = icmp eq i64 %52, 0, !dbg !1246
  br i1 %118, label %119, label %120, !dbg !1247

119:                                              ; preds = %117
  store i64 0, ptr %47, align 8, !dbg !1133, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 1, metadata !1112, metadata !DIExpression()), !dbg !1122
  br label %120, !dbg !1138

120:                                              ; preds = %117, %119
  %121 = phi i64 [ 1, %119 ], [ %52, %117 ], !dbg !1248
  store i64 %121, ptr @num_delims, align 8, !dbg !1248, !tbaa !1136
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1249
  %123 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef nonnull %11) #37, !dbg !1249
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %122, ptr noundef %123) #37, !dbg !1249
  unreachable, !dbg !1249

124:                                              ; preds = %45, %86
  %125 = phi i64 [ %83, %86 ], [ 1, %45 ], !dbg !1248
  store i64 %125, ptr @num_delims, align 8, !dbg !1248, !tbaa !1136
  %126 = load i1, ptr @serial_merge, align 1, !dbg !1251
  %127 = select i1 %126, ptr @paste_serial, ptr @paste_parallel, !dbg !1251
  %128 = sext i32 %37 to i64, !dbg !1252
  %129 = load i32, ptr @optind, align 4, !dbg !1253, !tbaa !910
  %130 = sext i32 %129 to i64, !dbg !1254
  %131 = getelementptr inbounds ptr, ptr %1, i64 %130, !dbg !1254
  %132 = call zeroext i1 %127(i64 noundef %128, ptr noundef nonnull %131) #37, !dbg !1255, !callees !1256
  call void @llvm.dbg.value(metadata i1 %132, metadata !1071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1072
  %133 = load ptr, ptr @delims, align 8, !dbg !1257, !tbaa !840
  call void @free(ptr noundef %133) #37, !dbg !1258
  %134 = load ptr, ptr @delim_lens, align 8, !dbg !1259, !tbaa !840
  call void @free(ptr noundef %134) #37, !dbg !1260
  %135 = load i1, ptr @have_read_stdin, align 1, !dbg !1261
  br i1 %135, label %136, label %143, !dbg !1263

136:                                              ; preds = %124
  %137 = load ptr, ptr @stdin, align 8, !dbg !1264, !tbaa !840
  %138 = call i32 @rpl_fclose(ptr noundef %137) #37, !dbg !1265
  %139 = icmp eq i32 %138, -1, !dbg !1266
  br i1 %139, label %140, label %143, !dbg !1267

140:                                              ; preds = %136
  %141 = tail call ptr @__errno_location() #40, !dbg !1268
  %142 = load i32, ptr %141, align 4, !dbg !1268, !tbaa !910
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %142, ptr noundef nonnull @.str.18) #37, !dbg !1268
  unreachable, !dbg !1268

143:                                              ; preds = %136, %124
  %144 = xor i1 %132, true, !dbg !1269
  %145 = zext i1 %144 to i32, !dbg !1269
  ret i32 %145, !dbg !1270
}

; Function Attrs: nounwind
declare !dbg !1271 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1274 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1275 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1278 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1284 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1287 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_serial(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1298, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %1, metadata !1299, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i8 1, metadata !1300, metadata !DIExpression()), !dbg !1311
  %3 = icmp eq i64 %0, 0, !dbg !1312
  br i1 %3, label %198, label %4, !dbg !1312

4:                                                ; preds = %2, %193
  %5 = phi i64 [ %195, %193 ], [ %0, %2 ]
  %6 = phi ptr [ %196, %193 ], [ %1, %2 ]
  %7 = phi i8 [ %194, %193 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1298, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %6, metadata !1299, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i8 %7, metadata !1300, metadata !DIExpression()), !dbg !1311
  %8 = load ptr, ptr %6, align 8, !dbg !1313, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %8, metadata !921, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !927, metadata !DIExpression()), !dbg !1314
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str.18) #38, !dbg !1316
  %10 = icmp eq i32 %9, 0, !dbg !1317
  call void @llvm.dbg.value(metadata i1 %10, metadata !1308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1318
  br i1 %10, label %11, label %13, !dbg !1319

11:                                               ; preds = %4
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1320
  %12 = load ptr, ptr @stdin, align 8, !dbg !1323, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %12, metadata !1303, metadata !DIExpression()), !dbg !1311
  br label %20, !dbg !1324

13:                                               ; preds = %4
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %8, ptr noundef nonnull @.str.62) #37, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %14, metadata !1303, metadata !DIExpression()), !dbg !1311
  %15 = icmp eq ptr %14, null, !dbg !1327
  br i1 %15, label %16, label %19, !dbg !1329

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #40, !dbg !1330
  %18 = load i32, ptr %17, align 4, !dbg !1330, !tbaa !910
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression()), !dbg !1311
  br label %189, !dbg !1332

19:                                               ; preds = %13
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #37, !dbg !1333
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi ptr [ %12, %11 ], [ %14, %19 ], !dbg !1334
  call void @llvm.dbg.value(metadata ptr %21, metadata !1303, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, metadata !1309, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %21, metadata !1335, metadata !DIExpression()), !dbg !1341
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 1, !dbg !1343
  %23 = load ptr, ptr %22, align 8, !dbg !1343, !tbaa !1344
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 2, !dbg !1343
  %25 = load ptr, ptr %24, align 8, !dbg !1343, !tbaa !1346
  %26 = icmp ult ptr %23, %25, !dbg !1343
  br i1 %26, label %27, label %32, !dbg !1343, !prof !1347

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1343
  store ptr %28, ptr %22, align 8, !dbg !1343, !tbaa !1344
  %29 = load i8, ptr %23, align 1, !dbg !1343, !tbaa !919
  %30 = zext i8 %29 to i32, !dbg !1343
  call void @llvm.dbg.value(metadata i32 %30, metadata !1302, metadata !DIExpression()), !dbg !1311
  %31 = tail call ptr @__errno_location() #40, !dbg !1348
  call void @llvm.dbg.value(metadata i32 poison, metadata !1304, metadata !DIExpression()), !dbg !1318
  br label %36, !dbg !1349

32:                                               ; preds = %20
  %33 = tail call i32 @__uflow(ptr noundef nonnull %21) #37, !dbg !1343
  call void @llvm.dbg.value(metadata i32 %33, metadata !1302, metadata !DIExpression()), !dbg !1311
  %34 = tail call ptr @__errno_location() #40, !dbg !1348
  call void @llvm.dbg.value(metadata i32 poison, metadata !1304, metadata !DIExpression()), !dbg !1318
  %35 = icmp eq i32 %33, -1, !dbg !1350
  br i1 %35, label %39, label %36, !dbg !1349

36:                                               ; preds = %27, %32
  %37 = phi ptr [ %31, %27 ], [ %34, %32 ]
  %38 = phi i32 [ %30, %27 ], [ %33, %32 ]
  br label %92, !dbg !1352

39:                                               ; preds = %32
  %40 = load i32, ptr %34, align 4, !dbg !1348, !tbaa !910
  call void @llvm.dbg.value(metadata i32 poison, metadata !1304, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 -1, metadata !1302, metadata !DIExpression()), !dbg !1311
  %41 = load i1, ptr @line_delim, align 1, !dbg !1354
  %42 = select i1 %41, i8 0, i8 10, !dbg !1354
  %43 = zext i8 %42 to i32, !dbg !1354
  br label %147, !dbg !1356

44:                                               ; preds = %110, %92
  %45 = phi i32 [ %93, %92 ], [ %57, %110 ], !dbg !1318
  call void @llvm.dbg.value(metadata i64 %95, metadata !1310, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %94, metadata !1309, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %45, metadata !1302, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %21, metadata !1335, metadata !DIExpression()), !dbg !1357
  %46 = load ptr, ptr %22, align 8, !dbg !1359, !tbaa !1344
  %47 = load ptr, ptr %24, align 8, !dbg !1359, !tbaa !1346
  %48 = icmp ult ptr %46, %47, !dbg !1359
  br i1 %48, label %49, label %53, !dbg !1359, !prof !1347

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1359
  store ptr %50, ptr %22, align 8, !dbg !1359, !tbaa !1344
  %51 = load i8, ptr %46, align 1, !dbg !1359, !tbaa !919
  %52 = zext i8 %51 to i32, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %52, metadata !1301, metadata !DIExpression()), !dbg !1311
  br label %56, !dbg !1352

53:                                               ; preds = %44
  %54 = tail call i32 @__uflow(ptr noundef nonnull %21) #37, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %54, metadata !1301, metadata !DIExpression()), !dbg !1311
  %55 = icmp eq i32 %54, -1, !dbg !1360
  br i1 %55, label %119, label %56, !dbg !1352

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %58 = load i1, ptr @line_delim, align 1, !dbg !1361
  %59 = select i1 %58, i32 0, i32 10, !dbg !1361
  %60 = icmp eq i32 %45, %59, !dbg !1364
  br i1 %60, label %61, label %96, !dbg !1365

61:                                               ; preds = %56
  %62 = load ptr, ptr @delim_lens, align 8, !dbg !1366, !tbaa !840
  %63 = getelementptr inbounds i64, ptr %62, i64 %94, !dbg !1366
  %64 = load i64, ptr %63, align 8, !dbg !1366, !tbaa !1136
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1368, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %64, metadata !1373, metadata !DIExpression()), !dbg !1379
  %65 = icmp eq i64 %64, 0, !dbg !1381
  br i1 %65, label %84, label %66, !dbg !1382

66:                                               ; preds = %61
  %67 = load ptr, ptr @delims, align 8, !dbg !1383, !tbaa !840
  call void @llvm.dbg.value(metadata !DIArgList(ptr %67, i64 %95), metadata !1368, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1379
  %68 = getelementptr inbounds i8, ptr %67, i64 %95, !dbg !1384
  call void @llvm.dbg.value(metadata ptr %68, metadata !1368, metadata !DIExpression()), !dbg !1379
  %69 = load ptr, ptr @stdout, align 8, !dbg !1385, !tbaa !840
  %70 = tail call i64 @fwrite_unlocked(ptr noundef %68, i64 noundef 1, i64 noundef %64, ptr noundef %69), !dbg !1385
  %71 = icmp eq i64 %70, %64, !dbg !1386
  br i1 %71, label %72, label %76, !dbg !1387

72:                                               ; preds = %66
  %73 = load ptr, ptr @delim_lens, align 8, !dbg !1388, !tbaa !840
  %74 = getelementptr inbounds i64, ptr %73, i64 %94
  %75 = load i64, ptr %74, align 8, !dbg !1388, !tbaa !1136
  br label %84, !dbg !1387

76:                                               ; preds = %66
  %77 = load i32, ptr %37, align 4, !dbg !1389, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %77, metadata !1392, metadata !DIExpression()), !dbg !1394
  %78 = load ptr, ptr @stdout, align 8, !dbg !1395, !tbaa !840
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #37, !dbg !1395
  %80 = load ptr, ptr @stdout, align 8, !dbg !1396, !tbaa !840
  %81 = tail call i32 @fpurge(ptr noundef %80) #37, !dbg !1397
  %82 = load ptr, ptr @stdout, align 8, !dbg !1398, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %82) #37, !dbg !1398
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1399
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #37, !dbg !1399
  unreachable, !dbg !1399

84:                                               ; preds = %72, %61
  %85 = phi i64 [ %75, %72 ], [ 0, %61 ], !dbg !1388
  %86 = add i64 %85, %95, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %86, metadata !1310, metadata !DIExpression()), !dbg !1318
  %87 = add nsw i64 %94, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %87, metadata !1309, metadata !DIExpression()), !dbg !1318
  %88 = load i64, ptr @num_delims, align 8, !dbg !1403, !tbaa !1136
  %89 = icmp eq i64 %87, %88, !dbg !1404
  %90 = select i1 %89, i64 0, i64 %87, !dbg !1405
  %91 = select i1 %89, i64 0, i64 %86, !dbg !1405
  br label %92, !dbg !1405, !llvm.loop !1406

92:                                               ; preds = %84, %36
  %93 = phi i32 [ %57, %84 ], [ %38, %36 ]
  %94 = phi i64 [ %90, %84 ], [ 0, %36 ]
  %95 = phi i64 [ %91, %84 ], [ 0, %36 ]
  br label %44, !dbg !1352

96:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %45, metadata !1408, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  call void @llvm.dbg.value(metadata i32 %45, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1420
  %97 = load ptr, ptr @stdout, align 8, !dbg !1423, !tbaa !840
  %98 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 5, !dbg !1423
  %99 = load ptr, ptr %98, align 8, !dbg !1423, !tbaa !1424
  %100 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 6, !dbg !1423
  %101 = load ptr, ptr %100, align 8, !dbg !1423, !tbaa !1425
  %102 = icmp ult ptr %99, %101, !dbg !1423
  br i1 %102, label %103, label %106, !dbg !1423, !prof !1347

103:                                              ; preds = %96
  %104 = trunc i32 %45 to i8, !dbg !1426
  call void @llvm.dbg.value(metadata i8 %104, metadata !1408, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %104, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1420
  %105 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1423
  store ptr %105, ptr %98, align 8, !dbg !1423, !tbaa !1424
  store i8 %104, ptr %99, align 1, !dbg !1423, !tbaa !919
  br label %110, !dbg !1427

106:                                              ; preds = %96
  %107 = and i32 %45, 255, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %45, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1420
  %108 = tail call i32 @__overflow(ptr noundef nonnull %97, i32 noundef %107) #37, !dbg !1423
  %109 = icmp slt i32 %108, 0, !dbg !1429
  br i1 %109, label %111, label %110, !dbg !1427

110:                                              ; preds = %106, %103
  br label %44, !dbg !1318, !llvm.loop !1406

111:                                              ; preds = %106
  %112 = load i32, ptr %37, align 4, !dbg !1430, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %112, metadata !1392, metadata !DIExpression()), !dbg !1432
  %113 = load ptr, ptr @stdout, align 8, !dbg !1433, !tbaa !840
  %114 = tail call i32 @fflush_unlocked(ptr noundef %113) #37, !dbg !1433
  %115 = load ptr, ptr @stdout, align 8, !dbg !1434, !tbaa !840
  %116 = tail call i32 @fpurge(ptr noundef %115) #37, !dbg !1435
  %117 = load ptr, ptr @stdout, align 8, !dbg !1436, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %117) #37, !dbg !1436
  %118 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1437
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %112, ptr noundef %118) #37, !dbg !1437
  unreachable, !dbg !1437

119:                                              ; preds = %53
  %120 = load i32, ptr %37, align 4, !dbg !1438, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %120, metadata !1304, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %45, metadata !1408, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %45, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1441
  %121 = load ptr, ptr @stdout, align 8, !dbg !1443, !tbaa !840
  %122 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 5, !dbg !1443
  %123 = load ptr, ptr %122, align 8, !dbg !1443, !tbaa !1424
  %124 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 6, !dbg !1443
  %125 = load ptr, ptr %124, align 8, !dbg !1443, !tbaa !1425
  %126 = icmp ult ptr %123, %125, !dbg !1443
  br i1 %126, label %127, label %130, !dbg !1443, !prof !1347

127:                                              ; preds = %119
  %128 = trunc i32 %45 to i8, !dbg !1444
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 %128, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1441
  %129 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !1443
  store ptr %129, ptr %122, align 8, !dbg !1443, !tbaa !1424
  store i8 %128, ptr %123, align 1, !dbg !1443, !tbaa !919
  br label %142, !dbg !1445

130:                                              ; preds = %119
  %131 = and i32 %45, 255, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %45, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1441
  %132 = tail call i32 @__overflow(ptr noundef nonnull %121, i32 noundef %131) #37, !dbg !1443
  %133 = icmp slt i32 %132, 0, !dbg !1447
  br i1 %133, label %134, label %142, !dbg !1445

134:                                              ; preds = %130
  %135 = load i32, ptr %37, align 4, !dbg !1448, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %135, metadata !1392, metadata !DIExpression()), !dbg !1450
  %136 = load ptr, ptr @stdout, align 8, !dbg !1451, !tbaa !840
  %137 = tail call i32 @fflush_unlocked(ptr noundef %136) #37, !dbg !1451
  %138 = load ptr, ptr @stdout, align 8, !dbg !1452, !tbaa !840
  %139 = tail call i32 @fpurge(ptr noundef %138) #37, !dbg !1453
  %140 = load ptr, ptr @stdout, align 8, !dbg !1454, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %140) #37, !dbg !1454
  %141 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1455
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %141) #37, !dbg !1455
  unreachable, !dbg !1455

142:                                              ; preds = %130, %127
  call void @llvm.dbg.value(metadata i32 %120, metadata !1304, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %45, metadata !1302, metadata !DIExpression()), !dbg !1311
  %143 = load i1, ptr @line_delim, align 1, !dbg !1354
  %144 = select i1 %143, i8 0, i8 10, !dbg !1354
  %145 = zext i8 %144 to i32, !dbg !1354
  %146 = icmp eq i32 %45, %145, !dbg !1456
  br i1 %146, label %171, label %147, !dbg !1356

147:                                              ; preds = %39, %142
  %148 = phi ptr [ %34, %39 ], [ %37, %142 ]
  %149 = phi i32 [ %43, %39 ], [ %145, %142 ]
  %150 = phi i8 [ %42, %39 ], [ %144, %142 ]
  %151 = phi i32 [ %40, %39 ], [ %120, %142 ]
  call void @llvm.dbg.value(metadata i8 %144, metadata !1408, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8 %144, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1459
  %152 = load ptr, ptr @stdout, align 8, !dbg !1461, !tbaa !840
  %153 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 5, !dbg !1461
  %154 = load ptr, ptr %153, align 8, !dbg !1461, !tbaa !1424
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 6, !dbg !1461
  %156 = load ptr, ptr %155, align 8, !dbg !1461, !tbaa !1425
  %157 = icmp ult ptr %154, %156, !dbg !1461
  br i1 %157, label %158, label %160, !dbg !1461, !prof !1347

158:                                              ; preds = %147
  %159 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !1461
  store ptr %159, ptr %153, align 8, !dbg !1461, !tbaa !1424
  store i8 %150, ptr %154, align 1, !dbg !1461, !tbaa !919
  br label %171, !dbg !1462

160:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i8 %144, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1459
  %161 = tail call i32 @__overflow(ptr noundef nonnull %152, i32 noundef %149) #37, !dbg !1461
  %162 = icmp slt i32 %161, 0, !dbg !1463
  br i1 %162, label %163, label %171, !dbg !1462

163:                                              ; preds = %160
  %164 = load i32, ptr %148, align 4, !dbg !1464, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %164, metadata !1392, metadata !DIExpression()), !dbg !1466
  %165 = load ptr, ptr @stdout, align 8, !dbg !1467, !tbaa !840
  %166 = tail call i32 @fflush_unlocked(ptr noundef %165) #37, !dbg !1467
  %167 = load ptr, ptr @stdout, align 8, !dbg !1468, !tbaa !840
  %168 = tail call i32 @fpurge(ptr noundef %167) #37, !dbg !1469
  %169 = load ptr, ptr @stdout, align 8, !dbg !1470, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %169) #37, !dbg !1470
  %170 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1471
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %164, ptr noundef %170) #37, !dbg !1471
  unreachable, !dbg !1471

171:                                              ; preds = %160, %158, %142
  %172 = phi ptr [ %37, %142 ], [ %148, %158 ], [ %148, %160 ]
  %173 = phi i32 [ %120, %142 ], [ %151, %158 ], [ %151, %160 ]
  call void @llvm.dbg.value(metadata ptr %21, metadata !1472, metadata !DIExpression()), !dbg !1475
  %174 = load i32, ptr %21, align 8, !dbg !1478, !tbaa !1479
  %175 = and i32 %174, 32, !dbg !1480
  %176 = icmp eq i32 %175, 0, !dbg !1480
  %177 = select i1 %176, i32 0, i32 %173, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %177, metadata !1304, metadata !DIExpression()), !dbg !1318
  br i1 %10, label %178, label %179, !dbg !1482

178:                                              ; preds = %171
  tail call void @clearerr_unlocked(ptr noundef nonnull %21) #37, !dbg !1483
  br label %186, !dbg !1483

179:                                              ; preds = %171
  %180 = tail call i32 @rpl_fclose(ptr noundef nonnull %21) #37, !dbg !1485
  %181 = icmp eq i32 %180, 0, !dbg !1487
  %182 = icmp ne i32 %177, 0
  %183 = select i1 %181, i1 true, i1 %182, !dbg !1488
  br i1 %183, label %186, label %184, !dbg !1488

184:                                              ; preds = %179
  %185 = load i32, ptr %172, align 4, !dbg !1489, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %185, metadata !1304, metadata !DIExpression()), !dbg !1318
  br label %186, !dbg !1490

186:                                              ; preds = %179, %184, %178
  %187 = phi i32 [ %177, %178 ], [ %177, %179 ], [ %185, %184 ], !dbg !1318
  call void @llvm.dbg.value(metadata i32 %187, metadata !1304, metadata !DIExpression()), !dbg !1318
  %188 = icmp eq i32 %187, 0, !dbg !1491
  br i1 %188, label %193, label %189, !dbg !1493

189:                                              ; preds = %186, %16
  %190 = phi i32 [ %18, %16 ], [ %187, %186 ]
  %191 = load ptr, ptr %6, align 8, !dbg !1318, !tbaa !840
  %192 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %191) #37, !dbg !1318
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %190, ptr noundef nonnull @.str.63, ptr noundef %192) #37, !dbg !1318
  br label %193, !dbg !1494

193:                                              ; preds = %189, %186
  %194 = phi i8 [ %7, %186 ], [ 0, %189 ], !dbg !1318
  call void @llvm.dbg.value(metadata i8 %194, metadata !1300, metadata !DIExpression()), !dbg !1311
  %195 = add i64 %5, -1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %195, metadata !1298, metadata !DIExpression()), !dbg !1311
  %196 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %196, metadata !1299, metadata !DIExpression()), !dbg !1311
  %197 = icmp eq i64 %195, 0, !dbg !1312
  br i1 %197, label %198, label %4, !dbg !1312, !llvm.loop !1496

198:                                              ; preds = %193, %2
  %199 = phi i8 [ 1, %2 ], [ %194, %193 ], !dbg !1311
  %200 = and i8 %199, 1, !dbg !1498
  %201 = icmp ne i8 %200, 0, !dbg !1498
  ret i1 %201, !dbg !1499
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_parallel(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1500 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1502, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %1, metadata !1503, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 1, metadata !1504, metadata !DIExpression()), !dbg !1550
  %3 = add i64 %0, -1, !dbg !1551
  %4 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1552
  %5 = mul i64 %4, %3, !dbg !1553
  %6 = add i64 %5, 1, !dbg !1554
  %7 = tail call noalias nonnull ptr @xmalloc(i64 noundef %6) #43, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %7, metadata !1505, metadata !DIExpression()), !dbg !1550
  %8 = add i64 %0, 1, !dbg !1556
  %9 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %8, i64 noundef 8) #42, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %9, metadata !1506, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 0, metadata !1509, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1508, metadata !DIExpression()), !dbg !1550
  %10 = icmp eq i64 %0, 0, !dbg !1558
  br i1 %10, label %333, label %11, !dbg !1561

11:                                               ; preds = %2, %35
  %12 = phi i64 [ %37, %35 ], [ 0, %2 ]
  %13 = phi i8 [ %36, %35 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %13, metadata !1509, metadata !DIExpression()), !dbg !1550
  %14 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1562
  %15 = load ptr, ptr %14, align 8, !dbg !1562, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %15, metadata !921, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !927, metadata !DIExpression()), !dbg !1565
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.18) #38, !dbg !1567
  %17 = icmp eq i32 %16, 0, !dbg !1568
  br i1 %17, label %18, label %21, !dbg !1569

18:                                               ; preds = %11
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1570
  %19 = load ptr, ptr @stdin, align 8, !dbg !1572, !tbaa !840
  %20 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1573
  store ptr %19, ptr %20, align 8, !dbg !1574, !tbaa !840
  br label %35, !dbg !1575

21:                                               ; preds = %11
  %22 = tail call noalias ptr @rpl_fopen(ptr noundef %15, ptr noundef nonnull @.str.62) #37, !dbg !1576
  %23 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1578
  store ptr %22, ptr %23, align 8, !dbg !1579, !tbaa !840
  %24 = icmp eq ptr %22, null, !dbg !1580
  br i1 %24, label %25, label %31, !dbg !1582

25:                                               ; preds = %21
  %26 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1562
  %27 = tail call ptr @__errno_location() #40, !dbg !1583
  %28 = load i32, ptr %27, align 4, !dbg !1583, !tbaa !910
  %29 = load ptr, ptr %26, align 8, !dbg !1583, !tbaa !840
  %30 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %29) #37, !dbg !1583
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %28, ptr noundef nonnull @.str.63, ptr noundef %30) #37, !dbg !1583
  unreachable, !dbg !1583

31:                                               ; preds = %21
  %32 = tail call i32 @fileno_unlocked(ptr noundef nonnull %22) #37, !dbg !1584
  %33 = icmp eq i32 %32, 0, !dbg !1586
  %34 = select i1 %33, i8 1, i8 %13, !dbg !1587
  call void @llvm.dbg.value(metadata i8 %34, metadata !1509, metadata !DIExpression()), !dbg !1550
  tail call void @fadvise(ptr noundef nonnull %22, i32 noundef 2) #37, !dbg !1588
  br label %35

35:                                               ; preds = %18, %31
  %36 = phi i8 [ %13, %18 ], [ %34, %31 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %36, metadata !1509, metadata !DIExpression()), !dbg !1550
  %37 = add nuw i64 %12, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %37, metadata !1508, metadata !DIExpression()), !dbg !1550
  %38 = icmp eq i64 %37, %0, !dbg !1558
  br i1 %38, label %39, label %11, !dbg !1561, !llvm.loop !1590

39:                                               ; preds = %35
  %40 = and i8 %36, 1, !dbg !1592
  %41 = icmp eq i8 %40, 0, !dbg !1592
  br i1 %41, label %42, label %43, !dbg !1594

42:                                               ; preds = %43, %39
  br label %51, !dbg !1595

43:                                               ; preds = %39
  %44 = load i1, ptr @have_read_stdin, align 1, !dbg !1596
  br i1 %44, label %45, label %42, !dbg !1597

45:                                               ; preds = %43
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #37, !dbg !1598
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !1598
  unreachable, !dbg !1598

47:                                               ; preds = %322, %173, %200, %202, %51
  %48 = phi i64 [ %53, %51 ], [ %169, %202 ], [ %169, %200 ], [ %169, %173 ], [ %328, %322 ], !dbg !1599
  %49 = phi i8 [ %52, %51 ], [ %170, %202 ], [ %170, %200 ], [ %170, %173 ], [ %329, %322 ], !dbg !1600
  call void @llvm.dbg.value(metadata i8 %49, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %48, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1601
  %50 = icmp eq i64 %48, 0, !dbg !1595
  br i1 %50, label %333, label %51, !dbg !1595, !llvm.loop !1602

51:                                               ; preds = %42, %47
  %52 = phi i8 [ %49, %47 ], [ 1, %42 ]
  %53 = phi i64 [ %48, %47 ], [ %0, %42 ]
  call void @llvm.dbg.value(metadata i8 %52, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %53, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 0, metadata !1510, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 0, metadata !1512, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 0, metadata !1513, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 0, metadata !1515, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 0, metadata !1514, metadata !DIExpression()), !dbg !1604
  br i1 %10, label %47, label %54, !dbg !1606

54:                                               ; preds = %51, %322
  %55 = phi i8 [ %329, %322 ], [ %52, %51 ]
  %56 = phi i64 [ %328, %322 ], [ %53, %51 ]
  %57 = phi i8 [ %327, %322 ], [ 0, %51 ]
  %58 = phi i64 [ %326, %322 ], [ 0, %51 ]
  %59 = phi i64 [ %325, %322 ], [ 0, %51 ]
  %60 = phi i64 [ %323, %322 ], [ 0, %51 ]
  %61 = phi i64 [ %324, %322 ], [ 0, %51 ]
  call void @llvm.dbg.value(metadata i8 %55, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %56, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %57, metadata !1510, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %58, metadata !1512, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %59, metadata !1513, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %60, metadata !1515, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %61, metadata !1514, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 0, metadata !1521, metadata !DIExpression()), !dbg !1601
  %62 = getelementptr inbounds ptr, ptr %9, i64 %60, !dbg !1607
  %63 = load ptr, ptr %62, align 8, !dbg !1607, !tbaa !840
  %64 = icmp eq ptr %63, null, !dbg !1607
  br i1 %64, label %167, label %65, !dbg !1608

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr %63, metadata !1335, metadata !DIExpression()), !dbg !1609
  %66 = getelementptr inbounds %struct._IO_FILE, ptr %63, i64 0, i32 1, !dbg !1611
  %67 = load ptr, ptr %66, align 8, !dbg !1611, !tbaa !1344
  %68 = getelementptr inbounds %struct._IO_FILE, ptr %63, i64 0, i32 2, !dbg !1611
  %69 = load ptr, ptr %68, align 8, !dbg !1611, !tbaa !1346
  %70 = icmp ult ptr %67, %69, !dbg !1611
  br i1 %70, label %73, label %71, !dbg !1611, !prof !1347

71:                                               ; preds = %65
  %72 = tail call i32 @__uflow(ptr noundef nonnull %63) #37, !dbg !1611
  br label %77, !dbg !1611

73:                                               ; preds = %65
  %74 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1611
  store ptr %74, ptr %66, align 8, !dbg !1611, !tbaa !1344
  %75 = load i8, ptr %67, align 1, !dbg !1611, !tbaa !919
  %76 = zext i8 %75 to i32, !dbg !1611
  br label %77, !dbg !1611

77:                                               ; preds = %71, %73
  %78 = phi i32 [ %72, %71 ], [ %76, %73 ], !dbg !1611
  call void @llvm.dbg.value(metadata i32 %78, metadata !1517, metadata !DIExpression()), !dbg !1601
  %79 = tail call ptr @__errno_location() #40, !dbg !1612
  %80 = load i32, ptr %79, align 4, !dbg !1612, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %80, metadata !1520, metadata !DIExpression()), !dbg !1601
  %81 = icmp ne i32 %78, -1, !dbg !1613
  %82 = icmp ne i64 %61, 0
  %83 = select i1 %81, i1 %82, i1 false, !dbg !1614
  br i1 %83, label %84, label %96, !dbg !1614

84:                                               ; preds = %77
  %85 = load ptr, ptr @stdout, align 8, !dbg !1615, !tbaa !840
  %86 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %61, ptr noundef %85), !dbg !1615
  %87 = icmp eq i64 %86, %61, !dbg !1616
  br i1 %87, label %96, label %88, !dbg !1617

88:                                               ; preds = %84
  %89 = load i32, ptr %79, align 4, !dbg !1618, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %89, metadata !1392, metadata !DIExpression()), !dbg !1620
  %90 = load ptr, ptr @stdout, align 8, !dbg !1621, !tbaa !840
  %91 = tail call i32 @fflush_unlocked(ptr noundef %90) #37, !dbg !1621
  %92 = load ptr, ptr @stdout, align 8, !dbg !1622, !tbaa !840
  %93 = tail call i32 @fpurge(ptr noundef %92) #37, !dbg !1623
  %94 = load ptr, ptr @stdout, align 8, !dbg !1624, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %94) #37, !dbg !1624
  %95 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1625
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %89, ptr noundef %95) #37, !dbg !1625
  unreachable, !dbg !1625

96:                                               ; preds = %84, %77
  %97 = phi i64 [ %61, %77 ], [ 0, %84 ], !dbg !1604
  call void @llvm.dbg.value(metadata i64 %97, metadata !1514, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 poison, metadata !1521, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %80, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %78, metadata !1517, metadata !DIExpression()), !dbg !1601
  %98 = icmp eq i32 %78, -1, !dbg !1626
  br i1 %98, label %141, label %99, !dbg !1627

99:                                               ; preds = %96, %136
  %100 = phi i32 [ %137, %136 ], [ %78, %96 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %100, metadata !1517, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 1, metadata !1521, metadata !DIExpression()), !dbg !1601
  %101 = load i1, ptr @line_delim, align 1, !dbg !1628
  %102 = select i1 %101, i32 0, i32 10, !dbg !1628
  %103 = icmp eq i32 %100, %102, !dbg !1631
  br i1 %103, label %233, label %104, !dbg !1632

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %100, metadata !1408, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %100, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1635
  %105 = load ptr, ptr @stdout, align 8, !dbg !1637, !tbaa !840
  %106 = getelementptr inbounds %struct._IO_FILE, ptr %105, i64 0, i32 5, !dbg !1637
  %107 = load ptr, ptr %106, align 8, !dbg !1637, !tbaa !1424
  %108 = getelementptr inbounds %struct._IO_FILE, ptr %105, i64 0, i32 6, !dbg !1637
  %109 = load ptr, ptr %108, align 8, !dbg !1637, !tbaa !1425
  %110 = icmp ult ptr %107, %109, !dbg !1637
  br i1 %110, label %111, label %114, !dbg !1637, !prof !1347

111:                                              ; preds = %104
  %112 = trunc i32 %100 to i8, !dbg !1638
  call void @llvm.dbg.value(metadata i8 %112, metadata !1408, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 %112, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1635
  %113 = getelementptr inbounds i8, ptr %107, i64 1, !dbg !1637
  store ptr %113, ptr %106, align 8, !dbg !1637, !tbaa !1424
  store i8 %112, ptr %107, align 1, !dbg !1637, !tbaa !919
  br label %126, !dbg !1639

114:                                              ; preds = %104
  %115 = and i32 %100, 255, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %100, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1635
  %116 = tail call i32 @__overflow(ptr noundef nonnull %105, i32 noundef %115) #37, !dbg !1637
  %117 = icmp slt i32 %116, 0, !dbg !1641
  br i1 %117, label %118, label %126, !dbg !1639

118:                                              ; preds = %114
  %119 = load i32, ptr %79, align 4, !dbg !1642, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %119, metadata !1392, metadata !DIExpression()), !dbg !1644
  %120 = load ptr, ptr @stdout, align 8, !dbg !1645, !tbaa !840
  %121 = tail call i32 @fflush_unlocked(ptr noundef %120) #37, !dbg !1645
  %122 = load ptr, ptr @stdout, align 8, !dbg !1646, !tbaa !840
  %123 = tail call i32 @fpurge(ptr noundef %122) #37, !dbg !1647
  %124 = load ptr, ptr @stdout, align 8, !dbg !1648, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %124) #37, !dbg !1648
  %125 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1649
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %119, ptr noundef %125) #37, !dbg !1649
  unreachable, !dbg !1649

126:                                              ; preds = %111, %114
  call void @llvm.dbg.value(metadata ptr %63, metadata !1335, metadata !DIExpression()), !dbg !1650
  %127 = load ptr, ptr %66, align 8, !dbg !1652, !tbaa !1344
  %128 = load ptr, ptr %68, align 8, !dbg !1652, !tbaa !1346
  %129 = icmp ult ptr %127, %128, !dbg !1652
  br i1 %129, label %132, label %130, !dbg !1652, !prof !1347

130:                                              ; preds = %126
  %131 = tail call i32 @__uflow(ptr noundef nonnull %63) #37, !dbg !1652
  br label %136, !dbg !1652

132:                                              ; preds = %126
  %133 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !1652
  store ptr %133, ptr %66, align 8, !dbg !1652, !tbaa !1344
  %134 = load i8, ptr %127, align 1, !dbg !1652, !tbaa !919
  %135 = zext i8 %134 to i32, !dbg !1652
  br label %136, !dbg !1652

136:                                              ; preds = %130, %132
  %137 = phi i32 [ %131, %130 ], [ %135, %132 ], !dbg !1652
  call void @llvm.dbg.value(metadata i32 %137, metadata !1517, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 poison, metadata !1521, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  %138 = icmp eq i32 %137, -1, !dbg !1626
  br i1 %138, label %139, label %99, !dbg !1627, !llvm.loop !1653

139:                                              ; preds = %136
  %140 = load i32, ptr %79, align 4, !dbg !1655, !tbaa !910
  call void @llvm.dbg.value(metadata i8 poison, metadata !1521, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %140, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 -1, metadata !1517, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %97, metadata !1514, metadata !DIExpression()), !dbg !1604
  br i1 %98, label %141, label %233, !dbg !1656

141:                                              ; preds = %96, %139
  %142 = phi i32 [ %140, %139 ], [ %80, %96 ]
  call void @llvm.dbg.value(metadata ptr %63, metadata !1472, metadata !DIExpression()), !dbg !1657
  %143 = load i32, ptr %63, align 8, !dbg !1662, !tbaa !1479
  %144 = and i32 %143, 32, !dbg !1663
  %145 = icmp eq i32 %144, 0, !dbg !1663
  %146 = select i1 %145, i32 0, i32 %142, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %146, metadata !1520, metadata !DIExpression()), !dbg !1601
  %147 = load ptr, ptr @stdin, align 8, !dbg !1665, !tbaa !840
  %148 = icmp eq ptr %63, %147, !dbg !1667
  br i1 %148, label %149, label %150, !dbg !1668

149:                                              ; preds = %141
  tail call void @clearerr_unlocked(ptr noundef nonnull %63) #37, !dbg !1669
  br label %157, !dbg !1669

150:                                              ; preds = %141
  %151 = tail call i32 @rpl_fclose(ptr noundef nonnull %63) #37, !dbg !1670
  %152 = icmp ne i32 %151, -1, !dbg !1672
  %153 = icmp ne i32 %146, 0
  %154 = select i1 %152, i1 true, i1 %153, !dbg !1673
  br i1 %154, label %157, label %155, !dbg !1673

155:                                              ; preds = %150
  %156 = load i32, ptr %79, align 4, !dbg !1674, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %156, metadata !1520, metadata !DIExpression()), !dbg !1601
  br label %157, !dbg !1675

157:                                              ; preds = %150, %155, %149
  %158 = phi i32 [ %146, %149 ], [ %146, %150 ], [ %156, %155 ], !dbg !1601
  call void @llvm.dbg.value(metadata i32 %158, metadata !1520, metadata !DIExpression()), !dbg !1601
  %159 = icmp eq i32 %158, 0, !dbg !1676
  br i1 %159, label %164, label %160, !dbg !1678

160:                                              ; preds = %157
  %161 = getelementptr inbounds ptr, ptr %1, i64 %60, !dbg !1679
  %162 = load ptr, ptr %161, align 8, !dbg !1679, !tbaa !840
  %163 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %162) #37, !dbg !1679
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %158, ptr noundef nonnull @.str.63, ptr noundef %163) #37, !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1504, metadata !DIExpression()), !dbg !1550
  br label %164, !dbg !1681

164:                                              ; preds = %160, %157
  %165 = phi i8 [ 0, %160 ], [ %55, %157 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %165, metadata !1504, metadata !DIExpression()), !dbg !1550
  store ptr null, ptr %62, align 8, !dbg !1682, !tbaa !840
  %166 = add i64 %56, -1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %166, metadata !1508, metadata !DIExpression()), !dbg !1550
  br label %167, !dbg !1684

167:                                              ; preds = %54, %164
  %168 = phi i64 [ %97, %164 ], [ %61, %54 ]
  %169 = phi i64 [ %166, %164 ], [ %56, %54 ], !dbg !1550
  %170 = phi i8 [ %165, %164 ], [ %55, %54 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %170, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %169, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  %171 = add nuw i64 %60, 1, !dbg !1685
  %172 = icmp eq i64 %171, %0, !dbg !1686
  br i1 %172, label %173, label %215, !dbg !1687

173:                                              ; preds = %167
  %174 = and i8 %57, 1, !dbg !1688
  %175 = icmp eq i8 %174, 0, !dbg !1688
  br i1 %175, label %47, label %176, !dbg !1689

176:                                              ; preds = %173
  %177 = icmp eq i64 %168, 0, !dbg !1690
  br i1 %177, label %191, label %178, !dbg !1691

178:                                              ; preds = %176
  %179 = load ptr, ptr @stdout, align 8, !dbg !1692, !tbaa !840
  %180 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %168, ptr noundef %179), !dbg !1692
  %181 = icmp eq i64 %180, %168, !dbg !1693
  br i1 %181, label %191, label %182, !dbg !1694

182:                                              ; preds = %178
  %183 = tail call ptr @__errno_location() #40, !dbg !1695
  %184 = load i32, ptr %183, align 4, !dbg !1695, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %184, metadata !1392, metadata !DIExpression()), !dbg !1697
  %185 = load ptr, ptr @stdout, align 8, !dbg !1698, !tbaa !840
  %186 = tail call i32 @fflush_unlocked(ptr noundef %185) #37, !dbg !1698
  %187 = load ptr, ptr @stdout, align 8, !dbg !1699, !tbaa !840
  %188 = tail call i32 @fpurge(ptr noundef %187) #37, !dbg !1700
  %189 = load ptr, ptr @stdout, align 8, !dbg !1701, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %189) #37, !dbg !1701
  %190 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1702
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %184, ptr noundef %190) #37, !dbg !1702
  unreachable, !dbg !1702

191:                                              ; preds = %178, %176
  call void @llvm.dbg.value(metadata i64 0, metadata !1514, metadata !DIExpression()), !dbg !1604
  %192 = load i1, ptr @line_delim, align 1, !dbg !1703
  %193 = select i1 %192, i8 0, i8 10, !dbg !1703
  call void @llvm.dbg.value(metadata i8 %193, metadata !1408, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %193, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1706
  %194 = load ptr, ptr @stdout, align 8, !dbg !1708, !tbaa !840
  %195 = getelementptr inbounds %struct._IO_FILE, ptr %194, i64 0, i32 5, !dbg !1708
  %196 = load ptr, ptr %195, align 8, !dbg !1708, !tbaa !1424
  %197 = getelementptr inbounds %struct._IO_FILE, ptr %194, i64 0, i32 6, !dbg !1708
  %198 = load ptr, ptr %197, align 8, !dbg !1708, !tbaa !1425
  %199 = icmp ult ptr %196, %198, !dbg !1708
  br i1 %199, label %200, label %202, !dbg !1708, !prof !1347

200:                                              ; preds = %191
  %201 = getelementptr inbounds i8, ptr %196, i64 1, !dbg !1708
  store ptr %201, ptr %195, align 8, !dbg !1708, !tbaa !1424
  store i8 %193, ptr %196, align 1, !dbg !1708, !tbaa !919
  br label %47, !dbg !1709

202:                                              ; preds = %191
  %203 = zext i8 %193 to i32, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %193, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1706
  %204 = tail call i32 @__overflow(ptr noundef nonnull %194, i32 noundef %203) #37, !dbg !1708
  %205 = icmp slt i32 %204, 0, !dbg !1711
  br i1 %205, label %206, label %47, !dbg !1709

206:                                              ; preds = %202
  %207 = tail call ptr @__errno_location() #40, !dbg !1712
  %208 = load i32, ptr %207, align 4, !dbg !1712, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %208, metadata !1392, metadata !DIExpression()), !dbg !1714
  %209 = load ptr, ptr @stdout, align 8, !dbg !1715, !tbaa !840
  %210 = tail call i32 @fflush_unlocked(ptr noundef %209) #37, !dbg !1715
  %211 = load ptr, ptr @stdout, align 8, !dbg !1716, !tbaa !840
  %212 = tail call i32 @fpurge(ptr noundef %211) #37, !dbg !1717
  %213 = load ptr, ptr @stdout, align 8, !dbg !1718, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %213) #37, !dbg !1718
  %214 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1719
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %208, ptr noundef %214) #37, !dbg !1719
  unreachable, !dbg !1719

215:                                              ; preds = %167
  %216 = load ptr, ptr @delim_lens, align 8, !dbg !1720, !tbaa !840
  %217 = getelementptr inbounds i64, ptr %216, i64 %58, !dbg !1720
  %218 = load i64, ptr %217, align 8, !dbg !1720, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 %218, metadata !1544, metadata !DIExpression()), !dbg !1721
  %219 = icmp eq i64 %218, 0, !dbg !1722
  br i1 %219, label %225, label %220, !dbg !1724

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, ptr %7, i64 %168, !dbg !1725
  %222 = load ptr, ptr @delims, align 8, !dbg !1727, !tbaa !840
  %223 = getelementptr inbounds i8, ptr %222, i64 %59, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %221, metadata !1729, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %223, metadata !1732, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %218, metadata !1733, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %221, ptr noundef nonnull align 1 %223, i64 noundef %218, i1 noundef false) #37, !dbg !1736
  %224 = add i64 %218, %168, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %224, metadata !1514, metadata !DIExpression()), !dbg !1604
  br label %225, !dbg !1738

225:                                              ; preds = %220, %215
  %226 = phi i64 [ %224, %220 ], [ %168, %215 ], !dbg !1601
  call void @llvm.dbg.value(metadata i64 %226, metadata !1514, metadata !DIExpression()), !dbg !1604
  %227 = add i64 %218, %59, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %227, metadata !1513, metadata !DIExpression()), !dbg !1604
  %228 = add nsw i64 %58, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %228, metadata !1512, metadata !DIExpression()), !dbg !1604
  %229 = load i64, ptr @num_delims, align 8, !dbg !1742, !tbaa !1136
  %230 = icmp eq i64 %228, %229, !dbg !1743
  %231 = select i1 %230, i64 0, i64 %227, !dbg !1744
  %232 = select i1 %230, i64 0, i64 %228, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %232, metadata !1512, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %231, metadata !1513, metadata !DIExpression()), !dbg !1604
  br label %322, !dbg !1745

233:                                              ; preds = %99, %139
  %234 = phi i32 [ -1, %139 ], [ %100, %99 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1510, metadata !DIExpression()), !dbg !1604
  %235 = add nuw i64 %60, 1, !dbg !1746
  %236 = icmp eq i64 %235, %0, !dbg !1747
  br i1 %236, label %296, label %237, !dbg !1748

237:                                              ; preds = %233
  %238 = load i1, ptr @line_delim, align 1, !dbg !1749
  %239 = select i1 %238, i32 0, i32 10, !dbg !1749
  %240 = icmp ne i32 %234, %239, !dbg !1752
  %241 = icmp ne i32 %234, -1
  %242 = and i1 %241, %240, !dbg !1753
  br i1 %242, label %243, label %265, !dbg !1753

243:                                              ; preds = %237
  call void @llvm.dbg.value(metadata i32 %234, metadata !1408, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1754
  call void @llvm.dbg.value(metadata i32 %234, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1756
  %244 = load ptr, ptr @stdout, align 8, !dbg !1758, !tbaa !840
  %245 = getelementptr inbounds %struct._IO_FILE, ptr %244, i64 0, i32 5, !dbg !1758
  %246 = load ptr, ptr %245, align 8, !dbg !1758, !tbaa !1424
  %247 = getelementptr inbounds %struct._IO_FILE, ptr %244, i64 0, i32 6, !dbg !1758
  %248 = load ptr, ptr %247, align 8, !dbg !1758, !tbaa !1425
  %249 = icmp ult ptr %246, %248, !dbg !1758
  br i1 %249, label %250, label %253, !dbg !1758, !prof !1347

250:                                              ; preds = %243
  %251 = trunc i32 %234 to i8, !dbg !1759
  call void @llvm.dbg.value(metadata i8 %251, metadata !1408, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %251, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1756
  %252 = getelementptr inbounds i8, ptr %246, i64 1, !dbg !1758
  store ptr %252, ptr %245, align 8, !dbg !1758, !tbaa !1424
  store i8 %251, ptr %246, align 1, !dbg !1758, !tbaa !919
  br label %265, !dbg !1760

253:                                              ; preds = %243
  %254 = and i32 %234, 255, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %234, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1756
  %255 = tail call i32 @__overflow(ptr noundef nonnull %244, i32 noundef %254) #37, !dbg !1758
  %256 = icmp slt i32 %255, 0, !dbg !1762
  br i1 %256, label %257, label %265, !dbg !1760

257:                                              ; preds = %253
  %258 = load i32, ptr %79, align 4, !dbg !1763, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %258, metadata !1392, metadata !DIExpression()), !dbg !1765
  %259 = load ptr, ptr @stdout, align 8, !dbg !1766, !tbaa !840
  %260 = tail call i32 @fflush_unlocked(ptr noundef %259) #37, !dbg !1766
  %261 = load ptr, ptr @stdout, align 8, !dbg !1767, !tbaa !840
  %262 = tail call i32 @fpurge(ptr noundef %261) #37, !dbg !1768
  %263 = load ptr, ptr @stdout, align 8, !dbg !1769, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %263) #37, !dbg !1769
  %264 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1770
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %258, ptr noundef %264) #37, !dbg !1770
  unreachable, !dbg !1770

265:                                              ; preds = %253, %250, %237
  %266 = load ptr, ptr @delim_lens, align 8, !dbg !1771, !tbaa !840
  %267 = getelementptr inbounds i64, ptr %266, i64 %58, !dbg !1771
  %268 = load i64, ptr %267, align 8, !dbg !1771, !tbaa !1136
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1368, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %268, metadata !1373, metadata !DIExpression()), !dbg !1772
  %269 = icmp eq i64 %268, 0, !dbg !1774
  br i1 %269, label %288, label %270, !dbg !1775

270:                                              ; preds = %265
  %271 = load ptr, ptr @delims, align 8, !dbg !1776, !tbaa !840
  call void @llvm.dbg.value(metadata !DIArgList(ptr %271, i64 %59), metadata !1368, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1772
  %272 = getelementptr inbounds i8, ptr %271, i64 %59, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %272, metadata !1368, metadata !DIExpression()), !dbg !1772
  %273 = load ptr, ptr @stdout, align 8, !dbg !1778, !tbaa !840
  %274 = tail call i64 @fwrite_unlocked(ptr noundef %272, i64 noundef 1, i64 noundef %268, ptr noundef %273), !dbg !1778
  %275 = icmp eq i64 %274, %268, !dbg !1779
  br i1 %275, label %276, label %280, !dbg !1780

276:                                              ; preds = %270
  %277 = load ptr, ptr @delim_lens, align 8, !dbg !1781, !tbaa !840
  %278 = getelementptr inbounds i64, ptr %277, i64 %58
  %279 = load i64, ptr %278, align 8, !dbg !1781, !tbaa !1136
  br label %288, !dbg !1780

280:                                              ; preds = %270
  %281 = load i32, ptr %79, align 4, !dbg !1782, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %281, metadata !1392, metadata !DIExpression()), !dbg !1784
  %282 = load ptr, ptr @stdout, align 8, !dbg !1785, !tbaa !840
  %283 = tail call i32 @fflush_unlocked(ptr noundef %282) #37, !dbg !1785
  %284 = load ptr, ptr @stdout, align 8, !dbg !1786, !tbaa !840
  %285 = tail call i32 @fpurge(ptr noundef %284) #37, !dbg !1787
  %286 = load ptr, ptr @stdout, align 8, !dbg !1788, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %286) #37, !dbg !1788
  %287 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1789
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %281, ptr noundef %287) #37, !dbg !1789
  unreachable, !dbg !1789

288:                                              ; preds = %276, %265
  %289 = phi i64 [ %279, %276 ], [ 0, %265 ], !dbg !1781
  %290 = add i64 %289, %59, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %290, metadata !1513, metadata !DIExpression()), !dbg !1604
  %291 = add nsw i64 %58, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %291, metadata !1512, metadata !DIExpression()), !dbg !1604
  %292 = load i64, ptr @num_delims, align 8, !dbg !1793, !tbaa !1136
  %293 = icmp eq i64 %291, %292, !dbg !1794
  %294 = select i1 %293, i64 0, i64 %290, !dbg !1795
  %295 = select i1 %293, i64 0, i64 %291, !dbg !1795
  br label %322, !dbg !1795

296:                                              ; preds = %233
  %297 = icmp eq i32 %234, -1, !dbg !1796
  %298 = load i1, ptr @line_delim, align 1, !dbg !1797
  %299 = select i1 %298, i32 0, i32 10, !dbg !1797
  %300 = select i1 %297, i32 %299, i32 %234, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %300, metadata !1546, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %300, metadata !1408, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %300, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1801
  %301 = load ptr, ptr @stdout, align 8, !dbg !1803, !tbaa !840
  %302 = getelementptr inbounds %struct._IO_FILE, ptr %301, i64 0, i32 5, !dbg !1803
  %303 = load ptr, ptr %302, align 8, !dbg !1803, !tbaa !1424
  %304 = getelementptr inbounds %struct._IO_FILE, ptr %301, i64 0, i32 6, !dbg !1803
  %305 = load ptr, ptr %304, align 8, !dbg !1803, !tbaa !1425
  %306 = icmp ult ptr %303, %305, !dbg !1803
  br i1 %306, label %307, label %310, !dbg !1803, !prof !1347

307:                                              ; preds = %296
  %308 = trunc i32 %300 to i8, !dbg !1804
  call void @llvm.dbg.value(metadata i8 %308, metadata !1546, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %308, metadata !1408, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %308, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1801
  %309 = getelementptr inbounds i8, ptr %303, i64 1, !dbg !1803
  store ptr %309, ptr %302, align 8, !dbg !1803, !tbaa !1424
  store i8 %308, ptr %303, align 1, !dbg !1803, !tbaa !919
  br label %322, !dbg !1805

310:                                              ; preds = %296
  %311 = and i32 %300, 255, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %300, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1801
  %312 = tail call i32 @__overflow(ptr noundef nonnull %301, i32 noundef %311) #37, !dbg !1803
  %313 = icmp slt i32 %312, 0, !dbg !1807
  br i1 %313, label %314, label %322, !dbg !1805

314:                                              ; preds = %310
  %315 = load i32, ptr %79, align 4, !dbg !1808, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %315, metadata !1392, metadata !DIExpression()), !dbg !1810
  %316 = load ptr, ptr @stdout, align 8, !dbg !1811, !tbaa !840
  %317 = tail call i32 @fflush_unlocked(ptr noundef %316) #37, !dbg !1811
  %318 = load ptr, ptr @stdout, align 8, !dbg !1812, !tbaa !840
  %319 = tail call i32 @fpurge(ptr noundef %318) #37, !dbg !1813
  %320 = load ptr, ptr @stdout, align 8, !dbg !1814, !tbaa !840
  tail call void @clearerr_unlocked(ptr noundef %320) #37, !dbg !1814
  %321 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1815
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %315, ptr noundef %321) #37, !dbg !1815
  unreachable, !dbg !1815

322:                                              ; preds = %310, %307, %288, %225
  %323 = phi i64 [ %235, %310 ], [ %235, %307 ], [ %235, %288 ], [ %171, %225 ], !dbg !1816
  %324 = phi i64 [ %97, %310 ], [ %97, %307 ], [ %97, %288 ], [ %226, %225 ], !dbg !1601
  %325 = phi i64 [ %59, %310 ], [ %59, %307 ], [ %294, %288 ], [ %231, %225 ], !dbg !1604
  %326 = phi i64 [ %58, %310 ], [ %58, %307 ], [ %295, %288 ], [ %232, %225 ], !dbg !1604
  %327 = phi i8 [ 1, %310 ], [ 1, %307 ], [ 1, %288 ], [ %57, %225 ], !dbg !1604
  %328 = phi i64 [ %56, %310 ], [ %56, %307 ], [ %56, %288 ], [ %169, %225 ], !dbg !1550
  %329 = phi i8 [ %55, %310 ], [ %55, %307 ], [ %55, %288 ], [ %170, %225 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %329, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %328, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %327, metadata !1510, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %326, metadata !1512, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %325, metadata !1513, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %324, metadata !1514, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %323, metadata !1515, metadata !DIExpression()), !dbg !1605
  %330 = icmp ult i64 %323, %0, !dbg !1817
  %331 = icmp ne i64 %328, 0, !dbg !1818
  %332 = select i1 %330, i1 %331, i1 false, !dbg !1818
  br i1 %332, label %54, label %47, !dbg !1606, !llvm.loop !1819

333:                                              ; preds = %47, %2
  %334 = phi i8 [ 1, %2 ], [ %49, %47 ], !dbg !1600
  tail call void @free(ptr noundef nonnull %9) #37, !dbg !1821
  tail call void @free(ptr noundef nonnull %7) #37, !dbg !1822
  %335 = and i8 %334, 1, !dbg !1823
  %336 = icmp ne i8 %335, 0, !dbg !1823
  ret i1 %336, !dbg !1824
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1825 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1828 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1832 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1835 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1836 i32 @__uflow(ptr noundef) local_unnamed_addr #3

declare !dbg !1837 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1838 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1841 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1846, metadata !DIExpression()), !dbg !1847
  store ptr %0, ptr @file_name, align 8, !dbg !1848, !tbaa !840
  ret void, !dbg !1849
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1850 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1854, metadata !DIExpression()), !dbg !1855
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1856, !tbaa !1857
  ret void, !dbg !1859
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1860 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1865, !tbaa !840
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1866
  %3 = icmp eq i32 %2, 0, !dbg !1867
  br i1 %3, label %22, label %4, !dbg !1868

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1869, !tbaa !1857, !range !1870, !noundef !849
  %6 = icmp eq i8 %5, 0, !dbg !1869
  br i1 %6, label %11, label %7, !dbg !1871

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1872
  %9 = load i32, ptr %8, align 4, !dbg !1872, !tbaa !910
  %10 = icmp eq i32 %9, 32, !dbg !1873
  br i1 %10, label %22, label %11, !dbg !1874

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #37, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %12, metadata !1862, metadata !DIExpression()), !dbg !1876
  %13 = load ptr, ptr @file_name, align 8, !dbg !1877, !tbaa !840
  %14 = icmp eq ptr %13, null, !dbg !1877
  %15 = tail call ptr @__errno_location() #40, !dbg !1879
  %16 = load i32, ptr %15, align 4, !dbg !1879, !tbaa !910
  br i1 %14, label %19, label %17, !dbg !1880

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1881
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #37, !dbg !1881
  br label %20, !dbg !1881

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #37, !dbg !1882
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1883, !tbaa !910
  tail call void @_exit(i32 noundef %21) #39, !dbg !1884
  unreachable, !dbg !1884

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1885, !tbaa !840
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1887
  %25 = icmp eq i32 %24, 0, !dbg !1888
  br i1 %25, label %28, label %26, !dbg !1889

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1890, !tbaa !910
  tail call void @_exit(i32 noundef %27) #39, !dbg !1891
  unreachable, !dbg !1891

28:                                               ; preds = %22
  ret void, !dbg !1892
}

; Function Attrs: noreturn
declare !dbg !1893 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %1, metadata !1900, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %2, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %3, metadata !1902, metadata !DIExpression()), !dbg !1903
  tail call fastcc void @flush_stdout(), !dbg !1904
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1905, !tbaa !840
  %6 = icmp eq ptr %5, null, !dbg !1905
  br i1 %6, label %8, label %7, !dbg !1907

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1908
  br label %12, !dbg !1908

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1909, !tbaa !840
  %10 = tail call ptr @getprogname() #38, !dbg !1909
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %10) #37, !dbg !1909
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1911
  ret void, !dbg !1912
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1913 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1915, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 1, metadata !1917, metadata !DIExpression()), !dbg !1920
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1923
  %2 = icmp slt i32 %1, 0, !dbg !1924
  br i1 %2, label %6, label %3, !dbg !1925

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1926, !tbaa !840
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1926
  br label %6, !dbg !1926

6:                                                ; preds = %3, %0
  ret void, !dbg !1927
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1928 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1930, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i32 %1, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %2, metadata !1932, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %3, metadata !1933, metadata !DIExpression()), !dbg !1934
  %6 = load ptr, ptr @stderr, align 8, !dbg !1935, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %6, metadata !1936, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata ptr %2, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata ptr %3, metadata !1977, metadata !DIExpression()), !dbg !1978
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1980
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1981, !tbaa !910
  %9 = add i32 %8, 1, !dbg !1981
  store i32 %9, ptr @error_message_count, align 4, !dbg !1981, !tbaa !910
  %10 = icmp eq i32 %1, 0, !dbg !1982
  br i1 %10, label %20, label %11, !dbg !1984

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1985, metadata !DIExpression()), !dbg !1993
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1995
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1989, metadata !DIExpression()), !dbg !1996
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %12, metadata !1988, metadata !DIExpression()), !dbg !1993
  %13 = icmp eq ptr %12, null, !dbg !1998
  br i1 %13, label %14, label %16, !dbg !2000

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.34, ptr noundef nonnull @.str.5.35, i32 noundef 5) #37, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %15, metadata !1988, metadata !DIExpression()), !dbg !1993
  br label %16, !dbg !2002

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1993
  call void @llvm.dbg.value(metadata ptr %17, metadata !1988, metadata !DIExpression()), !dbg !1993
  %18 = load ptr, ptr @stderr, align 8, !dbg !2003, !tbaa !840
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.36, ptr noundef %17) #37, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !2004
  br label %20, !dbg !2005

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2006, !tbaa !840
  call void @llvm.dbg.value(metadata i32 10, metadata !2007, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata ptr %21, metadata !2012, metadata !DIExpression()), !dbg !2013
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2015
  %23 = load ptr, ptr %22, align 8, !dbg !2015, !tbaa !1424
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2015
  %25 = load ptr, ptr %24, align 8, !dbg !2015, !tbaa !1425
  %26 = icmp ult ptr %23, %25, !dbg !2015
  br i1 %26, label %29, label %27, !dbg !2015, !prof !1347

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !2015
  br label %31, !dbg !2015

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2015
  store ptr %30, ptr %22, align 8, !dbg !2015, !tbaa !1424
  store i8 10, ptr %23, align 1, !dbg !2015, !tbaa !919
  br label %31, !dbg !2015

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2016, !tbaa !840
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !2016
  %34 = icmp eq i32 %0, 0, !dbg !2017
  br i1 %34, label %36, label %35, !dbg !2019

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !2020
  unreachable, !dbg !2020

36:                                               ; preds = %31
  ret void, !dbg !2021
}

declare !dbg !2022 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2025 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2028 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2032 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2036, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %1, metadata !2037, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %2, metadata !2038, metadata !DIExpression()), !dbg !2045
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2039, metadata !DIExpression()), !dbg !2047
  call void @llvm.va_start(ptr nonnull %4), !dbg !2048
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !2049
  call void @llvm.va_end(ptr nonnull %4), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !2051
  ret void, !dbg !2051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !463, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %1, metadata !464, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %2, metadata !465, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %3, metadata !466, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %4, metadata !467, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %5, metadata !468, metadata !DIExpression()), !dbg !2052
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2053, !tbaa !910
  %8 = icmp eq i32 %7, 0, !dbg !2053
  br i1 %8, label %23, label %9, !dbg !2055

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2056, !tbaa !910
  %11 = icmp eq i32 %10, %3, !dbg !2059
  br i1 %11, label %12, label %22, !dbg !2060

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2061, !tbaa !840
  %14 = icmp eq ptr %13, %2, !dbg !2062
  br i1 %14, label %36, label %15, !dbg !2063

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2064
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2065
  br i1 %18, label %19, label %22, !dbg !2065

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2066
  %21 = icmp eq i32 %20, 0, !dbg !2067
  br i1 %21, label %36, label %22, !dbg !2068

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2069, !tbaa !840
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2070, !tbaa !910
  br label %23, !dbg !2071

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2072
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2073, !tbaa !840
  %25 = icmp eq ptr %24, null, !dbg !2073
  br i1 %25, label %27, label %26, !dbg !2075

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !2076
  br label %31, !dbg !2076

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2077, !tbaa !840
  %29 = tail call ptr @getprogname() #38, !dbg !2077
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.39, ptr noundef %29) #37, !dbg !2077
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2079, !tbaa !840
  %33 = icmp eq ptr %2, null, !dbg !2079
  %34 = select i1 %33, ptr @.str.3.40, ptr @.str.2.41, !dbg !2079
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !2079
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2080
  br label %36, !dbg !2081

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2081
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2082 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2086, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %1, metadata !2087, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %2, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %3, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %4, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.va_start(ptr nonnull %6), !dbg !2095
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !2096
  call void @llvm.va_end(ptr nonnull %6), !dbg !2097
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !2098
  ret void, !dbg !2098
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2105, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %1, metadata !2106, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %2, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %3, metadata !2108, metadata !DIExpression()), !dbg !2109
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2110
  ret void, !dbg !2111
}

; Function Attrs: nounwind
declare !dbg !2112 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %1, metadata !2154, metadata !DIExpression()), !dbg !2155
  %3 = icmp eq ptr %0, null, !dbg !2156
  br i1 %3, label %7, label %4, !dbg !2158

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %5, metadata !2105, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 0, metadata !2106, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 0, metadata !2107, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %1, metadata !2108, metadata !DIExpression()), !dbg !2160
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2162
  br label %7, !dbg !2163

7:                                                ; preds = %4, %2
  ret void, !dbg !2164
}

; Function Attrs: nofree nounwind
declare !dbg !2165 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2168 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2206, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2207, metadata !DIExpression()), !dbg !2210
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %2, metadata !2208, metadata !DIExpression()), !dbg !2210
  %3 = icmp slt i32 %2, 0, !dbg !2212
  br i1 %3, label %4, label %6, !dbg !2214

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2215
  br label %24, !dbg !2216

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2217
  %8 = icmp eq i32 %7, 0, !dbg !2217
  br i1 %8, label %13, label %9, !dbg !2219

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2220
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2221
  %12 = icmp eq i64 %11, -1, !dbg !2222
  br i1 %12, label %16, label %13, !dbg !2223

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !2224
  %15 = icmp eq i32 %14, 0, !dbg !2224
  br i1 %15, label %16, label %18, !dbg !2225

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2209, metadata !DIExpression()), !dbg !2210
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %17, metadata !2209, metadata !DIExpression()), !dbg !2210
  br label %24, !dbg !2227

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !2228
  %20 = load i32, ptr %19, align 4, !dbg !2228, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %20, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2209, metadata !DIExpression()), !dbg !2210
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %21, metadata !2209, metadata !DIExpression()), !dbg !2210
  %22 = icmp eq i32 %20, 0, !dbg !2229
  br i1 %22, label %24, label %23, !dbg !2227

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2231, !tbaa !910
  call void @llvm.dbg.value(metadata i32 -1, metadata !2209, metadata !DIExpression()), !dbg !2210
  br label %24, !dbg !2233

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2210
  ret i32 %25, !dbg !2234
}

; Function Attrs: nofree nounwind
declare !dbg !2235 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2236 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2238 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2279, metadata !DIExpression()), !dbg !2280
  %2 = icmp eq ptr %0, null, !dbg !2281
  br i1 %2, label %6, label %3, !dbg !2283

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2284
  %5 = icmp eq i32 %4, 0, !dbg !2284
  br i1 %5, label %6, label %8, !dbg !2285

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2286
  br label %16, !dbg !2287

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2288, metadata !DIExpression()), !dbg !2293
  %9 = load i32, ptr %0, align 8, !dbg !2295, !tbaa !1479
  %10 = and i32 %9, 256, !dbg !2297
  %11 = icmp eq i32 %10, 0, !dbg !2297
  br i1 %11, label %14, label %12, !dbg !2298

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2299
  br label %14, !dbg !2299

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2300
  br label %16, !dbg !2301

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2280
  ret i32 %17, !dbg !2302
}

; Function Attrs: nofree nounwind
declare !dbg !2303 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2342, metadata !DIExpression()), !dbg !2343
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !2344
  ret i32 0, !dbg !2345
}

; Function Attrs: nounwind
declare !dbg !2346 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2349 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2387, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %1, metadata !2388, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %2, metadata !2389, metadata !DIExpression()), !dbg !2393
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2394
  %5 = load ptr, ptr %4, align 8, !dbg !2394, !tbaa !1346
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2395
  %7 = load ptr, ptr %6, align 8, !dbg !2395, !tbaa !1344
  %8 = icmp eq ptr %5, %7, !dbg !2396
  br i1 %8, label %9, label %27, !dbg !2397

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2398
  %11 = load ptr, ptr %10, align 8, !dbg !2398, !tbaa !1424
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2399
  %13 = load ptr, ptr %12, align 8, !dbg !2399, !tbaa !2400
  %14 = icmp eq ptr %11, %13, !dbg !2401
  br i1 %14, label %15, label %27, !dbg !2402

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2403
  %17 = load ptr, ptr %16, align 8, !dbg !2403, !tbaa !2404
  %18 = icmp eq ptr %17, null, !dbg !2405
  br i1 %18, label %19, label %27, !dbg !2406

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2407
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %21, metadata !2390, metadata !DIExpression()), !dbg !2409
  %22 = icmp eq i64 %21, -1, !dbg !2410
  br i1 %22, label %29, label %23, !dbg !2412

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2413, !tbaa !1479
  %25 = and i32 %24, -17, !dbg !2413
  store i32 %25, ptr %0, align 8, !dbg !2413, !tbaa !1479
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2414
  store i64 %21, ptr %26, align 8, !dbg !2415, !tbaa !2416
  br label %29, !dbg !2417

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2418
  br label %29, !dbg !2419

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2393
  ret i32 %30, !dbg !2420
}

; Function Attrs: nofree nounwind
declare !dbg !2421 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2424 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2427, !tbaa !840
  ret ptr %1, !dbg !2428
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2429 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2431, metadata !DIExpression()), !dbg !2434
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !2435
  call void @llvm.dbg.value(metadata ptr %2, metadata !2432, metadata !DIExpression()), !dbg !2434
  %3 = icmp eq ptr %2, null, !dbg !2436
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2436
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %5, metadata !2433, metadata !DIExpression()), !dbg !2434
  %6 = ptrtoint ptr %5 to i64, !dbg !2437
  %7 = ptrtoint ptr %0 to i64, !dbg !2437
  %8 = sub i64 %6, %7, !dbg !2437
  %9 = icmp sgt i64 %8, 6, !dbg !2439
  br i1 %9, label %10, label %19, !dbg !2440

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %11, metadata !2442, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 7, metadata !2448, metadata !DIExpression()), !dbg !2449
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !2451
  %13 = icmp eq i32 %12, 0, !dbg !2452
  br i1 %13, label %14, label %19, !dbg !2453

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2431, metadata !DIExpression()), !dbg !2434
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #38, !dbg !2454
  %16 = icmp eq i32 %15, 0, !dbg !2457
  %17 = select i1 %16, i64 3, i64 0, !dbg !2458
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2458
  br label %19, !dbg !2458

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2434
  call void @llvm.dbg.value(metadata ptr %21, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %20, metadata !2431, metadata !DIExpression()), !dbg !2434
  store ptr %20, ptr @program_name, align 8, !dbg !2459, !tbaa !840
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2460, !tbaa !840
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2461, !tbaa !840
  ret void, !dbg !2462
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2463 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !505 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !512, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %1, metadata !513, metadata !DIExpression()), !dbg !2464
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !2465
  call void @llvm.dbg.value(metadata ptr %5, metadata !514, metadata !DIExpression()), !dbg !2464
  %6 = icmp eq ptr %5, %0, !dbg !2466
  br i1 %6, label %7, label %14, !dbg !2468

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !2469
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !2470
  call void @llvm.dbg.declare(metadata ptr %4, metadata !520, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata ptr %4, metadata !2472, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %4, metadata !2481, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 8, metadata !2487, metadata !DIExpression()), !dbg !2488
  store i64 0, ptr %4, align 8, !dbg !2490
  call void @llvm.dbg.value(metadata ptr %3, metadata !515, metadata !DIExpression(DW_OP_deref)), !dbg !2464
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !2491
  %9 = icmp eq i64 %8, 2, !dbg !2493
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !515, metadata !DIExpression()), !dbg !2464
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2494
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !2495
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !2495
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2464
  ret ptr %15, !dbg !2495
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2501, metadata !DIExpression()), !dbg !2504
  %2 = tail call ptr @__errno_location() #40, !dbg !2505
  %3 = load i32, ptr %2, align 4, !dbg !2505, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %3, metadata !2502, metadata !DIExpression()), !dbg !2504
  %4 = icmp eq ptr %0, null, !dbg !2506
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2506
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2507
  call void @llvm.dbg.value(metadata ptr %6, metadata !2503, metadata !DIExpression()), !dbg !2504
  store i32 %3, ptr %2, align 4, !dbg !2508, !tbaa !910
  ret ptr %6, !dbg !2509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2510 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2517
  %2 = icmp eq ptr %0, null, !dbg !2518
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2518
  %4 = load i32, ptr %3, align 8, !dbg !2519, !tbaa !2520
  ret i32 %4, !dbg !2522
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 %1, metadata !2528, metadata !DIExpression()), !dbg !2529
  %3 = icmp eq ptr %0, null, !dbg !2530
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2530
  store i32 %1, ptr %4, align 8, !dbg !2531, !tbaa !2520
  ret void, !dbg !2532
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2533 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %1, metadata !2538, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 %2, metadata !2539, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %1, metadata !2540, metadata !DIExpression()), !dbg !2545
  %4 = icmp eq ptr %0, null, !dbg !2546
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2546
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2547
  %7 = lshr i8 %1, 5, !dbg !2548
  %8 = zext i8 %7 to i64, !dbg !2548
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %9, metadata !2541, metadata !DIExpression()), !dbg !2545
  %10 = and i8 %1, 31, !dbg !2550
  %11 = zext i8 %10 to i32, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %11, metadata !2543, metadata !DIExpression()), !dbg !2545
  %12 = load i32, ptr %9, align 4, !dbg !2551, !tbaa !910
  %13 = lshr i32 %12, %11, !dbg !2552
  %14 = and i32 %13, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %14, metadata !2544, metadata !DIExpression()), !dbg !2545
  %15 = xor i32 %13, %2, !dbg !2554
  %16 = and i32 %15, 1, !dbg !2554
  %17 = shl nuw i32 %16, %11, !dbg !2555
  %18 = xor i32 %17, %12, !dbg !2556
  store i32 %18, ptr %9, align 4, !dbg !2556, !tbaa !910
  ret i32 %14, !dbg !2557
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2558 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %1, metadata !2563, metadata !DIExpression()), !dbg !2565
  %3 = icmp eq ptr %0, null, !dbg !2566
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %4, metadata !2562, metadata !DIExpression()), !dbg !2565
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2569
  %6 = load i32, ptr %5, align 4, !dbg !2569, !tbaa !2570
  call void @llvm.dbg.value(metadata i32 %6, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i32 %1, ptr %5, align 4, !dbg !2571, !tbaa !2570
  ret i32 %6, !dbg !2572
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2573 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2577, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %1, metadata !2578, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %2, metadata !2579, metadata !DIExpression()), !dbg !2580
  %4 = icmp eq ptr %0, null, !dbg !2581
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !2580
  store i32 10, ptr %5, align 8, !dbg !2584, !tbaa !2520
  %6 = icmp ne ptr %1, null, !dbg !2585
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2587
  br i1 %8, label %10, label %9, !dbg !2587

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2588
  unreachable, !dbg !2588

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2589
  store ptr %1, ptr %11, align 8, !dbg !2590, !tbaa !2591
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2592
  store ptr %2, ptr %12, align 8, !dbg !2593, !tbaa !2594
  ret void, !dbg !2595
}

; Function Attrs: noreturn nounwind
declare !dbg !2596 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2597 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2601, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %1, metadata !2602, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %2, metadata !2603, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %3, metadata !2604, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %4, metadata !2605, metadata !DIExpression()), !dbg !2609
  %6 = icmp eq ptr %4, null, !dbg !2610
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2610
  call void @llvm.dbg.value(metadata ptr %7, metadata !2606, metadata !DIExpression()), !dbg !2609
  %8 = tail call ptr @__errno_location() #40, !dbg !2611
  %9 = load i32, ptr %8, align 4, !dbg !2611, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %9, metadata !2607, metadata !DIExpression()), !dbg !2609
  %10 = load i32, ptr %7, align 8, !dbg !2612, !tbaa !2520
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2613
  %12 = load i32, ptr %11, align 4, !dbg !2613, !tbaa !2570
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2614
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2615
  %15 = load ptr, ptr %14, align 8, !dbg !2615, !tbaa !2591
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2616
  %17 = load ptr, ptr %16, align 8, !dbg !2616, !tbaa !2594
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %18, metadata !2608, metadata !DIExpression()), !dbg !2609
  store i32 %9, ptr %8, align 4, !dbg !2618, !tbaa !910
  ret i64 %18, !dbg !2619
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2620 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %2, metadata !2628, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %3, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %4, metadata !2630, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %5, metadata !2631, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %6, metadata !2632, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %7, metadata !2633, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %8, metadata !2634, metadata !DIExpression()), !dbg !2688
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2689
  %17 = icmp eq i64 %16, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i1 %17, metadata !2635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr null, metadata !2638, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2640, metadata !DIExpression()), !dbg !2688
  %18 = trunc i32 %5 to i8, !dbg !2691
  %19 = lshr i8 %18, 1, !dbg !2691
  %20 = and i8 %19, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i8 %20, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2688
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2692

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2693
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2694
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2695
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2696
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2688
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2697
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2698
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %39, metadata !2643, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %38, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %37, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %36, metadata !2640, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %35, metadata !2639, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %34, metadata !2638, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %33, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %32, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %31, metadata !2634, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %30, metadata !2633, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %29, metadata !2630, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.label(metadata !2681), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2688
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
  ], !dbg !2700

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 5, metadata !2630, metadata !DIExpression()), !dbg !2688
  br label %115, !dbg !2701

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 5, metadata !2630, metadata !DIExpression()), !dbg !2688
  %43 = and i8 %37, 1, !dbg !2702
  %44 = icmp eq i8 %43, 0, !dbg !2702
  br i1 %44, label %45, label %115, !dbg !2701

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2704
  br i1 %46, label %115, label %47, !dbg !2707

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2704, !tbaa !919
  br label %115, !dbg !2704

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !604, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 %29, metadata !605, metadata !DIExpression()), !dbg !2708
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #37, !dbg !2712
  call void @llvm.dbg.value(metadata ptr %49, metadata !606, metadata !DIExpression()), !dbg !2708
  %50 = icmp eq ptr %49, @.str.11.80, !dbg !2713
  br i1 %50, label %51, label %60, !dbg !2715

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2716
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %13, metadata !608, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %13, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %13, metadata !2727, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 8, metadata !2731, metadata !DIExpression()), !dbg !2732
  store i64 0, ptr %13, align 8, !dbg !2734
  call void @llvm.dbg.value(metadata ptr %12, metadata !607, metadata !DIExpression(DW_OP_deref)), !dbg !2708
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2735
  %53 = icmp eq i64 %52, 3, !dbg !2737
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !607, metadata !DIExpression()), !dbg !2708
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2738
  %57 = icmp eq i32 %29, 9, !dbg !2738
  %58 = select i1 %57, ptr @.str.10.82, ptr @.str.12.83, !dbg !2738
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2738
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2739
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2739
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2708
  call void @llvm.dbg.value(metadata ptr %61, metadata !2633, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !604, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %29, metadata !605, metadata !DIExpression()), !dbg !2740
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #37, !dbg !2742
  call void @llvm.dbg.value(metadata ptr %62, metadata !606, metadata !DIExpression()), !dbg !2740
  %63 = icmp eq ptr %62, @.str.12.83, !dbg !2743
  br i1 %63, label %64, label %73, !dbg !2744

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2745
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %11, metadata !608, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %11, metadata !2719, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %11, metadata !2727, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 8, metadata !2731, metadata !DIExpression()), !dbg !2750
  store i64 0, ptr %11, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata ptr %10, metadata !607, metadata !DIExpression(DW_OP_deref)), !dbg !2740
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2753
  %66 = icmp eq i64 %65, 3, !dbg !2754
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !607, metadata !DIExpression()), !dbg !2740
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2755
  %70 = icmp eq i32 %29, 9, !dbg !2755
  %71 = select i1 %70, ptr @.str.10.82, ptr @.str.12.83, !dbg !2755
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2756
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2756
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2634, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %74, metadata !2633, metadata !DIExpression()), !dbg !2688
  %76 = and i8 %37, 1, !dbg !2757
  %77 = icmp eq i8 %76, 0, !dbg !2757
  br i1 %77, label %78, label %93, !dbg !2758

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2645, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, metadata !2636, metadata !DIExpression()), !dbg !2688
  %79 = load i8, ptr %74, align 1, !dbg !2760, !tbaa !919
  %80 = icmp eq i8 %79, 0, !dbg !2762
  br i1 %80, label %93, label %81, !dbg !2762

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2645, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %84, metadata !2636, metadata !DIExpression()), !dbg !2688
  %85 = icmp ult i64 %84, %40, !dbg !2763
  br i1 %85, label %86, label %88, !dbg !2766

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2763
  store i8 %82, ptr %87, align 1, !dbg !2763, !tbaa !919
  br label %88, !dbg !2763

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %89, metadata !2636, metadata !DIExpression()), !dbg !2688
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2767
  call void @llvm.dbg.value(metadata ptr %90, metadata !2645, metadata !DIExpression()), !dbg !2759
  %91 = load i8, ptr %90, align 1, !dbg !2760, !tbaa !919
  %92 = icmp eq i8 %91, 0, !dbg !2762
  br i1 %92, label %93, label %81, !dbg !2762, !llvm.loop !2768

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2770
  call void @llvm.dbg.value(metadata i64 %94, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2640, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %75, metadata !2638, metadata !DIExpression()), !dbg !2688
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %95, metadata !2639, metadata !DIExpression()), !dbg !2688
  br label %115, !dbg !2772

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2640, metadata !DIExpression()), !dbg !2688
  br label %97, !dbg !2773

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %98, metadata !2640, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2641, metadata !DIExpression()), !dbg !2688
  br label %99, !dbg !2774

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2696
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %101, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %100, metadata !2640, metadata !DIExpression()), !dbg !2688
  %102 = and i8 %101, 1, !dbg !2775
  %103 = icmp eq i8 %102, 0, !dbg !2775
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2777
  br label %105, !dbg !2777

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2688
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %107, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %106, metadata !2640, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 2, metadata !2630, metadata !DIExpression()), !dbg !2688
  %108 = and i8 %107, 1, !dbg !2778
  %109 = icmp eq i8 %108, 0, !dbg !2778
  br i1 %109, label %110, label %115, !dbg !2780

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2781
  br i1 %111, label %115, label %112, !dbg !2784

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2781, !tbaa !919
  br label %115, !dbg !2781

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2688
  br label %115, !dbg !2785

114:                                              ; preds = %28
  call void @abort() #39, !dbg !2786
  unreachable, !dbg !2786

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2770
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.82, %45 ], [ @.str.10.82, %47 ], [ @.str.10.82, %42 ], [ %34, %28 ], [ @.str.12.83, %110 ], [ @.str.12.83, %112 ], [ @.str.12.83, %105 ], [ @.str.10.82, %41 ], !dbg !2688
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2688
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2688
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %123, metadata !2641, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %122, metadata !2640, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %121, metadata !2639, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %120, metadata !2638, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %119, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %118, metadata !2634, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %117, metadata !2633, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %116, metadata !2630, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, metadata !2650, metadata !DIExpression()), !dbg !2787
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
  br label %138, !dbg !2788

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2770
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2693
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2697
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2698
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2789
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2790
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %145, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %144, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %143, metadata !2643, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %142, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %141, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %140, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %139, metadata !2629, metadata !DIExpression()), !dbg !2688
  %147 = icmp eq i64 %139, -1, !dbg !2791
  br i1 %147, label %148, label %152, !dbg !2792

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2793
  %150 = load i8, ptr %149, align 1, !dbg !2793, !tbaa !919
  %151 = icmp eq i8 %150, 0, !dbg !2794
  br i1 %151, label %627, label %154, !dbg !2795

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2796
  br i1 %153, label %627, label %154, !dbg !2795

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2656, metadata !DIExpression()), !dbg !2797
  br i1 %129, label %155, label %170, !dbg !2798

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2800
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2801
  br i1 %157, label %158, label %160, !dbg !2801

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %159, metadata !2629, metadata !DIExpression()), !dbg !2688
  br label %160, !dbg !2803

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2803
  call void @llvm.dbg.value(metadata i64 %161, metadata !2629, metadata !DIExpression()), !dbg !2688
  %162 = icmp ugt i64 %156, %161, !dbg !2804
  br i1 %162, label %170, label %163, !dbg !2805

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %164, metadata !2807, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %120, metadata !2810, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %121, metadata !2811, metadata !DIExpression()), !dbg !2812
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2814
  %166 = icmp ne i32 %165, 0, !dbg !2815
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2816
  %168 = xor i1 %166, true, !dbg !2816
  %169 = zext i1 %168 to i8, !dbg !2816
  br i1 %167, label %170, label %688, !dbg !2816

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2797
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2797
  call void @llvm.dbg.value(metadata i8 %173, metadata !2652, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %171, metadata !2629, metadata !DIExpression()), !dbg !2688
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2817
  %175 = load i8, ptr %174, align 1, !dbg !2817, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %175, metadata !2657, metadata !DIExpression()), !dbg !2797
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
  ], !dbg !2818

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2819

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2820

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2655, metadata !DIExpression()), !dbg !2797
  %179 = and i8 %144, 1, !dbg !2824
  %180 = icmp eq i8 %179, 0, !dbg !2824
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2824
  br i1 %181, label %182, label %198, !dbg !2824

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2826
  br i1 %183, label %184, label %186, !dbg !2830

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2826
  store i8 39, ptr %185, align 1, !dbg !2826, !tbaa !919
  br label %186, !dbg !2826

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %187, metadata !2636, metadata !DIExpression()), !dbg !2688
  %188 = icmp ult i64 %187, %146, !dbg !2831
  br i1 %188, label %189, label %191, !dbg !2834

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2831
  store i8 36, ptr %190, align 1, !dbg !2831, !tbaa !919
  br label %191, !dbg !2831

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %192, metadata !2636, metadata !DIExpression()), !dbg !2688
  %193 = icmp ult i64 %192, %146, !dbg !2835
  br i1 %193, label %194, label %196, !dbg !2838

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2835
  store i8 39, ptr %195, align 1, !dbg !2835, !tbaa !919
  br label %196, !dbg !2835

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %197, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2688
  br label %198, !dbg !2839

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2688
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %200, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %199, metadata !2636, metadata !DIExpression()), !dbg !2688
  %201 = icmp ult i64 %199, %146, !dbg !2840
  br i1 %201, label %202, label %204, !dbg !2843

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2840
  store i8 92, ptr %203, align 1, !dbg !2840, !tbaa !919
  br label %204, !dbg !2840

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %205, metadata !2636, metadata !DIExpression()), !dbg !2688
  br i1 %126, label %206, label %491, !dbg !2844

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2846
  %208 = icmp ult i64 %207, %171, !dbg !2847
  br i1 %208, label %209, label %480, !dbg !2848

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2849
  %211 = load i8, ptr %210, align 1, !dbg !2849, !tbaa !919
  %212 = add i8 %211, -48, !dbg !2850
  %213 = icmp ult i8 %212, 10, !dbg !2850
  br i1 %213, label %214, label %480, !dbg !2850

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2851
  br i1 %215, label %216, label %218, !dbg !2855

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2851
  store i8 48, ptr %217, align 1, !dbg !2851, !tbaa !919
  br label %218, !dbg !2851

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %219, metadata !2636, metadata !DIExpression()), !dbg !2688
  %220 = icmp ult i64 %219, %146, !dbg !2856
  br i1 %220, label %221, label %223, !dbg !2859

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2856
  store i8 48, ptr %222, align 1, !dbg !2856, !tbaa !919
  br label %223, !dbg !2856

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %224, metadata !2636, metadata !DIExpression()), !dbg !2688
  br label %480, !dbg !2860

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2861

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2862

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2863

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2865

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2867
  %231 = icmp ult i64 %230, %171, !dbg !2868
  br i1 %231, label %232, label %480, !dbg !2869

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2870
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2871
  %235 = load i8, ptr %234, align 1, !dbg !2871, !tbaa !919
  %236 = icmp eq i8 %235, 63, !dbg !2872
  br i1 %236, label %237, label %480, !dbg !2873

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2874
  %239 = load i8, ptr %238, align 1, !dbg !2874, !tbaa !919
  %240 = sext i8 %239 to i32, !dbg !2874
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
  ], !dbg !2875

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2876

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %230, metadata !2650, metadata !DIExpression()), !dbg !2787
  %243 = icmp ult i64 %140, %146, !dbg !2878
  br i1 %243, label %244, label %246, !dbg !2881

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2878
  store i8 63, ptr %245, align 1, !dbg !2878, !tbaa !919
  br label %246, !dbg !2878

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %247, metadata !2636, metadata !DIExpression()), !dbg !2688
  %248 = icmp ult i64 %247, %146, !dbg !2882
  br i1 %248, label %249, label %251, !dbg !2885

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2882
  store i8 34, ptr %250, align 1, !dbg !2882, !tbaa !919
  br label %251, !dbg !2882

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %252, metadata !2636, metadata !DIExpression()), !dbg !2688
  %253 = icmp ult i64 %252, %146, !dbg !2886
  br i1 %253, label %254, label %256, !dbg !2889

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2886
  store i8 34, ptr %255, align 1, !dbg !2886, !tbaa !919
  br label %256, !dbg !2886

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %257, metadata !2636, metadata !DIExpression()), !dbg !2688
  %258 = icmp ult i64 %257, %146, !dbg !2890
  br i1 %258, label %259, label %261, !dbg !2893

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2890
  store i8 63, ptr %260, align 1, !dbg !2890, !tbaa !919
  br label %261, !dbg !2890

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %262, metadata !2636, metadata !DIExpression()), !dbg !2688
  br label %480, !dbg !2894

263:                                              ; preds = %170
  br label %274, !dbg !2895

264:                                              ; preds = %170
  br label %274, !dbg !2896

265:                                              ; preds = %170
  br label %272, !dbg !2897

266:                                              ; preds = %170
  br label %272, !dbg !2898

267:                                              ; preds = %170
  br label %274, !dbg !2899

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2900

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2901

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2904

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2906

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2907
  call void @llvm.dbg.label(metadata !2682), !dbg !2908
  br i1 %134, label %274, label %670, !dbg !2909

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2907
  call void @llvm.dbg.label(metadata !2684), !dbg !2911
  br i1 %125, label %535, label %491, !dbg !2912

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2913

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2914, !tbaa !919
  %279 = icmp eq i8 %278, 0, !dbg !2916
  br i1 %279, label %280, label %480, !dbg !2917

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2918
  br i1 %281, label %282, label %480, !dbg !2920

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2797
  br label %283, !dbg !2921

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2797
  call void @llvm.dbg.value(metadata i8 %284, metadata !2656, metadata !DIExpression()), !dbg !2797
  br i1 %134, label %480, label %670, !dbg !2922

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2797
  br i1 %133, label %286, label %480, !dbg !2924

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2925

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2928
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2930
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2930
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %292, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %291, metadata !2637, metadata !DIExpression()), !dbg !2688
  %293 = icmp ult i64 %140, %292, !dbg !2931
  br i1 %293, label %294, label %296, !dbg !2934

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2931
  store i8 39, ptr %295, align 1, !dbg !2931, !tbaa !919
  br label %296, !dbg !2931

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %297, metadata !2636, metadata !DIExpression()), !dbg !2688
  %298 = icmp ult i64 %297, %292, !dbg !2935
  br i1 %298, label %299, label %301, !dbg !2938

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2935
  store i8 92, ptr %300, align 1, !dbg !2935, !tbaa !919
  br label %301, !dbg !2935

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %302, metadata !2636, metadata !DIExpression()), !dbg !2688
  %303 = icmp ult i64 %302, %292, !dbg !2939
  br i1 %303, label %304, label %306, !dbg !2942

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2939
  store i8 39, ptr %305, align 1, !dbg !2939, !tbaa !919
  br label %306, !dbg !2939

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %307, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2688
  br label %480, !dbg !2943

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2944

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2658, metadata !DIExpression()), !dbg !2945
  %310 = tail call ptr @__ctype_b_loc() #40, !dbg !2946
  %311 = load ptr, ptr %310, align 8, !dbg !2946, !tbaa !840
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2946
  %314 = load i16, ptr %313, align 2, !dbg !2946, !tbaa !951
  %315 = lshr i16 %314, 14, !dbg !2948
  %316 = trunc i16 %315 to i8, !dbg !2948
  %317 = and i8 %316, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i8 %317, metadata !2661, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %171, metadata !2629, metadata !DIExpression()), !dbg !2688
  %318 = icmp eq i8 %317, 0, !dbg !2949
  call void @llvm.dbg.value(metadata i1 %318, metadata !2656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2797
  br label %368, !dbg !2950

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2951
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2662, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata ptr %14, metadata !2719, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %14, metadata !2727, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 8, metadata !2731, metadata !DIExpression()), !dbg !2955
  store i64 0, ptr %14, align 8, !dbg !2957
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2945
  %320 = icmp eq i64 %171, -1, !dbg !2958
  br i1 %320, label %321, label %323, !dbg !2960

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %322, metadata !2629, metadata !DIExpression()), !dbg !2688
  br label %323, !dbg !2962

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2797
  call void @llvm.dbg.value(metadata i64 %324, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2963
  %325 = sub i64 %324, %145, !dbg !2964
  call void @llvm.dbg.value(metadata ptr %15, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2965
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %326, metadata !2669, metadata !DIExpression()), !dbg !2965
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2967

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2945
  %328 = icmp ugt i64 %324, %145, !dbg !2968
  br i1 %328, label %331, label %329, !dbg !2970

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %324, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i1 true, metadata !2656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2797
  br label %368, !dbg !2950

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2945
  br label %360, !dbg !2973

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2658, metadata !DIExpression()), !dbg !2945
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2975
  %335 = load i8, ptr %334, align 1, !dbg !2975, !tbaa !919
  %336 = icmp eq i8 %335, 0, !dbg !2970
  br i1 %336, label %363, label %337, !dbg !2976

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %338, metadata !2658, metadata !DIExpression()), !dbg !2945
  %339 = add i64 %338, %145, !dbg !2978
  %340 = icmp eq i64 %338, %325, !dbg !2968
  br i1 %340, label %363, label %331, !dbg !2970, !llvm.loop !2979

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2980
  %344 = and i1 %343, %133, !dbg !2980
  call void @llvm.dbg.value(metadata i64 1, metadata !2670, metadata !DIExpression()), !dbg !2981
  br i1 %344, label %345, label %354, !dbg !2980

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2670, metadata !DIExpression()), !dbg !2981
  %347 = add i64 %346, %145, !dbg !2982
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2984
  %349 = load i8, ptr %348, align 1, !dbg !2984, !tbaa !919
  %350 = sext i8 %349 to i32, !dbg !2984
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2985

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %352, metadata !2670, metadata !DIExpression()), !dbg !2981
  %353 = icmp eq i64 %352, %326, !dbg !2987
  br i1 %353, label %354, label %345, !dbg !2988, !llvm.loop !2989

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2991, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %355, metadata !2665, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 %355, metadata !2993, metadata !DIExpression()), !dbg !3001
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !3003
  %357 = icmp ne i32 %356, 0, !dbg !3004
  %358 = zext i1 %357 to i8, !dbg !3005
  call void @llvm.dbg.value(metadata i8 %358, metadata !2661, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %326, metadata !2658, metadata !DIExpression()), !dbg !2945
  br label %363, !dbg !3006

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2972
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2661, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %324, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i1 %361, metadata !2656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2797
  br label %368, !dbg !2950

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2661, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %364, metadata !2658, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %324, metadata !2629, metadata !DIExpression()), !dbg !2688
  %366 = icmp eq i8 %365, 0, !dbg !2949
  call void @llvm.dbg.value(metadata i1 %366, metadata !2656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2797
  %367 = icmp ugt i64 %364, 1, !dbg !3007
  br i1 %367, label %374, label %368, !dbg !2950

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3008
  br i1 %373, label %374, label %480, !dbg !3008

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %379, metadata !2678, metadata !DIExpression()), !dbg !3010
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3011

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2688
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2789
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2787
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2797
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3012
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2797
  call void @llvm.dbg.value(metadata i8 %387, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %386, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %385, metadata !2652, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %384, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %383, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %382, metadata !2636, metadata !DIExpression()), !dbg !2688
  br i1 %380, label %388, label %434, !dbg !3013

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3018

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2655, metadata !DIExpression()), !dbg !2797
  %390 = and i8 %383, 1, !dbg !3021
  %391 = icmp eq i8 %390, 0, !dbg !3021
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3021
  br i1 %392, label %393, label %409, !dbg !3021

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3023
  br i1 %394, label %395, label %397, !dbg !3027

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3023
  store i8 39, ptr %396, align 1, !dbg !3023, !tbaa !919
  br label %397, !dbg !3023

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %398, metadata !2636, metadata !DIExpression()), !dbg !2688
  %399 = icmp ult i64 %398, %146, !dbg !3028
  br i1 %399, label %400, label %402, !dbg !3031

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3028
  store i8 36, ptr %401, align 1, !dbg !3028, !tbaa !919
  br label %402, !dbg !3028

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %403, metadata !2636, metadata !DIExpression()), !dbg !2688
  %404 = icmp ult i64 %403, %146, !dbg !3032
  br i1 %404, label %405, label %407, !dbg !3035

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3032
  store i8 39, ptr %406, align 1, !dbg !3032, !tbaa !919
  br label %407, !dbg !3032

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %408, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2688
  br label %409, !dbg !3036

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2688
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %411, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %410, metadata !2636, metadata !DIExpression()), !dbg !2688
  %412 = icmp ult i64 %410, %146, !dbg !3037
  br i1 %412, label %413, label %415, !dbg !3040

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3037
  store i8 92, ptr %414, align 1, !dbg !3037, !tbaa !919
  br label %415, !dbg !3037

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %416, metadata !2636, metadata !DIExpression()), !dbg !2688
  %417 = icmp ult i64 %416, %146, !dbg !3041
  br i1 %417, label %418, label %422, !dbg !3044

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3041
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3041
  store i8 %420, ptr %421, align 1, !dbg !3041, !tbaa !919
  br label %422, !dbg !3041

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %423, metadata !2636, metadata !DIExpression()), !dbg !2688
  %424 = icmp ult i64 %423, %146, !dbg !3045
  br i1 %424, label %425, label %430, !dbg !3048

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3045
  %428 = or i8 %427, 48, !dbg !3045
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3045
  store i8 %428, ptr %429, align 1, !dbg !3045, !tbaa !919
  br label %430, !dbg !3045

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %431, metadata !2636, metadata !DIExpression()), !dbg !2688
  %432 = and i8 %387, 7, !dbg !3049
  %433 = or i8 %432, 48, !dbg !3050
  call void @llvm.dbg.value(metadata i8 %433, metadata !2657, metadata !DIExpression()), !dbg !2797
  br label %443, !dbg !3051

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3052
  %436 = icmp eq i8 %435, 0, !dbg !3052
  br i1 %436, label %443, label %437, !dbg !3054

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3055
  br i1 %438, label %439, label %441, !dbg !3059

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3055
  store i8 92, ptr %440, align 1, !dbg !3055, !tbaa !919
  br label %441, !dbg !3055

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %442, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2797
  br label %443, !dbg !3060

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2688
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2789
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2797
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2797
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2797
  call void @llvm.dbg.value(metadata i8 %448, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %447, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %446, metadata !2652, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %445, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %444, metadata !2636, metadata !DIExpression()), !dbg !2688
  %449 = add i64 %384, 1, !dbg !3061
  %450 = icmp ugt i64 %379, %449, !dbg !3063
  br i1 %450, label %451, label %478, !dbg !3064

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3065
  %453 = icmp ne i8 %452, 0, !dbg !3065
  %454 = and i8 %447, 1, !dbg !3065
  %455 = icmp eq i8 %454, 0, !dbg !3065
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3065
  br i1 %456, label %457, label %468, !dbg !3065

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3068
  br i1 %458, label %459, label %461, !dbg !3072

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3068
  store i8 39, ptr %460, align 1, !dbg !3068, !tbaa !919
  br label %461, !dbg !3068

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %462, metadata !2636, metadata !DIExpression()), !dbg !2688
  %463 = icmp ult i64 %462, %146, !dbg !3073
  br i1 %463, label %464, label %466, !dbg !3076

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3073
  store i8 39, ptr %465, align 1, !dbg !3073, !tbaa !919
  br label %466, !dbg !3073

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %467, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2688
  br label %468, !dbg !3077

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3078
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %470, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %469, metadata !2636, metadata !DIExpression()), !dbg !2688
  %471 = icmp ult i64 %469, %146, !dbg !3079
  br i1 %471, label %472, label %474, !dbg !3082

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3079
  store i8 %448, ptr %473, align 1, !dbg !3079, !tbaa !919
  br label %474, !dbg !3079

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %475, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %449, metadata !2650, metadata !DIExpression()), !dbg !2787
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3083
  %477 = load i8, ptr %476, align 1, !dbg !3083, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %477, metadata !2657, metadata !DIExpression()), !dbg !2797
  br label %381, !dbg !3084, !llvm.loop !3085

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i8 %448, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %479, metadata !2656, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %447, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %446, metadata !2652, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %384, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %445, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %444, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %378, metadata !2629, metadata !DIExpression()), !dbg !2688
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3088
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2688
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2693
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2688
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2688
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2787
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2797
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2797
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2797
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %489, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %488, metadata !2656, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %487, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %173, metadata !2652, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %486, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %485, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %484, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %483, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %482, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %481, metadata !2629, metadata !DIExpression()), !dbg !2688
  br i1 %127, label %502, label %491, !dbg !3089

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
  br i1 %137, label %503, label %524, !dbg !3091

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3092

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
  %514 = lshr i8 %505, 5, !dbg !3093
  %515 = zext i8 %514 to i64, !dbg !3093
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3094
  %517 = load i32, ptr %516, align 4, !dbg !3094, !tbaa !910
  %518 = and i8 %505, 31, !dbg !3095
  %519 = zext i8 %518 to i32, !dbg !3095
  %520 = shl nuw i32 1, %519, !dbg !3096
  %521 = and i32 %517, %520, !dbg !3096
  %522 = icmp eq i32 %521, 0, !dbg !3096
  %523 = and i1 %172, %522, !dbg !3097
  br i1 %523, label %573, label %535, !dbg !3097

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
  br i1 %172, label %573, label %535, !dbg !3098

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3088
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2688
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2693
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2697
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2789
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3099
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2797
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2797
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %543, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %542, metadata !2656, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %541, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %540, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %539, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %538, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %537, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %536, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.label(metadata !2685), !dbg !3100
  br i1 %132, label %545, label %674, !dbg !3101

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2655, metadata !DIExpression()), !dbg !2797
  %546 = and i8 %540, 1, !dbg !3103
  %547 = icmp eq i8 %546, 0, !dbg !3103
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3103
  br i1 %548, label %549, label %565, !dbg !3103

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3105
  br i1 %550, label %551, label %553, !dbg !3109

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3105
  store i8 39, ptr %552, align 1, !dbg !3105, !tbaa !919
  br label %553, !dbg !3105

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %554, metadata !2636, metadata !DIExpression()), !dbg !2688
  %555 = icmp ult i64 %554, %544, !dbg !3110
  br i1 %555, label %556, label %558, !dbg !3113

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3110
  store i8 36, ptr %557, align 1, !dbg !3110, !tbaa !919
  br label %558, !dbg !3110

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %559, metadata !2636, metadata !DIExpression()), !dbg !2688
  %560 = icmp ult i64 %559, %544, !dbg !3114
  br i1 %560, label %561, label %563, !dbg !3117

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3114
  store i8 39, ptr %562, align 1, !dbg !3114, !tbaa !919
  br label %563, !dbg !3114

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %564, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2688
  br label %565, !dbg !3118

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2797
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %567, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %566, metadata !2636, metadata !DIExpression()), !dbg !2688
  %568 = icmp ult i64 %566, %544, !dbg !3119
  br i1 %568, label %569, label %571, !dbg !3122

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3119
  store i8 92, ptr %570, align 1, !dbg !3119, !tbaa !919
  br label %571, !dbg !3119

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %544, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %543, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %542, metadata !2656, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 1, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %541, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %567, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %539, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %538, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %572, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %536, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.label(metadata !2686), !dbg !3123
  br label %600, !dbg !3124

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3088
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2688
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2693
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2697
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2789
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3099
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2797
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2797
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3127
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %582, metadata !2657, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %581, metadata !2656, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %580, metadata !2655, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %579, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %578, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %577, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %576, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %575, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %574, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.label(metadata !2686), !dbg !3123
  %584 = and i8 %578, 1, !dbg !3124
  %585 = icmp ne i8 %584, 0, !dbg !3124
  %586 = and i8 %580, 1, !dbg !3124
  %587 = icmp eq i8 %586, 0, !dbg !3124
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3124
  br i1 %588, label %589, label %600, !dbg !3124

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3128
  br i1 %590, label %591, label %593, !dbg !3132

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3128
  store i8 39, ptr %592, align 1, !dbg !3128, !tbaa !919
  br label %593, !dbg !3128

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %594, metadata !2636, metadata !DIExpression()), !dbg !2688
  %595 = icmp ult i64 %594, %583, !dbg !3133
  br i1 %595, label %596, label %598, !dbg !3136

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3133
  store i8 39, ptr %597, align 1, !dbg !3133, !tbaa !919
  br label %598, !dbg !3133

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %599, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2688
  br label %600, !dbg !3137

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2797
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8 %609, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %608, metadata !2636, metadata !DIExpression()), !dbg !2688
  %610 = icmp ult i64 %608, %601, !dbg !3138
  br i1 %610, label %611, label %613, !dbg !3141

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3138
  store i8 %602, ptr %612, align 1, !dbg !3138, !tbaa !919
  br label %613, !dbg !3138

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %614, metadata !2636, metadata !DIExpression()), !dbg !2688
  %615 = icmp eq i8 %603, 0, !dbg !3142
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3144
  call void @llvm.dbg.value(metadata i8 %616, metadata !2643, metadata !DIExpression()), !dbg !2688
  br label %617, !dbg !3145

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3088
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2688
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2693
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2697
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2698
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2789
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3099
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %624, metadata !2650, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %623, metadata !2644, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %622, metadata !2643, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %621, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %620, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %619, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %618, metadata !2629, metadata !DIExpression()), !dbg !2688
  %626 = add i64 %624, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %626, metadata !2650, metadata !DIExpression()), !dbg !2787
  br label %138, !dbg !3147, !llvm.loop !3148

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2627, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %143, metadata !2643, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %142, metadata !2642, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %141, metadata !2637, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %140, metadata !2636, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %139, metadata !2629, metadata !DIExpression()), !dbg !2688
  %628 = icmp eq i64 %140, 0, !dbg !3150
  %629 = and i1 %133, %628, !dbg !3152
  %630 = xor i1 %629, true, !dbg !3152
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3152
  br i1 %631, label %632, label %670, !dbg !3152

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3153
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3153
  br i1 %636, label %637, label %646, !dbg !3153

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3155
  %639 = icmp eq i8 %638, 0, !dbg !3155
  br i1 %639, label %642, label %640, !dbg !3158

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3159
  br label %694, !dbg !3160

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3161
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3163
  br i1 %645, label %28, label %646, !dbg !3163

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3164
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3166
  br i1 %649, label %650, label %665, !dbg !3166

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2638, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %140, metadata !2636, metadata !DIExpression()), !dbg !2688
  %651 = load i8, ptr %120, align 1, !dbg !3167, !tbaa !919
  %652 = icmp eq i8 %651, 0, !dbg !3170
  br i1 %652, label %665, label %653, !dbg !3170

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2638, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %656, metadata !2636, metadata !DIExpression()), !dbg !2688
  %657 = icmp ult i64 %656, %146, !dbg !3171
  br i1 %657, label %658, label %660, !dbg !3174

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3171
  store i8 %654, ptr %659, align 1, !dbg !3171, !tbaa !919
  br label %660, !dbg !3171

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %661, metadata !2636, metadata !DIExpression()), !dbg !2688
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %662, metadata !2638, metadata !DIExpression()), !dbg !2688
  %663 = load i8, ptr %662, align 1, !dbg !3167, !tbaa !919
  %664 = icmp eq i8 %663, 0, !dbg !3170
  br i1 %664, label %665, label %653, !dbg !3170, !llvm.loop !3176

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2770
  call void @llvm.dbg.value(metadata i64 %666, metadata !2636, metadata !DIExpression()), !dbg !2688
  %667 = icmp ult i64 %666, %146, !dbg !3178
  br i1 %667, label %668, label %694, !dbg !3180

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3181
  store i8 0, ptr %669, align 1, !dbg !3182, !tbaa !919
  br label %694, !dbg !3181

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2687), !dbg !3183
  %672 = icmp eq i8 %124, 0, !dbg !3184
  %673 = select i1 %672, i32 2, i32 4, !dbg !3184
  br label %684, !dbg !3184

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3184
  %678 = select i1 %677, i32 2, i32 4, !dbg !3184
  br label %679, !dbg !3186

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2687), !dbg !3183
  %683 = icmp eq i32 %116, 2, !dbg !3186
  br i1 %683, label %684, label %688, !dbg !3184

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3184

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2630, metadata !DIExpression()), !dbg !2688
  %692 = and i32 %5, -3, !dbg !3187
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3188
  br label %694, !dbg !3189

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3190
}

; Function Attrs: nounwind
declare !dbg !3191 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3193 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %2, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr null, metadata !3207, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %2, metadata !3208, metadata !DIExpression()), !dbg !3214
  %4 = icmp eq ptr %2, null, !dbg !3216
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %5, metadata !3209, metadata !DIExpression()), !dbg !3214
  %6 = tail call ptr @__errno_location() #40, !dbg !3217
  %7 = load i32, ptr %6, align 4, !dbg !3217, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %7, metadata !3210, metadata !DIExpression()), !dbg !3214
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3218
  %9 = load i32, ptr %8, align 4, !dbg !3218, !tbaa !2570
  %10 = or i32 %9, 1, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %10, metadata !3211, metadata !DIExpression()), !dbg !3214
  %11 = load i32, ptr %5, align 8, !dbg !3220, !tbaa !2520
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3221
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3222
  %14 = load ptr, ptr %13, align 8, !dbg !3222, !tbaa !2591
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3223
  %16 = load ptr, ptr %15, align 8, !dbg !3223, !tbaa !2594
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3224
  %18 = add i64 %17, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %18, metadata !3212, metadata !DIExpression()), !dbg !3214
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %19, metadata !3213, metadata !DIExpression()), !dbg !3214
  %20 = load i32, ptr %5, align 8, !dbg !3227, !tbaa !2520
  %21 = load ptr, ptr %13, align 8, !dbg !3228, !tbaa !2591
  %22 = load ptr, ptr %15, align 8, !dbg !3229, !tbaa !2594
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3230
  store i32 %7, ptr %6, align 4, !dbg !3231, !tbaa !910
  ret ptr %19, !dbg !3232
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %2, metadata !3207, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %3, metadata !3208, metadata !DIExpression()), !dbg !3233
  %5 = icmp eq ptr %3, null, !dbg !3234
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %6, metadata !3209, metadata !DIExpression()), !dbg !3233
  %7 = tail call ptr @__errno_location() #40, !dbg !3235
  %8 = load i32, ptr %7, align 4, !dbg !3235, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %8, metadata !3210, metadata !DIExpression()), !dbg !3233
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3236
  %10 = load i32, ptr %9, align 4, !dbg !3236, !tbaa !2570
  %11 = icmp eq ptr %2, null, !dbg !3237
  %12 = zext i1 %11 to i32, !dbg !3237
  %13 = or i32 %10, %12, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %13, metadata !3211, metadata !DIExpression()), !dbg !3233
  %14 = load i32, ptr %6, align 8, !dbg !3239, !tbaa !2520
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3240
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3241
  %17 = load ptr, ptr %16, align 8, !dbg !3241, !tbaa !2591
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3242
  %19 = load ptr, ptr %18, align 8, !dbg !3242, !tbaa !2594
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3243
  %21 = add i64 %20, 1, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %21, metadata !3212, metadata !DIExpression()), !dbg !3233
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !3245
  call void @llvm.dbg.value(metadata ptr %22, metadata !3213, metadata !DIExpression()), !dbg !3233
  %23 = load i32, ptr %6, align 8, !dbg !3246, !tbaa !2520
  %24 = load ptr, ptr %16, align 8, !dbg !3247, !tbaa !2591
  %25 = load ptr, ptr %18, align 8, !dbg !3248, !tbaa !2594
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3249
  store i32 %8, ptr %7, align 4, !dbg !3250, !tbaa !910
  br i1 %11, label %28, label %27, !dbg !3251

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3252, !tbaa !1136
  br label %28, !dbg !3254

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3255
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3256 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3261, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %1, metadata !3258, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 1, metadata !3259, metadata !DIExpression()), !dbg !3263
  %2 = load i32, ptr @nslots, align 4, !tbaa !910
  call void @llvm.dbg.value(metadata i32 1, metadata !3259, metadata !DIExpression()), !dbg !3263
  %3 = icmp sgt i32 %2, 1, !dbg !3264
  br i1 %3, label %4, label %6, !dbg !3266

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3264
  br label %10, !dbg !3266

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3267
  %8 = load ptr, ptr %7, align 8, !dbg !3267, !tbaa !3269
  %9 = icmp eq ptr %8, @slot0, !dbg !3271
  br i1 %9, label %17, label %16, !dbg !3272

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3259, metadata !DIExpression()), !dbg !3263
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3273
  %13 = load ptr, ptr %12, align 8, !dbg !3273, !tbaa !3269
  tail call void @free(ptr noundef %13) #37, !dbg !3274
  %14 = add nuw nsw i64 %11, 1, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %14, metadata !3259, metadata !DIExpression()), !dbg !3263
  %15 = icmp eq i64 %14, %5, !dbg !3264
  br i1 %15, label %6, label %10, !dbg !3266, !llvm.loop !3276

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !3278
  store i64 256, ptr @slotvec0, align 8, !dbg !3280, !tbaa !3281
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3282, !tbaa !3269
  br label %17, !dbg !3283

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3284
  br i1 %18, label %20, label %19, !dbg !3286

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !3287
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3289, !tbaa !840
  br label %20, !dbg !3290

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3291, !tbaa !910
  ret void, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %1, metadata !3296, metadata !DIExpression()), !dbg !3297
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3298
  ret ptr %3, !dbg !3299
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3300 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %1, metadata !3305, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %2, metadata !3306, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %3, metadata !3307, metadata !DIExpression()), !dbg !3320
  %6 = tail call ptr @__errno_location() #40, !dbg !3321
  %7 = load i32, ptr %6, align 4, !dbg !3321, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %7, metadata !3308, metadata !DIExpression()), !dbg !3320
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3322, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %8, metadata !3309, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3310, metadata !DIExpression()), !dbg !3320
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3323
  br i1 %9, label %10, label %11, !dbg !3323

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3325
  unreachable, !dbg !3325

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3326, !tbaa !910
  %13 = icmp sgt i32 %12, %0, !dbg !3327
  br i1 %13, label %32, label %14, !dbg !3328

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3329
  call void @llvm.dbg.value(metadata i1 %15, metadata !3311, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3330
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !3331
  %16 = sext i32 %12 to i64, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %16, metadata !3314, metadata !DIExpression()), !dbg !3330
  store i64 %16, ptr %5, align 8, !dbg !3333, !tbaa !1136
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3334
  %18 = add nuw nsw i32 %0, 1, !dbg !3335
  %19 = sub i32 %18, %12, !dbg !3336
  %20 = sext i32 %19 to i64, !dbg !3337
  call void @llvm.dbg.value(metadata ptr %5, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3330
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3338
  call void @llvm.dbg.value(metadata ptr %21, metadata !3309, metadata !DIExpression()), !dbg !3320
  store ptr %21, ptr @slotvec, align 8, !dbg !3339, !tbaa !840
  br i1 %15, label %22, label %23, !dbg !3340

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3341, !tbaa.struct !3343
  br label %23, !dbg !3344

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3345, !tbaa !910
  %25 = sext i32 %24 to i64, !dbg !3346
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3346
  %27 = load i64, ptr %5, align 8, !dbg !3347, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 %27, metadata !3314, metadata !DIExpression()), !dbg !3330
  %28 = sub nsw i64 %27, %25, !dbg !3348
  %29 = shl i64 %28, 4, !dbg !3349
  call void @llvm.dbg.value(metadata ptr %26, metadata !2727, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %29, metadata !2731, metadata !DIExpression()), !dbg !3350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !3352
  %30 = load i64, ptr %5, align 8, !dbg !3353, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 %30, metadata !3314, metadata !DIExpression()), !dbg !3330
  %31 = trunc i64 %30 to i32, !dbg !3353
  store i32 %31, ptr @nslots, align 4, !dbg !3354, !tbaa !910
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !3355
  br label %32, !dbg !3356

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3320
  call void @llvm.dbg.value(metadata ptr %33, metadata !3309, metadata !DIExpression()), !dbg !3320
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3357
  %36 = load i64, ptr %35, align 8, !dbg !3358, !tbaa !3281
  call void @llvm.dbg.value(metadata i64 %36, metadata !3315, metadata !DIExpression()), !dbg !3359
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3360
  %38 = load ptr, ptr %37, align 8, !dbg !3360, !tbaa !3269
  call void @llvm.dbg.value(metadata ptr %38, metadata !3317, metadata !DIExpression()), !dbg !3359
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3361
  %40 = load i32, ptr %39, align 4, !dbg !3361, !tbaa !2570
  %41 = or i32 %40, 1, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %41, metadata !3318, metadata !DIExpression()), !dbg !3359
  %42 = load i32, ptr %3, align 8, !dbg !3363, !tbaa !2520
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3364
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3365
  %45 = load ptr, ptr %44, align 8, !dbg !3365, !tbaa !2591
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3366
  %47 = load ptr, ptr %46, align 8, !dbg !3366, !tbaa !2594
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %48, metadata !3319, metadata !DIExpression()), !dbg !3359
  %49 = icmp ugt i64 %36, %48, !dbg !3368
  br i1 %49, label %60, label %50, !dbg !3370

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %51, metadata !3315, metadata !DIExpression()), !dbg !3359
  store i64 %51, ptr %35, align 8, !dbg !3373, !tbaa !3281
  %52 = icmp eq ptr %38, @slot0, !dbg !3374
  br i1 %52, label %54, label %53, !dbg !3376

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !3377
  br label %54, !dbg !3377

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !3378
  call void @llvm.dbg.value(metadata ptr %55, metadata !3317, metadata !DIExpression()), !dbg !3359
  store ptr %55, ptr %37, align 8, !dbg !3379, !tbaa !3269
  %56 = load i32, ptr %3, align 8, !dbg !3380, !tbaa !2520
  %57 = load ptr, ptr %44, align 8, !dbg !3381, !tbaa !2591
  %58 = load ptr, ptr %46, align 8, !dbg !3382, !tbaa !2594
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3383
  br label %60, !dbg !3384

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3359
  call void @llvm.dbg.value(metadata ptr %61, metadata !3317, metadata !DIExpression()), !dbg !3359
  store i32 %7, ptr %6, align 4, !dbg !3385, !tbaa !910
  ret ptr %61, !dbg !3386
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3391, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata ptr %1, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %2, metadata !3393, metadata !DIExpression()), !dbg !3394
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3395
  ret ptr %4, !dbg !3396
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i32 0, metadata !3295, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3401
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3403
  ret ptr %2, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3405 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3409, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3391, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %0, metadata !3392, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %1, metadata !3393, metadata !DIExpression()), !dbg !3412
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3414
  ret ptr %3, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3416 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %1, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3423, metadata !DIExpression()), !dbg !3426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3439, !alias.scope !3427
  %5 = icmp eq i32 %1, 10, !dbg !3440
  br i1 %5, label %6, label %7, !dbg !3442

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3443, !noalias !3427
  unreachable, !dbg !3443

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3444, !tbaa !2520, !alias.scope !3427
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3445
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3446
  ret ptr %8, !dbg !3447
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3448 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3452, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %1, metadata !3453, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %2, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %3, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3456, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3436, metadata !DIExpression()), !dbg !3466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3466, !alias.scope !3460
  %6 = icmp eq i32 %1, 10, !dbg !3467
  br i1 %6, label %7, label %8, !dbg !3468

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3469, !noalias !3460
  unreachable, !dbg !3469

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3470, !tbaa !2520, !alias.scope !3460
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3471
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3472
  ret ptr %9, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3474 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata ptr %1, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3420, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %0, metadata !3421, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %1, metadata !3422, metadata !DIExpression()), !dbg !3481
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3483
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3423, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3436, metadata !DIExpression()), !dbg !3491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3491, !alias.scope !3485
  %4 = icmp eq i32 %0, 10, !dbg !3492
  br i1 %4, label %5, label %6, !dbg !3493

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3494, !noalias !3485
  unreachable, !dbg !3494

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3495, !tbaa !2520, !alias.scope !3485
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3496
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3497
  ret ptr %7, !dbg !3498
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3499 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata ptr %1, metadata !3504, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %2, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 0, metadata !3452, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %1, metadata !3454, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %2, metadata !3455, metadata !DIExpression()), !dbg !3507
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3456, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3436, metadata !DIExpression()), !dbg !3517
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3517, !alias.scope !3511
  %5 = icmp eq i32 %0, 10, !dbg !3518
  br i1 %5, label %6, label %7, !dbg !3519

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3520, !noalias !3511
  unreachable, !dbg !3520

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3521, !tbaa !2520, !alias.scope !3511
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3522
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3523
  ret ptr %8, !dbg !3524
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3525 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 %2, metadata !3531, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3532, metadata !DIExpression()), !dbg !3535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3536, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %4, metadata !2537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 %2, metadata !2538, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 1, metadata !2539, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 %2, metadata !2540, metadata !DIExpression()), !dbg !3538
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3540
  %6 = lshr i8 %2, 5, !dbg !3541
  %7 = zext i8 %6 to i64, !dbg !3541
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3542
  call void @llvm.dbg.value(metadata ptr %8, metadata !2541, metadata !DIExpression()), !dbg !3538
  %9 = and i8 %2, 31, !dbg !3543
  %10 = zext i8 %9 to i32, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %10, metadata !2543, metadata !DIExpression()), !dbg !3538
  %11 = load i32, ptr %8, align 4, !dbg !3544, !tbaa !910
  %12 = lshr i32 %11, %10, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %12, metadata !2544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3538
  %13 = and i32 %12, 1, !dbg !3546
  %14 = xor i32 %13, 1, !dbg !3546
  %15 = shl nuw i32 %14, %10, !dbg !3547
  %16 = xor i32 %15, %11, !dbg !3548
  store i32 %16, ptr %8, align 4, !dbg !3548, !tbaa !910
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3549
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3550
  ret ptr %17, !dbg !3551
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3552 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8 %1, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 -1, metadata !3530, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8 %1, metadata !3531, metadata !DIExpression()), !dbg !3559
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3561
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3532, metadata !DIExpression()), !dbg !3562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3563, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %3, metadata !2537, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8 %1, metadata !2538, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 1, metadata !2539, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8 %1, metadata !2540, metadata !DIExpression()), !dbg !3564
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3566
  %5 = lshr i8 %1, 5, !dbg !3567
  %6 = zext i8 %5 to i64, !dbg !3567
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %7, metadata !2541, metadata !DIExpression()), !dbg !3564
  %8 = and i8 %1, 31, !dbg !3569
  %9 = zext i8 %8 to i32, !dbg !3569
  call void @llvm.dbg.value(metadata i32 %9, metadata !2543, metadata !DIExpression()), !dbg !3564
  %10 = load i32, ptr %7, align 4, !dbg !3570, !tbaa !910
  %11 = lshr i32 %10, %9, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %11, metadata !2544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3564
  %12 = and i32 %11, 1, !dbg !3572
  %13 = xor i32 %12, 1, !dbg !3572
  %14 = shl nuw i32 %13, %9, !dbg !3573
  %15 = xor i32 %14, %10, !dbg !3574
  store i32 %15, ptr %7, align 4, !dbg !3574, !tbaa !910
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3575
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3576
  ret ptr %16, !dbg !3577
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3578 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3580, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8 58, metadata !3557, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 -1, metadata !3530, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8 58, metadata !3531, metadata !DIExpression()), !dbg !3584
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !3586
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3532, metadata !DIExpression()), !dbg !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3588, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8 58, metadata !2538, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 1, metadata !2539, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8 58, metadata !2540, metadata !DIExpression()), !dbg !3589
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %3, metadata !2541, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 26, metadata !2543, metadata !DIExpression()), !dbg !3589
  %4 = load i32, ptr %3, align 4, !dbg !3592, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %4, metadata !2544, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3589
  %5 = or i32 %4, 67108864, !dbg !3593
  store i32 %5, ptr %3, align 4, !dbg !3593, !tbaa !910
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3594
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !3595
  ret ptr %6, !dbg !3596
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3597 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8 58, metadata !3531, metadata !DIExpression()), !dbg !3602
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3604
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3532, metadata !DIExpression()), !dbg !3605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3606, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %3, metadata !2537, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8 58, metadata !2538, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 1, metadata !2539, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8 58, metadata !2540, metadata !DIExpression()), !dbg !3607
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3609
  call void @llvm.dbg.value(metadata ptr %4, metadata !2541, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 26, metadata !2543, metadata !DIExpression()), !dbg !3607
  %5 = load i32, ptr %4, align 4, !dbg !3610, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %5, metadata !2544, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3607
  %6 = or i32 %5, 67108864, !dbg !3611
  store i32 %6, ptr %4, align 4, !dbg !3611, !tbaa !910
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3612
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3613
  ret ptr %7, !dbg !3614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3615 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3436, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3621
  call void @llvm.dbg.value(metadata i32 %0, metadata !3617, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 %1, metadata !3618, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr %2, metadata !3619, metadata !DIExpression()), !dbg !3623
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3624
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3620, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3626
  %5 = icmp eq i32 %1, 10, !dbg !3627
  br i1 %5, label %6, label %7, !dbg !3628

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3629, !noalias !3630
  unreachable, !dbg !3629

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3626
  store i32 %1, ptr %4, align 8, !dbg !3633, !tbaa.struct !3537
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3633
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %4, metadata !2537, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8 58, metadata !2538, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 1, metadata !2539, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8 58, metadata !2540, metadata !DIExpression()), !dbg !3634
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3636
  call void @llvm.dbg.value(metadata ptr %9, metadata !2541, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 26, metadata !2543, metadata !DIExpression()), !dbg !3634
  %10 = load i32, ptr %9, align 4, !dbg !3637, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %10, metadata !2544, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3634
  %11 = or i32 %10, 67108864, !dbg !3638
  store i32 %11, ptr %9, align 4, !dbg !3638, !tbaa !910
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3639
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3640
  ret ptr %12, !dbg !3641
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3642 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3646, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %1, metadata !3647, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %2, metadata !3648, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %3, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %0, metadata !3651, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %2, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %3, metadata !3658, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 -1, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3663
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3660, metadata !DIExpression()), !dbg !3664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3665, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %1, metadata !2578, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %2, metadata !2579, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !3666
  store i32 10, ptr %5, align 8, !dbg !3668, !tbaa !2520
  %6 = icmp ne ptr %1, null, !dbg !3669
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3670
  br i1 %8, label %10, label %9, !dbg !3670

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3671
  unreachable, !dbg !3671

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3672
  store ptr %1, ptr %11, align 8, !dbg !3673, !tbaa !2591
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3674
  store ptr %2, ptr %12, align 8, !dbg !3675, !tbaa !2594
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3676
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3677
  ret ptr %13, !dbg !3678
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3652 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3651, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %2, metadata !3657, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %3, metadata !3658, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %4, metadata !3659, metadata !DIExpression()), !dbg !3679
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3680
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3660, metadata !DIExpression()), !dbg !3681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3682, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %6, metadata !2577, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %1, metadata !2578, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %2, metadata !2579, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %6, metadata !2577, metadata !DIExpression()), !dbg !3683
  store i32 10, ptr %6, align 8, !dbg !3685, !tbaa !2520
  %7 = icmp ne ptr %1, null, !dbg !3686
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3687
  br i1 %9, label %11, label %10, !dbg !3687

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3688
  unreachable, !dbg !3688

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3689
  store ptr %1, ptr %12, align 8, !dbg !3690, !tbaa !2591
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3691
  store ptr %2, ptr %13, align 8, !dbg !3692, !tbaa !2594
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3693
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3694
  ret ptr %14, !dbg !3695
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3696 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %1, metadata !3701, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %2, metadata !3702, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i32 0, metadata !3646, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %0, metadata !3647, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %1, metadata !3648, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %2, metadata !3649, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3651, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %1, metadata !3657, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %2, metadata !3658, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 -1, metadata !3659, metadata !DIExpression()), !dbg !3706
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3708
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3660, metadata !DIExpression()), !dbg !3709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3710, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %4, metadata !2577, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %4, metadata !2577, metadata !DIExpression()), !dbg !3711
  store i32 10, ptr %4, align 8, !dbg !3713, !tbaa !2520
  %5 = icmp ne ptr %0, null, !dbg !3714
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3715
  br i1 %7, label %9, label %8, !dbg !3715

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3716
  unreachable, !dbg !3716

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3717
  store ptr %0, ptr %10, align 8, !dbg !3718, !tbaa !2591
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3719
  store ptr %1, ptr %11, align 8, !dbg !3720, !tbaa !2594
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3721
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3722
  ret ptr %12, !dbg !3723
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3724 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr %1, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr %2, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %3, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3651, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %1, metadata !3657, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %2, metadata !3658, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %3, metadata !3659, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3660, metadata !DIExpression()), !dbg !3736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3737, !tbaa.struct !3537
  call void @llvm.dbg.value(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %5, metadata !2577, metadata !DIExpression()), !dbg !3738
  store i32 10, ptr %5, align 8, !dbg !3740, !tbaa !2520
  %6 = icmp ne ptr %0, null, !dbg !3741
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3742
  br i1 %8, label %10, label %9, !dbg !3742

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3743
  unreachable, !dbg !3743

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3744
  store ptr %0, ptr %11, align 8, !dbg !3745, !tbaa !2591
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3746
  store ptr %1, ptr %12, align 8, !dbg !3747, !tbaa !2594
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3748
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3749
  ret ptr %13, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %1, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %2, metadata !3757, metadata !DIExpression()), !dbg !3758
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3759
  ret ptr %4, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i32 0, metadata !3755, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %1, metadata !3757, metadata !DIExpression()), !dbg !3768
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3770
  ret ptr %3, !dbg !3771
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3776, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %1, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata ptr %1, metadata !3756, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 -1, metadata !3757, metadata !DIExpression()), !dbg !3779
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3781
  ret ptr %3, !dbg !3782
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3783 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3787, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 0, metadata !3776, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %0, metadata !3777, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i32 0, metadata !3755, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 -1, metadata !3757, metadata !DIExpression()), !dbg !3791
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3793
  ret ptr %2, !dbg !3794
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3795 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3834, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %1, metadata !3835, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %2, metadata !3836, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %3, metadata !3837, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %4, metadata !3838, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %5, metadata !3839, metadata !DIExpression()), !dbg !3840
  %7 = icmp eq ptr %1, null, !dbg !3841
  br i1 %7, label %10, label %8, !dbg !3843

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3844
  br label %12, !dbg !3844

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.89, ptr noundef %2, ptr noundef %3) #37, !dbg !3845
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.3.91, i32 noundef 5) #37, !dbg !3846
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3846
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3847
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.5.93, i32 noundef 5) #37, !dbg !3848
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.94) #37, !dbg !3848
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3849
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
  ], !dbg !3850

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.7.95, i32 noundef 5) #37, !dbg !3851
  %21 = load ptr, ptr %4, align 8, !dbg !3851, !tbaa !840
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3851
  br label %147, !dbg !3853

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.8.96, i32 noundef 5) #37, !dbg !3854
  %25 = load ptr, ptr %4, align 8, !dbg !3854, !tbaa !840
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3854
  %27 = load ptr, ptr %26, align 8, !dbg !3854, !tbaa !840
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3854
  br label %147, !dbg !3855

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.9.97, i32 noundef 5) #37, !dbg !3856
  %31 = load ptr, ptr %4, align 8, !dbg !3856, !tbaa !840
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3856
  %33 = load ptr, ptr %32, align 8, !dbg !3856, !tbaa !840
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3856
  %35 = load ptr, ptr %34, align 8, !dbg !3856, !tbaa !840
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3856
  br label %147, !dbg !3857

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.10.98, i32 noundef 5) #37, !dbg !3858
  %39 = load ptr, ptr %4, align 8, !dbg !3858, !tbaa !840
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3858
  %41 = load ptr, ptr %40, align 8, !dbg !3858, !tbaa !840
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3858
  %43 = load ptr, ptr %42, align 8, !dbg !3858, !tbaa !840
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3858
  %45 = load ptr, ptr %44, align 8, !dbg !3858, !tbaa !840
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3858
  br label %147, !dbg !3859

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.11.99, i32 noundef 5) #37, !dbg !3860
  %49 = load ptr, ptr %4, align 8, !dbg !3860, !tbaa !840
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3860
  %51 = load ptr, ptr %50, align 8, !dbg !3860, !tbaa !840
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3860
  %53 = load ptr, ptr %52, align 8, !dbg !3860, !tbaa !840
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3860
  %55 = load ptr, ptr %54, align 8, !dbg !3860, !tbaa !840
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3860
  %57 = load ptr, ptr %56, align 8, !dbg !3860, !tbaa !840
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3860
  br label %147, !dbg !3861

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.12.100, i32 noundef 5) #37, !dbg !3862
  %61 = load ptr, ptr %4, align 8, !dbg !3862, !tbaa !840
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3862
  %63 = load ptr, ptr %62, align 8, !dbg !3862, !tbaa !840
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3862
  %65 = load ptr, ptr %64, align 8, !dbg !3862, !tbaa !840
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3862
  %67 = load ptr, ptr %66, align 8, !dbg !3862, !tbaa !840
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3862
  %69 = load ptr, ptr %68, align 8, !dbg !3862, !tbaa !840
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3862
  %71 = load ptr, ptr %70, align 8, !dbg !3862, !tbaa !840
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3862
  br label %147, !dbg !3863

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.13.101, i32 noundef 5) #37, !dbg !3864
  %75 = load ptr, ptr %4, align 8, !dbg !3864, !tbaa !840
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3864
  %77 = load ptr, ptr %76, align 8, !dbg !3864, !tbaa !840
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3864
  %79 = load ptr, ptr %78, align 8, !dbg !3864, !tbaa !840
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3864
  %81 = load ptr, ptr %80, align 8, !dbg !3864, !tbaa !840
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3864
  %83 = load ptr, ptr %82, align 8, !dbg !3864, !tbaa !840
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3864
  %85 = load ptr, ptr %84, align 8, !dbg !3864, !tbaa !840
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3864
  %87 = load ptr, ptr %86, align 8, !dbg !3864, !tbaa !840
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3864
  br label %147, !dbg !3865

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.14.102, i32 noundef 5) #37, !dbg !3866
  %91 = load ptr, ptr %4, align 8, !dbg !3866, !tbaa !840
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3866
  %93 = load ptr, ptr %92, align 8, !dbg !3866, !tbaa !840
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3866
  %95 = load ptr, ptr %94, align 8, !dbg !3866, !tbaa !840
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3866
  %97 = load ptr, ptr %96, align 8, !dbg !3866, !tbaa !840
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3866
  %99 = load ptr, ptr %98, align 8, !dbg !3866, !tbaa !840
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3866
  %101 = load ptr, ptr %100, align 8, !dbg !3866, !tbaa !840
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3866
  %103 = load ptr, ptr %102, align 8, !dbg !3866, !tbaa !840
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3866
  %105 = load ptr, ptr %104, align 8, !dbg !3866, !tbaa !840
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3866
  br label %147, !dbg !3867

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.15.103, i32 noundef 5) #37, !dbg !3868
  %109 = load ptr, ptr %4, align 8, !dbg !3868, !tbaa !840
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3868
  %111 = load ptr, ptr %110, align 8, !dbg !3868, !tbaa !840
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3868
  %113 = load ptr, ptr %112, align 8, !dbg !3868, !tbaa !840
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3868
  %115 = load ptr, ptr %114, align 8, !dbg !3868, !tbaa !840
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3868
  %117 = load ptr, ptr %116, align 8, !dbg !3868, !tbaa !840
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3868
  %119 = load ptr, ptr %118, align 8, !dbg !3868, !tbaa !840
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3868
  %121 = load ptr, ptr %120, align 8, !dbg !3868, !tbaa !840
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3868
  %123 = load ptr, ptr %122, align 8, !dbg !3868, !tbaa !840
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3868
  %125 = load ptr, ptr %124, align 8, !dbg !3868, !tbaa !840
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3868
  br label %147, !dbg !3869

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.16.104, i32 noundef 5) #37, !dbg !3870
  %129 = load ptr, ptr %4, align 8, !dbg !3870, !tbaa !840
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3870
  %131 = load ptr, ptr %130, align 8, !dbg !3870, !tbaa !840
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3870
  %133 = load ptr, ptr %132, align 8, !dbg !3870, !tbaa !840
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3870
  %135 = load ptr, ptr %134, align 8, !dbg !3870, !tbaa !840
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3870
  %137 = load ptr, ptr %136, align 8, !dbg !3870, !tbaa !840
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3870
  %139 = load ptr, ptr %138, align 8, !dbg !3870, !tbaa !840
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3870
  %141 = load ptr, ptr %140, align 8, !dbg !3870, !tbaa !840
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3870
  %143 = load ptr, ptr %142, align 8, !dbg !3870, !tbaa !840
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3870
  %145 = load ptr, ptr %144, align 8, !dbg !3870, !tbaa !840
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3870
  br label %147, !dbg !3871

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3873 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %2, metadata !3879, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %3, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %4, metadata !3881, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 0, metadata !3882, metadata !DIExpression()), !dbg !3883
  br label %6, !dbg !3884

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3886
  call void @llvm.dbg.value(metadata i64 %7, metadata !3882, metadata !DIExpression()), !dbg !3883
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3887
  %9 = load ptr, ptr %8, align 8, !dbg !3887, !tbaa !840
  %10 = icmp eq ptr %9, null, !dbg !3889
  %11 = add i64 %7, 1, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %11, metadata !3882, metadata !DIExpression()), !dbg !3883
  br i1 %10, label %12, label %6, !dbg !3889, !llvm.loop !3891

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3895 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3907, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata ptr %1, metadata !3908, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata ptr %2, metadata !3909, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata ptr %3, metadata !3910, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata ptr %4, metadata !3911, metadata !DIExpression()), !dbg !3915
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3916
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3913, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 0, metadata !3912, metadata !DIExpression()), !dbg !3915
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3912, metadata !DIExpression()), !dbg !3915
  %10 = icmp ult i32 %9, 41, !dbg !3918
  br i1 %10, label %11, label %16, !dbg !3918

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3918
  %13 = zext i32 %9 to i64, !dbg !3918
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3918
  %15 = add nuw nsw i32 %9, 8, !dbg !3918
  store i32 %15, ptr %4, align 8, !dbg !3918
  br label %19, !dbg !3918

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3918
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3918
  store ptr %18, ptr %7, align 8, !dbg !3918
  br label %19, !dbg !3918

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3918
  %22 = load ptr, ptr %21, align 8, !dbg !3918
  store ptr %22, ptr %6, align 16, !dbg !3921, !tbaa !840
  %23 = icmp eq ptr %22, null, !dbg !3922
  br i1 %23, label %128, label %24, !dbg !3923

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 1, metadata !3912, metadata !DIExpression()), !dbg !3915
  %25 = icmp ult i32 %20, 41, !dbg !3918
  br i1 %25, label %29, label %26, !dbg !3918

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3918
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3918
  store ptr %28, ptr %7, align 8, !dbg !3918
  br label %34, !dbg !3918

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3918
  %31 = zext i32 %20 to i64, !dbg !3918
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3918
  %33 = add nuw nsw i32 %20, 8, !dbg !3918
  store i32 %33, ptr %4, align 8, !dbg !3918
  br label %34, !dbg !3918

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3918
  %37 = load ptr, ptr %36, align 8, !dbg !3918
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3924
  store ptr %37, ptr %38, align 8, !dbg !3921, !tbaa !840
  %39 = icmp eq ptr %37, null, !dbg !3922
  br i1 %39, label %128, label %40, !dbg !3923

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 2, metadata !3912, metadata !DIExpression()), !dbg !3915
  %41 = icmp ult i32 %35, 41, !dbg !3918
  br i1 %41, label %45, label %42, !dbg !3918

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3918
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3918
  store ptr %44, ptr %7, align 8, !dbg !3918
  br label %50, !dbg !3918

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3918
  %47 = zext i32 %35 to i64, !dbg !3918
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3918
  %49 = add nuw nsw i32 %35, 8, !dbg !3918
  store i32 %49, ptr %4, align 8, !dbg !3918
  br label %50, !dbg !3918

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3918
  %53 = load ptr, ptr %52, align 8, !dbg !3918
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3924
  store ptr %53, ptr %54, align 16, !dbg !3921, !tbaa !840
  %55 = icmp eq ptr %53, null, !dbg !3922
  br i1 %55, label %128, label %56, !dbg !3923

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 3, metadata !3912, metadata !DIExpression()), !dbg !3915
  %57 = icmp ult i32 %51, 41, !dbg !3918
  br i1 %57, label %61, label %58, !dbg !3918

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3918
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3918
  store ptr %60, ptr %7, align 8, !dbg !3918
  br label %66, !dbg !3918

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3918
  %63 = zext i32 %51 to i64, !dbg !3918
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3918
  %65 = add nuw nsw i32 %51, 8, !dbg !3918
  store i32 %65, ptr %4, align 8, !dbg !3918
  br label %66, !dbg !3918

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3918
  %69 = load ptr, ptr %68, align 8, !dbg !3918
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3924
  store ptr %69, ptr %70, align 8, !dbg !3921, !tbaa !840
  %71 = icmp eq ptr %69, null, !dbg !3922
  br i1 %71, label %128, label %72, !dbg !3923

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 4, metadata !3912, metadata !DIExpression()), !dbg !3915
  %73 = icmp ult i32 %67, 41, !dbg !3918
  br i1 %73, label %77, label %74, !dbg !3918

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3918
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3918
  store ptr %76, ptr %7, align 8, !dbg !3918
  br label %82, !dbg !3918

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3918
  %79 = zext i32 %67 to i64, !dbg !3918
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3918
  %81 = add nuw nsw i32 %67, 8, !dbg !3918
  store i32 %81, ptr %4, align 8, !dbg !3918
  br label %82, !dbg !3918

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3918
  %85 = load ptr, ptr %84, align 8, !dbg !3918
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3924
  store ptr %85, ptr %86, align 16, !dbg !3921, !tbaa !840
  %87 = icmp eq ptr %85, null, !dbg !3922
  br i1 %87, label %128, label %88, !dbg !3923

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 5, metadata !3912, metadata !DIExpression()), !dbg !3915
  %89 = icmp ult i32 %83, 41, !dbg !3918
  br i1 %89, label %93, label %90, !dbg !3918

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3918
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3918
  store ptr %92, ptr %7, align 8, !dbg !3918
  br label %98, !dbg !3918

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3918
  %95 = zext i32 %83 to i64, !dbg !3918
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3918
  %97 = add nuw nsw i32 %83, 8, !dbg !3918
  store i32 %97, ptr %4, align 8, !dbg !3918
  br label %98, !dbg !3918

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3918
  %100 = load ptr, ptr %99, align 8, !dbg !3918
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3924
  store ptr %100, ptr %101, align 8, !dbg !3921, !tbaa !840
  %102 = icmp eq ptr %100, null, !dbg !3922
  br i1 %102, label %128, label %103, !dbg !3923

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3912, metadata !DIExpression()), !dbg !3915
  %104 = load ptr, ptr %7, align 8, !dbg !3918
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3918
  store ptr %105, ptr %7, align 8, !dbg !3918
  %106 = load ptr, ptr %104, align 8, !dbg !3918
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3924
  store ptr %106, ptr %107, align 16, !dbg !3921, !tbaa !840
  %108 = icmp eq ptr %106, null, !dbg !3922
  br i1 %108, label %128, label %109, !dbg !3923

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3912, metadata !DIExpression()), !dbg !3915
  %110 = load ptr, ptr %7, align 8, !dbg !3918
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3918
  store ptr %111, ptr %7, align 8, !dbg !3918
  %112 = load ptr, ptr %110, align 8, !dbg !3918
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3924
  store ptr %112, ptr %113, align 8, !dbg !3921, !tbaa !840
  %114 = icmp eq ptr %112, null, !dbg !3922
  br i1 %114, label %128, label %115, !dbg !3923

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3912, metadata !DIExpression()), !dbg !3915
  %116 = load ptr, ptr %7, align 8, !dbg !3918
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3918
  store ptr %117, ptr %7, align 8, !dbg !3918
  %118 = load ptr, ptr %116, align 8, !dbg !3918
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3924
  store ptr %118, ptr %119, align 16, !dbg !3921, !tbaa !840
  %120 = icmp eq ptr %118, null, !dbg !3922
  br i1 %120, label %128, label %121, !dbg !3923

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3912, metadata !DIExpression()), !dbg !3915
  %122 = load ptr, ptr %7, align 8, !dbg !3918
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3918
  store ptr %123, ptr %7, align 8, !dbg !3918
  %124 = load ptr, ptr %122, align 8, !dbg !3918
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3924
  store ptr %124, ptr %125, align 8, !dbg !3921, !tbaa !840
  %126 = icmp eq ptr %124, null, !dbg !3922
  %127 = select i1 %126, i64 9, i64 10, !dbg !3923
  br label %128, !dbg !3923

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3925
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3926
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3927
  ret void, !dbg !3927
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3928 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3932, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %1, metadata !3933, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %2, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %3, metadata !3935, metadata !DIExpression()), !dbg !3941
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3942
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3936, metadata !DIExpression()), !dbg !3943
  call void @llvm.va_start(ptr nonnull %5), !dbg !3944
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3945
  call void @llvm.va_end(ptr nonnull %5), !dbg !3946
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3947
  ret void, !dbg !3947
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3948 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3949, !tbaa !840
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %1), !dbg !3949
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.17.109, i32 noundef 5) #37, !dbg !3950
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.110) #37, !dbg !3950
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.19.111, i32 noundef 5) #37, !dbg !3951
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.112, ptr noundef nonnull @.str.21.113) #37, !dbg !3951
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.22.114, i32 noundef 5) #37, !dbg !3952
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.115) #37, !dbg !3952
  ret void, !dbg !3953
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3954 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %1, metadata !3960, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %2, metadata !3961, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !3968
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3970
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3976
  %5 = icmp eq ptr %4, null, !dbg !3978
  br i1 %5, label %6, label %7, !dbg !3980

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3981
  unreachable, !dbg !3981

7:                                                ; preds = %3
  ret ptr %4, !dbg !3982
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3964 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !3983
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3984
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3985
  %5 = icmp eq ptr %4, null, !dbg !3987
  br i1 %5, label %6, label %7, !dbg !3988

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3989
  unreachable, !dbg !3989

7:                                                ; preds = %3
  ret ptr %4, !dbg !3990
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3991 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3995, metadata !DIExpression()), !dbg !3996
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3997
  call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !3998
  %3 = icmp eq ptr %2, null, !dbg !4000
  br i1 %3, label %4, label %5, !dbg !4001

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4002
  unreachable, !dbg !4002

5:                                                ; preds = %1
  ret ptr %2, !dbg !4003
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4004 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4005 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4009, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %0, metadata !4011, metadata !DIExpression()), !dbg !4015
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !4018
  %3 = icmp eq ptr %2, null, !dbg !4020
  br i1 %3, label %4, label %5, !dbg !4021

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4022
  unreachable, !dbg !4022

5:                                                ; preds = %1
  ret ptr %2, !dbg !4023
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4024 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %0, metadata !3995, metadata !DIExpression()), !dbg !4030
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4032
  call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !4033
  %3 = icmp eq ptr %2, null, !dbg !4035
  br i1 %3, label %4, label %5, !dbg !4036

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4037
  unreachable, !dbg !4037

5:                                                ; preds = %1
  ret ptr %2, !dbg !4038
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4039 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4043, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !4044, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !4050, metadata !DIExpression()), !dbg !4051
  %3 = icmp eq i64 %1, 0, !dbg !4053
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4053
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4054
  call void @llvm.dbg.value(metadata ptr %5, metadata !3971, metadata !DIExpression()), !dbg !4055
  %6 = icmp eq ptr %5, null, !dbg !4057
  br i1 %6, label %7, label %8, !dbg !4058

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4059
  unreachable, !dbg !4059

8:                                                ; preds = %2
  ret ptr %5, !dbg !4060
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4061 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4062 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %1, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %1, metadata !4050, metadata !DIExpression()), !dbg !4075
  %3 = icmp eq i64 %1, 0, !dbg !4077
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4077
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4078
  call void @llvm.dbg.value(metadata ptr %5, metadata !3971, metadata !DIExpression()), !dbg !4079
  %6 = icmp eq ptr %5, null, !dbg !4081
  br i1 %6, label %7, label %8, !dbg !4082

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4083
  unreachable, !dbg !4083

8:                                                ; preds = %2
  ret ptr %5, !dbg !4084
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4085 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4089, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %2, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %0, metadata !4093, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %2, metadata !4097, metadata !DIExpression()), !dbg !4098
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4100
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !4101
  %5 = icmp eq ptr %4, null, !dbg !4103
  br i1 %5, label %6, label %7, !dbg !4104

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4105
  unreachable, !dbg !4105

7:                                                ; preds = %3
  ret ptr %4, !dbg !4106
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4107 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %1, metadata !4112, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr null, metadata !3963, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %0, metadata !3966, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()), !dbg !4114
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4116
  call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !4117
  %4 = icmp eq ptr %3, null, !dbg !4119
  br i1 %4, label %5, label %6, !dbg !4120

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4121
  unreachable, !dbg !4121

6:                                                ; preds = %2
  ret ptr %3, !dbg !4122
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4123 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4127, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %1, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr null, metadata !4089, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %0, metadata !4090, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr null, metadata !4093, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %0, metadata !4096, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4132
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4134
  call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !4135
  %4 = icmp eq ptr %3, null, !dbg !4137
  br i1 %4, label %5, label %6, !dbg !4138

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4139
  unreachable, !dbg !4139

6:                                                ; preds = %2
  ret ptr %3, !dbg !4140
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %1, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %0, metadata !783, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 1, metadata !785, metadata !DIExpression()), !dbg !4148
  %3 = load i64, ptr %1, align 8, !dbg !4150, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 %3, metadata !786, metadata !DIExpression()), !dbg !4148
  %4 = icmp eq ptr %0, null, !dbg !4151
  br i1 %4, label %5, label %8, !dbg !4153

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4154
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4157
  br label %15, !dbg !4157

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4158
  %10 = add nuw i64 %9, 1, !dbg !4158
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4158
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4158
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %13, metadata !786, metadata !DIExpression()), !dbg !4148
  br i1 %12, label %14, label %15, !dbg !4161

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4162
  unreachable, !dbg !4162

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4148
  call void @llvm.dbg.value(metadata i64 %16, metadata !786, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %16, metadata !3966, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 1, metadata !3967, metadata !DIExpression()), !dbg !4163
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4165
  call void @llvm.dbg.value(metadata ptr %17, metadata !3971, metadata !DIExpression()), !dbg !4166
  %18 = icmp eq ptr %17, null, !dbg !4168
  br i1 %18, label %19, label %20, !dbg !4169

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4170
  unreachable, !dbg !4170

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !4148
  store i64 %16, ptr %1, align 8, !dbg !4171, !tbaa !1136
  ret ptr %17, !dbg !4172
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !779 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !783, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %2, metadata !785, metadata !DIExpression()), !dbg !4173
  %4 = load i64, ptr %1, align 8, !dbg !4174, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 %4, metadata !786, metadata !DIExpression()), !dbg !4173
  %5 = icmp eq ptr %0, null, !dbg !4175
  br i1 %5, label %6, label %13, !dbg !4176

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4177
  br i1 %7, label %8, label %20, !dbg !4178

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4179
  call void @llvm.dbg.value(metadata i64 %9, metadata !786, metadata !DIExpression()), !dbg !4173
  %10 = icmp ugt i64 %2, 128, !dbg !4181
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %12, metadata !786, metadata !DIExpression()), !dbg !4173
  br label %20, !dbg !4183

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4184
  %15 = add nuw i64 %14, 1, !dbg !4184
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4184
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4184
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %18, metadata !786, metadata !DIExpression()), !dbg !4173
  br i1 %17, label %19, label %20, !dbg !4185

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4186
  unreachable, !dbg !4186

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4173
  call void @llvm.dbg.value(metadata i64 %21, metadata !786, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %21, metadata !3966, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !4187
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %22, metadata !3971, metadata !DIExpression()), !dbg !4190
  %23 = icmp eq ptr %22, null, !dbg !4192
  br i1 %23, label %24, label %25, !dbg !4193

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4194
  unreachable, !dbg !4194

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !783, metadata !DIExpression()), !dbg !4173
  store i64 %21, ptr %1, align 8, !dbg !4195, !tbaa !1136
  ret ptr %22, !dbg !4196
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !795, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %1, metadata !796, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %2, metadata !797, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %3, metadata !798, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %4, metadata !799, metadata !DIExpression()), !dbg !4197
  %6 = load i64, ptr %1, align 8, !dbg !4198, !tbaa !1136
  call void @llvm.dbg.value(metadata i64 %6, metadata !800, metadata !DIExpression()), !dbg !4197
  %7 = ashr i64 %6, 1, !dbg !4199
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4199
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4199
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %10, metadata !801, metadata !DIExpression()), !dbg !4197
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %11, metadata !801, metadata !DIExpression()), !dbg !4197
  %12 = icmp sgt i64 %3, -1, !dbg !4202
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4204
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %15, metadata !801, metadata !DIExpression()), !dbg !4197
  %16 = icmp slt i64 %4, 0, !dbg !4205
  br i1 %16, label %17, label %30, !dbg !4205

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4205
  br i1 %18, label %19, label %24, !dbg !4205

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4205
  %21 = udiv i64 9223372036854775807, %20, !dbg !4205
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4205
  br i1 %23, label %46, label %43, !dbg !4205

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4205
  br i1 %25, label %43, label %26, !dbg !4205

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4205
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4205
  %29 = icmp ult i64 %28, %15, !dbg !4205
  br i1 %29, label %46, label %43, !dbg !4205

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4205
  br i1 %31, label %43, label %32, !dbg !4205

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4205
  br i1 %33, label %34, label %40, !dbg !4205

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4205
  br i1 %35, label %43, label %36, !dbg !4205

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4205
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4205
  %39 = icmp ult i64 %38, %4, !dbg !4205
  br i1 %39, label %46, label %43, !dbg !4205

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4205
  br i1 %42, label %46, label %43, !dbg !4205

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !802, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4197
  %44 = mul i64 %15, %4, !dbg !4205
  call void @llvm.dbg.value(metadata i64 %44, metadata !802, metadata !DIExpression()), !dbg !4197
  %45 = icmp slt i64 %44, 128, !dbg !4205
  br i1 %45, label %46, label %51, !dbg !4205

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !803, metadata !DIExpression()), !dbg !4197
  %48 = sdiv i64 %47, %4, !dbg !4206
  call void @llvm.dbg.value(metadata i64 %48, metadata !801, metadata !DIExpression()), !dbg !4197
  %49 = srem i64 %47, %4, !dbg !4209
  %50 = sub nsw i64 %47, %49, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %50, metadata !802, metadata !DIExpression()), !dbg !4197
  br label %51, !dbg !4211

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4197
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4197
  call void @llvm.dbg.value(metadata i64 %53, metadata !802, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %52, metadata !801, metadata !DIExpression()), !dbg !4197
  %54 = icmp eq ptr %0, null, !dbg !4212
  br i1 %54, label %55, label %56, !dbg !4214

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4215, !tbaa !1136
  br label %56, !dbg !4216

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4217
  %58 = icmp slt i64 %57, %2, !dbg !4219
  br i1 %58, label %59, label %96, !dbg !4220

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4221
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4221
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4221
  call void @llvm.dbg.value(metadata i64 %62, metadata !801, metadata !DIExpression()), !dbg !4197
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4222
  br i1 %65, label %95, label %66, !dbg !4222

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4223

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4223
  br i1 %68, label %69, label %74, !dbg !4223

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4223
  %71 = udiv i64 9223372036854775807, %70, !dbg !4223
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4223
  br i1 %73, label %95, label %93, !dbg !4223

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4223
  br i1 %75, label %93, label %76, !dbg !4223

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4223
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4223
  %79 = icmp ult i64 %78, %62, !dbg !4223
  br i1 %79, label %95, label %93, !dbg !4223

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4223
  br i1 %81, label %93, label %82, !dbg !4223

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4223
  br i1 %83, label %84, label %90, !dbg !4223

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4223
  br i1 %85, label %93, label %86, !dbg !4223

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4223
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4223
  %89 = icmp ult i64 %88, %4, !dbg !4223
  br i1 %89, label %95, label %93, !dbg !4223

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4223
  br i1 %92, label %95, label %93, !dbg !4223

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !802, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4197
  %94 = mul i64 %62, %4, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %94, metadata !802, metadata !DIExpression()), !dbg !4197
  br label %96, !dbg !4224

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #39, !dbg !4225
  unreachable, !dbg !4225

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4197
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4197
  call void @llvm.dbg.value(metadata i64 %98, metadata !802, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %97, metadata !801, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %0, metadata !4043, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %98, metadata !4044, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %98, metadata !4050, metadata !DIExpression()), !dbg !4228
  %99 = icmp eq i64 %98, 0, !dbg !4230
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4230
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !4231
  call void @llvm.dbg.value(metadata ptr %101, metadata !3971, metadata !DIExpression()), !dbg !4232
  %102 = icmp eq ptr %101, null, !dbg !4234
  br i1 %102, label %103, label %104, !dbg !4235

103:                                              ; preds = %96
  tail call void @xalloc_die() #39, !dbg !4236
  unreachable, !dbg !4236

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !795, metadata !DIExpression()), !dbg !4197
  store i64 %97, ptr %1, align 8, !dbg !4237, !tbaa !1136
  ret ptr %101, !dbg !4238
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4239 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 1, metadata !4246, metadata !DIExpression()), !dbg !4247
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #42, !dbg !4249
  call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !4250
  %3 = icmp eq ptr %2, null, !dbg !4252
  br i1 %3, label %4, label %5, !dbg !4253

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4254
  unreachable, !dbg !4254

5:                                                ; preds = %1
  ret ptr %2, !dbg !4255
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4256 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4244 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %1, metadata !4246, metadata !DIExpression()), !dbg !4257
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #42, !dbg !4258
  call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !4259
  %4 = icmp eq ptr %3, null, !dbg !4261
  br i1 %4, label %5, label %6, !dbg !4262

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4263
  unreachable, !dbg !4263

6:                                                ; preds = %2
  ret ptr %3, !dbg !4264
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4265 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %0, metadata !4269, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 1, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %0, metadata !4275, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 1, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %0, metadata !4275, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 1, metadata !4278, metadata !DIExpression()), !dbg !4279
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #42, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !4282
  %3 = icmp eq ptr %2, null, !dbg !4284
  br i1 %3, label %4, label %5, !dbg !4285

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4286
  unreachable, !dbg !4286

5:                                                ; preds = %1
  ret ptr %2, !dbg !4287
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4270 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4269, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !4272, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %0, metadata !4275, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %0, metadata !4275, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()), !dbg !4289
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #42, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !4292
  %4 = icmp eq ptr %3, null, !dbg !4294
  br i1 %4, label %5, label %6, !dbg !4295

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4296
  unreachable, !dbg !4296

6:                                                ; preds = %2
  ret ptr %3, !dbg !4297
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4302, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()), !dbg !4305
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4307
  call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !4308
  %4 = icmp eq ptr %3, null, !dbg !4310
  br i1 %4, label %5, label %6, !dbg !4311

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4312
  unreachable, !dbg !4312

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4320
  ret ptr %3, !dbg !4321
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4322 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4326, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %1, metadata !4327, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 %1, metadata !4011, metadata !DIExpression()), !dbg !4331
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4333
  call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !4334
  %4 = icmp eq ptr %3, null, !dbg !4336
  br i1 %4, label %5, label %6, !dbg !4337

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4338
  unreachable, !dbg !4338

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4341
  ret ptr %3, !dbg !4342
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4343 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4347, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %1, metadata !4348, metadata !DIExpression()), !dbg !4350
  %3 = add nsw i64 %1, 1, !dbg !4351
  call void @llvm.dbg.value(metadata i64 %3, metadata !4009, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i64 %3, metadata !4011, metadata !DIExpression()), !dbg !4354
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4356
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !4357
  %5 = icmp eq ptr %4, null, !dbg !4359
  br i1 %5, label %6, label %7, !dbg !4360

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4361
  unreachable, !dbg !4361

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4349, metadata !DIExpression()), !dbg !4350
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4362
  store i8 0, ptr %8, align 1, !dbg !4363, !tbaa !919
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4366
  ret ptr %4, !dbg !4367
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4368 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4371
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !4372
  %3 = add i64 %2, 1, !dbg !4373
  call void @llvm.dbg.value(metadata ptr %0, metadata !4302, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %3, metadata !4303, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3995, metadata !DIExpression()), !dbg !4376
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4378
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !4379
  %5 = icmp eq ptr %4, null, !dbg !4381
  br i1 %5, label %6, label %7, !dbg !4382

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4383
  unreachable, !dbg !4383

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %3, metadata !4317, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4386
  ret ptr %4, !dbg !4387
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4388 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4393, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %1, metadata !4390, metadata !DIExpression()), !dbg !4394
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.132, ptr noundef nonnull @.str.2.133, i32 noundef 5) #37, !dbg !4393
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.134, ptr noundef %2) #37, !dbg !4393
  %3 = icmp eq i32 %1, 0, !dbg !4393
  tail call void @llvm.assume(i1 %3), !dbg !4393
  tail call void @abort() #39, !dbg !4395
  unreachable, !dbg !4395
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4396 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4434, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata ptr %1, metadata !4435, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4436, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4437, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8 0, metadata !4438, metadata !DIExpression()), !dbg !4458
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #37, !dbg !4459
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4439, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata ptr %1, metadata !4443, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata ptr %3, metadata !4445, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i32 0, metadata !4436, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4437, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8 0, metadata !4438, metadata !DIExpression()), !dbg !4458
  %4 = load i8, ptr %1, align 1, !dbg !4462, !tbaa !919
  %5 = icmp eq i8 %4, 0, !dbg !4463
  br i1 %5, label %6, label %7, !dbg !4464

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4445, metadata !DIExpression()), !dbg !4461
  store i8 0, ptr %3, align 16, !dbg !4465, !tbaa !919
  br label %74, !dbg !4466

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4436, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %11, metadata !4437, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata ptr %13, metadata !4443, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i8 %14, metadata !4438, metadata !DIExpression()), !dbg !4458
  %15 = sext i8 %8 to i32, !dbg !4462
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4467

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4436, metadata !DIExpression()), !dbg !4458
  %17 = icmp slt i64 %12, 80, !dbg !4468
  br i1 %17, label %18, label %47, !dbg !4471

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4472
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4461
  store i8 %8, ptr %9, align 1, !dbg !4473, !tbaa !919
  br label %47, !dbg !4474

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4436, metadata !DIExpression()), !dbg !4458
  %21 = or i32 %11, 576, !dbg !4475
  call void @llvm.dbg.value(metadata i32 %21, metadata !4437, metadata !DIExpression()), !dbg !4458
  %22 = icmp slt i64 %12, 80, !dbg !4476
  br i1 %22, label %23, label %47, !dbg !4478

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4479
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4461
  store i8 %8, ptr %9, align 1, !dbg !4480, !tbaa !919
  br label %47, !dbg !4481

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4436, metadata !DIExpression()), !dbg !4458
  %26 = or i32 %11, 1088, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %26, metadata !4437, metadata !DIExpression()), !dbg !4458
  %27 = icmp slt i64 %12, 80, !dbg !4483
  br i1 %27, label %28, label %47, !dbg !4485

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4486
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4461
  store i8 %8, ptr %9, align 1, !dbg !4487, !tbaa !919
  br label %47, !dbg !4488

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4437, metadata !DIExpression()), !dbg !4458
  %31 = icmp slt i64 %12, 80, !dbg !4489
  br i1 %31, label %32, label %47, !dbg !4491

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4492
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4461
  store i8 %8, ptr %9, align 1, !dbg !4493, !tbaa !919
  br label %47, !dbg !4494

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4436, metadata !DIExpression()), !dbg !4458
  %35 = icmp slt i64 %12, 80, !dbg !4495
  br i1 %35, label %36, label %47, !dbg !4497

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4498
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4461
  store i8 %8, ptr %9, align 1, !dbg !4499, !tbaa !919
  br label %47, !dbg !4500

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4501
  call void @llvm.dbg.value(metadata i32 %39, metadata !4437, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8 1, metadata !4438, metadata !DIExpression()), !dbg !4458
  br label %47, !dbg !4502

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %41, metadata !4437, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8 1, metadata !4438, metadata !DIExpression()), !dbg !4458
  br label %47, !dbg !4504

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #38, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %43, metadata !4446, metadata !DIExpression()), !dbg !4506
  %44 = sub nsw i64 80, %12, !dbg !4507
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %45, metadata !4446, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr %9, metadata !4510, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata ptr %13, metadata !4513, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i64 %45, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #37, !dbg !4517
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4518
  call void @llvm.dbg.value(metadata ptr %46, metadata !4445, metadata !DIExpression()), !dbg !4461
  br label %56, !dbg !4519

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4458
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4458
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4458
  call void @llvm.dbg.value(metadata i32 %51, metadata !4436, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %50, metadata !4437, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4461
  call void @llvm.dbg.value(metadata i8 %48, metadata !4438, metadata !DIExpression()), !dbg !4458
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4520
  call void @llvm.dbg.value(metadata ptr %52, metadata !4443, metadata !DIExpression()), !dbg !4461
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %53, metadata !4445, metadata !DIExpression()), !dbg !4461
  %54 = load i8, ptr %52, align 1, !dbg !4462, !tbaa !919
  %55 = icmp eq i8 %54, 0, !dbg !4463
  br i1 %55, label %56, label %7, !dbg !4464, !llvm.loop !4521

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4461
  call void @llvm.dbg.value(metadata ptr %60, metadata !4445, metadata !DIExpression()), !dbg !4461
  store i8 0, ptr %60, align 1, !dbg !4465, !tbaa !919
  %61 = and i8 %57, 1, !dbg !4523
  %62 = icmp eq i8 %61, 0, !dbg !4523
  br i1 %62, label %74, label %63, !dbg !4466

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4524
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #37, !dbg !4525
  call void @llvm.dbg.value(metadata i32 %65, metadata !4451, metadata !DIExpression()), !dbg !4526
  %66 = icmp slt i32 %65, 0, !dbg !4527
  br i1 %66, label %76, label %67, !dbg !4529

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #37, !dbg !4530
  call void @llvm.dbg.value(metadata ptr %68, metadata !4454, metadata !DIExpression()), !dbg !4526
  %69 = icmp eq ptr %68, null, !dbg !4531
  br i1 %69, label %70, label %76, !dbg !4532

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #40, !dbg !4533
  %72 = load i32, ptr %71, align 4, !dbg !4533, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %72, metadata !4455, metadata !DIExpression()), !dbg !4534
  %73 = tail call i32 @close(i32 noundef %65) #37, !dbg !4535
  store i32 %72, ptr %71, align 4, !dbg !4536, !tbaa !910
  br label %76, !dbg !4537

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4538, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr %1, metadata !4541, metadata !DIExpression()), !dbg !4542
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4544
  br label %76, !dbg !4545

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4458
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #37, !dbg !4546
  ret ptr %77, !dbg !4546
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4547 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !4550 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4553 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4554 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4557 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4595, metadata !DIExpression()), !dbg !4600
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !4601
  call void @llvm.dbg.value(metadata i1 poison, metadata !4596, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4600
  call void @llvm.dbg.value(metadata ptr %0, metadata !4602, metadata !DIExpression()), !dbg !4605
  %3 = load i32, ptr %0, align 8, !dbg !4607, !tbaa !1479
  %4 = and i32 %3, 32, !dbg !4608
  %5 = icmp eq i32 %4, 0, !dbg !4608
  call void @llvm.dbg.value(metadata i1 %5, metadata !4598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4600
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !4609
  %7 = icmp eq i32 %6, 0, !dbg !4610
  call void @llvm.dbg.value(metadata i1 %7, metadata !4599, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4600
  br i1 %5, label %8, label %18, !dbg !4611

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4613
  call void @llvm.dbg.value(metadata i1 %9, metadata !4596, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4600
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4614
  %11 = xor i1 %7, true, !dbg !4614
  %12 = sext i1 %11 to i32, !dbg !4614
  br i1 %10, label %21, label %13, !dbg !4614

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !4615
  %15 = load i32, ptr %14, align 4, !dbg !4615, !tbaa !910
  %16 = icmp ne i32 %15, 9, !dbg !4616
  %17 = sext i1 %16 to i32, !dbg !4617
  br label %21, !dbg !4617

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4618

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !4620
  store i32 0, ptr %20, align 4, !dbg !4622, !tbaa !910
  br label %21, !dbg !4620

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4600
  ret i32 %22, !dbg !4623
}

; Function Attrs: nounwind
declare !dbg !4624 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4632, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata ptr %1, metadata !4633, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i64 %2, metadata !4634, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata ptr %3, metadata !4635, metadata !DIExpression()), !dbg !4637
  %5 = icmp eq ptr %1, null, !dbg !4638
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4640
  %7 = select i1 %5, ptr @.str.141, ptr %1, !dbg !4640
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %8, metadata !4634, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata ptr %7, metadata !4633, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata ptr %6, metadata !4632, metadata !DIExpression()), !dbg !4637
  %9 = icmp eq ptr %3, null, !dbg !4641
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4643
  call void @llvm.dbg.value(metadata ptr %10, metadata !4635, metadata !DIExpression()), !dbg !4637
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %11, metadata !4636, metadata !DIExpression()), !dbg !4637
  %12 = icmp ult i64 %11, -3, !dbg !4645
  br i1 %12, label %13, label %17, !dbg !4647

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !4648
  %15 = icmp eq i32 %14, 0, !dbg !4648
  br i1 %15, label %16, label %29, !dbg !4649

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4650, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata ptr %10, metadata !4657, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i32 0, metadata !4660, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i64 8, metadata !4661, metadata !DIExpression()), !dbg !4662
  store i64 0, ptr %10, align 1, !dbg !4664
  br label %29, !dbg !4665

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4666
  br i1 %18, label %19, label %20, !dbg !4668

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4669
  unreachable, !dbg !4669

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4670

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4672
  br i1 %23, label %29, label %24, !dbg !4673

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4674
  br i1 %25, label %29, label %26, !dbg !4677

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4678, !tbaa !919
  %28 = zext i8 %27 to i32, !dbg !4679
  store i32 %28, ptr %6, align 4, !dbg !4680, !tbaa !910
  br label %29, !dbg !4681

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4637
  ret i64 %30, !dbg !4682
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4683 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4689 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4691, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata i64 %1, metadata !4692, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata i64 %2, metadata !4693, metadata !DIExpression()), !dbg !4695
  %4 = icmp eq i64 %2, 0, !dbg !4696
  br i1 %4, label %8, label %5, !dbg !4696

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4696
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4696
  br i1 %7, label %13, label %8, !dbg !4696

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4694, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4695
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4694, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4695
  %9 = mul i64 %2, %1, !dbg !4696
  call void @llvm.dbg.value(metadata i64 %9, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata ptr %0, metadata !4698, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %9, metadata !4701, metadata !DIExpression()), !dbg !4702
  %10 = icmp eq i64 %9, 0, !dbg !4704
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4704
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4705
  br label %15, !dbg !4706

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4694, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4695
  %14 = tail call ptr @__errno_location() #40, !dbg !4707
  store i32 12, ptr %14, align 4, !dbg !4709, !tbaa !910
  br label %15, !dbg !4710

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4695
  ret ptr %16, !dbg !4711
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4712 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4716, metadata !DIExpression()), !dbg !4721
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4722
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4717, metadata !DIExpression()), !dbg !4723
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4724
  %4 = icmp eq i32 %3, 0, !dbg !4724
  br i1 %4, label %5, label %12, !dbg !4726

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4727, metadata !DIExpression()), !dbg !4731
  %6 = load i16, ptr %2, align 16, !dbg !4734
  %7 = icmp eq i16 %6, 67, !dbg !4734
  br i1 %7, label %11, label %8, !dbg !4735

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4727, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr @.str.1.146, metadata !4730, metadata !DIExpression()), !dbg !4736
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.146, i64 6), !dbg !4738
  %10 = icmp eq i32 %9, 0, !dbg !4739
  br i1 %10, label %11, label %12, !dbg !4740

11:                                               ; preds = %8, %5
  br label %12, !dbg !4741

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4721
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4742
  ret i1 %13, !dbg !4742
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4747, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata ptr %1, metadata !4748, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %2, metadata !4749, metadata !DIExpression()), !dbg !4750
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4751
  ret i32 %4, !dbg !4752
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4757, metadata !DIExpression()), !dbg !4758
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4759
  ret ptr %2, !dbg !4760
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4763, metadata !DIExpression()), !dbg !4765
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4766
  call void @llvm.dbg.value(metadata ptr %2, metadata !4764, metadata !DIExpression()), !dbg !4765
  ret ptr %2, !dbg !4767
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4770, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata ptr %1, metadata !4771, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i64 %2, metadata !4772, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 %0, metadata !4763, metadata !DIExpression()), !dbg !4778
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4780
  call void @llvm.dbg.value(metadata ptr %4, metadata !4764, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr %4, metadata !4773, metadata !DIExpression()), !dbg !4777
  %5 = icmp eq ptr %4, null, !dbg !4781
  br i1 %5, label %6, label %9, !dbg !4782

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4783
  br i1 %7, label %19, label %8, !dbg !4786

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4787, !tbaa !919
  br label %19, !dbg !4788

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4789
  call void @llvm.dbg.value(metadata i64 %10, metadata !4774, metadata !DIExpression()), !dbg !4790
  %11 = icmp ult i64 %10, %2, !dbg !4791
  br i1 %11, label %12, label %14, !dbg !4793

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4794
  call void @llvm.dbg.value(metadata ptr %1, metadata !4796, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr %4, metadata !4799, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %13, metadata !4800, metadata !DIExpression()), !dbg !4801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4803
  br label %19, !dbg !4804

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4805
  br i1 %15, label %19, label %16, !dbg !4808

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4809
  call void @llvm.dbg.value(metadata ptr %1, metadata !4796, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %4, metadata !4799, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %17, metadata !4800, metadata !DIExpression()), !dbg !4811
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4813
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4814
  store i8 0, ptr %18, align 1, !dbg !4815, !tbaa !919
  br label %19, !dbg !4816

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4817
  ret i32 %20, !dbg !4818
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #34 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!74, !424, !428, !443, !723, !755, !758, !760, !763, !765, !767, !495, !509, !560, !769, !715, !775, !805, !807, !809, !739, !811, !814, !818, !820}
!llvm.ident = !{!822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822, !822}
!llvm.module.flags = !{!823, !824, !825, !826, !827, !828}

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
!73 = distinct !DIGlobalVariable(name: "longopts", scope: !74, file: !2, line: 74, type: !406, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !131, globals: !142, splitDebugInlining: false, nameTableKind: None)
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
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 46, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!142 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !143, !148, !153, !158, !163, !165, !170, !173, !175, !177, !180, !185, !190, !272, !274, !276, !281, !283, !285, !287, !289, !291, !293, !295, !297, !302, !307, !309, !311, !313, !315, !317, !319, !324, !329, !331, !336, !338, !340, !342, !344, !346, !351, !353, !355, !360, !365, !370, !375, !377, !382, !384, !386, !72, !388, !390, !395, !397, !399, !401}
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
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !136, line: 35, baseType: !242)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !49, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !145, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !77, line: 952, type: !372, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 25)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1536, elements: !20)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !409, line: 50, size: 256, elements: !410)
!409 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!410 = !{!411, !412, !413, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !409, line: 52, baseType: !138, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !408, file: !409, line: 55, baseType: !78, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !408, file: !409, line: 56, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !408, file: !409, line: 57, baseType: !78, size: 32, offset: 192)
!416 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!417 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!418 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !421, line: 3, type: !155, isLocal: true, isDefinition: true)
!421 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "Version", scope: !424, file: !421, line: 3, type: !138, isLocal: false, isDefinition: true)
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
!425 = !{!419, !422}
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "file_name", scope: !428, file: !429, line: 45, type: !138, isLocal: true, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !430, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!430 = !{!431, !433, !435, !437, !426, !439}
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !429, line: 121, type: !299, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !429, line: 121, type: !372, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !429, line: 123, type: !299, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !429, line: 126, type: !145, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !428, file: !429, line: 55, type: !172, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !443, file: !444, line: 66, type: !490, isLocal: false, isDefinition: true)
!443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !444, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !445, globals: !446, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!445 = !{!133, !140}
!446 = !{!447, !449, !469, !471, !473, !475, !441, !477, !479, !481, !483, !488}
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !444, line: 272, type: !69, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "old_file_name", scope: !451, file: !444, line: 304, type: !138, isLocal: true, isDefinition: true)
!451 = distinct !DISubprogram(name: "verror_at_line", scope: !444, file: !444, line: 298, type: !452, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !462)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !78, !78, !138, !84, !138, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !456)
!456 = !{!457, !459, !460, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !455, file: !458, baseType: !84, size: 32)
!458 = !DIFile(filename: "lib/error.c", directory: "/src")
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !455, file: !458, baseType: !84, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !455, file: !458, baseType: !133, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !455, file: !458, baseType: !133, size: 64, offset: 128)
!462 = !{!463, !464, !465, !466, !467, !468}
!463 = !DILocalVariable(name: "status", arg: 1, scope: !451, file: !444, line: 298, type: !78)
!464 = !DILocalVariable(name: "errnum", arg: 2, scope: !451, file: !444, line: 298, type: !78)
!465 = !DILocalVariable(name: "file_name", arg: 3, scope: !451, file: !444, line: 298, type: !138)
!466 = !DILocalVariable(name: "line_number", arg: 4, scope: !451, file: !444, line: 298, type: !84)
!467 = !DILocalVariable(name: "message", arg: 5, scope: !451, file: !444, line: 298, type: !138)
!468 = !DILocalVariable(name: "args", arg: 6, scope: !451, file: !444, line: 298, type: !454)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "old_line_number", scope: !451, file: !444, line: 305, type: !84, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !444, line: 338, type: !278, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !444, line: 346, type: !304, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !444, line: 346, type: !49, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "error_message_count", scope: !443, file: !444, line: 69, type: !84, isLocal: false, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !443, file: !444, line: 295, type: !78, isLocal: false, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !444, line: 208, type: !299, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !444, line: 208, type: !485, isLocal: true, isDefinition: true)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 21)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !444, line: 214, type: !69, isLocal: true, isDefinition: true)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "program_name", scope: !495, file: !496, line: 31, type: !138, isLocal: false, isDefinition: true)
!495 = distinct !DICompileUnit(language: DW_LANG_C11, file: !496, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !497, globals: !498, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!497 = !{!132}
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
!509 = distinct !DICompileUnit(language: DW_LANG_C11, file: !506, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !510, splitDebugInlining: false, nameTableKind: None)
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
!559 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !560, file: !536, line: 76, type: !632, isLocal: false, isDefinition: true)
!560 = distinct !DICompileUnit(language: DW_LANG_C11, file: !536, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !567, globals: !568, splitDebugInlining: false, nameTableKind: None)
!561 = !{!82, !562, !97}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !83, line: 254, baseType: !84, size: 32, elements: !563)
!563 = !{!564, !565, !566}
!564 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!565 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!566 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!567 = !{!78, !134, !135}
!568 = !{!534, !537, !539, !544, !546, !548, !550, !552, !554, !556, !558, !569, !573, !583, !585, !590, !592, !594, !596, !598, !621, !628, !630}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !560, file: !536, line: 92, type: !571, isLocal: false, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 320, elements: !60)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !560, file: !536, line: 1040, type: !575, isLocal: false, isDefinition: true)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !536, line: 56, size: 448, elements: !576)
!576 = !{!577, !578, !579, !581, !582}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !575, file: !536, line: 59, baseType: !82, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !536, line: 62, baseType: !78, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !575, file: !536, line: 66, baseType: !580, size: 256, offset: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !305)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !575, file: !536, line: 69, baseType: !138, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !575, file: !536, line: 72, baseType: !138, size: 64, offset: 384)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !560, file: !536, line: 107, type: !575, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "slot0", scope: !560, file: !536, line: 831, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 256)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !536, line: 321, type: !49, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !536, line: 357, type: !49, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !536, line: 358, type: !49, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !536, line: 199, type: !299, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "quote", scope: !600, file: !536, line: 228, type: !619, isLocal: true, isDefinition: true)
!600 = distinct !DISubprogram(name: "gettext_quote", scope: !536, file: !536, line: 197, type: !601, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!138, !138, !82}
!603 = !{!604, !605, !606, !607, !608}
!604 = !DILocalVariable(name: "msgid", arg: 1, scope: !600, file: !536, line: 197, type: !138)
!605 = !DILocalVariable(name: "s", arg: 2, scope: !600, file: !536, line: 197, type: !82)
!606 = !DILocalVariable(name: "translation", scope: !600, file: !536, line: 199, type: !138)
!607 = !DILocalVariable(name: "w", scope: !600, file: !536, line: 229, type: !516)
!608 = !DILocalVariable(name: "mbs", scope: !600, file: !536, line: 230, type: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !611, file: !524, line: 15, baseType: !78, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !611, file: !524, line: 20, baseType: !615, size: 32, offset: 32)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !524, line: 16, size: 32, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !615, file: !524, line: 18, baseType: !84, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !615, file: !524, line: 19, baseType: !278, size: 32)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !620)
!620 = !{!51, !280}
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "slotvec", scope: !560, file: !536, line: 834, type: !623, isLocal: true, isDefinition: true)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !536, line: 823, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !624, file: !536, line: 825, baseType: !135, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !624, file: !536, line: 826, baseType: !132, size: 64, offset: 64)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "nslots", scope: !560, file: !536, line: 832, type: !78, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "slotvec0", scope: !560, file: !536, line: 833, type: !624, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 704, elements: !380)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !636, line: 67, type: !372, isLocal: true, isDefinition: true)
!636 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !636, line: 69, type: !299, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !636, line: 83, type: !299, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !636, line: 83, type: !278, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !636, line: 85, type: !49, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !636, line: 88, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 171)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !636, line: 88, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 34)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !636, line: 105, type: !160, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !636, line: 109, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 23)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !636, line: 113, type: !664, isLocal: true, isDefinition: true)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 28)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !636, line: 120, type: !669, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 32)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !636, line: 127, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 36)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !636, line: 134, type: !326, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !636, line: 142, type: !681, isLocal: true, isDefinition: true)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 44)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !636, line: 150, type: !686, isLocal: true, isDefinition: true)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 48)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !636, line: 159, type: !167, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !636, line: 170, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 60)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !636, line: 248, type: !263, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !636, line: 248, type: !348, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !636, line: 254, type: !263, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !636, line: 254, type: !150, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !636, line: 254, type: !326, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !636, line: 259, type: !3, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !636, line: 259, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 29)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !715, file: !716, line: 26, type: !718, isLocal: false, isDefinition: true)
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !717, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!717 = !{!713}
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 47)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "exit_failure", scope: !723, file: !724, line: 24, type: !726, isLocal: false, isDefinition: true)
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!725 = !{!721}
!726 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !729, line: 34, type: !145, isLocal: true, isDefinition: true)
!729 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !729, line: 34, type: !299, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !729, line: 34, type: !321, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !736, line: 108, type: !54, isLocal: true, isDefinition: true)
!736 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "internal_state", scope: !739, file: !736, line: 97, type: !742, isLocal: true, isDefinition: true)
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !740, globals: !741, splitDebugInlining: false, nameTableKind: None)
!740 = !{!133, !135, !140}
!741 = !{!734, !737}
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !744, file: !524, line: 15, baseType: !78, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !744, file: !524, line: 20, baseType: !748, size: 32, offset: 32)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !744, file: !524, line: 16, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !748, file: !524, line: 18, baseType: !84, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !748, file: !524, line: 19, baseType: !278, size: 32)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !754, line: 35, type: !19, isLocal: true, isDefinition: true)
!754 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!757 = !{!122}
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!762 = !{!133}
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !636, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !770, retainedTypes: !762, globals: !774, splitDebugInlining: false, nameTableKind: None)
!770 = !{!771}
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !636, line: 40, baseType: !84, size: 32, elements: !772)
!772 = !{!773}
!773 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!774 = !{!634, !637, !639, !641, !643, !645, !650, !655, !657, !662, !667, !672, !677, !679, !684, !689, !691, !696, !698, !700, !702, !704, !706, !708}
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !777, retainedTypes: !804, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!777 = !{!778, !789}
!778 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !779, file: !776, line: 188, baseType: !84, size: 32, elements: !787)
!779 = distinct !DISubprogram(name: "x2nrealloc", scope: !776, file: !776, line: 176, type: !780, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!133, !133, !179, !135}
!782 = !{!783, !784, !785, !786}
!783 = !DILocalVariable(name: "p", arg: 1, scope: !779, file: !776, line: 176, type: !133)
!784 = !DILocalVariable(name: "pn", arg: 2, scope: !779, file: !776, line: 176, type: !179)
!785 = !DILocalVariable(name: "s", arg: 3, scope: !779, file: !776, line: 176, type: !135)
!786 = !DILocalVariable(name: "n", scope: !779, file: !776, line: 178, type: !135)
!787 = !{!788}
!788 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!789 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !790, file: !776, line: 228, baseType: !84, size: 32, elements: !787)
!790 = distinct !DISubprogram(name: "xpalloc", scope: !776, file: !776, line: 223, type: !791, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{!133, !133, !793, !392, !394, !392}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803}
!795 = !DILocalVariable(name: "pa", arg: 1, scope: !790, file: !776, line: 223, type: !133)
!796 = !DILocalVariable(name: "pn", arg: 2, scope: !790, file: !776, line: 223, type: !793)
!797 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !790, file: !776, line: 223, type: !392)
!798 = !DILocalVariable(name: "n_max", arg: 4, scope: !790, file: !776, line: 223, type: !394)
!799 = !DILocalVariable(name: "s", arg: 5, scope: !790, file: !776, line: 223, type: !392)
!800 = !DILocalVariable(name: "n0", scope: !790, file: !776, line: 230, type: !392)
!801 = !DILocalVariable(name: "n", scope: !790, file: !776, line: 237, type: !392)
!802 = !DILocalVariable(name: "nbytes", scope: !790, file: !776, line: 248, type: !392)
!803 = !DILocalVariable(name: "adjusted_nbytes", scope: !790, file: !776, line: 252, type: !392)
!804 = !{!132, !133, !172, !242, !137}
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !806, splitDebugInlining: false, nameTableKind: None)
!806 = !{!727, !730, !732}
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !813, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!813 = !{!172, !137, !133}
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !815, splitDebugInlining: false, nameTableKind: None)
!815 = !{!816, !752}
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !754, line: 35, type: !49, isLocal: true, isDefinition: true)
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!822 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!823 = !{i32 7, !"Dwarf Version", i32 5}
!824 = !{i32 2, !"Debug Info Version", i32 3}
!825 = !{i32 1, !"wchar_size", i32 4}
!826 = !{i32 8, !"PIC Level", i32 2}
!827 = !{i32 7, !"PIE Level", i32 2}
!828 = !{i32 7, !"uwtable", i32 2}
!829 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 447, type: !830, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !78}
!832 = !{!833}
!833 = !DILocalVariable(name: "status", arg: 1, scope: !829, file: !2, line: 447, type: !78)
!834 = !DILocation(line: 0, scope: !829)
!835 = !DILocation(line: 449, column: 14, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !2, line: 449, column: 7)
!837 = !DILocation(line: 449, column: 7, scope: !829)
!838 = !DILocation(line: 450, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !2, line: 450, column: 5)
!840 = !{!841, !841, i64 0}
!841 = !{!"any pointer", !842, i64 0}
!842 = !{!"omnipotent char", !843, i64 0}
!843 = !{!"Simple C/C++ TBAA"}
!844 = !DILocation(line: 453, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !836, file: !2, line: 452, column: 5)
!846 = !DILocation(line: 457, column: 7, scope: !845)
!847 = !DILocation(line: 729, column: 3, scope: !848, inlinedAt: !850)
!848 = distinct !DISubprogram(name: "emit_stdin_note", scope: !77, file: !77, line: 727, type: !491, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !849)
!849 = !{}
!850 = distinct !DILocation(line: 464, column: 7, scope: !845)
!851 = !DILocation(line: 736, column: 3, scope: !852, inlinedAt: !853)
!852 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !491, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !849)
!853 = distinct !DILocation(line: 465, column: 7, scope: !845)
!854 = !DILocation(line: 467, column: 7, scope: !845)
!855 = !DILocation(line: 472, column: 7, scope: !845)
!856 = !DILocation(line: 478, column: 7, scope: !845)
!857 = !DILocation(line: 482, column: 7, scope: !845)
!858 = !DILocation(line: 483, column: 7, scope: !845)
!859 = !DILocalVariable(name: "program", arg: 1, scope: !860, file: !77, line: 836, type: !138)
!860 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !861, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !138}
!863 = !{!859, !864, !871, !872, !874, !875}
!864 = !DILocalVariable(name: "infomap", scope: !860, file: !77, line: 838, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 896, elements: !300)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !860, file: !77, line: 838, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !867, file: !77, line: 838, baseType: !138, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !867, file: !77, line: 838, baseType: !138, size: 64, offset: 64)
!871 = !DILocalVariable(name: "node", scope: !860, file: !77, line: 848, type: !138)
!872 = !DILocalVariable(name: "map_prog", scope: !860, file: !77, line: 849, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!874 = !DILocalVariable(name: "lc_messages", scope: !860, file: !77, line: 861, type: !138)
!875 = !DILocalVariable(name: "url_program", scope: !860, file: !77, line: 874, type: !138)
!876 = !DILocation(line: 0, scope: !860, inlinedAt: !877)
!877 = distinct !DILocation(line: 485, column: 7, scope: !845)
!878 = !DILocation(line: 857, column: 3, scope: !860, inlinedAt: !877)
!879 = !DILocation(line: 861, column: 29, scope: !860, inlinedAt: !877)
!880 = !DILocation(line: 862, column: 7, scope: !881, inlinedAt: !877)
!881 = distinct !DILexicalBlock(scope: !860, file: !77, line: 862, column: 7)
!882 = !DILocation(line: 862, column: 19, scope: !881, inlinedAt: !877)
!883 = !DILocation(line: 862, column: 22, scope: !881, inlinedAt: !877)
!884 = !DILocation(line: 862, column: 7, scope: !860, inlinedAt: !877)
!885 = !DILocation(line: 868, column: 7, scope: !886, inlinedAt: !877)
!886 = distinct !DILexicalBlock(scope: !881, file: !77, line: 863, column: 5)
!887 = !DILocation(line: 870, column: 5, scope: !886, inlinedAt: !877)
!888 = !DILocation(line: 875, column: 3, scope: !860, inlinedAt: !877)
!889 = !DILocation(line: 877, column: 3, scope: !860, inlinedAt: !877)
!890 = !DILocation(line: 487, column: 3, scope: !829)
!891 = !DISubprogram(name: "dcgettext", scope: !892, file: !892, line: 51, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!892 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!893 = !DISubroutineType(types: !894)
!894 = !{!132, !138, !138, !78}
!895 = !DISubprogram(name: "__fprintf_chk", scope: !896, file: !896, line: 93, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!896 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!897 = !DISubroutineType(types: !898)
!898 = !{!78, !899, !78, !900, null}
!899 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !214)
!900 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!901 = !DISubprogram(name: "__printf_chk", scope: !896, file: !896, line: 95, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!902 = !DISubroutineType(types: !903)
!903 = !{!78, !78, !900, null}
!904 = !DISubprogram(name: "fputs_unlocked", scope: !905, file: !905, line: 691, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!905 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!906 = !DISubroutineType(types: !907)
!907 = !{!78, !900, !899}
!908 = !DILocation(line: 0, scope: !192)
!909 = !DILocation(line: 581, column: 7, scope: !200)
!910 = !{!911, !911, i64 0}
!911 = !{!"int", !842, i64 0}
!912 = !DILocation(line: 581, column: 19, scope: !200)
!913 = !DILocation(line: 581, column: 7, scope: !192)
!914 = !DILocation(line: 585, column: 26, scope: !199)
!915 = !DILocation(line: 0, scope: !199)
!916 = !DILocation(line: 586, column: 23, scope: !199)
!917 = !DILocation(line: 586, column: 28, scope: !199)
!918 = !DILocation(line: 586, column: 32, scope: !199)
!919 = !{!842, !842, i64 0}
!920 = !DILocation(line: 586, column: 38, scope: !199)
!921 = !DILocalVariable(name: "__s1", arg: 1, scope: !922, file: !923, line: 1359, type: !138)
!922 = distinct !DISubprogram(name: "streq", scope: !923, file: !923, line: 1359, type: !924, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !926)
!923 = !DIFile(filename: "./lib/string.h", directory: "/src")
!924 = !DISubroutineType(types: !925)
!925 = !{!172, !138, !138}
!926 = !{!921, !927}
!927 = !DILocalVariable(name: "__s2", arg: 2, scope: !922, file: !923, line: 1359, type: !138)
!928 = !DILocation(line: 0, scope: !922, inlinedAt: !929)
!929 = distinct !DILocation(line: 586, column: 41, scope: !199)
!930 = !DILocation(line: 1361, column: 11, scope: !922, inlinedAt: !929)
!931 = !DILocation(line: 1361, column: 10, scope: !922, inlinedAt: !929)
!932 = !DILocation(line: 586, column: 19, scope: !199)
!933 = !DILocation(line: 587, column: 5, scope: !199)
!934 = !DILocation(line: 588, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !192, file: !77, line: 588, column: 7)
!936 = !DILocation(line: 588, column: 7, scope: !192)
!937 = !DILocation(line: 590, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !77, line: 589, column: 5)
!939 = !DILocation(line: 591, column: 7, scope: !938)
!940 = !DILocation(line: 595, column: 37, scope: !192)
!941 = !DILocation(line: 595, column: 35, scope: !192)
!942 = !DILocation(line: 596, column: 29, scope: !192)
!943 = !DILocation(line: 597, column: 8, scope: !207)
!944 = !DILocation(line: 597, column: 7, scope: !192)
!945 = !DILocation(line: 604, column: 24, scope: !206)
!946 = !DILocation(line: 604, column: 12, scope: !207)
!947 = !DILocation(line: 0, scope: !205)
!948 = !DILocation(line: 610, column: 16, scope: !205)
!949 = !DILocation(line: 610, column: 7, scope: !205)
!950 = !DILocation(line: 611, column: 21, scope: !205)
!951 = !{!952, !952, i64 0}
!952 = !{!"short", !842, i64 0}
!953 = !DILocation(line: 611, column: 19, scope: !205)
!954 = !DILocation(line: 611, column: 16, scope: !205)
!955 = !DILocation(line: 610, column: 30, scope: !205)
!956 = distinct !{!956, !949, !950, !957}
!957 = !{!"llvm.loop.mustprogress"}
!958 = !DILocation(line: 612, column: 18, scope: !959)
!959 = distinct !DILexicalBlock(scope: !205, file: !77, line: 612, column: 11)
!960 = !DILocation(line: 612, column: 11, scope: !205)
!961 = !DILocation(line: 618, column: 5, scope: !205)
!962 = !DILocation(line: 620, column: 23, scope: !192)
!963 = !DILocation(line: 625, column: 39, scope: !192)
!964 = !DILocation(line: 626, column: 3, scope: !192)
!965 = !DILocation(line: 626, column: 10, scope: !192)
!966 = !DILocation(line: 626, column: 21, scope: !192)
!967 = !DILocation(line: 628, column: 44, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !77, line: 628, column: 11)
!969 = distinct !DILexicalBlock(scope: !192, file: !77, line: 627, column: 5)
!970 = !DILocation(line: 628, column: 32, scope: !968)
!971 = !DILocation(line: 628, column: 49, scope: !968)
!972 = !DILocation(line: 628, column: 11, scope: !969)
!973 = !DILocation(line: 630, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !77, line: 630, column: 11)
!975 = !DILocation(line: 630, column: 11, scope: !969)
!976 = !DILocation(line: 632, column: 26, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !77, line: 632, column: 15)
!978 = distinct !DILexicalBlock(scope: !974, file: !77, line: 631, column: 9)
!979 = !DILocation(line: 632, column: 34, scope: !977)
!980 = !DILocation(line: 632, column: 37, scope: !977)
!981 = !DILocation(line: 632, column: 15, scope: !978)
!982 = !DILocation(line: 636, column: 16, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !77, line: 636, column: 15)
!984 = !DILocation(line: 636, column: 29, scope: !983)
!985 = !DILocation(line: 640, column: 16, scope: !969)
!986 = distinct !{!986, !964, !987, !957}
!987 = !DILocation(line: 641, column: 5, scope: !192)
!988 = !DILocation(line: 644, column: 3, scope: !192)
!989 = !DILocation(line: 0, scope: !922, inlinedAt: !990)
!990 = distinct !DILocation(line: 648, column: 31, scope: !192)
!991 = !DILocation(line: 0, scope: !922, inlinedAt: !992)
!992 = distinct !DILocation(line: 649, column: 31, scope: !192)
!993 = !DILocation(line: 0, scope: !922, inlinedAt: !994)
!994 = distinct !DILocation(line: 650, column: 31, scope: !192)
!995 = !DILocation(line: 0, scope: !922, inlinedAt: !996)
!996 = distinct !DILocation(line: 651, column: 31, scope: !192)
!997 = !DILocation(line: 0, scope: !922, inlinedAt: !998)
!998 = distinct !DILocation(line: 652, column: 31, scope: !192)
!999 = !DILocation(line: 0, scope: !922, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 653, column: 31, scope: !192)
!1001 = !DILocation(line: 0, scope: !922, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 654, column: 31, scope: !192)
!1003 = !DILocation(line: 0, scope: !922, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 655, column: 31, scope: !192)
!1005 = !DILocation(line: 0, scope: !922, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 656, column: 31, scope: !192)
!1007 = !DILocation(line: 0, scope: !922, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 657, column: 31, scope: !192)
!1009 = !DILocation(line: 663, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !192, file: !77, line: 663, column: 7)
!1011 = !DILocation(line: 664, column: 7, scope: !1010)
!1012 = !DILocation(line: 664, column: 10, scope: !1010)
!1013 = !DILocation(line: 663, column: 7, scope: !192)
!1014 = !DILocation(line: 669, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !77, line: 665, column: 5)
!1016 = !DILocation(line: 671, column: 5, scope: !1015)
!1017 = !DILocation(line: 676, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !77, line: 673, column: 5)
!1019 = !DILocation(line: 679, column: 3, scope: !192)
!1020 = !DILocation(line: 683, column: 3, scope: !192)
!1021 = !DILocation(line: 686, column: 3, scope: !192)
!1022 = !DILocation(line: 688, column: 3, scope: !192)
!1023 = !DILocation(line: 691, column: 3, scope: !192)
!1024 = !DILocation(line: 695, column: 3, scope: !192)
!1025 = !DILocation(line: 696, column: 1, scope: !192)
!1026 = !DISubprogram(name: "setlocale", scope: !1027, file: !1027, line: 122, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1027 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!132, !78, !138}
!1030 = !DISubprogram(name: "strncmp", scope: !1031, file: !1031, line: 159, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1031 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!78, !138, !138, !135}
!1034 = !DISubprogram(name: "exit", scope: !1035, file: !1035, line: 624, type: !830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1035 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1036 = !DISubprogram(name: "getenv", scope: !1035, file: !1035, line: 641, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!132, !138}
!1039 = !DISubprogram(name: "strcmp", scope: !1031, file: !1031, line: 156, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!78, !138, !138}
!1042 = !DISubprogram(name: "strspn", scope: !1031, file: !1031, line: 297, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!137, !138, !138}
!1045 = !DISubprogram(name: "strchr", scope: !1031, file: !1031, line: 246, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!132, !138, !78}
!1048 = !DISubprogram(name: "__ctype_b_loc", scope: !98, file: !98, line: 79, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1054 = !DISubprogram(name: "strcspn", scope: !1031, file: !1031, line: 293, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1055 = !DISubprogram(name: "fwrite_unlocked", scope: !905, file: !905, line: 704, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!135, !1058, !135, !135, !899}
!1058 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1061 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 491, type: !1062, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1065)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!78, !78, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071}
!1066 = !DILocalVariable(name: "argc", arg: 1, scope: !1061, file: !2, line: 491, type: !78)
!1067 = !DILocalVariable(name: "argv", arg: 2, scope: !1061, file: !2, line: 491, type: !1064)
!1068 = !DILocalVariable(name: "optc", scope: !1061, file: !2, line: 493, type: !78)
!1069 = !DILocalVariable(name: "delim_arg", scope: !1061, file: !2, line: 494, type: !138)
!1070 = !DILocalVariable(name: "nfiles", scope: !1061, file: !2, line: 530, type: !78)
!1071 = !DILocalVariable(name: "ok", scope: !1061, file: !2, line: 546, type: !172)
!1072 = !DILocation(line: 0, scope: !1061)
!1073 = !DILocation(line: 497, column: 21, scope: !1061)
!1074 = !DILocation(line: 497, column: 3, scope: !1061)
!1075 = !DILocation(line: 498, column: 3, scope: !1061)
!1076 = !DILocation(line: 499, column: 3, scope: !1061)
!1077 = !DILocation(line: 500, column: 3, scope: !1061)
!1078 = !DILocation(line: 502, column: 3, scope: !1061)
!1079 = !DILocation(line: 504, column: 3, scope: !1061)
!1080 = !DILocation(line: 504, column: 18, scope: !1061)
!1081 = !DILocation(line: 510, column: 24, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 507, column: 9)
!1083 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 505, column: 5)
!1084 = !DILocation(line: 510, column: 34, scope: !1082)
!1085 = !DILocation(line: 511, column: 11, scope: !1082)
!1086 = distinct !{!1086, !1079, !1087, !957}
!1087 = !DILocation(line: 528, column: 5, scope: !1061)
!1088 = !DILocation(line: 514, column: 24, scope: !1082)
!1089 = !DILocation(line: 515, column: 11, scope: !1082)
!1090 = !DILocation(line: 518, column: 22, scope: !1082)
!1091 = !DILocation(line: 519, column: 11, scope: !1082)
!1092 = !DILocation(line: 521, column: 9, scope: !1082)
!1093 = !DILocation(line: 523, column: 9, scope: !1082)
!1094 = !DILocation(line: 526, column: 11, scope: !1082)
!1095 = !DILocation(line: 530, column: 23, scope: !1061)
!1096 = !DILocation(line: 530, column: 21, scope: !1061)
!1097 = !DILocation(line: 531, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 531, column: 7)
!1099 = !DILocation(line: 531, column: 7, scope: !1061)
!1100 = !DILocation(line: 533, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 532, column: 5)
!1102 = !DILocation(line: 533, column: 20, scope: !1101)
!1103 = !DILocation(line: 535, column: 5, scope: !1101)
!1104 = !DILocalVariable(name: "strptr", arg: 1, scope: !1105, file: !2, line: 93, type: !138)
!1105 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 93, type: !1106, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!78, !138}
!1108 = !{!1104, !1109, !1110, !1111, !1112, !1113, !1121}
!1109 = !DILocalVariable(name: "strout", scope: !1105, file: !2, line: 95, type: !132)
!1110 = !DILocalVariable(name: "backslash_at_end", scope: !1105, file: !2, line: 96, type: !172)
!1111 = !DILocalVariable(name: "s", scope: !1105, file: !2, line: 101, type: !138)
!1112 = !DILocalVariable(name: "idx", scope: !1105, file: !2, line: 102, type: !392)
!1113 = !DILocalVariable(name: "g", scope: !1114, file: !2, line: 142, type: !1115)
!1114 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 105, column: 5)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !113, line: 143, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 138, size: 64, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1116, file: !113, line: 140, baseType: !516, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1116, file: !113, line: 141, baseType: !140, size: 8, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1116, file: !113, line: 142, baseType: !140, size: 8, offset: 40)
!1121 = !DILabel(scope: !1114, name: "copy_character", file: !2, line: 141)
!1122 = !DILocation(line: 0, scope: !1105, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 537, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 537, column: 7)
!1125 = !DILocation(line: 95, column: 18, scope: !1105, inlinedAt: !1123)
!1126 = !DILocation(line: 98, column: 10, scope: !1105, inlinedAt: !1123)
!1127 = !DILocation(line: 99, column: 26, scope: !1105, inlinedAt: !1123)
!1128 = !DILocation(line: 99, column: 16, scope: !1105, inlinedAt: !1123)
!1129 = !DILocation(line: 99, column: 14, scope: !1105, inlinedAt: !1123)
!1130 = !DILocation(line: 104, column: 10, scope: !1105, inlinedAt: !1123)
!1131 = !DILocation(line: 104, column: 3, scope: !1105, inlinedAt: !1123)
!1132 = !DILocation(line: 148, column: 11, scope: !1105, inlinedAt: !1123)
!1133 = !DILocation(line: 152, column: 21, scope: !1134, inlinedAt: !1123)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 151, column: 5)
!1135 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 150, column: 7)
!1136 = !{!1137, !1137, i64 0}
!1137 = !{!"long", !842, i64 0}
!1138 = !DILocation(line: 537, column: 7, scope: !1061)
!1139 = !DILocation(line: 106, column: 14, scope: !1140, inlinedAt: !1123)
!1140 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 106, column: 11)
!1141 = !DILocation(line: 106, column: 11, scope: !1114, inlinedAt: !1123)
!1142 = !DILocation(line: 108, column: 12, scope: !1143, inlinedAt: !1123)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 107, column: 9)
!1144 = !DILocation(line: 109, column: 15, scope: !1145, inlinedAt: !1123)
!1145 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 109, column: 15)
!1146 = !DILocation(line: 109, column: 15, scope: !1143, inlinedAt: !1123)
!1147 = !DILocation(line: 122, column: 15, scope: !1148, inlinedAt: !1123)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 121, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 114, column: 20)
!1150 = !DILocation(line: 0, scope: !1151, inlinedAt: !1123)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 123, column: 17)
!1152 = !DILocation(line: 0, scope: !1149, inlinedAt: !1123)
!1153 = !DILocation(line: 138, column: 11, scope: !1143, inlinedAt: !1123)
!1154 = !DILocation(line: 0, scope: !1114, inlinedAt: !1123)
!1155 = distinct !{!1155, !1131, !1156, !957}
!1156 = !DILocation(line: 146, column: 5, scope: !1105, inlinedAt: !1123)
!1157 = !DILocation(line: 291, column: 21, scope: !1158, inlinedAt: !1168)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !113, line: 291, column: 7)
!1159 = distinct !DISubprogram(name: "mcel_scant", scope: !113, file: !113, line: 288, type: !1160, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1115, !138, !4}
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DILocalVariable(name: "p", arg: 1, scope: !1159, file: !113, line: 288, type: !138)
!1164 = !DILocalVariable(name: "terminator", arg: 2, scope: !1159, file: !113, line: 288, type: !4)
!1165 = !DILocalVariable(name: "lim", scope: !1159, file: !113, line: 296, type: !138)
!1166 = !DILocalVariable(name: "i", scope: !1167, file: !113, line: 297, type: !78)
!1167 = distinct !DILexicalBlock(scope: !1159, file: !113, line: 297, column: 3)
!1168 = distinct !DILocation(line: 309, column: 10, scope: !1169, inlinedAt: !1174)
!1169 = distinct !DISubprogram(name: "mcel_scanz", scope: !113, file: !113, line: 307, type: !1170, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1115, !138}
!1172 = !{!1173}
!1173 = !DILocalVariable(name: "p", arg: 1, scope: !1169, file: !113, line: 307, type: !138)
!1174 = distinct !DILocation(line: 142, column: 18, scope: !1114, inlinedAt: !1123)
!1175 = !DILocation(line: 141, column: 7, scope: !1114, inlinedAt: !1123)
!1176 = !DILocation(line: 0, scope: !1169, inlinedAt: !1174)
!1177 = !DILocation(line: 0, scope: !1159, inlinedAt: !1168)
!1178 = !DILocalVariable(name: "c", arg: 1, scope: !1179, file: !113, line: 215, type: !4)
!1179 = distinct !DISubprogram(name: "mcel_isbasic", scope: !113, file: !113, line: 215, type: !1180, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!172, !4}
!1182 = !{!1178}
!1183 = !DILocation(line: 0, scope: !1179, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 291, column: 7, scope: !1158, inlinedAt: !1168)
!1185 = !DILocation(line: 217, column: 10, scope: !1179, inlinedAt: !1184)
!1186 = !DILocation(line: 291, column: 7, scope: !1159, inlinedAt: !1168)
!1187 = !DILocation(line: 296, column: 23, scope: !1159, inlinedAt: !1168)
!1188 = !DILocation(line: 0, scope: !1167, inlinedAt: !1168)
!1189 = !DILocation(line: 298, column: 12, scope: !1190, inlinedAt: !1168)
!1190 = distinct !DILexicalBlock(scope: !1167, file: !113, line: 297, column: 3)
!1191 = !DILocation(line: 298, column: 17, scope: !1190, inlinedAt: !1168)
!1192 = !DILocation(line: 298, column: 9, scope: !1190, inlinedAt: !1168)
!1193 = !DILocalVariable(name: "p", arg: 1, scope: !1194, file: !113, line: 230, type: !138)
!1194 = distinct !DISubprogram(name: "mcel_scan", scope: !113, file: !113, line: 230, type: !1195, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1115, !138, !138}
!1197 = !{!1193, !1198, !1199, !1200, !1211, !1212}
!1198 = !DILocalVariable(name: "lim", arg: 2, scope: !1194, file: !113, line: 230, type: !138)
!1199 = !DILocalVariable(name: "c", scope: !1194, file: !113, line: 235, type: !4)
!1200 = !DILocalVariable(name: "mbs", scope: !1194, file: !113, line: 244, type: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !522, line: 6, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !524, line: 21, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 13, size: 64, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1203, file: !524, line: 15, baseType: !78, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1203, file: !524, line: 20, baseType: !1207, size: 32, offset: 32)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !524, line: 16, size: 32, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1207, file: !524, line: 18, baseType: !84, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1207, file: !524, line: 19, baseType: !278, size: 32)
!1211 = !DILocalVariable(name: "ch", scope: !1194, file: !113, line: 267, type: !516)
!1212 = !DILocalVariable(name: "len", scope: !1194, file: !113, line: 268, type: !135)
!1213 = !DILocation(line: 0, scope: !1194, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 299, column: 10, scope: !1159, inlinedAt: !1168)
!1215 = !DILocation(line: 0, scope: !1179, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 236, column: 7, scope: !1217, inlinedAt: !1214)
!1217 = distinct !DILexicalBlock(scope: !1194, file: !113, line: 236, column: 7)
!1218 = !DILocation(line: 244, column: 3, scope: !1194, inlinedAt: !1214)
!1219 = !DILocation(line: 244, column: 13, scope: !1194, inlinedAt: !1214)
!1220 = !DILocation(line: 244, column: 30, scope: !1194, inlinedAt: !1214)
!1221 = !{!1222, !911, i64 0}
!1222 = !{!"", !911, i64 0, !842, i64 4}
!1223 = !DILocation(line: 267, column: 3, scope: !1194, inlinedAt: !1214)
!1224 = !DILocation(line: 268, column: 38, scope: !1194, inlinedAt: !1214)
!1225 = !DILocation(line: 268, column: 16, scope: !1194, inlinedAt: !1214)
!1226 = !DILocation(line: 274, column: 7, scope: !1227, inlinedAt: !1214)
!1227 = distinct !DILexicalBlock(scope: !1194, file: !113, line: 274, column: 7)
!1228 = !DILocation(line: 274, column: 7, scope: !1194, inlinedAt: !1214)
!1229 = !{!"branch_weights", i32 1, i32 2000}
!1230 = !DILocation(line: 280, column: 1, scope: !1194, inlinedAt: !1214)
!1231 = !DILocalVariable(name: "__dest", arg: 1, scope: !1232, file: !1233, line: 42, type: !1236)
!1232 = distinct !DISubprogram(name: "mempcpy", scope: !1233, file: !1233, line: 42, type: !1234, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1237)
!1233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!133, !1236, !1058, !135}
!1236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!1237 = !{!1231, !1238, !1239}
!1238 = !DILocalVariable(name: "__src", arg: 2, scope: !1232, file: !1233, line: 42, type: !1058)
!1239 = !DILocalVariable(name: "__len", arg: 3, scope: !1232, file: !1233, line: 42, type: !135)
!1240 = !DILocation(line: 0, scope: !1232, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 143, column: 16, scope: !1114, inlinedAt: !1123)
!1242 = !DILocation(line: 45, column: 10, scope: !1232, inlinedAt: !1241)
!1243 = !DILocation(line: 144, column: 9, scope: !1114, inlinedAt: !1123)
!1244 = !DILocation(line: 145, column: 7, scope: !1114, inlinedAt: !1123)
!1245 = !DILocation(line: 145, column: 25, scope: !1114, inlinedAt: !1123)
!1246 = !DILocation(line: 150, column: 11, scope: !1135, inlinedAt: !1123)
!1247 = !DILocation(line: 150, column: 7, scope: !1105, inlinedAt: !1123)
!1248 = !DILocation(line: 156, column: 14, scope: !1105, inlinedAt: !1123)
!1249 = !DILocation(line: 541, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 538, column: 5)
!1251 = !DILocation(line: 546, column: 15, scope: !1061)
!1252 = !DILocation(line: 547, column: 15, scope: !1061)
!1253 = !DILocation(line: 547, column: 29, scope: !1061)
!1254 = !DILocation(line: 547, column: 24, scope: !1061)
!1255 = !DILocation(line: 546, column: 14, scope: !1061)
!1256 = !{ptr @paste_parallel, ptr @paste_serial}
!1257 = !DILocation(line: 549, column: 9, scope: !1061)
!1258 = !DILocation(line: 549, column: 3, scope: !1061)
!1259 = !DILocation(line: 550, column: 9, scope: !1061)
!1260 = !DILocation(line: 550, column: 3, scope: !1061)
!1261 = !DILocation(line: 552, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 552, column: 7)
!1263 = !DILocation(line: 552, column: 23, scope: !1262)
!1264 = !DILocation(line: 552, column: 34, scope: !1262)
!1265 = !DILocation(line: 552, column: 26, scope: !1262)
!1266 = !DILocation(line: 552, column: 41, scope: !1262)
!1267 = !DILocation(line: 552, column: 7, scope: !1061)
!1268 = !DILocation(line: 553, column: 5, scope: !1262)
!1269 = !DILocation(line: 554, column: 10, scope: !1061)
!1270 = !DILocation(line: 554, column: 3, scope: !1061)
!1271 = !DISubprogram(name: "bindtextdomain", scope: !892, file: !892, line: 86, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!132, !138, !138}
!1274 = !DISubprogram(name: "textdomain", scope: !892, file: !892, line: 82, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1275 = !DISubprogram(name: "atexit", scope: !1035, file: !1035, line: 602, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!78, !490}
!1278 = !DISubprogram(name: "getopt_long", scope: !409, file: !409, line: 66, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!78, !78, !1281, !138, !1283, !414}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1284 = !DISubprogram(name: "strlen", scope: !1031, file: !1031, line: 407, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!137, !138}
!1287 = !DISubprogram(name: "mbrtoc32", scope: !517, file: !517, line: 57, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!135, !1290, !900, !135, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1294 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 364, type: !1295, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!172, !135, !1064}
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1308, !1309, !1310}
!1298 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1294, file: !2, line: 364, type: !135)
!1299 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1294, file: !2, line: 364, type: !1064)
!1300 = !DILocalVariable(name: "ok", scope: !1294, file: !2, line: 366, type: !172)
!1301 = !DILocalVariable(name: "charnew", scope: !1294, file: !2, line: 367, type: !78)
!1302 = !DILocalVariable(name: "charold", scope: !1294, file: !2, line: 367, type: !78)
!1303 = !DILocalVariable(name: "fileptr", scope: !1294, file: !2, line: 368, type: !214)
!1304 = !DILocalVariable(name: "saved_errno", scope: !1305, file: !2, line: 372, type: !78)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 371, column: 5)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 370, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 370, column: 3)
!1308 = !DILocalVariable(name: "is_stdin", scope: !1305, file: !2, line: 373, type: !172)
!1309 = !DILocalVariable(name: "delimidx", scope: !1305, file: !2, line: 391, type: !392)
!1310 = !DILocalVariable(name: "delimoff", scope: !1305, file: !2, line: 392, type: !392)
!1311 = !DILocation(line: 0, scope: !1294)
!1312 = !DILocation(line: 370, column: 3, scope: !1307)
!1313 = !DILocation(line: 373, column: 30, scope: !1305)
!1314 = !DILocation(line: 0, scope: !922, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 373, column: 23, scope: !1305)
!1316 = !DILocation(line: 1361, column: 11, scope: !922, inlinedAt: !1315)
!1317 = !DILocation(line: 1361, column: 10, scope: !922, inlinedAt: !1315)
!1318 = !DILocation(line: 0, scope: !1305)
!1319 = !DILocation(line: 374, column: 11, scope: !1305)
!1320 = !DILocation(line: 376, column: 27, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 375, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 374, column: 11)
!1323 = !DILocation(line: 377, column: 21, scope: !1321)
!1324 = !DILocation(line: 378, column: 9, scope: !1321)
!1325 = !DILocation(line: 381, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 380, column: 9)
!1327 = !DILocation(line: 382, column: 23, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 382, column: 15)
!1329 = !DILocation(line: 382, column: 15, scope: !1326)
!1330 = !DILocation(line: 384, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 383, column: 13)
!1332 = !DILocation(line: 386, column: 15, scope: !1331)
!1333 = !DILocation(line: 388, column: 11, scope: !1326)
!1334 = !DILocation(line: 0, scope: !1322)
!1335 = !DILocalVariable(name: "__fp", arg: 1, scope: !1336, file: !1337, line: 66, type: !214)
!1336 = distinct !DISubprogram(name: "getc_unlocked", scope: !1337, file: !1337, line: 66, type: !1338, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1340)
!1337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!78, !214}
!1340 = !{!1335}
!1341 = !DILocation(line: 0, scope: !1336, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 394, column: 17, scope: !1305)
!1343 = !DILocation(line: 68, column: 10, scope: !1336, inlinedAt: !1342)
!1344 = !{!1345, !841, i64 8}
!1345 = !{!"_IO_FILE", !911, i64 0, !841, i64 8, !841, i64 16, !841, i64 24, !841, i64 32, !841, i64 40, !841, i64 48, !841, i64 56, !841, i64 64, !841, i64 72, !841, i64 80, !841, i64 88, !841, i64 96, !841, i64 104, !911, i64 112, !911, i64 116, !1137, i64 120, !952, i64 128, !842, i64 130, !842, i64 131, !841, i64 136, !1137, i64 144, !841, i64 152, !841, i64 160, !841, i64 168, !841, i64 176, !1137, i64 184, !911, i64 192, !842, i64 196}
!1346 = !{!1345, !841, i64 16}
!1347 = !{!"branch_weights", i32 2000, i32 1}
!1348 = !DILocation(line: 395, column: 21, scope: !1305)
!1349 = !DILocation(line: 396, column: 11, scope: !1305)
!1350 = !DILocation(line: 396, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 396, column: 11)
!1352 = !DILocation(line: 404, column: 11, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 397, column: 9)
!1354 = !DILocation(line: 428, column: 22, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 428, column: 11)
!1356 = !DILocation(line: 428, column: 11, scope: !1305)
!1357 = !DILocation(line: 0, scope: !1336, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 404, column: 29, scope: !1353)
!1359 = !DILocation(line: 68, column: 10, scope: !1336, inlinedAt: !1358)
!1360 = !DILocation(line: 404, column: 45, scope: !1353)
!1361 = !DILocation(line: 407, column: 30, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 407, column: 19)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 405, column: 13)
!1364 = !DILocation(line: 407, column: 27, scope: !1362)
!1365 = !DILocation(line: 407, column: 19, scope: !1363)
!1366 = !DILocation(line: 409, column: 52, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 408, column: 17)
!1368 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1369, file: !2, line: 174, type: !138)
!1369 = distinct !DISubprogram(name: "output_delim", scope: !2, file: !2, line: 174, type: !1370, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !138, !135}
!1372 = !{!1368, !1373, !1374, !1377, !1378}
!1373 = !DILocalVariable(name: "len", arg: 2, scope: !1369, file: !2, line: 174, type: !135)
!1374 = !DILocalVariable(name: "__ptr", scope: !1375, file: !2, line: 176, type: !138)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 176, column: 18)
!1376 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 176, column: 7)
!1377 = !DILocalVariable(name: "__stream", scope: !1375, file: !2, line: 176, type: !214)
!1378 = !DILocalVariable(name: "__cnt", scope: !1375, file: !2, line: 176, type: !135)
!1379 = !DILocation(line: 0, scope: !1369, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 409, column: 19, scope: !1367)
!1381 = !DILocation(line: 176, column: 11, scope: !1376, inlinedAt: !1380)
!1382 = !DILocation(line: 176, column: 15, scope: !1376, inlinedAt: !1380)
!1383 = !DILocation(line: 409, column: 33, scope: !1367)
!1384 = !DILocation(line: 409, column: 40, scope: !1367)
!1385 = !DILocation(line: 176, column: 18, scope: !1376, inlinedAt: !1380)
!1386 = !DILocation(line: 176, column: 52, scope: !1376, inlinedAt: !1380)
!1387 = !DILocation(line: 176, column: 7, scope: !1369, inlinedAt: !1380)
!1388 = !DILocation(line: 410, column: 31, scope: !1367)
!1389 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1393)
!1390 = distinct !DISubprogram(name: "write_error", scope: !77, file: !77, line: 946, type: !491, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1391)
!1391 = !{!1392}
!1392 = !DILocalVariable(name: "saved_errno", scope: !1390, file: !77, line: 948, type: !78)
!1393 = distinct !DILocation(line: 177, column: 5, scope: !1376, inlinedAt: !1380)
!1394 = !DILocation(line: 0, scope: !1390, inlinedAt: !1393)
!1395 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1393)
!1396 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1393)
!1397 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1393)
!1398 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1393)
!1399 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1393)
!1400 = !DILocation(line: 410, column: 28, scope: !1367)
!1401 = !DILocation(line: 411, column: 23, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 411, column: 23)
!1403 = !DILocation(line: 411, column: 37, scope: !1402)
!1404 = !DILocation(line: 411, column: 34, scope: !1402)
!1405 = !DILocation(line: 411, column: 23, scope: !1367)
!1406 = distinct !{!1406, !1352, !1407, !957}
!1407 = !DILocation(line: 421, column: 13, scope: !1353)
!1408 = !DILocalVariable(name: "c", arg: 1, scope: !1409, file: !2, line: 164, type: !4)
!1409 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 164, type: !1410, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !4}
!1412 = !{!1408}
!1413 = !DILocation(line: 0, scope: !1409, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 418, column: 17, scope: !1362)
!1415 = !DILocalVariable(name: "__c", arg: 1, scope: !1416, file: !1337, line: 108, type: !78)
!1416 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1337, file: !1337, line: 108, type: !1417, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!78, !78}
!1419 = !{!1415}
!1420 = !DILocation(line: 0, scope: !1416, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1414)
!1422 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 166, column: 7)
!1423 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1421)
!1424 = !{!1345, !841, i64 40}
!1425 = !{!1345, !841, i64 48}
!1426 = !DILocation(line: 418, column: 27, scope: !1362)
!1427 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1414)
!1428 = !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1414)
!1429 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1414)
!1430 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1414)
!1432 = !DILocation(line: 0, scope: !1390, inlinedAt: !1431)
!1433 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1431)
!1434 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1431)
!1435 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1431)
!1436 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1431)
!1437 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1431)
!1438 = !DILocation(line: 422, column: 25, scope: !1353)
!1439 = !DILocation(line: 0, scope: !1409, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 425, column: 11, scope: !1353)
!1441 = !DILocation(line: 0, scope: !1416, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1440)
!1443 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1442)
!1444 = !DILocation(line: 425, column: 21, scope: !1353)
!1445 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1440)
!1446 = !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1440)
!1447 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1440)
!1448 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1440)
!1450 = !DILocation(line: 0, scope: !1390, inlinedAt: !1449)
!1451 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1449)
!1452 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1449)
!1453 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1449)
!1454 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1449)
!1455 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1449)
!1456 = !DILocation(line: 428, column: 19, scope: !1355)
!1457 = !DILocation(line: 0, scope: !1409, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 429, column: 9, scope: !1355)
!1459 = !DILocation(line: 0, scope: !1416, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1458)
!1461 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1460)
!1462 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1458)
!1463 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1458)
!1464 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1458)
!1466 = !DILocation(line: 0, scope: !1390, inlinedAt: !1465)
!1467 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1465)
!1468 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1465)
!1469 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1465)
!1470 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1465)
!1471 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1465)
!1472 = !DILocalVariable(name: "__stream", arg: 1, scope: !1473, file: !1337, line: 135, type: !214)
!1473 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1337, file: !1337, line: 135, type: !1338, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1474)
!1474 = !{!1472}
!1475 = !DILocation(line: 0, scope: !1473, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 431, column: 12, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 431, column: 11)
!1478 = !DILocation(line: 137, column: 10, scope: !1473, inlinedAt: !1476)
!1479 = !{!1345, !911, i64 0}
!1480 = !DILocation(line: 431, column: 12, scope: !1477)
!1481 = !DILocation(line: 431, column: 11, scope: !1305)
!1482 = !DILocation(line: 433, column: 11, scope: !1305)
!1483 = !DILocation(line: 434, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 433, column: 11)
!1485 = !DILocation(line: 435, column: 16, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 435, column: 16)
!1487 = !DILocation(line: 435, column: 33, scope: !1486)
!1488 = !DILocation(line: 435, column: 38, scope: !1486)
!1489 = !DILocation(line: 436, column: 23, scope: !1486)
!1490 = !DILocation(line: 436, column: 9, scope: !1486)
!1491 = !DILocation(line: 437, column: 11, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 437, column: 11)
!1493 = !DILocation(line: 437, column: 11, scope: !1305)
!1494 = !DILocation(line: 370, column: 24, scope: !1306)
!1495 = !DILocation(line: 370, column: 35, scope: !1306)
!1496 = distinct !{!1496, !1312, !1497, !957}
!1497 = !DILocation(line: 442, column: 5, scope: !1307)
!1498 = !DILocation(line: 443, column: 10, scope: !1294)
!1499 = !DILocation(line: 443, column: 3, scope: !1294)
!1500 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 185, type: !1295, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1508, !1509, !1510, !1512, !1513, !1514, !1515, !1517, !1520, !1521, !1522, !1529, !1530, !1531, !1542, !1543, !1544, !1546}
!1502 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1500, file: !2, line: 185, type: !135)
!1503 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1500, file: !2, line: 185, type: !1064)
!1504 = !DILocalVariable(name: "ok", scope: !1500, file: !2, line: 187, type: !172)
!1505 = !DILocalVariable(name: "delbuf", scope: !1500, file: !2, line: 192, type: !132)
!1506 = !DILocalVariable(name: "fileptr", scope: !1500, file: !2, line: 196, type: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1508 = !DILocalVariable(name: "files_open", scope: !1500, file: !2, line: 199, type: !135)
!1509 = !DILocalVariable(name: "opened_stdin", scope: !1500, file: !2, line: 202, type: !172)
!1510 = !DILocalVariable(name: "somedone", scope: !1511, file: !2, line: 236, type: !172)
!1511 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 234, column: 5)
!1512 = !DILocalVariable(name: "delimidx", scope: !1511, file: !2, line: 237, type: !392)
!1513 = !DILocalVariable(name: "delimoff", scope: !1511, file: !2, line: 238, type: !392)
!1514 = !DILocalVariable(name: "delims_saved", scope: !1511, file: !2, line: 239, type: !392)
!1515 = !DILocalVariable(name: "i", scope: !1516, file: !2, line: 241, type: !135)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 241, column: 7)
!1517 = !DILocalVariable(name: "chr", scope: !1518, file: !2, line: 243, type: !78)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 242, column: 9)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 241, column: 7)
!1520 = !DILocalVariable(name: "err", scope: !1518, file: !2, line: 244, type: !78)
!1521 = !DILocalVariable(name: "sometodo", scope: !1518, file: !2, line: 245, type: !172)
!1522 = !DILocalVariable(name: "__ptr", scope: !1523, file: !2, line: 253, type: !138)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 253, column: 23)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 253, column: 23)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 252, column: 17)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 251, column: 19)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 248, column: 13)
!1528 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 247, column: 15)
!1529 = !DILocalVariable(name: "__stream", scope: !1523, file: !2, line: 253, type: !214)
!1530 = !DILocalVariable(name: "__cnt", scope: !1523, file: !2, line: 253, type: !135)
!1531 = !DILocalVariable(name: "__ptr", scope: !1532, file: !2, line: 300, type: !138)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 300, column: 31)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 300, column: 31)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 299, column: 25)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 298, column: 27)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 296, column: 21)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 295, column: 23)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 292, column: 17)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 291, column: 19)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 270, column: 13)
!1541 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 269, column: 15)
!1542 = !DILocalVariable(name: "__stream", scope: !1532, file: !2, line: 300, type: !214)
!1543 = !DILocalVariable(name: "__cnt", scope: !1532, file: !2, line: 300, type: !135)
!1544 = !DILocalVariable(name: "len", scope: !1545, file: !2, line: 312, type: !135)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 310, column: 17)
!1546 = !DILocalVariable(name: "c", scope: !1547, file: !2, line: 348, type: !4)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 345, column: 17)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 332, column: 19)
!1549 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 327, column: 13)
!1550 = !DILocation(line: 0, scope: !1500)
!1551 = !DILocation(line: 192, column: 35, scope: !1500)
!1552 = !DILocation(line: 192, column: 42, scope: !1500)
!1553 = !DILocation(line: 192, column: 40, scope: !1500)
!1554 = !DILocation(line: 192, column: 53, scope: !1500)
!1555 = !DILocation(line: 192, column: 18, scope: !1500)
!1556 = !DILocation(line: 196, column: 37, scope: !1500)
!1557 = !DILocation(line: 196, column: 20, scope: !1500)
!1558 = !DILocation(line: 208, column: 35, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 208, column: 3)
!1560 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 208, column: 3)
!1561 = !DILocation(line: 208, column: 3, scope: !1560)
!1562 = !DILocation(line: 210, column: 18, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 210, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 209, column: 5)
!1565 = !DILocation(line: 0, scope: !922, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 210, column: 11, scope: !1563)
!1567 = !DILocation(line: 1361, column: 11, scope: !922, inlinedAt: !1566)
!1568 = !DILocation(line: 1361, column: 10, scope: !922, inlinedAt: !1566)
!1569 = !DILocation(line: 210, column: 11, scope: !1564)
!1570 = !DILocation(line: 212, column: 27, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 211, column: 9)
!1572 = !DILocation(line: 213, column: 33, scope: !1571)
!1573 = !DILocation(line: 213, column: 11, scope: !1571)
!1574 = !DILocation(line: 213, column: 31, scope: !1571)
!1575 = !DILocation(line: 214, column: 9, scope: !1571)
!1576 = !DILocation(line: 217, column: 33, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 216, column: 9)
!1578 = !DILocation(line: 217, column: 11, scope: !1577)
!1579 = !DILocation(line: 217, column: 31, scope: !1577)
!1580 = !DILocation(line: 218, column: 35, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 218, column: 15)
!1582 = !DILocation(line: 218, column: 15, scope: !1577)
!1583 = !DILocation(line: 219, column: 13, scope: !1581)
!1584 = !DILocation(line: 220, column: 20, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 220, column: 20)
!1586 = !DILocation(line: 220, column: 49, scope: !1585)
!1587 = !DILocation(line: 220, column: 20, scope: !1581)
!1588 = !DILocation(line: 222, column: 11, scope: !1577)
!1589 = !DILocation(line: 208, column: 45, scope: !1559)
!1590 = distinct !{!1590, !1561, !1591, !957}
!1591 = !DILocation(line: 224, column: 5, scope: !1560)
!1592 = !DILocation(line: 226, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 226, column: 7)
!1594 = !DILocation(line: 226, column: 20, scope: !1593)
!1595 = !DILocation(line: 233, column: 3, scope: !1500)
!1596 = !DILocation(line: 226, column: 23, scope: !1593)
!1597 = !DILocation(line: 226, column: 7, scope: !1500)
!1598 = !DILocation(line: 227, column: 5, scope: !1593)
!1599 = !DILocation(line: 208, column: 19, scope: !1560)
!1600 = !DILocation(line: 187, column: 8, scope: !1500)
!1601 = !DILocation(line: 0, scope: !1518)
!1602 = distinct !{!1602, !1595, !1603, !957}
!1603 = !DILocation(line: 353, column: 5, scope: !1500)
!1604 = !DILocation(line: 0, scope: !1511)
!1605 = !DILocation(line: 0, scope: !1516)
!1606 = !DILocation(line: 241, column: 7, scope: !1516)
!1607 = !DILocation(line: 247, column: 15, scope: !1528)
!1608 = !DILocation(line: 247, column: 15, scope: !1518)
!1609 = !DILocation(line: 0, scope: !1336, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 249, column: 21, scope: !1527)
!1611 = !DILocation(line: 68, column: 10, scope: !1336, inlinedAt: !1610)
!1612 = !DILocation(line: 250, column: 21, scope: !1527)
!1613 = !DILocation(line: 251, column: 23, scope: !1526)
!1614 = !DILocation(line: 251, column: 30, scope: !1526)
!1615 = !DILocation(line: 253, column: 23, scope: !1524)
!1616 = !DILocation(line: 253, column: 64, scope: !1524)
!1617 = !DILocation(line: 253, column: 23, scope: !1525)
!1618 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 254, column: 21, scope: !1524)
!1620 = !DILocation(line: 0, scope: !1390, inlinedAt: !1619)
!1621 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1619)
!1622 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1619)
!1623 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1619)
!1624 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1619)
!1625 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1619)
!1626 = !DILocation(line: 258, column: 26, scope: !1527)
!1627 = !DILocation(line: 258, column: 15, scope: !1527)
!1628 = !DILocation(line: 261, column: 30, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 261, column: 23)
!1630 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 259, column: 17)
!1631 = !DILocation(line: 261, column: 27, scope: !1629)
!1632 = !DILocation(line: 261, column: 23, scope: !1630)
!1633 = !DILocation(line: 0, scope: !1409, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 263, column: 19, scope: !1630)
!1635 = !DILocation(line: 0, scope: !1416, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1634)
!1637 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1636)
!1638 = !DILocation(line: 263, column: 29, scope: !1630)
!1639 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1634)
!1640 = !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1634)
!1641 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1634)
!1642 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1634)
!1644 = !DILocation(line: 0, scope: !1390, inlinedAt: !1643)
!1645 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1643)
!1646 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1643)
!1647 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1643)
!1648 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1643)
!1649 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1643)
!1650 = !DILocation(line: 0, scope: !1336, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 264, column: 25, scope: !1630)
!1652 = !DILocation(line: 68, column: 10, scope: !1336, inlinedAt: !1651)
!1653 = distinct !{!1653, !1627, !1654, !957}
!1654 = !DILocation(line: 266, column: 17, scope: !1527)
!1655 = !DILocation(line: 265, column: 25, scope: !1630)
!1656 = !DILocation(line: 269, column: 15, scope: !1518)
!1657 = !DILocation(line: 0, scope: !1473, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 275, column: 24, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 275, column: 23)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 274, column: 17)
!1661 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 273, column: 19)
!1662 = !DILocation(line: 137, column: 10, scope: !1473, inlinedAt: !1658)
!1663 = !DILocation(line: 275, column: 24, scope: !1659)
!1664 = !DILocation(line: 275, column: 23, scope: !1660)
!1665 = !DILocation(line: 277, column: 37, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 277, column: 23)
!1667 = !DILocation(line: 277, column: 34, scope: !1666)
!1668 = !DILocation(line: 277, column: 23, scope: !1660)
!1669 = !DILocation(line: 278, column: 21, scope: !1666)
!1670 = !DILocation(line: 279, column: 28, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 279, column: 28)
!1672 = !DILocation(line: 279, column: 48, scope: !1671)
!1673 = !DILocation(line: 279, column: 55, scope: !1671)
!1674 = !DILocation(line: 280, column: 27, scope: !1671)
!1675 = !DILocation(line: 280, column: 21, scope: !1671)
!1676 = !DILocation(line: 281, column: 23, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 281, column: 23)
!1678 = !DILocation(line: 281, column: 23, scope: !1660)
!1679 = !DILocation(line: 283, column: 23, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 282, column: 21)
!1681 = !DILocation(line: 285, column: 21, scope: !1680)
!1682 = !DILocation(line: 287, column: 30, scope: !1660)
!1683 = !DILocation(line: 288, column: 29, scope: !1660)
!1684 = !DILocation(line: 289, column: 17, scope: !1660)
!1685 = !DILocation(line: 291, column: 21, scope: !1539)
!1686 = !DILocation(line: 291, column: 25, scope: !1539)
!1687 = !DILocation(line: 291, column: 19, scope: !1540)
!1688 = !DILocation(line: 295, column: 23, scope: !1537)
!1689 = !DILocation(line: 295, column: 23, scope: !1538)
!1690 = !DILocation(line: 298, column: 27, scope: !1535)
!1691 = !DILocation(line: 298, column: 27, scope: !1536)
!1692 = !DILocation(line: 300, column: 31, scope: !1533)
!1693 = !DILocation(line: 301, column: 31, scope: !1533)
!1694 = !DILocation(line: 300, column: 31, scope: !1534)
!1695 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 302, column: 29, scope: !1533)
!1697 = !DILocation(line: 0, scope: !1390, inlinedAt: !1696)
!1698 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1696)
!1699 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1696)
!1700 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1696)
!1701 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1696)
!1702 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1696)
!1703 = !DILocation(line: 305, column: 33, scope: !1536)
!1704 = !DILocation(line: 0, scope: !1409, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 305, column: 23, scope: !1536)
!1706 = !DILocation(line: 0, scope: !1416, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1705)
!1708 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1707)
!1709 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1705)
!1710 = !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1705)
!1711 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1705)
!1712 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1705)
!1714 = !DILocation(line: 0, scope: !1390, inlinedAt: !1713)
!1715 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1713)
!1716 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1713)
!1717 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1713)
!1718 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1713)
!1719 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1713)
!1720 = !DILocation(line: 312, column: 32, scope: !1545)
!1721 = !DILocation(line: 0, scope: !1545)
!1722 = !DILocation(line: 313, column: 27, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 313, column: 23)
!1724 = !DILocation(line: 313, column: 23, scope: !1545)
!1725 = !DILocation(line: 315, column: 38, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 314, column: 21)
!1727 = !DILocation(line: 315, column: 54, scope: !1726)
!1728 = !DILocation(line: 315, column: 61, scope: !1726)
!1729 = !DILocalVariable(name: "__dest", arg: 1, scope: !1730, file: !1233, line: 26, type: !1236)
!1730 = distinct !DISubprogram(name: "memcpy", scope: !1233, file: !1233, line: 26, type: !1234, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1731)
!1731 = !{!1729, !1732, !1733}
!1732 = !DILocalVariable(name: "__src", arg: 2, scope: !1730, file: !1233, line: 26, type: !1058)
!1733 = !DILocalVariable(name: "__len", arg: 3, scope: !1730, file: !1233, line: 26, type: !135)
!1734 = !DILocation(line: 0, scope: !1730, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 315, column: 23, scope: !1726)
!1736 = !DILocation(line: 29, column: 10, scope: !1730, inlinedAt: !1735)
!1737 = !DILocation(line: 316, column: 36, scope: !1726)
!1738 = !DILocation(line: 317, column: 21, scope: !1726)
!1739 = !DILocation(line: 318, column: 28, scope: !1545)
!1740 = !DILocation(line: 319, column: 23, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 319, column: 23)
!1742 = !DILocation(line: 319, column: 37, scope: !1741)
!1743 = !DILocation(line: 319, column: 34, scope: !1741)
!1744 = !DILocation(line: 319, column: 23, scope: !1545)
!1745 = !DILocation(line: 325, column: 13, scope: !1540)
!1746 = !DILocation(line: 332, column: 21, scope: !1548)
!1747 = !DILocation(line: 332, column: 25, scope: !1548)
!1748 = !DILocation(line: 332, column: 19, scope: !1549)
!1749 = !DILocation(line: 334, column: 30, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 334, column: 23)
!1751 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 333, column: 17)
!1752 = !DILocation(line: 334, column: 27, scope: !1750)
!1753 = !DILocation(line: 334, column: 41, scope: !1750)
!1754 = !DILocation(line: 0, scope: !1409, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 335, column: 21, scope: !1750)
!1756 = !DILocation(line: 0, scope: !1416, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1755)
!1758 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1757)
!1759 = !DILocation(line: 335, column: 31, scope: !1750)
!1760 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1755)
!1761 = !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1755)
!1762 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1755)
!1763 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1755)
!1765 = !DILocation(line: 0, scope: !1390, inlinedAt: !1764)
!1766 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1764)
!1767 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1764)
!1768 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1764)
!1769 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1764)
!1770 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1764)
!1771 = !DILocation(line: 336, column: 52, scope: !1751)
!1772 = !DILocation(line: 0, scope: !1369, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 336, column: 19, scope: !1751)
!1774 = !DILocation(line: 176, column: 11, scope: !1376, inlinedAt: !1773)
!1775 = !DILocation(line: 176, column: 15, scope: !1376, inlinedAt: !1773)
!1776 = !DILocation(line: 336, column: 33, scope: !1751)
!1777 = !DILocation(line: 336, column: 40, scope: !1751)
!1778 = !DILocation(line: 176, column: 18, scope: !1376, inlinedAt: !1773)
!1779 = !DILocation(line: 176, column: 52, scope: !1376, inlinedAt: !1773)
!1780 = !DILocation(line: 176, column: 7, scope: !1369, inlinedAt: !1773)
!1781 = !DILocation(line: 337, column: 31, scope: !1751)
!1782 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 177, column: 5, scope: !1376, inlinedAt: !1773)
!1784 = !DILocation(line: 0, scope: !1390, inlinedAt: !1783)
!1785 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1783)
!1786 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1783)
!1787 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1783)
!1788 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1783)
!1789 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1783)
!1790 = !DILocation(line: 337, column: 28, scope: !1751)
!1791 = !DILocation(line: 338, column: 23, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 338, column: 23)
!1793 = !DILocation(line: 338, column: 37, scope: !1792)
!1794 = !DILocation(line: 338, column: 34, scope: !1792)
!1795 = !DILocation(line: 338, column: 23, scope: !1751)
!1796 = !DILocation(line: 348, column: 33, scope: !1547)
!1797 = !DILocation(line: 348, column: 29, scope: !1547)
!1798 = !DILocation(line: 0, scope: !1547)
!1799 = !DILocation(line: 0, scope: !1409, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 349, column: 19, scope: !1547)
!1801 = !DILocation(line: 0, scope: !1416, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1800)
!1803 = !DILocation(line: 110, column: 10, scope: !1416, inlinedAt: !1802)
!1804 = !DILocation(line: 348, column: 28, scope: !1547)
!1805 = !DILocation(line: 166, column: 7, scope: !1409, inlinedAt: !1800)
!1806 = !DILocation(line: 166, column: 7, scope: !1422, inlinedAt: !1800)
!1807 = !DILocation(line: 166, column: 19, scope: !1422, inlinedAt: !1800)
!1808 = !DILocation(line: 948, column: 21, scope: !1390, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 167, column: 5, scope: !1422, inlinedAt: !1800)
!1810 = !DILocation(line: 0, scope: !1390, inlinedAt: !1809)
!1811 = !DILocation(line: 949, column: 3, scope: !1390, inlinedAt: !1809)
!1812 = !DILocation(line: 950, column: 11, scope: !1390, inlinedAt: !1809)
!1813 = !DILocation(line: 950, column: 3, scope: !1390, inlinedAt: !1809)
!1814 = !DILocation(line: 951, column: 3, scope: !1390, inlinedAt: !1809)
!1815 = !DILocation(line: 952, column: 3, scope: !1390, inlinedAt: !1809)
!1816 = !DILocation(line: 241, column: 53, scope: !1519)
!1817 = !DILocation(line: 241, column: 28, scope: !1519)
!1818 = !DILocation(line: 241, column: 37, scope: !1519)
!1819 = distinct !{!1819, !1606, !1820, !957}
!1820 = !DILocation(line: 352, column: 9, scope: !1516)
!1821 = !DILocation(line: 354, column: 3, scope: !1500)
!1822 = !DILocation(line: 355, column: 3, scope: !1500)
!1823 = !DILocation(line: 356, column: 10, scope: !1500)
!1824 = !DILocation(line: 356, column: 3, scope: !1500)
!1825 = !DISubprogram(name: "free", scope: !1035, file: !1035, line: 555, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !133}
!1828 = !DISubprogram(name: "__errno_location", scope: !1829, file: !1829, line: 37, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1829 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!414}
!1832 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1035, file: !1035, line: 98, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!135}
!1835 = !DISubprogram(name: "fileno_unlocked", scope: !905, file: !905, line: 814, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1836 = !DISubprogram(name: "__uflow", scope: !905, file: !905, line: 885, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1837 = !DISubprogram(name: "fflush_unlocked", scope: !905, file: !905, line: 239, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1838 = !DISubprogram(name: "clearerr_unlocked", scope: !905, file: !905, line: 794, type: !1839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !214}
!1841 = !DISubprogram(name: "__overflow", scope: !905, file: !905, line: 886, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!78, !214, !78}
!1844 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !429, file: !429, line: 50, type: !861, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "file", arg: 1, scope: !1844, file: !429, line: 50, type: !138)
!1847 = !DILocation(line: 0, scope: !1844)
!1848 = !DILocation(line: 52, column: 13, scope: !1844)
!1849 = !DILocation(line: 53, column: 1, scope: !1844)
!1850 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !429, file: !429, line: 87, type: !1851, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !172}
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "ignore", arg: 1, scope: !1850, file: !429, line: 87, type: !172)
!1855 = !DILocation(line: 0, scope: !1850)
!1856 = !DILocation(line: 89, column: 16, scope: !1850)
!1857 = !{!1858, !1858, i64 0}
!1858 = !{!"_Bool", !842, i64 0}
!1859 = !DILocation(line: 90, column: 1, scope: !1850)
!1860 = distinct !DISubprogram(name: "close_stdout", scope: !429, file: !429, line: 116, type: !491, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1861)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "write_error", scope: !1863, file: !429, line: 121, type: !138)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !429, line: 120, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !429, line: 118, column: 7)
!1865 = !DILocation(line: 118, column: 21, scope: !1864)
!1866 = !DILocation(line: 118, column: 7, scope: !1864)
!1867 = !DILocation(line: 118, column: 29, scope: !1864)
!1868 = !DILocation(line: 119, column: 7, scope: !1864)
!1869 = !DILocation(line: 119, column: 12, scope: !1864)
!1870 = !{i8 0, i8 2}
!1871 = !DILocation(line: 119, column: 25, scope: !1864)
!1872 = !DILocation(line: 119, column: 28, scope: !1864)
!1873 = !DILocation(line: 119, column: 34, scope: !1864)
!1874 = !DILocation(line: 118, column: 7, scope: !1860)
!1875 = !DILocation(line: 121, column: 33, scope: !1863)
!1876 = !DILocation(line: 0, scope: !1863)
!1877 = !DILocation(line: 122, column: 11, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !429, line: 122, column: 11)
!1879 = !DILocation(line: 0, scope: !1878)
!1880 = !DILocation(line: 122, column: 11, scope: !1863)
!1881 = !DILocation(line: 123, column: 9, scope: !1878)
!1882 = !DILocation(line: 126, column: 9, scope: !1878)
!1883 = !DILocation(line: 128, column: 14, scope: !1863)
!1884 = !DILocation(line: 128, column: 7, scope: !1863)
!1885 = !DILocation(line: 133, column: 42, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1860, file: !429, line: 133, column: 7)
!1887 = !DILocation(line: 133, column: 28, scope: !1886)
!1888 = !DILocation(line: 133, column: 50, scope: !1886)
!1889 = !DILocation(line: 133, column: 7, scope: !1860)
!1890 = !DILocation(line: 134, column: 12, scope: !1886)
!1891 = !DILocation(line: 134, column: 5, scope: !1886)
!1892 = !DILocation(line: 135, column: 1, scope: !1860)
!1893 = !DISubprogram(name: "_exit", scope: !1894, file: !1894, line: 624, type: !830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !849)
!1894 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1895 = distinct !DISubprogram(name: "verror", scope: !444, file: !444, line: 251, type: !1896, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !78, !78, !138, !454}
!1898 = !{!1899, !1900, !1901, !1902}
!1899 = !DILocalVariable(name: "status", arg: 1, scope: !1895, file: !444, line: 251, type: !78)
!1900 = !DILocalVariable(name: "errnum", arg: 2, scope: !1895, file: !444, line: 251, type: !78)
!1901 = !DILocalVariable(name: "message", arg: 3, scope: !1895, file: !444, line: 251, type: !138)
!1902 = !DILocalVariable(name: "args", arg: 4, scope: !1895, file: !444, line: 251, type: !454)
!1903 = !DILocation(line: 0, scope: !1895)
!1904 = !DILocation(line: 261, column: 3, scope: !1895)
!1905 = !DILocation(line: 265, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1895, file: !444, line: 265, column: 7)
!1907 = !DILocation(line: 265, column: 7, scope: !1895)
!1908 = !DILocation(line: 266, column: 5, scope: !1906)
!1909 = !DILocation(line: 272, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !444, line: 268, column: 5)
!1911 = !DILocation(line: 276, column: 3, scope: !1895)
!1912 = !DILocation(line: 282, column: 1, scope: !1895)
!1913 = distinct !DISubprogram(name: "flush_stdout", scope: !444, file: !444, line: 163, type: !491, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1914)
!1914 = !{!1915}
!1915 = !DILocalVariable(name: "stdout_fd", scope: !1913, file: !444, line: 166, type: !78)
!1916 = !DILocation(line: 0, scope: !1913)
!1917 = !DILocalVariable(name: "fd", arg: 1, scope: !1918, file: !444, line: 145, type: !78)
!1918 = distinct !DISubprogram(name: "is_open", scope: !444, file: !444, line: 145, type: !1417, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1919)
!1919 = !{!1917}
!1920 = !DILocation(line: 0, scope: !1918, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 182, column: 25, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1913, file: !444, line: 182, column: 7)
!1923 = !DILocation(line: 157, column: 15, scope: !1918, inlinedAt: !1921)
!1924 = !DILocation(line: 157, column: 12, scope: !1918, inlinedAt: !1921)
!1925 = !DILocation(line: 182, column: 7, scope: !1913)
!1926 = !DILocation(line: 184, column: 5, scope: !1922)
!1927 = !DILocation(line: 185, column: 1, scope: !1913)
!1928 = distinct !DISubprogram(name: "error_tail", scope: !444, file: !444, line: 219, type: !1896, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1929)
!1929 = !{!1930, !1931, !1932, !1933}
!1930 = !DILocalVariable(name: "status", arg: 1, scope: !1928, file: !444, line: 219, type: !78)
!1931 = !DILocalVariable(name: "errnum", arg: 2, scope: !1928, file: !444, line: 219, type: !78)
!1932 = !DILocalVariable(name: "message", arg: 3, scope: !1928, file: !444, line: 219, type: !138)
!1933 = !DILocalVariable(name: "args", arg: 4, scope: !1928, file: !444, line: 219, type: !454)
!1934 = !DILocation(line: 0, scope: !1928)
!1935 = !DILocation(line: 229, column: 13, scope: !1928)
!1936 = !DILocalVariable(name: "__stream", arg: 1, scope: !1937, file: !896, line: 132, type: !1940)
!1937 = distinct !DISubprogram(name: "vfprintf", scope: !896, file: !896, line: 132, type: !1938, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1975)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!78, !1940, !900, !454}
!1940 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1943, file: !218, line: 51, baseType: !78, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1943, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1943, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1943, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1943, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1943, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1943, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1943, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1943, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1943, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1943, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1943, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1943, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1943, file: !218, line: 70, baseType: !1959, size: 64, offset: 832)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1943, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1943, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1943, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1943, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1943, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1943, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1943, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1943, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1943, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1943, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1943, file: !218, line: 93, baseType: !1959, size: 64, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1943, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1943, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1943, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1943, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!1975 = !{!1936, !1976, !1977}
!1976 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1937, file: !896, line: 133, type: !900)
!1977 = !DILocalVariable(name: "__ap", arg: 3, scope: !1937, file: !896, line: 133, type: !454)
!1978 = !DILocation(line: 0, scope: !1937, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 229, column: 3, scope: !1928)
!1980 = !DILocation(line: 135, column: 10, scope: !1937, inlinedAt: !1979)
!1981 = !DILocation(line: 232, column: 3, scope: !1928)
!1982 = !DILocation(line: 233, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1928, file: !444, line: 233, column: 7)
!1984 = !DILocation(line: 233, column: 7, scope: !1928)
!1985 = !DILocalVariable(name: "errnum", arg: 1, scope: !1986, file: !444, line: 188, type: !78)
!1986 = distinct !DISubprogram(name: "print_errno_message", scope: !444, file: !444, line: 188, type: !830, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1987)
!1987 = !{!1985, !1988, !1989}
!1988 = !DILocalVariable(name: "s", scope: !1986, file: !444, line: 190, type: !138)
!1989 = !DILocalVariable(name: "errbuf", scope: !1986, file: !444, line: 193, type: !1990)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1991)
!1991 = !{!1992}
!1992 = !DISubrange(count: 1024)
!1993 = !DILocation(line: 0, scope: !1986, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 234, column: 5, scope: !1983)
!1995 = !DILocation(line: 193, column: 3, scope: !1986, inlinedAt: !1994)
!1996 = !DILocation(line: 193, column: 8, scope: !1986, inlinedAt: !1994)
!1997 = !DILocation(line: 195, column: 7, scope: !1986, inlinedAt: !1994)
!1998 = !DILocation(line: 207, column: 9, scope: !1999, inlinedAt: !1994)
!1999 = distinct !DILexicalBlock(scope: !1986, file: !444, line: 207, column: 7)
!2000 = !DILocation(line: 207, column: 7, scope: !1986, inlinedAt: !1994)
!2001 = !DILocation(line: 208, column: 9, scope: !1999, inlinedAt: !1994)
!2002 = !DILocation(line: 208, column: 5, scope: !1999, inlinedAt: !1994)
!2003 = !DILocation(line: 214, column: 3, scope: !1986, inlinedAt: !1994)
!2004 = !DILocation(line: 216, column: 1, scope: !1986, inlinedAt: !1994)
!2005 = !DILocation(line: 234, column: 5, scope: !1983)
!2006 = !DILocation(line: 238, column: 3, scope: !1928)
!2007 = !DILocalVariable(name: "__c", arg: 1, scope: !2008, file: !1337, line: 101, type: !78)
!2008 = distinct !DISubprogram(name: "putc_unlocked", scope: !1337, file: !1337, line: 101, type: !2009, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!78, !78, !1941}
!2011 = !{!2007, !2012}
!2012 = !DILocalVariable(name: "__stream", arg: 2, scope: !2008, file: !1337, line: 101, type: !1941)
!2013 = !DILocation(line: 0, scope: !2008, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 238, column: 3, scope: !1928)
!2015 = !DILocation(line: 103, column: 10, scope: !2008, inlinedAt: !2014)
!2016 = !DILocation(line: 240, column: 3, scope: !1928)
!2017 = !DILocation(line: 241, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1928, file: !444, line: 241, column: 7)
!2019 = !DILocation(line: 241, column: 7, scope: !1928)
!2020 = !DILocation(line: 242, column: 5, scope: !2018)
!2021 = !DILocation(line: 243, column: 1, scope: !1928)
!2022 = !DISubprogram(name: "__vfprintf_chk", scope: !896, file: !896, line: 96, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!78, !1940, !78, !900, !454}
!2025 = !DISubprogram(name: "strerror_r", scope: !1031, file: !1031, line: 444, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!132, !78, !132, !135}
!2028 = !DISubprogram(name: "fcntl", scope: !2029, file: !2029, line: 149, type: !2030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2029 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!78, !78, !78, null}
!2032 = distinct !DISubprogram(name: "error", scope: !444, file: !444, line: 285, type: !2033, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !78, !78, !138, null}
!2035 = !{!2036, !2037, !2038, !2039}
!2036 = !DILocalVariable(name: "status", arg: 1, scope: !2032, file: !444, line: 285, type: !78)
!2037 = !DILocalVariable(name: "errnum", arg: 2, scope: !2032, file: !444, line: 285, type: !78)
!2038 = !DILocalVariable(name: "message", arg: 3, scope: !2032, file: !444, line: 285, type: !138)
!2039 = !DILocalVariable(name: "ap", scope: !2032, file: !444, line: 287, type: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !905, line: 52, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2042, line: 14, baseType: !2043)
!2042 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !458, baseType: !2044)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, elements: !55)
!2045 = !DILocation(line: 0, scope: !2032)
!2046 = !DILocation(line: 287, column: 3, scope: !2032)
!2047 = !DILocation(line: 287, column: 11, scope: !2032)
!2048 = !DILocation(line: 288, column: 3, scope: !2032)
!2049 = !DILocation(line: 289, column: 3, scope: !2032)
!2050 = !DILocation(line: 290, column: 3, scope: !2032)
!2051 = !DILocation(line: 291, column: 1, scope: !2032)
!2052 = !DILocation(line: 0, scope: !451)
!2053 = !DILocation(line: 302, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !451, file: !444, line: 302, column: 7)
!2055 = !DILocation(line: 302, column: 7, scope: !451)
!2056 = !DILocation(line: 307, column: 11, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !444, line: 307, column: 11)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !444, line: 303, column: 5)
!2059 = !DILocation(line: 307, column: 27, scope: !2057)
!2060 = !DILocation(line: 308, column: 11, scope: !2057)
!2061 = !DILocation(line: 308, column: 28, scope: !2057)
!2062 = !DILocation(line: 308, column: 25, scope: !2057)
!2063 = !DILocation(line: 309, column: 15, scope: !2057)
!2064 = !DILocation(line: 309, column: 33, scope: !2057)
!2065 = !DILocation(line: 310, column: 19, scope: !2057)
!2066 = !DILocation(line: 311, column: 22, scope: !2057)
!2067 = !DILocation(line: 311, column: 56, scope: !2057)
!2068 = !DILocation(line: 307, column: 11, scope: !2058)
!2069 = !DILocation(line: 316, column: 21, scope: !2058)
!2070 = !DILocation(line: 317, column: 23, scope: !2058)
!2071 = !DILocation(line: 318, column: 5, scope: !2058)
!2072 = !DILocation(line: 327, column: 3, scope: !451)
!2073 = !DILocation(line: 331, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !451, file: !444, line: 331, column: 7)
!2075 = !DILocation(line: 331, column: 7, scope: !451)
!2076 = !DILocation(line: 332, column: 5, scope: !2074)
!2077 = !DILocation(line: 338, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !444, line: 334, column: 5)
!2079 = !DILocation(line: 346, column: 3, scope: !451)
!2080 = !DILocation(line: 350, column: 3, scope: !451)
!2081 = !DILocation(line: 356, column: 1, scope: !451)
!2082 = distinct !DISubprogram(name: "error_at_line", scope: !444, file: !444, line: 359, type: !2083, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !78, !78, !138, !84, !138, null}
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091}
!2086 = !DILocalVariable(name: "status", arg: 1, scope: !2082, file: !444, line: 359, type: !78)
!2087 = !DILocalVariable(name: "errnum", arg: 2, scope: !2082, file: !444, line: 359, type: !78)
!2088 = !DILocalVariable(name: "file_name", arg: 3, scope: !2082, file: !444, line: 359, type: !138)
!2089 = !DILocalVariable(name: "line_number", arg: 4, scope: !2082, file: !444, line: 360, type: !84)
!2090 = !DILocalVariable(name: "message", arg: 5, scope: !2082, file: !444, line: 360, type: !138)
!2091 = !DILocalVariable(name: "ap", scope: !2082, file: !444, line: 362, type: !2040)
!2092 = !DILocation(line: 0, scope: !2082)
!2093 = !DILocation(line: 362, column: 3, scope: !2082)
!2094 = !DILocation(line: 362, column: 11, scope: !2082)
!2095 = !DILocation(line: 363, column: 3, scope: !2082)
!2096 = !DILocation(line: 364, column: 3, scope: !2082)
!2097 = !DILocation(line: 366, column: 3, scope: !2082)
!2098 = !DILocation(line: 367, column: 1, scope: !2082)
!2099 = distinct !DISubprogram(name: "fdadvise", scope: !756, file: !756, line: 25, type: !2100, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2104)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !78, !2102, !2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !905, line: 63, baseType: !240)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !123, line: 51, baseType: !122)
!2104 = !{!2105, !2106, !2107, !2108}
!2105 = !DILocalVariable(name: "fd", arg: 1, scope: !2099, file: !756, line: 25, type: !78)
!2106 = !DILocalVariable(name: "offset", arg: 2, scope: !2099, file: !756, line: 25, type: !2102)
!2107 = !DILocalVariable(name: "len", arg: 3, scope: !2099, file: !756, line: 25, type: !2102)
!2108 = !DILocalVariable(name: "advice", arg: 4, scope: !2099, file: !756, line: 25, type: !2103)
!2109 = !DILocation(line: 0, scope: !2099)
!2110 = !DILocation(line: 28, column: 3, scope: !2099)
!2111 = !DILocation(line: 30, column: 1, scope: !2099)
!2112 = !DISubprogram(name: "posix_fadvise", scope: !2029, file: !2029, line: 273, type: !2113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!78, !78, !2102, !2102, !78}
!2115 = distinct !DISubprogram(name: "fadvise", scope: !756, file: !756, line: 33, type: !2116, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2152)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !2118, !2103}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2120)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2120, file: !218, line: 51, baseType: !78, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2120, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2120, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2120, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2120, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2120, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2120, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2120, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2120, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2120, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2120, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2120, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2120, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2120, file: !218, line: 70, baseType: !2136, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2120, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2120, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2120, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2120, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2120, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2120, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2120, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2120, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2120, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2120, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2120, file: !218, line: 93, baseType: !2136, size: 64, offset: 1344)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2120, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2120, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2120, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2120, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2152 = !{!2153, !2154}
!2153 = !DILocalVariable(name: "fp", arg: 1, scope: !2115, file: !756, line: 33, type: !2118)
!2154 = !DILocalVariable(name: "advice", arg: 2, scope: !2115, file: !756, line: 33, type: !2103)
!2155 = !DILocation(line: 0, scope: !2115)
!2156 = !DILocation(line: 35, column: 7, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2115, file: !756, line: 35, column: 7)
!2158 = !DILocation(line: 35, column: 7, scope: !2115)
!2159 = !DILocation(line: 36, column: 15, scope: !2157)
!2160 = !DILocation(line: 0, scope: !2099, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 36, column: 5, scope: !2157)
!2162 = !DILocation(line: 28, column: 3, scope: !2099, inlinedAt: !2161)
!2163 = !DILocation(line: 36, column: 5, scope: !2157)
!2164 = !DILocation(line: 37, column: 1, scope: !2115)
!2165 = !DISubprogram(name: "fileno", scope: !905, file: !905, line: 809, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!78, !2118}
!2168 = distinct !DISubprogram(name: "rpl_fclose", scope: !759, file: !759, line: 58, type: !2169, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !2205)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!78, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2173, file: !218, line: 51, baseType: !78, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2173, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2173, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2173, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2173, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2173, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2173, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2173, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2173, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2173, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2173, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2173, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2173, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2173, file: !218, line: 70, baseType: !2189, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2173, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2173, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2173, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2173, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2173, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2173, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2173, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2173, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2173, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2173, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2173, file: !218, line: 93, baseType: !2189, size: 64, offset: 1344)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2173, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2173, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2173, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2173, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DILocalVariable(name: "fp", arg: 1, scope: !2168, file: !759, line: 58, type: !2171)
!2207 = !DILocalVariable(name: "saved_errno", scope: !2168, file: !759, line: 60, type: !78)
!2208 = !DILocalVariable(name: "fd", scope: !2168, file: !759, line: 63, type: !78)
!2209 = !DILocalVariable(name: "result", scope: !2168, file: !759, line: 74, type: !78)
!2210 = !DILocation(line: 0, scope: !2168)
!2211 = !DILocation(line: 63, column: 12, scope: !2168)
!2212 = !DILocation(line: 64, column: 10, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2168, file: !759, line: 64, column: 7)
!2214 = !DILocation(line: 64, column: 7, scope: !2168)
!2215 = !DILocation(line: 65, column: 12, scope: !2213)
!2216 = !DILocation(line: 65, column: 5, scope: !2213)
!2217 = !DILocation(line: 70, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2168, file: !759, line: 70, column: 7)
!2219 = !DILocation(line: 70, column: 23, scope: !2218)
!2220 = !DILocation(line: 70, column: 33, scope: !2218)
!2221 = !DILocation(line: 70, column: 26, scope: !2218)
!2222 = !DILocation(line: 70, column: 59, scope: !2218)
!2223 = !DILocation(line: 71, column: 7, scope: !2218)
!2224 = !DILocation(line: 71, column: 10, scope: !2218)
!2225 = !DILocation(line: 70, column: 7, scope: !2168)
!2226 = !DILocation(line: 100, column: 12, scope: !2168)
!2227 = !DILocation(line: 105, column: 7, scope: !2168)
!2228 = !DILocation(line: 72, column: 19, scope: !2218)
!2229 = !DILocation(line: 105, column: 19, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2168, file: !759, line: 105, column: 7)
!2231 = !DILocation(line: 107, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !759, line: 106, column: 5)
!2233 = !DILocation(line: 109, column: 5, scope: !2232)
!2234 = !DILocation(line: 112, column: 1, scope: !2168)
!2235 = !DISubprogram(name: "fclose", scope: !905, file: !905, line: 178, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2236 = !DISubprogram(name: "__freading", scope: !2237, file: !2237, line: 51, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2237 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2238 = !DISubprogram(name: "lseek", scope: !1894, file: !1894, line: 339, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!240, !78, !240, !78}
!2241 = distinct !DISubprogram(name: "rpl_fflush", scope: !761, file: !761, line: 130, type: !2242, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2278)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!78, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2246, file: !218, line: 51, baseType: !78, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2246, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2246, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2246, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2246, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2246, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2246, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2246, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2246, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2246, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2246, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2246, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2246, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2246, file: !218, line: 70, baseType: !2262, size: 64, offset: 832)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2246, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2246, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2246, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2246, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2246, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2246, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2246, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2246, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2246, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2246, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2246, file: !218, line: 93, baseType: !2262, size: 64, offset: 1344)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2246, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2246, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2246, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2246, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "stream", arg: 1, scope: !2241, file: !761, line: 130, type: !2244)
!2280 = !DILocation(line: 0, scope: !2241)
!2281 = !DILocation(line: 151, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2241, file: !761, line: 151, column: 7)
!2283 = !DILocation(line: 151, column: 22, scope: !2282)
!2284 = !DILocation(line: 151, column: 27, scope: !2282)
!2285 = !DILocation(line: 151, column: 7, scope: !2241)
!2286 = !DILocation(line: 152, column: 12, scope: !2282)
!2287 = !DILocation(line: 152, column: 5, scope: !2282)
!2288 = !DILocalVariable(name: "fp", arg: 1, scope: !2289, file: !761, line: 42, type: !2244)
!2289 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !761, file: !761, line: 42, type: !2290, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !2244}
!2292 = !{!2288}
!2293 = !DILocation(line: 0, scope: !2289, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 157, column: 3, scope: !2241)
!2295 = !DILocation(line: 44, column: 12, scope: !2296, inlinedAt: !2294)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !761, line: 44, column: 7)
!2297 = !DILocation(line: 44, column: 19, scope: !2296, inlinedAt: !2294)
!2298 = !DILocation(line: 44, column: 7, scope: !2289, inlinedAt: !2294)
!2299 = !DILocation(line: 46, column: 5, scope: !2296, inlinedAt: !2294)
!2300 = !DILocation(line: 159, column: 10, scope: !2241)
!2301 = !DILocation(line: 159, column: 3, scope: !2241)
!2302 = !DILocation(line: 236, column: 1, scope: !2241)
!2303 = !DISubprogram(name: "fflush", scope: !905, file: !905, line: 230, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2304 = distinct !DISubprogram(name: "fpurge", scope: !764, file: !764, line: 32, type: !2305, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !2341)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!78, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2309, file: !218, line: 51, baseType: !78, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2309, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2309, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2309, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2309, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2309, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2309, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2309, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2309, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2309, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2309, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2309, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2309, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2309, file: !218, line: 70, baseType: !2325, size: 64, offset: 832)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2309, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2309, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2309, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2309, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2309, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2309, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2309, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2309, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2309, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2309, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2309, file: !218, line: 93, baseType: !2325, size: 64, offset: 1344)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2309, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2309, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2309, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2309, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2341 = !{!2342}
!2342 = !DILocalVariable(name: "fp", arg: 1, scope: !2304, file: !764, line: 32, type: !2307)
!2343 = !DILocation(line: 0, scope: !2304)
!2344 = !DILocation(line: 36, column: 3, scope: !2304)
!2345 = !DILocation(line: 38, column: 3, scope: !2304)
!2346 = !DISubprogram(name: "__fpurge", scope: !2237, file: !2237, line: 72, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !2307}
!2349 = distinct !DISubprogram(name: "rpl_fseeko", scope: !766, file: !766, line: 28, type: !2350, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2386)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!78, !2352, !2102, !78}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2354, file: !218, line: 51, baseType: !78, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2354, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2354, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2354, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2354, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2354, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2354, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2354, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2354, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2354, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2354, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2354, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2354, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2354, file: !218, line: 70, baseType: !2370, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2354, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2354, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2354, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2354, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2354, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2354, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2354, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2354, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2354, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2354, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2354, file: !218, line: 93, baseType: !2370, size: 64, offset: 1344)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2354, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2354, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2354, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2354, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2386 = !{!2387, !2388, !2389, !2390}
!2387 = !DILocalVariable(name: "fp", arg: 1, scope: !2349, file: !766, line: 28, type: !2352)
!2388 = !DILocalVariable(name: "offset", arg: 2, scope: !2349, file: !766, line: 28, type: !2102)
!2389 = !DILocalVariable(name: "whence", arg: 3, scope: !2349, file: !766, line: 28, type: !78)
!2390 = !DILocalVariable(name: "pos", scope: !2391, file: !766, line: 123, type: !2102)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !766, line: 119, column: 5)
!2392 = distinct !DILexicalBlock(scope: !2349, file: !766, line: 55, column: 7)
!2393 = !DILocation(line: 0, scope: !2349)
!2394 = !DILocation(line: 55, column: 12, scope: !2392)
!2395 = !DILocation(line: 55, column: 33, scope: !2392)
!2396 = !DILocation(line: 55, column: 25, scope: !2392)
!2397 = !DILocation(line: 56, column: 7, scope: !2392)
!2398 = !DILocation(line: 56, column: 15, scope: !2392)
!2399 = !DILocation(line: 56, column: 37, scope: !2392)
!2400 = !{!1345, !841, i64 32}
!2401 = !DILocation(line: 56, column: 29, scope: !2392)
!2402 = !DILocation(line: 57, column: 7, scope: !2392)
!2403 = !DILocation(line: 57, column: 15, scope: !2392)
!2404 = !{!1345, !841, i64 72}
!2405 = !DILocation(line: 57, column: 29, scope: !2392)
!2406 = !DILocation(line: 55, column: 7, scope: !2349)
!2407 = !DILocation(line: 123, column: 26, scope: !2391)
!2408 = !DILocation(line: 123, column: 19, scope: !2391)
!2409 = !DILocation(line: 0, scope: !2391)
!2410 = !DILocation(line: 124, column: 15, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2391, file: !766, line: 124, column: 11)
!2412 = !DILocation(line: 124, column: 11, scope: !2391)
!2413 = !DILocation(line: 135, column: 19, scope: !2391)
!2414 = !DILocation(line: 136, column: 12, scope: !2391)
!2415 = !DILocation(line: 136, column: 20, scope: !2391)
!2416 = !{!1345, !1137, i64 144}
!2417 = !DILocation(line: 167, column: 7, scope: !2391)
!2418 = !DILocation(line: 169, column: 10, scope: !2349)
!2419 = !DILocation(line: 169, column: 3, scope: !2349)
!2420 = !DILocation(line: 170, column: 1, scope: !2349)
!2421 = !DISubprogram(name: "fseeko", scope: !905, file: !905, line: 736, type: !2422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!78, !2352, !240, !78}
!2424 = distinct !DISubprogram(name: "getprogname", scope: !768, file: !768, line: 54, type: !2425, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !849)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!138}
!2427 = !DILocation(line: 58, column: 10, scope: !2424)
!2428 = !DILocation(line: 58, column: 3, scope: !2424)
!2429 = distinct !DISubprogram(name: "set_program_name", scope: !496, file: !496, line: 37, type: !861, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DILocalVariable(name: "argv0", arg: 1, scope: !2429, file: !496, line: 37, type: !138)
!2432 = !DILocalVariable(name: "slash", scope: !2429, file: !496, line: 44, type: !138)
!2433 = !DILocalVariable(name: "base", scope: !2429, file: !496, line: 45, type: !138)
!2434 = !DILocation(line: 0, scope: !2429)
!2435 = !DILocation(line: 44, column: 23, scope: !2429)
!2436 = !DILocation(line: 45, column: 22, scope: !2429)
!2437 = !DILocation(line: 46, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2429, file: !496, line: 46, column: 7)
!2439 = !DILocation(line: 46, column: 9, scope: !2438)
!2440 = !DILocation(line: 46, column: 25, scope: !2438)
!2441 = !DILocation(line: 46, column: 40, scope: !2438)
!2442 = !DILocalVariable(name: "__s1", arg: 1, scope: !2443, file: !923, line: 974, type: !1059)
!2443 = distinct !DISubprogram(name: "memeq", scope: !923, file: !923, line: 974, type: !2444, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!172, !1059, !1059, !135}
!2446 = !{!2442, !2447, !2448}
!2447 = !DILocalVariable(name: "__s2", arg: 2, scope: !2443, file: !923, line: 974, type: !1059)
!2448 = !DILocalVariable(name: "__n", arg: 3, scope: !2443, file: !923, line: 974, type: !135)
!2449 = !DILocation(line: 0, scope: !2443, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 46, column: 28, scope: !2438)
!2451 = !DILocation(line: 976, column: 11, scope: !2443, inlinedAt: !2450)
!2452 = !DILocation(line: 976, column: 10, scope: !2443, inlinedAt: !2450)
!2453 = !DILocation(line: 46, column: 7, scope: !2429)
!2454 = !DILocation(line: 49, column: 11, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !496, line: 49, column: 11)
!2456 = distinct !DILexicalBlock(scope: !2438, file: !496, line: 47, column: 5)
!2457 = !DILocation(line: 49, column: 36, scope: !2455)
!2458 = !DILocation(line: 49, column: 11, scope: !2456)
!2459 = !DILocation(line: 65, column: 16, scope: !2429)
!2460 = !DILocation(line: 71, column: 27, scope: !2429)
!2461 = !DILocation(line: 74, column: 33, scope: !2429)
!2462 = !DILocation(line: 76, column: 1, scope: !2429)
!2463 = !DISubprogram(name: "strrchr", scope: !1031, file: !1031, line: 273, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2464 = !DILocation(line: 0, scope: !505)
!2465 = !DILocation(line: 40, column: 29, scope: !505)
!2466 = !DILocation(line: 41, column: 19, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !505, file: !506, line: 41, column: 7)
!2468 = !DILocation(line: 41, column: 7, scope: !505)
!2469 = !DILocation(line: 47, column: 3, scope: !505)
!2470 = !DILocation(line: 48, column: 3, scope: !505)
!2471 = !DILocation(line: 48, column: 13, scope: !505)
!2472 = !DILocalVariable(name: "ps", arg: 1, scope: !2473, file: !2474, line: 1135, type: !2477)
!2473 = distinct !DISubprogram(name: "mbszero", scope: !2474, file: !2474, line: 1135, type: !2475, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !2478)
!2474 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2478 = !{!2472}
!2479 = !DILocation(line: 0, scope: !2473, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 48, column: 18, scope: !505)
!2481 = !DILocalVariable(name: "__dest", arg: 1, scope: !2482, file: !1233, line: 57, type: !133)
!2482 = distinct !DISubprogram(name: "memset", scope: !1233, file: !1233, line: 57, type: !2483, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!133, !133, !78, !135}
!2485 = !{!2481, !2486, !2487}
!2486 = !DILocalVariable(name: "__ch", arg: 2, scope: !2482, file: !1233, line: 57, type: !78)
!2487 = !DILocalVariable(name: "__len", arg: 3, scope: !2482, file: !1233, line: 57, type: !135)
!2488 = !DILocation(line: 0, scope: !2482, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 1137, column: 3, scope: !2473, inlinedAt: !2480)
!2490 = !DILocation(line: 59, column: 10, scope: !2482, inlinedAt: !2489)
!2491 = !DILocation(line: 49, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !505, file: !506, line: 49, column: 7)
!2493 = !DILocation(line: 49, column: 39, scope: !2492)
!2494 = !DILocation(line: 49, column: 44, scope: !2492)
!2495 = !DILocation(line: 54, column: 1, scope: !505)
!2496 = distinct !DISubprogram(name: "clone_quoting_options", scope: !536, file: !536, line: 113, type: !2497, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2500)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2499, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "o", arg: 1, scope: !2496, file: !536, line: 113, type: !2499)
!2502 = !DILocalVariable(name: "saved_errno", scope: !2496, file: !536, line: 115, type: !78)
!2503 = !DILocalVariable(name: "p", scope: !2496, file: !536, line: 116, type: !2499)
!2504 = !DILocation(line: 0, scope: !2496)
!2505 = !DILocation(line: 115, column: 21, scope: !2496)
!2506 = !DILocation(line: 116, column: 40, scope: !2496)
!2507 = !DILocation(line: 116, column: 31, scope: !2496)
!2508 = !DILocation(line: 118, column: 9, scope: !2496)
!2509 = !DILocation(line: 119, column: 3, scope: !2496)
!2510 = distinct !DISubprogram(name: "get_quoting_style", scope: !536, file: !536, line: 124, type: !2511, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2515)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!82, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!2515 = !{!2516}
!2516 = !DILocalVariable(name: "o", arg: 1, scope: !2510, file: !536, line: 124, type: !2513)
!2517 = !DILocation(line: 0, scope: !2510)
!2518 = !DILocation(line: 126, column: 11, scope: !2510)
!2519 = !DILocation(line: 126, column: 46, scope: !2510)
!2520 = !{!2521, !842, i64 0}
!2521 = !{!"quoting_options", !842, i64 0, !911, i64 4, !842, i64 8, !841, i64 40, !841, i64 48}
!2522 = !DILocation(line: 126, column: 3, scope: !2510)
!2523 = distinct !DISubprogram(name: "set_quoting_style", scope: !536, file: !536, line: 132, type: !2524, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2499, !82}
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "o", arg: 1, scope: !2523, file: !536, line: 132, type: !2499)
!2528 = !DILocalVariable(name: "s", arg: 2, scope: !2523, file: !536, line: 132, type: !82)
!2529 = !DILocation(line: 0, scope: !2523)
!2530 = !DILocation(line: 134, column: 4, scope: !2523)
!2531 = !DILocation(line: 134, column: 45, scope: !2523)
!2532 = !DILocation(line: 135, column: 1, scope: !2523)
!2533 = distinct !DISubprogram(name: "set_char_quoting", scope: !536, file: !536, line: 143, type: !2534, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!78, !2499, !4, !78}
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2543, !2544}
!2537 = !DILocalVariable(name: "o", arg: 1, scope: !2533, file: !536, line: 143, type: !2499)
!2538 = !DILocalVariable(name: "c", arg: 2, scope: !2533, file: !536, line: 143, type: !4)
!2539 = !DILocalVariable(name: "i", arg: 3, scope: !2533, file: !536, line: 143, type: !78)
!2540 = !DILocalVariable(name: "uc", scope: !2533, file: !536, line: 145, type: !140)
!2541 = !DILocalVariable(name: "p", scope: !2533, file: !536, line: 146, type: !2542)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2543 = !DILocalVariable(name: "shift", scope: !2533, file: !536, line: 148, type: !78)
!2544 = !DILocalVariable(name: "r", scope: !2533, file: !536, line: 149, type: !84)
!2545 = !DILocation(line: 0, scope: !2533)
!2546 = !DILocation(line: 147, column: 6, scope: !2533)
!2547 = !DILocation(line: 147, column: 41, scope: !2533)
!2548 = !DILocation(line: 147, column: 62, scope: !2533)
!2549 = !DILocation(line: 147, column: 57, scope: !2533)
!2550 = !DILocation(line: 148, column: 15, scope: !2533)
!2551 = !DILocation(line: 149, column: 21, scope: !2533)
!2552 = !DILocation(line: 149, column: 24, scope: !2533)
!2553 = !DILocation(line: 149, column: 34, scope: !2533)
!2554 = !DILocation(line: 150, column: 19, scope: !2533)
!2555 = !DILocation(line: 150, column: 24, scope: !2533)
!2556 = !DILocation(line: 150, column: 6, scope: !2533)
!2557 = !DILocation(line: 151, column: 3, scope: !2533)
!2558 = distinct !DISubprogram(name: "set_quoting_flags", scope: !536, file: !536, line: 159, type: !2559, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!78, !2499, !78}
!2561 = !{!2562, !2563, !2564}
!2562 = !DILocalVariable(name: "o", arg: 1, scope: !2558, file: !536, line: 159, type: !2499)
!2563 = !DILocalVariable(name: "i", arg: 2, scope: !2558, file: !536, line: 159, type: !78)
!2564 = !DILocalVariable(name: "r", scope: !2558, file: !536, line: 163, type: !78)
!2565 = !DILocation(line: 0, scope: !2558)
!2566 = !DILocation(line: 161, column: 8, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2558, file: !536, line: 161, column: 7)
!2568 = !DILocation(line: 161, column: 7, scope: !2558)
!2569 = !DILocation(line: 163, column: 14, scope: !2558)
!2570 = !{!2521, !911, i64 4}
!2571 = !DILocation(line: 164, column: 12, scope: !2558)
!2572 = !DILocation(line: 165, column: 3, scope: !2558)
!2573 = distinct !DISubprogram(name: "set_custom_quoting", scope: !536, file: !536, line: 169, type: !2574, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !2499, !138, !138}
!2576 = !{!2577, !2578, !2579}
!2577 = !DILocalVariable(name: "o", arg: 1, scope: !2573, file: !536, line: 169, type: !2499)
!2578 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2573, file: !536, line: 170, type: !138)
!2579 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2573, file: !536, line: 170, type: !138)
!2580 = !DILocation(line: 0, scope: !2573)
!2581 = !DILocation(line: 172, column: 8, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2573, file: !536, line: 172, column: 7)
!2583 = !DILocation(line: 172, column: 7, scope: !2573)
!2584 = !DILocation(line: 174, column: 12, scope: !2573)
!2585 = !DILocation(line: 175, column: 8, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2573, file: !536, line: 175, column: 7)
!2587 = !DILocation(line: 175, column: 19, scope: !2586)
!2588 = !DILocation(line: 176, column: 5, scope: !2586)
!2589 = !DILocation(line: 177, column: 6, scope: !2573)
!2590 = !DILocation(line: 177, column: 17, scope: !2573)
!2591 = !{!2521, !841, i64 40}
!2592 = !DILocation(line: 178, column: 6, scope: !2573)
!2593 = !DILocation(line: 178, column: 18, scope: !2573)
!2594 = !{!2521, !841, i64 48}
!2595 = !DILocation(line: 179, column: 1, scope: !2573)
!2596 = !DISubprogram(name: "abort", scope: !1035, file: !1035, line: 598, type: !491, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !849)
!2597 = distinct !DISubprogram(name: "quotearg_buffer", scope: !536, file: !536, line: 774, type: !2598, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!135, !132, !135, !138, !135, !2513}
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2601 = !DILocalVariable(name: "buffer", arg: 1, scope: !2597, file: !536, line: 774, type: !132)
!2602 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2597, file: !536, line: 774, type: !135)
!2603 = !DILocalVariable(name: "arg", arg: 3, scope: !2597, file: !536, line: 775, type: !138)
!2604 = !DILocalVariable(name: "argsize", arg: 4, scope: !2597, file: !536, line: 775, type: !135)
!2605 = !DILocalVariable(name: "o", arg: 5, scope: !2597, file: !536, line: 776, type: !2513)
!2606 = !DILocalVariable(name: "p", scope: !2597, file: !536, line: 778, type: !2513)
!2607 = !DILocalVariable(name: "saved_errno", scope: !2597, file: !536, line: 779, type: !78)
!2608 = !DILocalVariable(name: "r", scope: !2597, file: !536, line: 780, type: !135)
!2609 = !DILocation(line: 0, scope: !2597)
!2610 = !DILocation(line: 778, column: 37, scope: !2597)
!2611 = !DILocation(line: 779, column: 21, scope: !2597)
!2612 = !DILocation(line: 781, column: 43, scope: !2597)
!2613 = !DILocation(line: 781, column: 53, scope: !2597)
!2614 = !DILocation(line: 781, column: 63, scope: !2597)
!2615 = !DILocation(line: 782, column: 43, scope: !2597)
!2616 = !DILocation(line: 782, column: 58, scope: !2597)
!2617 = !DILocation(line: 780, column: 14, scope: !2597)
!2618 = !DILocation(line: 783, column: 9, scope: !2597)
!2619 = !DILocation(line: 784, column: 3, scope: !2597)
!2620 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !536, file: !536, line: 251, type: !2621, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2625)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!135, !132, !135, !138, !135, !82, !78, !2623, !138, !138}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2650, !2652, !2655, !2656, !2657, !2658, !2661, !2662, !2665, !2669, !2670, !2678, !2681, !2682, !2684, !2685, !2686, !2687}
!2626 = !DILocalVariable(name: "buffer", arg: 1, scope: !2620, file: !536, line: 251, type: !132)
!2627 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2620, file: !536, line: 251, type: !135)
!2628 = !DILocalVariable(name: "arg", arg: 3, scope: !2620, file: !536, line: 252, type: !138)
!2629 = !DILocalVariable(name: "argsize", arg: 4, scope: !2620, file: !536, line: 252, type: !135)
!2630 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2620, file: !536, line: 253, type: !82)
!2631 = !DILocalVariable(name: "flags", arg: 6, scope: !2620, file: !536, line: 253, type: !78)
!2632 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2620, file: !536, line: 254, type: !2623)
!2633 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2620, file: !536, line: 255, type: !138)
!2634 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2620, file: !536, line: 256, type: !138)
!2635 = !DILocalVariable(name: "unibyte_locale", scope: !2620, file: !536, line: 258, type: !172)
!2636 = !DILocalVariable(name: "len", scope: !2620, file: !536, line: 260, type: !135)
!2637 = !DILocalVariable(name: "orig_buffersize", scope: !2620, file: !536, line: 261, type: !135)
!2638 = !DILocalVariable(name: "quote_string", scope: !2620, file: !536, line: 262, type: !138)
!2639 = !DILocalVariable(name: "quote_string_len", scope: !2620, file: !536, line: 263, type: !135)
!2640 = !DILocalVariable(name: "backslash_escapes", scope: !2620, file: !536, line: 264, type: !172)
!2641 = !DILocalVariable(name: "elide_outer_quotes", scope: !2620, file: !536, line: 265, type: !172)
!2642 = !DILocalVariable(name: "encountered_single_quote", scope: !2620, file: !536, line: 266, type: !172)
!2643 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2620, file: !536, line: 267, type: !172)
!2644 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2620, file: !536, line: 309, type: !172)
!2645 = !DILocalVariable(name: "lq", scope: !2646, file: !536, line: 361, type: !138)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !536, line: 361, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !536, line: 360, column: 13)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !536, line: 333, column: 7)
!2649 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 312, column: 5)
!2650 = !DILocalVariable(name: "i", scope: !2651, file: !536, line: 395, type: !135)
!2651 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 395, column: 3)
!2652 = !DILocalVariable(name: "is_right_quote", scope: !2653, file: !536, line: 397, type: !172)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !536, line: 396, column: 5)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !536, line: 395, column: 3)
!2655 = !DILocalVariable(name: "escaping", scope: !2653, file: !536, line: 398, type: !172)
!2656 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2653, file: !536, line: 399, type: !172)
!2657 = !DILocalVariable(name: "c", scope: !2653, file: !536, line: 417, type: !140)
!2658 = !DILocalVariable(name: "m", scope: !2659, file: !536, line: 598, type: !135)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 596, column: 11)
!2660 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 419, column: 9)
!2661 = !DILocalVariable(name: "printable", scope: !2659, file: !536, line: 600, type: !172)
!2662 = !DILocalVariable(name: "mbs", scope: !2663, file: !536, line: 609, type: !609)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !536, line: 608, column: 15)
!2664 = distinct !DILexicalBlock(scope: !2659, file: !536, line: 602, column: 17)
!2665 = !DILocalVariable(name: "w", scope: !2666, file: !536, line: 618, type: !516)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !536, line: 617, column: 19)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !536, line: 616, column: 17)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !536, line: 616, column: 17)
!2669 = !DILocalVariable(name: "bytes", scope: !2666, file: !536, line: 619, type: !135)
!2670 = !DILocalVariable(name: "j", scope: !2671, file: !536, line: 648, type: !135)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !536, line: 648, column: 29)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !536, line: 647, column: 27)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !536, line: 645, column: 29)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !536, line: 636, column: 23)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !536, line: 628, column: 30)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !536, line: 623, column: 30)
!2677 = distinct !DILexicalBlock(scope: !2666, file: !536, line: 621, column: 25)
!2678 = !DILocalVariable(name: "ilim", scope: !2679, file: !536, line: 674, type: !135)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !536, line: 671, column: 15)
!2680 = distinct !DILexicalBlock(scope: !2659, file: !536, line: 670, column: 17)
!2681 = !DILabel(scope: !2620, name: "process_input", file: !536, line: 308)
!2682 = !DILabel(scope: !2683, name: "c_and_shell_escape", file: !536, line: 502)
!2683 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 478, column: 9)
!2684 = !DILabel(scope: !2683, name: "c_escape", file: !536, line: 507)
!2685 = !DILabel(scope: !2653, name: "store_escape", file: !536, line: 709)
!2686 = !DILabel(scope: !2653, name: "store_c", file: !536, line: 712)
!2687 = !DILabel(scope: !2620, name: "force_outer_quoting_style", file: !536, line: 753)
!2688 = !DILocation(line: 0, scope: !2620)
!2689 = !DILocation(line: 258, column: 25, scope: !2620)
!2690 = !DILocation(line: 258, column: 36, scope: !2620)
!2691 = !DILocation(line: 265, column: 8, scope: !2620)
!2692 = !DILocation(line: 267, column: 3, scope: !2620)
!2693 = !DILocation(line: 261, column: 10, scope: !2620)
!2694 = !DILocation(line: 262, column: 15, scope: !2620)
!2695 = !DILocation(line: 263, column: 10, scope: !2620)
!2696 = !DILocation(line: 264, column: 8, scope: !2620)
!2697 = !DILocation(line: 266, column: 8, scope: !2620)
!2698 = !DILocation(line: 267, column: 8, scope: !2620)
!2699 = !DILocation(line: 308, column: 2, scope: !2620)
!2700 = !DILocation(line: 311, column: 3, scope: !2620)
!2701 = !DILocation(line: 318, column: 11, scope: !2649)
!2702 = !DILocation(line: 318, column: 12, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2649, file: !536, line: 318, column: 11)
!2704 = !DILocation(line: 319, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !536, line: 319, column: 9)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !536, line: 319, column: 9)
!2707 = !DILocation(line: 319, column: 9, scope: !2706)
!2708 = !DILocation(line: 0, scope: !600, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 357, column: 26, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !536, line: 335, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2648, file: !536, line: 334, column: 13)
!2712 = !DILocation(line: 199, column: 29, scope: !600, inlinedAt: !2709)
!2713 = !DILocation(line: 201, column: 19, scope: !2714, inlinedAt: !2709)
!2714 = distinct !DILexicalBlock(scope: !600, file: !536, line: 201, column: 7)
!2715 = !DILocation(line: 201, column: 7, scope: !600, inlinedAt: !2709)
!2716 = !DILocation(line: 229, column: 3, scope: !600, inlinedAt: !2709)
!2717 = !DILocation(line: 230, column: 3, scope: !600, inlinedAt: !2709)
!2718 = !DILocation(line: 230, column: 13, scope: !600, inlinedAt: !2709)
!2719 = !DILocalVariable(name: "ps", arg: 1, scope: !2720, file: !2474, line: 1135, type: !2723)
!2720 = distinct !DISubprogram(name: "mbszero", scope: !2474, file: !2474, line: 1135, type: !2721, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2724)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!2724 = !{!2719}
!2725 = !DILocation(line: 0, scope: !2720, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 230, column: 18, scope: !600, inlinedAt: !2709)
!2727 = !DILocalVariable(name: "__dest", arg: 1, scope: !2728, file: !1233, line: 57, type: !133)
!2728 = distinct !DISubprogram(name: "memset", scope: !1233, file: !1233, line: 57, type: !2483, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2729)
!2729 = !{!2727, !2730, !2731}
!2730 = !DILocalVariable(name: "__ch", arg: 2, scope: !2728, file: !1233, line: 57, type: !78)
!2731 = !DILocalVariable(name: "__len", arg: 3, scope: !2728, file: !1233, line: 57, type: !135)
!2732 = !DILocation(line: 0, scope: !2728, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1137, column: 3, scope: !2720, inlinedAt: !2726)
!2734 = !DILocation(line: 59, column: 10, scope: !2728, inlinedAt: !2733)
!2735 = !DILocation(line: 231, column: 7, scope: !2736, inlinedAt: !2709)
!2736 = distinct !DILexicalBlock(scope: !600, file: !536, line: 231, column: 7)
!2737 = !DILocation(line: 231, column: 40, scope: !2736, inlinedAt: !2709)
!2738 = !DILocation(line: 231, column: 45, scope: !2736, inlinedAt: !2709)
!2739 = !DILocation(line: 235, column: 1, scope: !600, inlinedAt: !2709)
!2740 = !DILocation(line: 0, scope: !600, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 358, column: 27, scope: !2710)
!2742 = !DILocation(line: 199, column: 29, scope: !600, inlinedAt: !2741)
!2743 = !DILocation(line: 201, column: 19, scope: !2714, inlinedAt: !2741)
!2744 = !DILocation(line: 201, column: 7, scope: !600, inlinedAt: !2741)
!2745 = !DILocation(line: 229, column: 3, scope: !600, inlinedAt: !2741)
!2746 = !DILocation(line: 230, column: 3, scope: !600, inlinedAt: !2741)
!2747 = !DILocation(line: 230, column: 13, scope: !600, inlinedAt: !2741)
!2748 = !DILocation(line: 0, scope: !2720, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 230, column: 18, scope: !600, inlinedAt: !2741)
!2750 = !DILocation(line: 0, scope: !2728, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1137, column: 3, scope: !2720, inlinedAt: !2749)
!2752 = !DILocation(line: 59, column: 10, scope: !2728, inlinedAt: !2751)
!2753 = !DILocation(line: 231, column: 7, scope: !2736, inlinedAt: !2741)
!2754 = !DILocation(line: 231, column: 40, scope: !2736, inlinedAt: !2741)
!2755 = !DILocation(line: 231, column: 45, scope: !2736, inlinedAt: !2741)
!2756 = !DILocation(line: 235, column: 1, scope: !600, inlinedAt: !2741)
!2757 = !DILocation(line: 360, column: 14, scope: !2647)
!2758 = !DILocation(line: 360, column: 13, scope: !2648)
!2759 = !DILocation(line: 0, scope: !2646)
!2760 = !DILocation(line: 361, column: 45, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2646, file: !536, line: 361, column: 11)
!2762 = !DILocation(line: 361, column: 11, scope: !2646)
!2763 = !DILocation(line: 362, column: 13, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !536, line: 362, column: 13)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !536, line: 362, column: 13)
!2766 = !DILocation(line: 362, column: 13, scope: !2765)
!2767 = !DILocation(line: 361, column: 52, scope: !2761)
!2768 = distinct !{!2768, !2762, !2769, !957}
!2769 = !DILocation(line: 362, column: 13, scope: !2646)
!2770 = !DILocation(line: 260, column: 10, scope: !2620)
!2771 = !DILocation(line: 365, column: 28, scope: !2648)
!2772 = !DILocation(line: 367, column: 7, scope: !2649)
!2773 = !DILocation(line: 370, column: 7, scope: !2649)
!2774 = !DILocation(line: 373, column: 7, scope: !2649)
!2775 = !DILocation(line: 376, column: 12, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2649, file: !536, line: 376, column: 11)
!2777 = !DILocation(line: 376, column: 11, scope: !2649)
!2778 = !DILocation(line: 381, column: 12, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2649, file: !536, line: 381, column: 11)
!2780 = !DILocation(line: 381, column: 11, scope: !2649)
!2781 = !DILocation(line: 382, column: 9, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !536, line: 382, column: 9)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !536, line: 382, column: 9)
!2784 = !DILocation(line: 382, column: 9, scope: !2783)
!2785 = !DILocation(line: 389, column: 7, scope: !2649)
!2786 = !DILocation(line: 392, column: 7, scope: !2649)
!2787 = !DILocation(line: 0, scope: !2651)
!2788 = !DILocation(line: 395, column: 8, scope: !2651)
!2789 = !DILocation(line: 309, column: 8, scope: !2620)
!2790 = !DILocation(line: 395, scope: !2651)
!2791 = !DILocation(line: 395, column: 34, scope: !2654)
!2792 = !DILocation(line: 395, column: 26, scope: !2654)
!2793 = !DILocation(line: 395, column: 48, scope: !2654)
!2794 = !DILocation(line: 395, column: 55, scope: !2654)
!2795 = !DILocation(line: 395, column: 3, scope: !2651)
!2796 = !DILocation(line: 395, column: 67, scope: !2654)
!2797 = !DILocation(line: 0, scope: !2653)
!2798 = !DILocation(line: 402, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 401, column: 11)
!2800 = !DILocation(line: 404, column: 17, scope: !2799)
!2801 = !DILocation(line: 405, column: 39, scope: !2799)
!2802 = !DILocation(line: 409, column: 32, scope: !2799)
!2803 = !DILocation(line: 405, column: 19, scope: !2799)
!2804 = !DILocation(line: 405, column: 15, scope: !2799)
!2805 = !DILocation(line: 410, column: 11, scope: !2799)
!2806 = !DILocation(line: 410, column: 25, scope: !2799)
!2807 = !DILocalVariable(name: "__s1", arg: 1, scope: !2808, file: !923, line: 974, type: !1059)
!2808 = distinct !DISubprogram(name: "memeq", scope: !923, file: !923, line: 974, type: !2444, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2809)
!2809 = !{!2807, !2810, !2811}
!2810 = !DILocalVariable(name: "__s2", arg: 2, scope: !2808, file: !923, line: 974, type: !1059)
!2811 = !DILocalVariable(name: "__n", arg: 3, scope: !2808, file: !923, line: 974, type: !135)
!2812 = !DILocation(line: 0, scope: !2808, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 410, column: 14, scope: !2799)
!2814 = !DILocation(line: 976, column: 11, scope: !2808, inlinedAt: !2813)
!2815 = !DILocation(line: 976, column: 10, scope: !2808, inlinedAt: !2813)
!2816 = !DILocation(line: 401, column: 11, scope: !2653)
!2817 = !DILocation(line: 417, column: 25, scope: !2653)
!2818 = !DILocation(line: 418, column: 7, scope: !2653)
!2819 = !DILocation(line: 421, column: 15, scope: !2660)
!2820 = !DILocation(line: 423, column: 15, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !536, line: 423, column: 15)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !536, line: 422, column: 13)
!2823 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 421, column: 15)
!2824 = !DILocation(line: 423, column: 15, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !536, line: 423, column: 15)
!2826 = !DILocation(line: 423, column: 15, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !536, line: 423, column: 15)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !536, line: 423, column: 15)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !536, line: 423, column: 15)
!2830 = !DILocation(line: 423, column: 15, scope: !2828)
!2831 = !DILocation(line: 423, column: 15, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !536, line: 423, column: 15)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !536, line: 423, column: 15)
!2834 = !DILocation(line: 423, column: 15, scope: !2833)
!2835 = !DILocation(line: 423, column: 15, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !536, line: 423, column: 15)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !536, line: 423, column: 15)
!2838 = !DILocation(line: 423, column: 15, scope: !2837)
!2839 = !DILocation(line: 423, column: 15, scope: !2829)
!2840 = !DILocation(line: 423, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !536, line: 423, column: 15)
!2842 = distinct !DILexicalBlock(scope: !2821, file: !536, line: 423, column: 15)
!2843 = !DILocation(line: 423, column: 15, scope: !2842)
!2844 = !DILocation(line: 431, column: 19, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2822, file: !536, line: 430, column: 19)
!2846 = !DILocation(line: 431, column: 24, scope: !2845)
!2847 = !DILocation(line: 431, column: 28, scope: !2845)
!2848 = !DILocation(line: 431, column: 38, scope: !2845)
!2849 = !DILocation(line: 431, column: 48, scope: !2845)
!2850 = !DILocation(line: 431, column: 59, scope: !2845)
!2851 = !DILocation(line: 433, column: 19, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !536, line: 433, column: 19)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !536, line: 433, column: 19)
!2854 = distinct !DILexicalBlock(scope: !2845, file: !536, line: 432, column: 17)
!2855 = !DILocation(line: 433, column: 19, scope: !2853)
!2856 = !DILocation(line: 434, column: 19, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !536, line: 434, column: 19)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !536, line: 434, column: 19)
!2859 = !DILocation(line: 434, column: 19, scope: !2858)
!2860 = !DILocation(line: 435, column: 17, scope: !2854)
!2861 = !DILocation(line: 442, column: 20, scope: !2823)
!2862 = !DILocation(line: 447, column: 11, scope: !2660)
!2863 = !DILocation(line: 450, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 448, column: 13)
!2865 = !DILocation(line: 456, column: 19, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2864, file: !536, line: 455, column: 19)
!2867 = !DILocation(line: 456, column: 24, scope: !2866)
!2868 = !DILocation(line: 456, column: 28, scope: !2866)
!2869 = !DILocation(line: 456, column: 38, scope: !2866)
!2870 = !DILocation(line: 456, column: 47, scope: !2866)
!2871 = !DILocation(line: 456, column: 41, scope: !2866)
!2872 = !DILocation(line: 456, column: 52, scope: !2866)
!2873 = !DILocation(line: 455, column: 19, scope: !2864)
!2874 = !DILocation(line: 457, column: 25, scope: !2866)
!2875 = !DILocation(line: 457, column: 17, scope: !2866)
!2876 = !DILocation(line: 464, column: 25, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2866, file: !536, line: 458, column: 19)
!2878 = !DILocation(line: 468, column: 21, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !536, line: 468, column: 21)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !536, line: 468, column: 21)
!2881 = !DILocation(line: 468, column: 21, scope: !2880)
!2882 = !DILocation(line: 469, column: 21, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !536, line: 469, column: 21)
!2884 = distinct !DILexicalBlock(scope: !2877, file: !536, line: 469, column: 21)
!2885 = !DILocation(line: 469, column: 21, scope: !2884)
!2886 = !DILocation(line: 470, column: 21, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !536, line: 470, column: 21)
!2888 = distinct !DILexicalBlock(scope: !2877, file: !536, line: 470, column: 21)
!2889 = !DILocation(line: 470, column: 21, scope: !2888)
!2890 = !DILocation(line: 471, column: 21, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !536, line: 471, column: 21)
!2892 = distinct !DILexicalBlock(scope: !2877, file: !536, line: 471, column: 21)
!2893 = !DILocation(line: 471, column: 21, scope: !2892)
!2894 = !DILocation(line: 472, column: 21, scope: !2877)
!2895 = !DILocation(line: 482, column: 33, scope: !2683)
!2896 = !DILocation(line: 483, column: 33, scope: !2683)
!2897 = !DILocation(line: 485, column: 33, scope: !2683)
!2898 = !DILocation(line: 486, column: 33, scope: !2683)
!2899 = !DILocation(line: 487, column: 33, scope: !2683)
!2900 = !DILocation(line: 490, column: 17, scope: !2683)
!2901 = !DILocation(line: 492, column: 21, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !536, line: 491, column: 15)
!2903 = distinct !DILexicalBlock(scope: !2683, file: !536, line: 490, column: 17)
!2904 = !DILocation(line: 499, column: 35, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2683, file: !536, line: 499, column: 17)
!2906 = !DILocation(line: 499, column: 57, scope: !2905)
!2907 = !DILocation(line: 0, scope: !2683)
!2908 = !DILocation(line: 502, column: 11, scope: !2683)
!2909 = !DILocation(line: 504, column: 17, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2683, file: !536, line: 503, column: 17)
!2911 = !DILocation(line: 507, column: 11, scope: !2683)
!2912 = !DILocation(line: 508, column: 17, scope: !2683)
!2913 = !DILocation(line: 517, column: 15, scope: !2660)
!2914 = !DILocation(line: 517, column: 40, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 517, column: 15)
!2916 = !DILocation(line: 517, column: 47, scope: !2915)
!2917 = !DILocation(line: 517, column: 18, scope: !2915)
!2918 = !DILocation(line: 521, column: 17, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 521, column: 15)
!2920 = !DILocation(line: 521, column: 15, scope: !2660)
!2921 = !DILocation(line: 525, column: 11, scope: !2660)
!2922 = !DILocation(line: 537, column: 15, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 536, column: 15)
!2924 = !DILocation(line: 544, column: 15, scope: !2660)
!2925 = !DILocation(line: 546, column: 19, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !536, line: 545, column: 13)
!2927 = distinct !DILexicalBlock(scope: !2660, file: !536, line: 544, column: 15)
!2928 = !DILocation(line: 549, column: 19, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2926, file: !536, line: 549, column: 19)
!2930 = !DILocation(line: 549, column: 30, scope: !2929)
!2931 = !DILocation(line: 558, column: 15, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !536, line: 558, column: 15)
!2933 = distinct !DILexicalBlock(scope: !2926, file: !536, line: 558, column: 15)
!2934 = !DILocation(line: 558, column: 15, scope: !2933)
!2935 = !DILocation(line: 559, column: 15, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !536, line: 559, column: 15)
!2937 = distinct !DILexicalBlock(scope: !2926, file: !536, line: 559, column: 15)
!2938 = !DILocation(line: 559, column: 15, scope: !2937)
!2939 = !DILocation(line: 560, column: 15, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !536, line: 560, column: 15)
!2941 = distinct !DILexicalBlock(scope: !2926, file: !536, line: 560, column: 15)
!2942 = !DILocation(line: 560, column: 15, scope: !2941)
!2943 = !DILocation(line: 562, column: 13, scope: !2926)
!2944 = !DILocation(line: 602, column: 17, scope: !2659)
!2945 = !DILocation(line: 0, scope: !2659)
!2946 = !DILocation(line: 605, column: 29, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2664, file: !536, line: 603, column: 15)
!2948 = !DILocation(line: 605, column: 27, scope: !2947)
!2949 = !DILocation(line: 668, column: 40, scope: !2659)
!2950 = !DILocation(line: 670, column: 23, scope: !2680)
!2951 = !DILocation(line: 609, column: 17, scope: !2663)
!2952 = !DILocation(line: 609, column: 27, scope: !2663)
!2953 = !DILocation(line: 0, scope: !2720, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 609, column: 32, scope: !2663)
!2955 = !DILocation(line: 0, scope: !2728, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 1137, column: 3, scope: !2720, inlinedAt: !2954)
!2957 = !DILocation(line: 59, column: 10, scope: !2728, inlinedAt: !2956)
!2958 = !DILocation(line: 613, column: 29, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2663, file: !536, line: 613, column: 21)
!2960 = !DILocation(line: 613, column: 21, scope: !2663)
!2961 = !DILocation(line: 614, column: 29, scope: !2959)
!2962 = !DILocation(line: 614, column: 19, scope: !2959)
!2963 = !DILocation(line: 618, column: 21, scope: !2666)
!2964 = !DILocation(line: 620, column: 54, scope: !2666)
!2965 = !DILocation(line: 0, scope: !2666)
!2966 = !DILocation(line: 619, column: 36, scope: !2666)
!2967 = !DILocation(line: 621, column: 25, scope: !2666)
!2968 = !DILocation(line: 631, column: 38, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2675, file: !536, line: 629, column: 23)
!2970 = !DILocation(line: 631, column: 48, scope: !2969)
!2971 = !DILocation(line: 665, column: 19, scope: !2667)
!2972 = !DILocation(line: 666, column: 15, scope: !2664)
!2973 = !DILocation(line: 626, column: 25, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2676, file: !536, line: 624, column: 23)
!2975 = !DILocation(line: 631, column: 51, scope: !2969)
!2976 = !DILocation(line: 631, column: 25, scope: !2969)
!2977 = !DILocation(line: 632, column: 28, scope: !2969)
!2978 = !DILocation(line: 631, column: 34, scope: !2969)
!2979 = distinct !{!2979, !2976, !2977, !957}
!2980 = !DILocation(line: 646, column: 29, scope: !2673)
!2981 = !DILocation(line: 0, scope: !2671)
!2982 = !DILocation(line: 649, column: 49, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2671, file: !536, line: 648, column: 29)
!2984 = !DILocation(line: 649, column: 39, scope: !2983)
!2985 = !DILocation(line: 649, column: 31, scope: !2983)
!2986 = !DILocation(line: 648, column: 60, scope: !2983)
!2987 = !DILocation(line: 648, column: 50, scope: !2983)
!2988 = !DILocation(line: 648, column: 29, scope: !2671)
!2989 = distinct !{!2989, !2988, !2990, !957}
!2990 = !DILocation(line: 654, column: 33, scope: !2671)
!2991 = !DILocation(line: 657, column: 43, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2674, file: !536, line: 657, column: 29)
!2993 = !DILocalVariable(name: "wc", arg: 1, scope: !2994, file: !2995, line: 865, type: !2998)
!2994 = distinct !DISubprogram(name: "c32isprint", scope: !2995, file: !2995, line: 865, type: !2996, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3000)
!2995 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!78, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2999, line: 20, baseType: !84)
!2999 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3000 = !{!2993}
!3001 = !DILocation(line: 0, scope: !2994, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 657, column: 31, scope: !2992)
!3003 = !DILocation(line: 871, column: 10, scope: !2994, inlinedAt: !3002)
!3004 = !DILocation(line: 657, column: 31, scope: !2992)
!3005 = !DILocation(line: 657, column: 29, scope: !2674)
!3006 = !DILocation(line: 664, column: 23, scope: !2666)
!3007 = !DILocation(line: 670, column: 19, scope: !2680)
!3008 = !DILocation(line: 670, column: 45, scope: !2680)
!3009 = !DILocation(line: 674, column: 33, scope: !2679)
!3010 = !DILocation(line: 0, scope: !2679)
!3011 = !DILocation(line: 676, column: 17, scope: !2679)
!3012 = !DILocation(line: 398, column: 12, scope: !2653)
!3013 = !DILocation(line: 678, column: 43, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !536, line: 678, column: 25)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !536, line: 677, column: 19)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !536, line: 676, column: 17)
!3017 = distinct !DILexicalBlock(scope: !2679, file: !536, line: 676, column: 17)
!3018 = !DILocation(line: 680, column: 25, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !536, line: 680, column: 25)
!3020 = distinct !DILexicalBlock(scope: !3014, file: !536, line: 679, column: 23)
!3021 = !DILocation(line: 680, column: 25, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !536, line: 680, column: 25)
!3023 = !DILocation(line: 680, column: 25, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !536, line: 680, column: 25)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !536, line: 680, column: 25)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !536, line: 680, column: 25)
!3027 = !DILocation(line: 680, column: 25, scope: !3025)
!3028 = !DILocation(line: 680, column: 25, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !536, line: 680, column: 25)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !536, line: 680, column: 25)
!3031 = !DILocation(line: 680, column: 25, scope: !3030)
!3032 = !DILocation(line: 680, column: 25, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !536, line: 680, column: 25)
!3034 = distinct !DILexicalBlock(scope: !3026, file: !536, line: 680, column: 25)
!3035 = !DILocation(line: 680, column: 25, scope: !3034)
!3036 = !DILocation(line: 680, column: 25, scope: !3026)
!3037 = !DILocation(line: 680, column: 25, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !536, line: 680, column: 25)
!3039 = distinct !DILexicalBlock(scope: !3019, file: !536, line: 680, column: 25)
!3040 = !DILocation(line: 680, column: 25, scope: !3039)
!3041 = !DILocation(line: 681, column: 25, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !536, line: 681, column: 25)
!3043 = distinct !DILexicalBlock(scope: !3020, file: !536, line: 681, column: 25)
!3044 = !DILocation(line: 681, column: 25, scope: !3043)
!3045 = !DILocation(line: 682, column: 25, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !536, line: 682, column: 25)
!3047 = distinct !DILexicalBlock(scope: !3020, file: !536, line: 682, column: 25)
!3048 = !DILocation(line: 682, column: 25, scope: !3047)
!3049 = !DILocation(line: 683, column: 38, scope: !3020)
!3050 = !DILocation(line: 683, column: 33, scope: !3020)
!3051 = !DILocation(line: 684, column: 23, scope: !3020)
!3052 = !DILocation(line: 685, column: 30, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3014, file: !536, line: 685, column: 30)
!3054 = !DILocation(line: 685, column: 30, scope: !3014)
!3055 = !DILocation(line: 687, column: 25, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !536, line: 687, column: 25)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !536, line: 687, column: 25)
!3058 = distinct !DILexicalBlock(scope: !3053, file: !536, line: 686, column: 23)
!3059 = !DILocation(line: 687, column: 25, scope: !3057)
!3060 = !DILocation(line: 689, column: 23, scope: !3058)
!3061 = !DILocation(line: 690, column: 35, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3015, file: !536, line: 690, column: 25)
!3063 = !DILocation(line: 690, column: 30, scope: !3062)
!3064 = !DILocation(line: 690, column: 25, scope: !3015)
!3065 = !DILocation(line: 692, column: 21, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !536, line: 692, column: 21)
!3067 = distinct !DILexicalBlock(scope: !3015, file: !536, line: 692, column: 21)
!3068 = !DILocation(line: 692, column: 21, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !536, line: 692, column: 21)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !536, line: 692, column: 21)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !536, line: 692, column: 21)
!3072 = !DILocation(line: 692, column: 21, scope: !3070)
!3073 = !DILocation(line: 692, column: 21, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !536, line: 692, column: 21)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !536, line: 692, column: 21)
!3076 = !DILocation(line: 692, column: 21, scope: !3075)
!3077 = !DILocation(line: 692, column: 21, scope: !3071)
!3078 = !DILocation(line: 0, scope: !3015)
!3079 = !DILocation(line: 693, column: 21, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !536, line: 693, column: 21)
!3081 = distinct !DILexicalBlock(scope: !3015, file: !536, line: 693, column: 21)
!3082 = !DILocation(line: 693, column: 21, scope: !3081)
!3083 = !DILocation(line: 694, column: 25, scope: !3015)
!3084 = !DILocation(line: 676, column: 17, scope: !3016)
!3085 = distinct !{!3085, !3086, !3087}
!3086 = !DILocation(line: 676, column: 17, scope: !3017)
!3087 = !DILocation(line: 695, column: 19, scope: !3017)
!3088 = !DILocation(line: 409, column: 30, scope: !2799)
!3089 = !DILocation(line: 702, column: 34, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 702, column: 11)
!3091 = !DILocation(line: 704, column: 14, scope: !3090)
!3092 = !DILocation(line: 705, column: 14, scope: !3090)
!3093 = !DILocation(line: 705, column: 35, scope: !3090)
!3094 = !DILocation(line: 705, column: 17, scope: !3090)
!3095 = !DILocation(line: 705, column: 47, scope: !3090)
!3096 = !DILocation(line: 705, column: 65, scope: !3090)
!3097 = !DILocation(line: 706, column: 11, scope: !3090)
!3098 = !DILocation(line: 702, column: 11, scope: !2653)
!3099 = !DILocation(line: 395, column: 15, scope: !2651)
!3100 = !DILocation(line: 709, column: 5, scope: !2653)
!3101 = !DILocation(line: 710, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 710, column: 7)
!3103 = !DILocation(line: 710, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3102, file: !536, line: 710, column: 7)
!3105 = !DILocation(line: 710, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !536, line: 710, column: 7)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !536, line: 710, column: 7)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !536, line: 710, column: 7)
!3109 = !DILocation(line: 710, column: 7, scope: !3107)
!3110 = !DILocation(line: 710, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !536, line: 710, column: 7)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !536, line: 710, column: 7)
!3113 = !DILocation(line: 710, column: 7, scope: !3112)
!3114 = !DILocation(line: 710, column: 7, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !536, line: 710, column: 7)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !536, line: 710, column: 7)
!3117 = !DILocation(line: 710, column: 7, scope: !3116)
!3118 = !DILocation(line: 710, column: 7, scope: !3108)
!3119 = !DILocation(line: 710, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !536, line: 710, column: 7)
!3121 = distinct !DILexicalBlock(scope: !3102, file: !536, line: 710, column: 7)
!3122 = !DILocation(line: 710, column: 7, scope: !3121)
!3123 = !DILocation(line: 712, column: 5, scope: !2653)
!3124 = !DILocation(line: 713, column: 7, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !536, line: 713, column: 7)
!3126 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 713, column: 7)
!3127 = !DILocation(line: 417, column: 21, scope: !2653)
!3128 = !DILocation(line: 713, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !536, line: 713, column: 7)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !536, line: 713, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3125, file: !536, line: 713, column: 7)
!3132 = !DILocation(line: 713, column: 7, scope: !3130)
!3133 = !DILocation(line: 713, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !536, line: 713, column: 7)
!3135 = distinct !DILexicalBlock(scope: !3131, file: !536, line: 713, column: 7)
!3136 = !DILocation(line: 713, column: 7, scope: !3135)
!3137 = !DILocation(line: 713, column: 7, scope: !3131)
!3138 = !DILocation(line: 714, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !536, line: 714, column: 7)
!3140 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 714, column: 7)
!3141 = !DILocation(line: 714, column: 7, scope: !3140)
!3142 = !DILocation(line: 716, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !2653, file: !536, line: 716, column: 11)
!3144 = !DILocation(line: 716, column: 11, scope: !2653)
!3145 = !DILocation(line: 718, column: 5, scope: !2654)
!3146 = !DILocation(line: 395, column: 82, scope: !2654)
!3147 = !DILocation(line: 395, column: 3, scope: !2654)
!3148 = distinct !{!3148, !2795, !3149, !957}
!3149 = !DILocation(line: 718, column: 5, scope: !2651)
!3150 = !DILocation(line: 720, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 720, column: 7)
!3152 = !DILocation(line: 720, column: 16, scope: !3151)
!3153 = !DILocation(line: 728, column: 51, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 728, column: 7)
!3155 = !DILocation(line: 731, column: 11, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !536, line: 731, column: 11)
!3157 = distinct !DILexicalBlock(scope: !3154, file: !536, line: 730, column: 5)
!3158 = !DILocation(line: 731, column: 11, scope: !3157)
!3159 = !DILocation(line: 732, column: 16, scope: !3156)
!3160 = !DILocation(line: 732, column: 9, scope: !3156)
!3161 = !DILocation(line: 736, column: 18, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3156, file: !536, line: 736, column: 16)
!3163 = !DILocation(line: 736, column: 29, scope: !3162)
!3164 = !DILocation(line: 745, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 745, column: 7)
!3166 = !DILocation(line: 745, column: 20, scope: !3165)
!3167 = !DILocation(line: 746, column: 12, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !536, line: 746, column: 5)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !536, line: 746, column: 5)
!3170 = !DILocation(line: 746, column: 5, scope: !3169)
!3171 = !DILocation(line: 747, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !536, line: 747, column: 7)
!3173 = distinct !DILexicalBlock(scope: !3168, file: !536, line: 747, column: 7)
!3174 = !DILocation(line: 747, column: 7, scope: !3173)
!3175 = !DILocation(line: 746, column: 39, scope: !3168)
!3176 = distinct !{!3176, !3170, !3177, !957}
!3177 = !DILocation(line: 747, column: 7, scope: !3169)
!3178 = !DILocation(line: 749, column: 11, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 749, column: 7)
!3180 = !DILocation(line: 749, column: 7, scope: !2620)
!3181 = !DILocation(line: 750, column: 5, scope: !3179)
!3182 = !DILocation(line: 750, column: 17, scope: !3179)
!3183 = !DILocation(line: 753, column: 2, scope: !2620)
!3184 = !DILocation(line: 756, column: 51, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !2620, file: !536, line: 756, column: 7)
!3186 = !DILocation(line: 756, column: 21, scope: !3185)
!3187 = !DILocation(line: 760, column: 42, scope: !2620)
!3188 = !DILocation(line: 758, column: 10, scope: !2620)
!3189 = !DILocation(line: 758, column: 3, scope: !2620)
!3190 = !DILocation(line: 762, column: 1, scope: !2620)
!3191 = !DISubprogram(name: "iswprint", scope: !3192, file: !3192, line: 120, type: !2996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!3192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3193 = distinct !DISubprogram(name: "quotearg_alloc", scope: !536, file: !536, line: 788, type: !3194, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!132, !138, !135, !2513}
!3196 = !{!3197, !3198, !3199}
!3197 = !DILocalVariable(name: "arg", arg: 1, scope: !3193, file: !536, line: 788, type: !138)
!3198 = !DILocalVariable(name: "argsize", arg: 2, scope: !3193, file: !536, line: 788, type: !135)
!3199 = !DILocalVariable(name: "o", arg: 3, scope: !3193, file: !536, line: 789, type: !2513)
!3200 = !DILocation(line: 0, scope: !3193)
!3201 = !DILocalVariable(name: "arg", arg: 1, scope: !3202, file: !536, line: 801, type: !138)
!3202 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !536, file: !536, line: 801, type: !3203, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!132, !138, !135, !179, !2513}
!3205 = !{!3201, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3206 = !DILocalVariable(name: "argsize", arg: 2, scope: !3202, file: !536, line: 801, type: !135)
!3207 = !DILocalVariable(name: "size", arg: 3, scope: !3202, file: !536, line: 801, type: !179)
!3208 = !DILocalVariable(name: "o", arg: 4, scope: !3202, file: !536, line: 802, type: !2513)
!3209 = !DILocalVariable(name: "p", scope: !3202, file: !536, line: 804, type: !2513)
!3210 = !DILocalVariable(name: "saved_errno", scope: !3202, file: !536, line: 805, type: !78)
!3211 = !DILocalVariable(name: "flags", scope: !3202, file: !536, line: 807, type: !78)
!3212 = !DILocalVariable(name: "bufsize", scope: !3202, file: !536, line: 808, type: !135)
!3213 = !DILocalVariable(name: "buf", scope: !3202, file: !536, line: 812, type: !132)
!3214 = !DILocation(line: 0, scope: !3202, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 791, column: 10, scope: !3193)
!3216 = !DILocation(line: 804, column: 37, scope: !3202, inlinedAt: !3215)
!3217 = !DILocation(line: 805, column: 21, scope: !3202, inlinedAt: !3215)
!3218 = !DILocation(line: 807, column: 18, scope: !3202, inlinedAt: !3215)
!3219 = !DILocation(line: 807, column: 24, scope: !3202, inlinedAt: !3215)
!3220 = !DILocation(line: 808, column: 72, scope: !3202, inlinedAt: !3215)
!3221 = !DILocation(line: 809, column: 56, scope: !3202, inlinedAt: !3215)
!3222 = !DILocation(line: 810, column: 49, scope: !3202, inlinedAt: !3215)
!3223 = !DILocation(line: 811, column: 49, scope: !3202, inlinedAt: !3215)
!3224 = !DILocation(line: 808, column: 20, scope: !3202, inlinedAt: !3215)
!3225 = !DILocation(line: 811, column: 62, scope: !3202, inlinedAt: !3215)
!3226 = !DILocation(line: 812, column: 15, scope: !3202, inlinedAt: !3215)
!3227 = !DILocation(line: 813, column: 60, scope: !3202, inlinedAt: !3215)
!3228 = !DILocation(line: 815, column: 32, scope: !3202, inlinedAt: !3215)
!3229 = !DILocation(line: 815, column: 47, scope: !3202, inlinedAt: !3215)
!3230 = !DILocation(line: 813, column: 3, scope: !3202, inlinedAt: !3215)
!3231 = !DILocation(line: 816, column: 9, scope: !3202, inlinedAt: !3215)
!3232 = !DILocation(line: 791, column: 3, scope: !3193)
!3233 = !DILocation(line: 0, scope: !3202)
!3234 = !DILocation(line: 804, column: 37, scope: !3202)
!3235 = !DILocation(line: 805, column: 21, scope: !3202)
!3236 = !DILocation(line: 807, column: 18, scope: !3202)
!3237 = !DILocation(line: 807, column: 27, scope: !3202)
!3238 = !DILocation(line: 807, column: 24, scope: !3202)
!3239 = !DILocation(line: 808, column: 72, scope: !3202)
!3240 = !DILocation(line: 809, column: 56, scope: !3202)
!3241 = !DILocation(line: 810, column: 49, scope: !3202)
!3242 = !DILocation(line: 811, column: 49, scope: !3202)
!3243 = !DILocation(line: 808, column: 20, scope: !3202)
!3244 = !DILocation(line: 811, column: 62, scope: !3202)
!3245 = !DILocation(line: 812, column: 15, scope: !3202)
!3246 = !DILocation(line: 813, column: 60, scope: !3202)
!3247 = !DILocation(line: 815, column: 32, scope: !3202)
!3248 = !DILocation(line: 815, column: 47, scope: !3202)
!3249 = !DILocation(line: 813, column: 3, scope: !3202)
!3250 = !DILocation(line: 816, column: 9, scope: !3202)
!3251 = !DILocation(line: 817, column: 7, scope: !3202)
!3252 = !DILocation(line: 818, column: 11, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3202, file: !536, line: 817, column: 7)
!3254 = !DILocation(line: 818, column: 5, scope: !3253)
!3255 = !DILocation(line: 819, column: 3, scope: !3202)
!3256 = distinct !DISubprogram(name: "quotearg_free", scope: !536, file: !536, line: 837, type: !491, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3257)
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "sv", scope: !3256, file: !536, line: 839, type: !623)
!3259 = !DILocalVariable(name: "i", scope: !3260, file: !536, line: 840, type: !78)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !536, line: 840, column: 3)
!3261 = !DILocation(line: 839, column: 24, scope: !3256)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 0, scope: !3260)
!3264 = !DILocation(line: 840, column: 21, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !536, line: 840, column: 3)
!3266 = !DILocation(line: 840, column: 3, scope: !3260)
!3267 = !DILocation(line: 842, column: 13, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3256, file: !536, line: 842, column: 7)
!3269 = !{!3270, !841, i64 8}
!3270 = !{!"slotvec", !1137, i64 0, !841, i64 8}
!3271 = !DILocation(line: 842, column: 17, scope: !3268)
!3272 = !DILocation(line: 842, column: 7, scope: !3256)
!3273 = !DILocation(line: 841, column: 17, scope: !3265)
!3274 = !DILocation(line: 841, column: 5, scope: !3265)
!3275 = !DILocation(line: 840, column: 32, scope: !3265)
!3276 = distinct !{!3276, !3266, !3277, !957}
!3277 = !DILocation(line: 841, column: 20, scope: !3260)
!3278 = !DILocation(line: 844, column: 7, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3268, file: !536, line: 843, column: 5)
!3280 = !DILocation(line: 845, column: 21, scope: !3279)
!3281 = !{!3270, !1137, i64 0}
!3282 = !DILocation(line: 846, column: 20, scope: !3279)
!3283 = !DILocation(line: 847, column: 5, scope: !3279)
!3284 = !DILocation(line: 848, column: 10, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3256, file: !536, line: 848, column: 7)
!3286 = !DILocation(line: 848, column: 7, scope: !3256)
!3287 = !DILocation(line: 850, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3285, file: !536, line: 849, column: 5)
!3289 = !DILocation(line: 851, column: 15, scope: !3288)
!3290 = !DILocation(line: 852, column: 5, scope: !3288)
!3291 = !DILocation(line: 853, column: 10, scope: !3256)
!3292 = !DILocation(line: 854, column: 1, scope: !3256)
!3293 = distinct !DISubprogram(name: "quotearg_n", scope: !536, file: !536, line: 919, type: !1028, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3294)
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "n", arg: 1, scope: !3293, file: !536, line: 919, type: !78)
!3296 = !DILocalVariable(name: "arg", arg: 2, scope: !3293, file: !536, line: 919, type: !138)
!3297 = !DILocation(line: 0, scope: !3293)
!3298 = !DILocation(line: 921, column: 10, scope: !3293)
!3299 = !DILocation(line: 921, column: 3, scope: !3293)
!3300 = distinct !DISubprogram(name: "quotearg_n_options", scope: !536, file: !536, line: 866, type: !3301, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!132, !78, !138, !135, !2513}
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3314, !3315, !3317, !3318, !3319}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3300, file: !536, line: 866, type: !78)
!3305 = !DILocalVariable(name: "arg", arg: 2, scope: !3300, file: !536, line: 866, type: !138)
!3306 = !DILocalVariable(name: "argsize", arg: 3, scope: !3300, file: !536, line: 866, type: !135)
!3307 = !DILocalVariable(name: "options", arg: 4, scope: !3300, file: !536, line: 867, type: !2513)
!3308 = !DILocalVariable(name: "saved_errno", scope: !3300, file: !536, line: 869, type: !78)
!3309 = !DILocalVariable(name: "sv", scope: !3300, file: !536, line: 871, type: !623)
!3310 = !DILocalVariable(name: "nslots_max", scope: !3300, file: !536, line: 873, type: !78)
!3311 = !DILocalVariable(name: "preallocated", scope: !3312, file: !536, line: 879, type: !172)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !536, line: 878, column: 5)
!3313 = distinct !DILexicalBlock(scope: !3300, file: !536, line: 877, column: 7)
!3314 = !DILocalVariable(name: "new_nslots", scope: !3312, file: !536, line: 880, type: !392)
!3315 = !DILocalVariable(name: "size", scope: !3316, file: !536, line: 891, type: !135)
!3316 = distinct !DILexicalBlock(scope: !3300, file: !536, line: 890, column: 3)
!3317 = !DILocalVariable(name: "val", scope: !3316, file: !536, line: 892, type: !132)
!3318 = !DILocalVariable(name: "flags", scope: !3316, file: !536, line: 894, type: !78)
!3319 = !DILocalVariable(name: "qsize", scope: !3316, file: !536, line: 895, type: !135)
!3320 = !DILocation(line: 0, scope: !3300)
!3321 = !DILocation(line: 869, column: 21, scope: !3300)
!3322 = !DILocation(line: 871, column: 24, scope: !3300)
!3323 = !DILocation(line: 874, column: 17, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3300, file: !536, line: 874, column: 7)
!3325 = !DILocation(line: 875, column: 5, scope: !3324)
!3326 = !DILocation(line: 877, column: 7, scope: !3313)
!3327 = !DILocation(line: 877, column: 14, scope: !3313)
!3328 = !DILocation(line: 877, column: 7, scope: !3300)
!3329 = !DILocation(line: 879, column: 31, scope: !3312)
!3330 = !DILocation(line: 0, scope: !3312)
!3331 = !DILocation(line: 880, column: 7, scope: !3312)
!3332 = !DILocation(line: 880, column: 26, scope: !3312)
!3333 = !DILocation(line: 880, column: 13, scope: !3312)
!3334 = !DILocation(line: 882, column: 31, scope: !3312)
!3335 = !DILocation(line: 883, column: 33, scope: !3312)
!3336 = !DILocation(line: 883, column: 42, scope: !3312)
!3337 = !DILocation(line: 883, column: 31, scope: !3312)
!3338 = !DILocation(line: 882, column: 22, scope: !3312)
!3339 = !DILocation(line: 882, column: 15, scope: !3312)
!3340 = !DILocation(line: 884, column: 11, scope: !3312)
!3341 = !DILocation(line: 885, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3312, file: !536, line: 884, column: 11)
!3343 = !{i64 0, i64 8, !1136, i64 8, i64 8, !840}
!3344 = !DILocation(line: 885, column: 9, scope: !3342)
!3345 = !DILocation(line: 886, column: 20, scope: !3312)
!3346 = !DILocation(line: 886, column: 18, scope: !3312)
!3347 = !DILocation(line: 886, column: 32, scope: !3312)
!3348 = !DILocation(line: 886, column: 43, scope: !3312)
!3349 = !DILocation(line: 886, column: 53, scope: !3312)
!3350 = !DILocation(line: 0, scope: !2728, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 886, column: 7, scope: !3312)
!3352 = !DILocation(line: 59, column: 10, scope: !2728, inlinedAt: !3351)
!3353 = !DILocation(line: 887, column: 16, scope: !3312)
!3354 = !DILocation(line: 887, column: 14, scope: !3312)
!3355 = !DILocation(line: 888, column: 5, scope: !3313)
!3356 = !DILocation(line: 888, column: 5, scope: !3312)
!3357 = !DILocation(line: 891, column: 19, scope: !3316)
!3358 = !DILocation(line: 891, column: 25, scope: !3316)
!3359 = !DILocation(line: 0, scope: !3316)
!3360 = !DILocation(line: 892, column: 23, scope: !3316)
!3361 = !DILocation(line: 894, column: 26, scope: !3316)
!3362 = !DILocation(line: 894, column: 32, scope: !3316)
!3363 = !DILocation(line: 896, column: 55, scope: !3316)
!3364 = !DILocation(line: 897, column: 55, scope: !3316)
!3365 = !DILocation(line: 898, column: 55, scope: !3316)
!3366 = !DILocation(line: 899, column: 55, scope: !3316)
!3367 = !DILocation(line: 895, column: 20, scope: !3316)
!3368 = !DILocation(line: 901, column: 14, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3316, file: !536, line: 901, column: 9)
!3370 = !DILocation(line: 901, column: 9, scope: !3316)
!3371 = !DILocation(line: 903, column: 35, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3369, file: !536, line: 902, column: 7)
!3373 = !DILocation(line: 903, column: 20, scope: !3372)
!3374 = !DILocation(line: 904, column: 17, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3372, file: !536, line: 904, column: 13)
!3376 = !DILocation(line: 904, column: 13, scope: !3372)
!3377 = !DILocation(line: 905, column: 11, scope: !3375)
!3378 = !DILocation(line: 906, column: 27, scope: !3372)
!3379 = !DILocation(line: 906, column: 19, scope: !3372)
!3380 = !DILocation(line: 907, column: 69, scope: !3372)
!3381 = !DILocation(line: 909, column: 44, scope: !3372)
!3382 = !DILocation(line: 910, column: 44, scope: !3372)
!3383 = !DILocation(line: 907, column: 9, scope: !3372)
!3384 = !DILocation(line: 911, column: 7, scope: !3372)
!3385 = !DILocation(line: 913, column: 11, scope: !3316)
!3386 = !DILocation(line: 914, column: 5, scope: !3316)
!3387 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !536, file: !536, line: 925, type: !3388, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!132, !78, !138, !135}
!3390 = !{!3391, !3392, !3393}
!3391 = !DILocalVariable(name: "n", arg: 1, scope: !3387, file: !536, line: 925, type: !78)
!3392 = !DILocalVariable(name: "arg", arg: 2, scope: !3387, file: !536, line: 925, type: !138)
!3393 = !DILocalVariable(name: "argsize", arg: 3, scope: !3387, file: !536, line: 925, type: !135)
!3394 = !DILocation(line: 0, scope: !3387)
!3395 = !DILocation(line: 927, column: 10, scope: !3387)
!3396 = !DILocation(line: 927, column: 3, scope: !3387)
!3397 = distinct !DISubprogram(name: "quotearg", scope: !536, file: !536, line: 931, type: !1037, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3398)
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "arg", arg: 1, scope: !3397, file: !536, line: 931, type: !138)
!3400 = !DILocation(line: 0, scope: !3397)
!3401 = !DILocation(line: 0, scope: !3293, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 933, column: 10, scope: !3397)
!3403 = !DILocation(line: 921, column: 10, scope: !3293, inlinedAt: !3402)
!3404 = !DILocation(line: 933, column: 3, scope: !3397)
!3405 = distinct !DISubprogram(name: "quotearg_mem", scope: !536, file: !536, line: 937, type: !3406, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!132, !138, !135}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "arg", arg: 1, scope: !3405, file: !536, line: 937, type: !138)
!3410 = !DILocalVariable(name: "argsize", arg: 2, scope: !3405, file: !536, line: 937, type: !135)
!3411 = !DILocation(line: 0, scope: !3405)
!3412 = !DILocation(line: 0, scope: !3387, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 939, column: 10, scope: !3405)
!3414 = !DILocation(line: 927, column: 10, scope: !3387, inlinedAt: !3413)
!3415 = !DILocation(line: 939, column: 3, scope: !3405)
!3416 = distinct !DISubprogram(name: "quotearg_n_style", scope: !536, file: !536, line: 943, type: !3417, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!132, !78, !82, !138}
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DILocalVariable(name: "n", arg: 1, scope: !3416, file: !536, line: 943, type: !78)
!3421 = !DILocalVariable(name: "s", arg: 2, scope: !3416, file: !536, line: 943, type: !82)
!3422 = !DILocalVariable(name: "arg", arg: 3, scope: !3416, file: !536, line: 943, type: !138)
!3423 = !DILocalVariable(name: "o", scope: !3416, file: !536, line: 945, type: !2514)
!3424 = !DILocation(line: 0, scope: !3416)
!3425 = !DILocation(line: 945, column: 3, scope: !3416)
!3426 = !DILocation(line: 945, column: 32, scope: !3416)
!3427 = !{!3428}
!3428 = distinct !{!3428, !3429, !"quoting_options_from_style: argument 0"}
!3429 = distinct !{!3429, !"quoting_options_from_style"}
!3430 = !DILocation(line: 945, column: 36, scope: !3416)
!3431 = !DILocalVariable(name: "style", arg: 1, scope: !3432, file: !536, line: 183, type: !82)
!3432 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !536, file: !536, line: 183, type: !3433, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!575, !82}
!3435 = !{!3431, !3436}
!3436 = !DILocalVariable(name: "o", scope: !3432, file: !536, line: 185, type: !575)
!3437 = !DILocation(line: 0, scope: !3432, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 945, column: 36, scope: !3416)
!3439 = !DILocation(line: 185, column: 26, scope: !3432, inlinedAt: !3438)
!3440 = !DILocation(line: 186, column: 13, scope: !3441, inlinedAt: !3438)
!3441 = distinct !DILexicalBlock(scope: !3432, file: !536, line: 186, column: 7)
!3442 = !DILocation(line: 186, column: 7, scope: !3432, inlinedAt: !3438)
!3443 = !DILocation(line: 187, column: 5, scope: !3441, inlinedAt: !3438)
!3444 = !DILocation(line: 188, column: 11, scope: !3432, inlinedAt: !3438)
!3445 = !DILocation(line: 946, column: 10, scope: !3416)
!3446 = !DILocation(line: 947, column: 1, scope: !3416)
!3447 = !DILocation(line: 946, column: 3, scope: !3416)
!3448 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !536, file: !536, line: 950, type: !3449, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!132, !78, !82, !138, !135}
!3451 = !{!3452, !3453, !3454, !3455, !3456}
!3452 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !536, line: 950, type: !78)
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !536, line: 950, type: !82)
!3454 = !DILocalVariable(name: "arg", arg: 3, scope: !3448, file: !536, line: 951, type: !138)
!3455 = !DILocalVariable(name: "argsize", arg: 4, scope: !3448, file: !536, line: 951, type: !135)
!3456 = !DILocalVariable(name: "o", scope: !3448, file: !536, line: 953, type: !2514)
!3457 = !DILocation(line: 0, scope: !3448)
!3458 = !DILocation(line: 953, column: 3, scope: !3448)
!3459 = !DILocation(line: 953, column: 32, scope: !3448)
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"quoting_options_from_style: argument 0"}
!3462 = distinct !{!3462, !"quoting_options_from_style"}
!3463 = !DILocation(line: 953, column: 36, scope: !3448)
!3464 = !DILocation(line: 0, scope: !3432, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 953, column: 36, scope: !3448)
!3466 = !DILocation(line: 185, column: 26, scope: !3432, inlinedAt: !3465)
!3467 = !DILocation(line: 186, column: 13, scope: !3441, inlinedAt: !3465)
!3468 = !DILocation(line: 186, column: 7, scope: !3432, inlinedAt: !3465)
!3469 = !DILocation(line: 187, column: 5, scope: !3441, inlinedAt: !3465)
!3470 = !DILocation(line: 188, column: 11, scope: !3432, inlinedAt: !3465)
!3471 = !DILocation(line: 954, column: 10, scope: !3448)
!3472 = !DILocation(line: 955, column: 1, scope: !3448)
!3473 = !DILocation(line: 954, column: 3, scope: !3448)
!3474 = distinct !DISubprogram(name: "quotearg_style", scope: !536, file: !536, line: 958, type: !3475, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!132, !82, !138}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "s", arg: 1, scope: !3474, file: !536, line: 958, type: !82)
!3479 = !DILocalVariable(name: "arg", arg: 2, scope: !3474, file: !536, line: 958, type: !138)
!3480 = !DILocation(line: 0, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3416, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 960, column: 10, scope: !3474)
!3483 = !DILocation(line: 945, column: 3, scope: !3416, inlinedAt: !3482)
!3484 = !DILocation(line: 945, column: 32, scope: !3416, inlinedAt: !3482)
!3485 = !{!3486}
!3486 = distinct !{!3486, !3487, !"quoting_options_from_style: argument 0"}
!3487 = distinct !{!3487, !"quoting_options_from_style"}
!3488 = !DILocation(line: 945, column: 36, scope: !3416, inlinedAt: !3482)
!3489 = !DILocation(line: 0, scope: !3432, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 945, column: 36, scope: !3416, inlinedAt: !3482)
!3491 = !DILocation(line: 185, column: 26, scope: !3432, inlinedAt: !3490)
!3492 = !DILocation(line: 186, column: 13, scope: !3441, inlinedAt: !3490)
!3493 = !DILocation(line: 186, column: 7, scope: !3432, inlinedAt: !3490)
!3494 = !DILocation(line: 187, column: 5, scope: !3441, inlinedAt: !3490)
!3495 = !DILocation(line: 188, column: 11, scope: !3432, inlinedAt: !3490)
!3496 = !DILocation(line: 946, column: 10, scope: !3416, inlinedAt: !3482)
!3497 = !DILocation(line: 947, column: 1, scope: !3416, inlinedAt: !3482)
!3498 = !DILocation(line: 960, column: 3, scope: !3474)
!3499 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !536, file: !536, line: 964, type: !3500, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3502)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!132, !82, !138, !135}
!3502 = !{!3503, !3504, !3505}
!3503 = !DILocalVariable(name: "s", arg: 1, scope: !3499, file: !536, line: 964, type: !82)
!3504 = !DILocalVariable(name: "arg", arg: 2, scope: !3499, file: !536, line: 964, type: !138)
!3505 = !DILocalVariable(name: "argsize", arg: 3, scope: !3499, file: !536, line: 964, type: !135)
!3506 = !DILocation(line: 0, scope: !3499)
!3507 = !DILocation(line: 0, scope: !3448, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 966, column: 10, scope: !3499)
!3509 = !DILocation(line: 953, column: 3, scope: !3448, inlinedAt: !3508)
!3510 = !DILocation(line: 953, column: 32, scope: !3448, inlinedAt: !3508)
!3511 = !{!3512}
!3512 = distinct !{!3512, !3513, !"quoting_options_from_style: argument 0"}
!3513 = distinct !{!3513, !"quoting_options_from_style"}
!3514 = !DILocation(line: 953, column: 36, scope: !3448, inlinedAt: !3508)
!3515 = !DILocation(line: 0, scope: !3432, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 953, column: 36, scope: !3448, inlinedAt: !3508)
!3517 = !DILocation(line: 185, column: 26, scope: !3432, inlinedAt: !3516)
!3518 = !DILocation(line: 186, column: 13, scope: !3441, inlinedAt: !3516)
!3519 = !DILocation(line: 186, column: 7, scope: !3432, inlinedAt: !3516)
!3520 = !DILocation(line: 187, column: 5, scope: !3441, inlinedAt: !3516)
!3521 = !DILocation(line: 188, column: 11, scope: !3432, inlinedAt: !3516)
!3522 = !DILocation(line: 954, column: 10, scope: !3448, inlinedAt: !3508)
!3523 = !DILocation(line: 955, column: 1, scope: !3448, inlinedAt: !3508)
!3524 = !DILocation(line: 966, column: 3, scope: !3499)
!3525 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !536, file: !536, line: 970, type: !3526, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!132, !138, !135, !4}
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DILocalVariable(name: "arg", arg: 1, scope: !3525, file: !536, line: 970, type: !138)
!3530 = !DILocalVariable(name: "argsize", arg: 2, scope: !3525, file: !536, line: 970, type: !135)
!3531 = !DILocalVariable(name: "ch", arg: 3, scope: !3525, file: !536, line: 970, type: !4)
!3532 = !DILocalVariable(name: "options", scope: !3525, file: !536, line: 972, type: !575)
!3533 = !DILocation(line: 0, scope: !3525)
!3534 = !DILocation(line: 972, column: 3, scope: !3525)
!3535 = !DILocation(line: 972, column: 26, scope: !3525)
!3536 = !DILocation(line: 973, column: 13, scope: !3525)
!3537 = !{i64 0, i64 4, !919, i64 4, i64 4, !910, i64 8, i64 32, !919, i64 40, i64 8, !840, i64 48, i64 8, !840}
!3538 = !DILocation(line: 0, scope: !2533, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 974, column: 3, scope: !3525)
!3540 = !DILocation(line: 147, column: 41, scope: !2533, inlinedAt: !3539)
!3541 = !DILocation(line: 147, column: 62, scope: !2533, inlinedAt: !3539)
!3542 = !DILocation(line: 147, column: 57, scope: !2533, inlinedAt: !3539)
!3543 = !DILocation(line: 148, column: 15, scope: !2533, inlinedAt: !3539)
!3544 = !DILocation(line: 149, column: 21, scope: !2533, inlinedAt: !3539)
!3545 = !DILocation(line: 149, column: 24, scope: !2533, inlinedAt: !3539)
!3546 = !DILocation(line: 150, column: 19, scope: !2533, inlinedAt: !3539)
!3547 = !DILocation(line: 150, column: 24, scope: !2533, inlinedAt: !3539)
!3548 = !DILocation(line: 150, column: 6, scope: !2533, inlinedAt: !3539)
!3549 = !DILocation(line: 975, column: 10, scope: !3525)
!3550 = !DILocation(line: 976, column: 1, scope: !3525)
!3551 = !DILocation(line: 975, column: 3, scope: !3525)
!3552 = distinct !DISubprogram(name: "quotearg_char", scope: !536, file: !536, line: 979, type: !3553, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!132, !138, !4}
!3555 = !{!3556, !3557}
!3556 = !DILocalVariable(name: "arg", arg: 1, scope: !3552, file: !536, line: 979, type: !138)
!3557 = !DILocalVariable(name: "ch", arg: 2, scope: !3552, file: !536, line: 979, type: !4)
!3558 = !DILocation(line: 0, scope: !3552)
!3559 = !DILocation(line: 0, scope: !3525, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 981, column: 10, scope: !3552)
!3561 = !DILocation(line: 972, column: 3, scope: !3525, inlinedAt: !3560)
!3562 = !DILocation(line: 972, column: 26, scope: !3525, inlinedAt: !3560)
!3563 = !DILocation(line: 973, column: 13, scope: !3525, inlinedAt: !3560)
!3564 = !DILocation(line: 0, scope: !2533, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 974, column: 3, scope: !3525, inlinedAt: !3560)
!3566 = !DILocation(line: 147, column: 41, scope: !2533, inlinedAt: !3565)
!3567 = !DILocation(line: 147, column: 62, scope: !2533, inlinedAt: !3565)
!3568 = !DILocation(line: 147, column: 57, scope: !2533, inlinedAt: !3565)
!3569 = !DILocation(line: 148, column: 15, scope: !2533, inlinedAt: !3565)
!3570 = !DILocation(line: 149, column: 21, scope: !2533, inlinedAt: !3565)
!3571 = !DILocation(line: 149, column: 24, scope: !2533, inlinedAt: !3565)
!3572 = !DILocation(line: 150, column: 19, scope: !2533, inlinedAt: !3565)
!3573 = !DILocation(line: 150, column: 24, scope: !2533, inlinedAt: !3565)
!3574 = !DILocation(line: 150, column: 6, scope: !2533, inlinedAt: !3565)
!3575 = !DILocation(line: 975, column: 10, scope: !3525, inlinedAt: !3560)
!3576 = !DILocation(line: 976, column: 1, scope: !3525, inlinedAt: !3560)
!3577 = !DILocation(line: 981, column: 3, scope: !3552)
!3578 = distinct !DISubprogram(name: "quotearg_colon", scope: !536, file: !536, line: 985, type: !1037, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3579)
!3579 = !{!3580}
!3580 = !DILocalVariable(name: "arg", arg: 1, scope: !3578, file: !536, line: 985, type: !138)
!3581 = !DILocation(line: 0, scope: !3578)
!3582 = !DILocation(line: 0, scope: !3552, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 987, column: 10, scope: !3578)
!3584 = !DILocation(line: 0, scope: !3525, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 981, column: 10, scope: !3552, inlinedAt: !3583)
!3586 = !DILocation(line: 972, column: 3, scope: !3525, inlinedAt: !3585)
!3587 = !DILocation(line: 972, column: 26, scope: !3525, inlinedAt: !3585)
!3588 = !DILocation(line: 973, column: 13, scope: !3525, inlinedAt: !3585)
!3589 = !DILocation(line: 0, scope: !2533, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 974, column: 3, scope: !3525, inlinedAt: !3585)
!3591 = !DILocation(line: 147, column: 57, scope: !2533, inlinedAt: !3590)
!3592 = !DILocation(line: 149, column: 21, scope: !2533, inlinedAt: !3590)
!3593 = !DILocation(line: 150, column: 6, scope: !2533, inlinedAt: !3590)
!3594 = !DILocation(line: 975, column: 10, scope: !3525, inlinedAt: !3585)
!3595 = !DILocation(line: 976, column: 1, scope: !3525, inlinedAt: !3585)
!3596 = !DILocation(line: 987, column: 3, scope: !3578)
!3597 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !536, file: !536, line: 991, type: !3406, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3598)
!3598 = !{!3599, !3600}
!3599 = !DILocalVariable(name: "arg", arg: 1, scope: !3597, file: !536, line: 991, type: !138)
!3600 = !DILocalVariable(name: "argsize", arg: 2, scope: !3597, file: !536, line: 991, type: !135)
!3601 = !DILocation(line: 0, scope: !3597)
!3602 = !DILocation(line: 0, scope: !3525, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 993, column: 10, scope: !3597)
!3604 = !DILocation(line: 972, column: 3, scope: !3525, inlinedAt: !3603)
!3605 = !DILocation(line: 972, column: 26, scope: !3525, inlinedAt: !3603)
!3606 = !DILocation(line: 973, column: 13, scope: !3525, inlinedAt: !3603)
!3607 = !DILocation(line: 0, scope: !2533, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 974, column: 3, scope: !3525, inlinedAt: !3603)
!3609 = !DILocation(line: 147, column: 57, scope: !2533, inlinedAt: !3608)
!3610 = !DILocation(line: 149, column: 21, scope: !2533, inlinedAt: !3608)
!3611 = !DILocation(line: 150, column: 6, scope: !2533, inlinedAt: !3608)
!3612 = !DILocation(line: 975, column: 10, scope: !3525, inlinedAt: !3603)
!3613 = !DILocation(line: 976, column: 1, scope: !3525, inlinedAt: !3603)
!3614 = !DILocation(line: 993, column: 3, scope: !3597)
!3615 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !536, file: !536, line: 997, type: !3417, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3616)
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !536, line: 997, type: !78)
!3618 = !DILocalVariable(name: "s", arg: 2, scope: !3615, file: !536, line: 997, type: !82)
!3619 = !DILocalVariable(name: "arg", arg: 3, scope: !3615, file: !536, line: 997, type: !138)
!3620 = !DILocalVariable(name: "options", scope: !3615, file: !536, line: 999, type: !575)
!3621 = !DILocation(line: 185, column: 26, scope: !3432, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 1000, column: 13, scope: !3615)
!3623 = !DILocation(line: 0, scope: !3615)
!3624 = !DILocation(line: 999, column: 3, scope: !3615)
!3625 = !DILocation(line: 999, column: 26, scope: !3615)
!3626 = !DILocation(line: 0, scope: !3432, inlinedAt: !3622)
!3627 = !DILocation(line: 186, column: 13, scope: !3441, inlinedAt: !3622)
!3628 = !DILocation(line: 186, column: 7, scope: !3432, inlinedAt: !3622)
!3629 = !DILocation(line: 187, column: 5, scope: !3441, inlinedAt: !3622)
!3630 = !{!3631}
!3631 = distinct !{!3631, !3632, !"quoting_options_from_style: argument 0"}
!3632 = distinct !{!3632, !"quoting_options_from_style"}
!3633 = !DILocation(line: 1000, column: 13, scope: !3615)
!3634 = !DILocation(line: 0, scope: !2533, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 1001, column: 3, scope: !3615)
!3636 = !DILocation(line: 147, column: 57, scope: !2533, inlinedAt: !3635)
!3637 = !DILocation(line: 149, column: 21, scope: !2533, inlinedAt: !3635)
!3638 = !DILocation(line: 150, column: 6, scope: !2533, inlinedAt: !3635)
!3639 = !DILocation(line: 1002, column: 10, scope: !3615)
!3640 = !DILocation(line: 1003, column: 1, scope: !3615)
!3641 = !DILocation(line: 1002, column: 3, scope: !3615)
!3642 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !536, file: !536, line: 1006, type: !3643, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!132, !78, !138, !138, !138}
!3645 = !{!3646, !3647, !3648, !3649}
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3642, file: !536, line: 1006, type: !78)
!3647 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3642, file: !536, line: 1006, type: !138)
!3648 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3642, file: !536, line: 1007, type: !138)
!3649 = !DILocalVariable(name: "arg", arg: 4, scope: !3642, file: !536, line: 1007, type: !138)
!3650 = !DILocation(line: 0, scope: !3642)
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3652, file: !536, line: 1014, type: !78)
!3652 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !536, file: !536, line: 1014, type: !3653, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!132, !78, !138, !138, !138, !135}
!3655 = !{!3651, !3656, !3657, !3658, !3659, !3660}
!3656 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3652, file: !536, line: 1014, type: !138)
!3657 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3652, file: !536, line: 1015, type: !138)
!3658 = !DILocalVariable(name: "arg", arg: 4, scope: !3652, file: !536, line: 1016, type: !138)
!3659 = !DILocalVariable(name: "argsize", arg: 5, scope: !3652, file: !536, line: 1016, type: !135)
!3660 = !DILocalVariable(name: "o", scope: !3652, file: !536, line: 1018, type: !575)
!3661 = !DILocation(line: 0, scope: !3652, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1009, column: 10, scope: !3642)
!3663 = !DILocation(line: 1018, column: 3, scope: !3652, inlinedAt: !3662)
!3664 = !DILocation(line: 1018, column: 26, scope: !3652, inlinedAt: !3662)
!3665 = !DILocation(line: 1018, column: 30, scope: !3652, inlinedAt: !3662)
!3666 = !DILocation(line: 0, scope: !2573, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1019, column: 3, scope: !3652, inlinedAt: !3662)
!3668 = !DILocation(line: 174, column: 12, scope: !2573, inlinedAt: !3667)
!3669 = !DILocation(line: 175, column: 8, scope: !2586, inlinedAt: !3667)
!3670 = !DILocation(line: 175, column: 19, scope: !2586, inlinedAt: !3667)
!3671 = !DILocation(line: 176, column: 5, scope: !2586, inlinedAt: !3667)
!3672 = !DILocation(line: 177, column: 6, scope: !2573, inlinedAt: !3667)
!3673 = !DILocation(line: 177, column: 17, scope: !2573, inlinedAt: !3667)
!3674 = !DILocation(line: 178, column: 6, scope: !2573, inlinedAt: !3667)
!3675 = !DILocation(line: 178, column: 18, scope: !2573, inlinedAt: !3667)
!3676 = !DILocation(line: 1020, column: 10, scope: !3652, inlinedAt: !3662)
!3677 = !DILocation(line: 1021, column: 1, scope: !3652, inlinedAt: !3662)
!3678 = !DILocation(line: 1009, column: 3, scope: !3642)
!3679 = !DILocation(line: 0, scope: !3652)
!3680 = !DILocation(line: 1018, column: 3, scope: !3652)
!3681 = !DILocation(line: 1018, column: 26, scope: !3652)
!3682 = !DILocation(line: 1018, column: 30, scope: !3652)
!3683 = !DILocation(line: 0, scope: !2573, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 1019, column: 3, scope: !3652)
!3685 = !DILocation(line: 174, column: 12, scope: !2573, inlinedAt: !3684)
!3686 = !DILocation(line: 175, column: 8, scope: !2586, inlinedAt: !3684)
!3687 = !DILocation(line: 175, column: 19, scope: !2586, inlinedAt: !3684)
!3688 = !DILocation(line: 176, column: 5, scope: !2586, inlinedAt: !3684)
!3689 = !DILocation(line: 177, column: 6, scope: !2573, inlinedAt: !3684)
!3690 = !DILocation(line: 177, column: 17, scope: !2573, inlinedAt: !3684)
!3691 = !DILocation(line: 178, column: 6, scope: !2573, inlinedAt: !3684)
!3692 = !DILocation(line: 178, column: 18, scope: !2573, inlinedAt: !3684)
!3693 = !DILocation(line: 1020, column: 10, scope: !3652)
!3694 = !DILocation(line: 1021, column: 1, scope: !3652)
!3695 = !DILocation(line: 1020, column: 3, scope: !3652)
!3696 = distinct !DISubprogram(name: "quotearg_custom", scope: !536, file: !536, line: 1024, type: !3697, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!132, !138, !138, !138}
!3699 = !{!3700, !3701, !3702}
!3700 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3696, file: !536, line: 1024, type: !138)
!3701 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3696, file: !536, line: 1024, type: !138)
!3702 = !DILocalVariable(name: "arg", arg: 3, scope: !3696, file: !536, line: 1025, type: !138)
!3703 = !DILocation(line: 0, scope: !3696)
!3704 = !DILocation(line: 0, scope: !3642, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 1027, column: 10, scope: !3696)
!3706 = !DILocation(line: 0, scope: !3652, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 1009, column: 10, scope: !3642, inlinedAt: !3705)
!3708 = !DILocation(line: 1018, column: 3, scope: !3652, inlinedAt: !3707)
!3709 = !DILocation(line: 1018, column: 26, scope: !3652, inlinedAt: !3707)
!3710 = !DILocation(line: 1018, column: 30, scope: !3652, inlinedAt: !3707)
!3711 = !DILocation(line: 0, scope: !2573, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1019, column: 3, scope: !3652, inlinedAt: !3707)
!3713 = !DILocation(line: 174, column: 12, scope: !2573, inlinedAt: !3712)
!3714 = !DILocation(line: 175, column: 8, scope: !2586, inlinedAt: !3712)
!3715 = !DILocation(line: 175, column: 19, scope: !2586, inlinedAt: !3712)
!3716 = !DILocation(line: 176, column: 5, scope: !2586, inlinedAt: !3712)
!3717 = !DILocation(line: 177, column: 6, scope: !2573, inlinedAt: !3712)
!3718 = !DILocation(line: 177, column: 17, scope: !2573, inlinedAt: !3712)
!3719 = !DILocation(line: 178, column: 6, scope: !2573, inlinedAt: !3712)
!3720 = !DILocation(line: 178, column: 18, scope: !2573, inlinedAt: !3712)
!3721 = !DILocation(line: 1020, column: 10, scope: !3652, inlinedAt: !3707)
!3722 = !DILocation(line: 1021, column: 1, scope: !3652, inlinedAt: !3707)
!3723 = !DILocation(line: 1027, column: 3, scope: !3696)
!3724 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !536, file: !536, line: 1031, type: !3725, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!132, !138, !138, !138, !135}
!3727 = !{!3728, !3729, !3730, !3731}
!3728 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3724, file: !536, line: 1031, type: !138)
!3729 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3724, file: !536, line: 1031, type: !138)
!3730 = !DILocalVariable(name: "arg", arg: 3, scope: !3724, file: !536, line: 1032, type: !138)
!3731 = !DILocalVariable(name: "argsize", arg: 4, scope: !3724, file: !536, line: 1032, type: !135)
!3732 = !DILocation(line: 0, scope: !3724)
!3733 = !DILocation(line: 0, scope: !3652, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 1034, column: 10, scope: !3724)
!3735 = !DILocation(line: 1018, column: 3, scope: !3652, inlinedAt: !3734)
!3736 = !DILocation(line: 1018, column: 26, scope: !3652, inlinedAt: !3734)
!3737 = !DILocation(line: 1018, column: 30, scope: !3652, inlinedAt: !3734)
!3738 = !DILocation(line: 0, scope: !2573, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1019, column: 3, scope: !3652, inlinedAt: !3734)
!3740 = !DILocation(line: 174, column: 12, scope: !2573, inlinedAt: !3739)
!3741 = !DILocation(line: 175, column: 8, scope: !2586, inlinedAt: !3739)
!3742 = !DILocation(line: 175, column: 19, scope: !2586, inlinedAt: !3739)
!3743 = !DILocation(line: 176, column: 5, scope: !2586, inlinedAt: !3739)
!3744 = !DILocation(line: 177, column: 6, scope: !2573, inlinedAt: !3739)
!3745 = !DILocation(line: 177, column: 17, scope: !2573, inlinedAt: !3739)
!3746 = !DILocation(line: 178, column: 6, scope: !2573, inlinedAt: !3739)
!3747 = !DILocation(line: 178, column: 18, scope: !2573, inlinedAt: !3739)
!3748 = !DILocation(line: 1020, column: 10, scope: !3652, inlinedAt: !3734)
!3749 = !DILocation(line: 1021, column: 1, scope: !3652, inlinedAt: !3734)
!3750 = !DILocation(line: 1034, column: 3, scope: !3724)
!3751 = distinct !DISubprogram(name: "quote_n_mem", scope: !536, file: !536, line: 1049, type: !3752, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!138, !78, !138, !135}
!3754 = !{!3755, !3756, !3757}
!3755 = !DILocalVariable(name: "n", arg: 1, scope: !3751, file: !536, line: 1049, type: !78)
!3756 = !DILocalVariable(name: "arg", arg: 2, scope: !3751, file: !536, line: 1049, type: !138)
!3757 = !DILocalVariable(name: "argsize", arg: 3, scope: !3751, file: !536, line: 1049, type: !135)
!3758 = !DILocation(line: 0, scope: !3751)
!3759 = !DILocation(line: 1051, column: 10, scope: !3751)
!3760 = !DILocation(line: 1051, column: 3, scope: !3751)
!3761 = distinct !DISubprogram(name: "quote_mem", scope: !536, file: !536, line: 1055, type: !3762, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!138, !138, !135}
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "arg", arg: 1, scope: !3761, file: !536, line: 1055, type: !138)
!3766 = !DILocalVariable(name: "argsize", arg: 2, scope: !3761, file: !536, line: 1055, type: !135)
!3767 = !DILocation(line: 0, scope: !3761)
!3768 = !DILocation(line: 0, scope: !3751, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 1057, column: 10, scope: !3761)
!3770 = !DILocation(line: 1051, column: 10, scope: !3751, inlinedAt: !3769)
!3771 = !DILocation(line: 1057, column: 3, scope: !3761)
!3772 = distinct !DISubprogram(name: "quote_n", scope: !536, file: !536, line: 1061, type: !3773, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!138, !78, !138}
!3775 = !{!3776, !3777}
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3772, file: !536, line: 1061, type: !78)
!3777 = !DILocalVariable(name: "arg", arg: 2, scope: !3772, file: !536, line: 1061, type: !138)
!3778 = !DILocation(line: 0, scope: !3772)
!3779 = !DILocation(line: 0, scope: !3751, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 1063, column: 10, scope: !3772)
!3781 = !DILocation(line: 1051, column: 10, scope: !3751, inlinedAt: !3780)
!3782 = !DILocation(line: 1063, column: 3, scope: !3772)
!3783 = distinct !DISubprogram(name: "quote", scope: !536, file: !536, line: 1067, type: !3784, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!138, !138}
!3786 = !{!3787}
!3787 = !DILocalVariable(name: "arg", arg: 1, scope: !3783, file: !536, line: 1067, type: !138)
!3788 = !DILocation(line: 0, scope: !3783)
!3789 = !DILocation(line: 0, scope: !3772, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 1069, column: 10, scope: !3783)
!3791 = !DILocation(line: 0, scope: !3751, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 1063, column: 10, scope: !3772, inlinedAt: !3790)
!3793 = !DILocation(line: 1051, column: 10, scope: !3751, inlinedAt: !3792)
!3794 = !DILocation(line: 1069, column: 3, scope: !3783)
!3795 = distinct !DISubprogram(name: "version_etc_arn", scope: !636, file: !636, line: 61, type: !3796, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3833)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !3798, !138, !138, !138, !3832, !135}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3800, file: !218, line: 51, baseType: !78, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3800, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3800, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3800, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3800, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3800, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3800, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3800, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3800, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3800, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3800, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3800, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3800, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3800, file: !218, line: 70, baseType: !3816, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3800, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3800, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3800, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3800, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3800, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3800, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3800, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3800, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3800, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3800, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3800, file: !218, line: 93, baseType: !3816, size: 64, offset: 1344)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3800, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3800, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3800, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3800, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839}
!3834 = !DILocalVariable(name: "stream", arg: 1, scope: !3795, file: !636, line: 61, type: !3798)
!3835 = !DILocalVariable(name: "command_name", arg: 2, scope: !3795, file: !636, line: 62, type: !138)
!3836 = !DILocalVariable(name: "package", arg: 3, scope: !3795, file: !636, line: 62, type: !138)
!3837 = !DILocalVariable(name: "version", arg: 4, scope: !3795, file: !636, line: 63, type: !138)
!3838 = !DILocalVariable(name: "authors", arg: 5, scope: !3795, file: !636, line: 64, type: !3832)
!3839 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3795, file: !636, line: 64, type: !135)
!3840 = !DILocation(line: 0, scope: !3795)
!3841 = !DILocation(line: 66, column: 7, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3795, file: !636, line: 66, column: 7)
!3843 = !DILocation(line: 66, column: 7, scope: !3795)
!3844 = !DILocation(line: 67, column: 5, scope: !3842)
!3845 = !DILocation(line: 69, column: 5, scope: !3842)
!3846 = !DILocation(line: 83, column: 3, scope: !3795)
!3847 = !DILocation(line: 85, column: 3, scope: !3795)
!3848 = !DILocation(line: 88, column: 3, scope: !3795)
!3849 = !DILocation(line: 95, column: 3, scope: !3795)
!3850 = !DILocation(line: 97, column: 3, scope: !3795)
!3851 = !DILocation(line: 105, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3795, file: !636, line: 98, column: 5)
!3853 = !DILocation(line: 106, column: 7, scope: !3852)
!3854 = !DILocation(line: 109, column: 7, scope: !3852)
!3855 = !DILocation(line: 110, column: 7, scope: !3852)
!3856 = !DILocation(line: 113, column: 7, scope: !3852)
!3857 = !DILocation(line: 115, column: 7, scope: !3852)
!3858 = !DILocation(line: 120, column: 7, scope: !3852)
!3859 = !DILocation(line: 122, column: 7, scope: !3852)
!3860 = !DILocation(line: 127, column: 7, scope: !3852)
!3861 = !DILocation(line: 129, column: 7, scope: !3852)
!3862 = !DILocation(line: 134, column: 7, scope: !3852)
!3863 = !DILocation(line: 137, column: 7, scope: !3852)
!3864 = !DILocation(line: 142, column: 7, scope: !3852)
!3865 = !DILocation(line: 145, column: 7, scope: !3852)
!3866 = !DILocation(line: 150, column: 7, scope: !3852)
!3867 = !DILocation(line: 154, column: 7, scope: !3852)
!3868 = !DILocation(line: 159, column: 7, scope: !3852)
!3869 = !DILocation(line: 163, column: 7, scope: !3852)
!3870 = !DILocation(line: 170, column: 7, scope: !3852)
!3871 = !DILocation(line: 174, column: 7, scope: !3852)
!3872 = !DILocation(line: 176, column: 1, scope: !3795)
!3873 = distinct !DISubprogram(name: "version_etc_ar", scope: !636, file: !636, line: 183, type: !3874, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3798, !138, !138, !138, !3832}
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882}
!3877 = !DILocalVariable(name: "stream", arg: 1, scope: !3873, file: !636, line: 183, type: !3798)
!3878 = !DILocalVariable(name: "command_name", arg: 2, scope: !3873, file: !636, line: 184, type: !138)
!3879 = !DILocalVariable(name: "package", arg: 3, scope: !3873, file: !636, line: 184, type: !138)
!3880 = !DILocalVariable(name: "version", arg: 4, scope: !3873, file: !636, line: 185, type: !138)
!3881 = !DILocalVariable(name: "authors", arg: 5, scope: !3873, file: !636, line: 185, type: !3832)
!3882 = !DILocalVariable(name: "n_authors", scope: !3873, file: !636, line: 187, type: !135)
!3883 = !DILocation(line: 0, scope: !3873)
!3884 = !DILocation(line: 189, column: 8, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3873, file: !636, line: 189, column: 3)
!3886 = !DILocation(line: 189, scope: !3885)
!3887 = !DILocation(line: 189, column: 23, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !636, line: 189, column: 3)
!3889 = !DILocation(line: 189, column: 3, scope: !3885)
!3890 = !DILocation(line: 189, column: 52, scope: !3888)
!3891 = distinct !{!3891, !3889, !3892, !957}
!3892 = !DILocation(line: 190, column: 5, scope: !3885)
!3893 = !DILocation(line: 191, column: 3, scope: !3873)
!3894 = !DILocation(line: 192, column: 1, scope: !3873)
!3895 = distinct !DISubprogram(name: "version_etc_va", scope: !636, file: !636, line: 199, type: !3896, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3906)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3798, !138, !138, !138, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3900)
!3900 = !{!3901, !3903, !3904, !3905}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3899, file: !3902, line: 192, baseType: !84, size: 32)
!3902 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3899, file: !3902, line: 192, baseType: !84, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3899, file: !3902, line: 192, baseType: !133, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3899, file: !3902, line: 192, baseType: !133, size: 64, offset: 128)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3907 = !DILocalVariable(name: "stream", arg: 1, scope: !3895, file: !636, line: 199, type: !3798)
!3908 = !DILocalVariable(name: "command_name", arg: 2, scope: !3895, file: !636, line: 200, type: !138)
!3909 = !DILocalVariable(name: "package", arg: 3, scope: !3895, file: !636, line: 200, type: !138)
!3910 = !DILocalVariable(name: "version", arg: 4, scope: !3895, file: !636, line: 201, type: !138)
!3911 = !DILocalVariable(name: "authors", arg: 5, scope: !3895, file: !636, line: 201, type: !3898)
!3912 = !DILocalVariable(name: "n_authors", scope: !3895, file: !636, line: 203, type: !135)
!3913 = !DILocalVariable(name: "authtab", scope: !3895, file: !636, line: 204, type: !3914)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !60)
!3915 = !DILocation(line: 0, scope: !3895)
!3916 = !DILocation(line: 204, column: 3, scope: !3895)
!3917 = !DILocation(line: 204, column: 15, scope: !3895)
!3918 = !DILocation(line: 208, column: 35, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !636, line: 206, column: 3)
!3920 = distinct !DILexicalBlock(scope: !3895, file: !636, line: 206, column: 3)
!3921 = !DILocation(line: 208, column: 33, scope: !3919)
!3922 = !DILocation(line: 208, column: 67, scope: !3919)
!3923 = !DILocation(line: 206, column: 3, scope: !3920)
!3924 = !DILocation(line: 208, column: 14, scope: !3919)
!3925 = !DILocation(line: 0, scope: !3920)
!3926 = !DILocation(line: 211, column: 3, scope: !3895)
!3927 = !DILocation(line: 213, column: 1, scope: !3895)
!3928 = distinct !DISubprogram(name: "version_etc", scope: !636, file: !636, line: 230, type: !3929, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3931)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !3798, !138, !138, !138, null}
!3931 = !{!3932, !3933, !3934, !3935, !3936}
!3932 = !DILocalVariable(name: "stream", arg: 1, scope: !3928, file: !636, line: 230, type: !3798)
!3933 = !DILocalVariable(name: "command_name", arg: 2, scope: !3928, file: !636, line: 231, type: !138)
!3934 = !DILocalVariable(name: "package", arg: 3, scope: !3928, file: !636, line: 231, type: !138)
!3935 = !DILocalVariable(name: "version", arg: 4, scope: !3928, file: !636, line: 232, type: !138)
!3936 = !DILocalVariable(name: "authors", scope: !3928, file: !636, line: 234, type: !3937)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !905, line: 52, baseType: !3938)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2042, line: 14, baseType: !3939)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3902, baseType: !3940)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3899, size: 192, elements: !55)
!3941 = !DILocation(line: 0, scope: !3928)
!3942 = !DILocation(line: 234, column: 3, scope: !3928)
!3943 = !DILocation(line: 234, column: 11, scope: !3928)
!3944 = !DILocation(line: 235, column: 3, scope: !3928)
!3945 = !DILocation(line: 236, column: 3, scope: !3928)
!3946 = !DILocation(line: 237, column: 3, scope: !3928)
!3947 = !DILocation(line: 238, column: 1, scope: !3928)
!3948 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !636, file: !636, line: 241, type: !491, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !849)
!3949 = !DILocation(line: 243, column: 3, scope: !3948)
!3950 = !DILocation(line: 248, column: 3, scope: !3948)
!3951 = !DILocation(line: 254, column: 3, scope: !3948)
!3952 = !DILocation(line: 259, column: 3, scope: !3948)
!3953 = !DILocation(line: 261, column: 1, scope: !3948)
!3954 = distinct !DISubprogram(name: "xnrealloc", scope: !3955, file: !3955, line: 147, type: !3956, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3958)
!3955 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!133, !133, !135, !135}
!3958 = !{!3959, !3960, !3961}
!3959 = !DILocalVariable(name: "p", arg: 1, scope: !3954, file: !3955, line: 147, type: !133)
!3960 = !DILocalVariable(name: "n", arg: 2, scope: !3954, file: !3955, line: 147, type: !135)
!3961 = !DILocalVariable(name: "s", arg: 3, scope: !3954, file: !3955, line: 147, type: !135)
!3962 = !DILocation(line: 0, scope: !3954)
!3963 = !DILocalVariable(name: "p", arg: 1, scope: !3964, file: !776, line: 83, type: !133)
!3964 = distinct !DISubprogram(name: "xreallocarray", scope: !776, file: !776, line: 83, type: !3956, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3965)
!3965 = !{!3963, !3966, !3967}
!3966 = !DILocalVariable(name: "n", arg: 2, scope: !3964, file: !776, line: 83, type: !135)
!3967 = !DILocalVariable(name: "s", arg: 3, scope: !3964, file: !776, line: 83, type: !135)
!3968 = !DILocation(line: 0, scope: !3964, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 149, column: 10, scope: !3954)
!3970 = !DILocation(line: 85, column: 25, scope: !3964, inlinedAt: !3969)
!3971 = !DILocalVariable(name: "p", arg: 1, scope: !3972, file: !776, line: 37, type: !133)
!3972 = distinct !DISubprogram(name: "check_nonnull", scope: !776, file: !776, line: 37, type: !3973, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!133, !133}
!3975 = !{!3971}
!3976 = !DILocation(line: 0, scope: !3972, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 85, column: 10, scope: !3964, inlinedAt: !3969)
!3978 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !3977)
!3979 = distinct !DILexicalBlock(scope: !3972, file: !776, line: 39, column: 7)
!3980 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !3977)
!3981 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !3977)
!3982 = !DILocation(line: 149, column: 3, scope: !3954)
!3983 = !DILocation(line: 0, scope: !3964)
!3984 = !DILocation(line: 85, column: 25, scope: !3964)
!3985 = !DILocation(line: 0, scope: !3972, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 85, column: 10, scope: !3964)
!3987 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !3986)
!3988 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !3986)
!3989 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !3986)
!3990 = !DILocation(line: 85, column: 3, scope: !3964)
!3991 = distinct !DISubprogram(name: "xmalloc", scope: !776, file: !776, line: 47, type: !3992, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3994)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!133, !135}
!3994 = !{!3995}
!3995 = !DILocalVariable(name: "s", arg: 1, scope: !3991, file: !776, line: 47, type: !135)
!3996 = !DILocation(line: 0, scope: !3991)
!3997 = !DILocation(line: 49, column: 25, scope: !3991)
!3998 = !DILocation(line: 0, scope: !3972, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 49, column: 10, scope: !3991)
!4000 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !3999)
!4001 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !3999)
!4002 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !3999)
!4003 = !DILocation(line: 49, column: 3, scope: !3991)
!4004 = !DISubprogram(name: "malloc", scope: !1035, file: !1035, line: 540, type: !3992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4005 = distinct !DISubprogram(name: "ximalloc", scope: !776, file: !776, line: 53, type: !4006, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!133, !392}
!4008 = !{!4009}
!4009 = !DILocalVariable(name: "s", arg: 1, scope: !4005, file: !776, line: 53, type: !392)
!4010 = !DILocation(line: 0, scope: !4005)
!4011 = !DILocalVariable(name: "s", arg: 1, scope: !4012, file: !4013, line: 55, type: !392)
!4012 = distinct !DISubprogram(name: "imalloc", scope: !4013, file: !4013, line: 55, type: !4006, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4014)
!4013 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4014 = !{!4011}
!4015 = !DILocation(line: 0, scope: !4012, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 55, column: 25, scope: !4005)
!4017 = !DILocation(line: 57, column: 26, scope: !4012, inlinedAt: !4016)
!4018 = !DILocation(line: 0, scope: !3972, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 55, column: 10, scope: !4005)
!4020 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4019)
!4021 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4019)
!4022 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4019)
!4023 = !DILocation(line: 55, column: 3, scope: !4005)
!4024 = distinct !DISubprogram(name: "xcharalloc", scope: !776, file: !776, line: 59, type: !4025, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!132, !135}
!4027 = !{!4028}
!4028 = !DILocalVariable(name: "n", arg: 1, scope: !4024, file: !776, line: 59, type: !135)
!4029 = !DILocation(line: 0, scope: !4024)
!4030 = !DILocation(line: 0, scope: !3991, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 61, column: 10, scope: !4024)
!4032 = !DILocation(line: 49, column: 25, scope: !3991, inlinedAt: !4031)
!4033 = !DILocation(line: 0, scope: !3972, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 49, column: 10, scope: !3991, inlinedAt: !4031)
!4035 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4034)
!4036 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4034)
!4037 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4034)
!4038 = !DILocation(line: 61, column: 3, scope: !4024)
!4039 = distinct !DISubprogram(name: "xrealloc", scope: !776, file: !776, line: 68, type: !4040, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!133, !133, !135}
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "p", arg: 1, scope: !4039, file: !776, line: 68, type: !133)
!4044 = !DILocalVariable(name: "s", arg: 2, scope: !4039, file: !776, line: 68, type: !135)
!4045 = !DILocation(line: 0, scope: !4039)
!4046 = !DILocalVariable(name: "ptr", arg: 1, scope: !4047, file: !4048, line: 2057, type: !133)
!4047 = distinct !DISubprogram(name: "rpl_realloc", scope: !4048, file: !4048, line: 2057, type: !4040, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4049)
!4048 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4049 = !{!4046, !4050}
!4050 = !DILocalVariable(name: "size", arg: 2, scope: !4047, file: !4048, line: 2057, type: !135)
!4051 = !DILocation(line: 0, scope: !4047, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 70, column: 25, scope: !4039)
!4053 = !DILocation(line: 2059, column: 24, scope: !4047, inlinedAt: !4052)
!4054 = !DILocation(line: 2059, column: 10, scope: !4047, inlinedAt: !4052)
!4055 = !DILocation(line: 0, scope: !3972, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 70, column: 10, scope: !4039)
!4057 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4056)
!4058 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4056)
!4059 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4056)
!4060 = !DILocation(line: 70, column: 3, scope: !4039)
!4061 = !DISubprogram(name: "realloc", scope: !1035, file: !1035, line: 551, type: !4040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4062 = distinct !DISubprogram(name: "xirealloc", scope: !776, file: !776, line: 74, type: !4063, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!133, !133, !392}
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "p", arg: 1, scope: !4062, file: !776, line: 74, type: !133)
!4067 = !DILocalVariable(name: "s", arg: 2, scope: !4062, file: !776, line: 74, type: !392)
!4068 = !DILocation(line: 0, scope: !4062)
!4069 = !DILocalVariable(name: "p", arg: 1, scope: !4070, file: !4013, line: 66, type: !133)
!4070 = distinct !DISubprogram(name: "irealloc", scope: !4013, file: !4013, line: 66, type: !4063, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4071)
!4071 = !{!4069, !4072}
!4072 = !DILocalVariable(name: "s", arg: 2, scope: !4070, file: !4013, line: 66, type: !392)
!4073 = !DILocation(line: 0, scope: !4070, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 76, column: 25, scope: !4062)
!4075 = !DILocation(line: 0, scope: !4047, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 68, column: 26, scope: !4070, inlinedAt: !4074)
!4077 = !DILocation(line: 2059, column: 24, scope: !4047, inlinedAt: !4076)
!4078 = !DILocation(line: 2059, column: 10, scope: !4047, inlinedAt: !4076)
!4079 = !DILocation(line: 0, scope: !3972, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 76, column: 10, scope: !4062)
!4081 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4080)
!4082 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4080)
!4083 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4080)
!4084 = !DILocation(line: 76, column: 3, scope: !4062)
!4085 = distinct !DISubprogram(name: "xireallocarray", scope: !776, file: !776, line: 89, type: !4086, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!133, !133, !392, !392}
!4088 = !{!4089, !4090, !4091}
!4089 = !DILocalVariable(name: "p", arg: 1, scope: !4085, file: !776, line: 89, type: !133)
!4090 = !DILocalVariable(name: "n", arg: 2, scope: !4085, file: !776, line: 89, type: !392)
!4091 = !DILocalVariable(name: "s", arg: 3, scope: !4085, file: !776, line: 89, type: !392)
!4092 = !DILocation(line: 0, scope: !4085)
!4093 = !DILocalVariable(name: "p", arg: 1, scope: !4094, file: !4013, line: 98, type: !133)
!4094 = distinct !DISubprogram(name: "ireallocarray", scope: !4013, file: !4013, line: 98, type: !4086, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4095)
!4095 = !{!4093, !4096, !4097}
!4096 = !DILocalVariable(name: "n", arg: 2, scope: !4094, file: !4013, line: 98, type: !392)
!4097 = !DILocalVariable(name: "s", arg: 3, scope: !4094, file: !4013, line: 98, type: !392)
!4098 = !DILocation(line: 0, scope: !4094, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 91, column: 25, scope: !4085)
!4100 = !DILocation(line: 101, column: 13, scope: !4094, inlinedAt: !4099)
!4101 = !DILocation(line: 0, scope: !3972, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 91, column: 10, scope: !4085)
!4103 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4102)
!4104 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4102)
!4105 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4102)
!4106 = !DILocation(line: 91, column: 3, scope: !4085)
!4107 = distinct !DISubprogram(name: "xnmalloc", scope: !776, file: !776, line: 98, type: !4108, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!133, !135, !135}
!4110 = !{!4111, !4112}
!4111 = !DILocalVariable(name: "n", arg: 1, scope: !4107, file: !776, line: 98, type: !135)
!4112 = !DILocalVariable(name: "s", arg: 2, scope: !4107, file: !776, line: 98, type: !135)
!4113 = !DILocation(line: 0, scope: !4107)
!4114 = !DILocation(line: 0, scope: !3964, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 100, column: 10, scope: !4107)
!4116 = !DILocation(line: 85, column: 25, scope: !3964, inlinedAt: !4115)
!4117 = !DILocation(line: 0, scope: !3972, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 85, column: 10, scope: !3964, inlinedAt: !4115)
!4119 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4118)
!4120 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4118)
!4121 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4118)
!4122 = !DILocation(line: 100, column: 3, scope: !4107)
!4123 = distinct !DISubprogram(name: "xinmalloc", scope: !776, file: !776, line: 104, type: !4124, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!133, !392, !392}
!4126 = !{!4127, !4128}
!4127 = !DILocalVariable(name: "n", arg: 1, scope: !4123, file: !776, line: 104, type: !392)
!4128 = !DILocalVariable(name: "s", arg: 2, scope: !4123, file: !776, line: 104, type: !392)
!4129 = !DILocation(line: 0, scope: !4123)
!4130 = !DILocation(line: 0, scope: !4085, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 106, column: 10, scope: !4123)
!4132 = !DILocation(line: 0, scope: !4094, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 91, column: 25, scope: !4085, inlinedAt: !4131)
!4134 = !DILocation(line: 101, column: 13, scope: !4094, inlinedAt: !4133)
!4135 = !DILocation(line: 0, scope: !3972, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 91, column: 10, scope: !4085, inlinedAt: !4131)
!4137 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4136)
!4138 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4136)
!4139 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4136)
!4140 = !DILocation(line: 106, column: 3, scope: !4123)
!4141 = distinct !DISubprogram(name: "x2realloc", scope: !776, file: !776, line: 116, type: !4142, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!133, !133, !179}
!4144 = !{!4145, !4146}
!4145 = !DILocalVariable(name: "p", arg: 1, scope: !4141, file: !776, line: 116, type: !133)
!4146 = !DILocalVariable(name: "ps", arg: 2, scope: !4141, file: !776, line: 116, type: !179)
!4147 = !DILocation(line: 0, scope: !4141)
!4148 = !DILocation(line: 0, scope: !779, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 118, column: 10, scope: !4141)
!4150 = !DILocation(line: 178, column: 14, scope: !779, inlinedAt: !4149)
!4151 = !DILocation(line: 180, column: 9, scope: !4152, inlinedAt: !4149)
!4152 = distinct !DILexicalBlock(scope: !779, file: !776, line: 180, column: 7)
!4153 = !DILocation(line: 180, column: 7, scope: !779, inlinedAt: !4149)
!4154 = !DILocation(line: 182, column: 13, scope: !4155, inlinedAt: !4149)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !776, line: 182, column: 11)
!4156 = distinct !DILexicalBlock(scope: !4152, file: !776, line: 181, column: 5)
!4157 = !DILocation(line: 182, column: 11, scope: !4156, inlinedAt: !4149)
!4158 = !DILocation(line: 197, column: 11, scope: !4159, inlinedAt: !4149)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !776, line: 197, column: 11)
!4160 = distinct !DILexicalBlock(scope: !4152, file: !776, line: 195, column: 5)
!4161 = !DILocation(line: 197, column: 11, scope: !4160, inlinedAt: !4149)
!4162 = !DILocation(line: 198, column: 9, scope: !4159, inlinedAt: !4149)
!4163 = !DILocation(line: 0, scope: !3964, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 201, column: 7, scope: !779, inlinedAt: !4149)
!4165 = !DILocation(line: 85, column: 25, scope: !3964, inlinedAt: !4164)
!4166 = !DILocation(line: 0, scope: !3972, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 85, column: 10, scope: !3964, inlinedAt: !4164)
!4168 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4167)
!4169 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4167)
!4170 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4167)
!4171 = !DILocation(line: 202, column: 7, scope: !779, inlinedAt: !4149)
!4172 = !DILocation(line: 118, column: 3, scope: !4141)
!4173 = !DILocation(line: 0, scope: !779)
!4174 = !DILocation(line: 178, column: 14, scope: !779)
!4175 = !DILocation(line: 180, column: 9, scope: !4152)
!4176 = !DILocation(line: 180, column: 7, scope: !779)
!4177 = !DILocation(line: 182, column: 13, scope: !4155)
!4178 = !DILocation(line: 182, column: 11, scope: !4156)
!4179 = !DILocation(line: 190, column: 30, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4155, file: !776, line: 183, column: 9)
!4181 = !DILocation(line: 191, column: 16, scope: !4180)
!4182 = !DILocation(line: 191, column: 13, scope: !4180)
!4183 = !DILocation(line: 192, column: 9, scope: !4180)
!4184 = !DILocation(line: 197, column: 11, scope: !4159)
!4185 = !DILocation(line: 197, column: 11, scope: !4160)
!4186 = !DILocation(line: 198, column: 9, scope: !4159)
!4187 = !DILocation(line: 0, scope: !3964, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 201, column: 7, scope: !779)
!4189 = !DILocation(line: 85, column: 25, scope: !3964, inlinedAt: !4188)
!4190 = !DILocation(line: 0, scope: !3972, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 85, column: 10, scope: !3964, inlinedAt: !4188)
!4192 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4191)
!4195 = !DILocation(line: 202, column: 7, scope: !779)
!4196 = !DILocation(line: 203, column: 3, scope: !779)
!4197 = !DILocation(line: 0, scope: !790)
!4198 = !DILocation(line: 230, column: 14, scope: !790)
!4199 = !DILocation(line: 238, column: 7, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !790, file: !776, line: 238, column: 7)
!4201 = !DILocation(line: 238, column: 7, scope: !790)
!4202 = !DILocation(line: 240, column: 9, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !790, file: !776, line: 240, column: 7)
!4204 = !DILocation(line: 240, column: 18, scope: !4203)
!4205 = !DILocation(line: 253, column: 8, scope: !790)
!4206 = !DILocation(line: 258, column: 27, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !776, line: 257, column: 5)
!4208 = distinct !DILexicalBlock(scope: !790, file: !776, line: 256, column: 7)
!4209 = !DILocation(line: 259, column: 50, scope: !4207)
!4210 = !DILocation(line: 259, column: 32, scope: !4207)
!4211 = !DILocation(line: 260, column: 5, scope: !4207)
!4212 = !DILocation(line: 262, column: 9, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !790, file: !776, line: 262, column: 7)
!4214 = !DILocation(line: 262, column: 7, scope: !790)
!4215 = !DILocation(line: 263, column: 9, scope: !4213)
!4216 = !DILocation(line: 263, column: 5, scope: !4213)
!4217 = !DILocation(line: 264, column: 9, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !790, file: !776, line: 264, column: 7)
!4219 = !DILocation(line: 264, column: 14, scope: !4218)
!4220 = !DILocation(line: 265, column: 7, scope: !4218)
!4221 = !DILocation(line: 265, column: 11, scope: !4218)
!4222 = !DILocation(line: 266, column: 11, scope: !4218)
!4223 = !DILocation(line: 267, column: 14, scope: !4218)
!4224 = !DILocation(line: 264, column: 7, scope: !790)
!4225 = !DILocation(line: 268, column: 5, scope: !4218)
!4226 = !DILocation(line: 0, scope: !4039, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 269, column: 8, scope: !790)
!4228 = !DILocation(line: 0, scope: !4047, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 70, column: 25, scope: !4039, inlinedAt: !4227)
!4230 = !DILocation(line: 2059, column: 24, scope: !4047, inlinedAt: !4229)
!4231 = !DILocation(line: 2059, column: 10, scope: !4047, inlinedAt: !4229)
!4232 = !DILocation(line: 0, scope: !3972, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 70, column: 10, scope: !4039, inlinedAt: !4227)
!4234 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4233)
!4235 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4233)
!4236 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4233)
!4237 = !DILocation(line: 270, column: 7, scope: !790)
!4238 = !DILocation(line: 271, column: 3, scope: !790)
!4239 = distinct !DISubprogram(name: "xzalloc", scope: !776, file: !776, line: 279, type: !3992, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4240)
!4240 = !{!4241}
!4241 = !DILocalVariable(name: "s", arg: 1, scope: !4239, file: !776, line: 279, type: !135)
!4242 = !DILocation(line: 0, scope: !4239)
!4243 = !DILocalVariable(name: "n", arg: 1, scope: !4244, file: !776, line: 294, type: !135)
!4244 = distinct !DISubprogram(name: "xcalloc", scope: !776, file: !776, line: 294, type: !4108, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4245)
!4245 = !{!4243, !4246}
!4246 = !DILocalVariable(name: "s", arg: 2, scope: !4244, file: !776, line: 294, type: !135)
!4247 = !DILocation(line: 0, scope: !4244, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 281, column: 10, scope: !4239)
!4249 = !DILocation(line: 296, column: 25, scope: !4244, inlinedAt: !4248)
!4250 = !DILocation(line: 0, scope: !3972, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 296, column: 10, scope: !4244, inlinedAt: !4248)
!4252 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4251)
!4254 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4251)
!4255 = !DILocation(line: 281, column: 3, scope: !4239)
!4256 = !DISubprogram(name: "calloc", scope: !1035, file: !1035, line: 543, type: !4108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4257 = !DILocation(line: 0, scope: !4244)
!4258 = !DILocation(line: 296, column: 25, scope: !4244)
!4259 = !DILocation(line: 0, scope: !3972, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 296, column: 10, scope: !4244)
!4261 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4260)
!4262 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4260)
!4263 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4260)
!4264 = !DILocation(line: 296, column: 3, scope: !4244)
!4265 = distinct !DISubprogram(name: "xizalloc", scope: !776, file: !776, line: 285, type: !4006, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4266)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "s", arg: 1, scope: !4265, file: !776, line: 285, type: !392)
!4268 = !DILocation(line: 0, scope: !4265)
!4269 = !DILocalVariable(name: "n", arg: 1, scope: !4270, file: !776, line: 300, type: !392)
!4270 = distinct !DISubprogram(name: "xicalloc", scope: !776, file: !776, line: 300, type: !4124, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4271)
!4271 = !{!4269, !4272}
!4272 = !DILocalVariable(name: "s", arg: 2, scope: !4270, file: !776, line: 300, type: !392)
!4273 = !DILocation(line: 0, scope: !4270, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 287, column: 10, scope: !4265)
!4275 = !DILocalVariable(name: "n", arg: 1, scope: !4276, file: !4013, line: 77, type: !392)
!4276 = distinct !DISubprogram(name: "icalloc", scope: !4013, file: !4013, line: 77, type: !4124, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4277)
!4277 = !{!4275, !4278}
!4278 = !DILocalVariable(name: "s", arg: 2, scope: !4276, file: !4013, line: 77, type: !392)
!4279 = !DILocation(line: 0, scope: !4276, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 302, column: 25, scope: !4270, inlinedAt: !4274)
!4281 = !DILocation(line: 91, column: 10, scope: !4276, inlinedAt: !4280)
!4282 = !DILocation(line: 0, scope: !3972, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 302, column: 10, scope: !4270, inlinedAt: !4274)
!4284 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4283)
!4285 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4283)
!4286 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4283)
!4287 = !DILocation(line: 287, column: 3, scope: !4265)
!4288 = !DILocation(line: 0, scope: !4270)
!4289 = !DILocation(line: 0, scope: !4276, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 302, column: 25, scope: !4270)
!4291 = !DILocation(line: 91, column: 10, scope: !4276, inlinedAt: !4290)
!4292 = !DILocation(line: 0, scope: !3972, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 302, column: 10, scope: !4270)
!4294 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4293)
!4295 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4293)
!4296 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4293)
!4297 = !DILocation(line: 302, column: 3, scope: !4270)
!4298 = distinct !DISubprogram(name: "xmemdup", scope: !776, file: !776, line: 310, type: !4299, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!133, !1059, !135}
!4301 = !{!4302, !4303}
!4302 = !DILocalVariable(name: "p", arg: 1, scope: !4298, file: !776, line: 310, type: !1059)
!4303 = !DILocalVariable(name: "s", arg: 2, scope: !4298, file: !776, line: 310, type: !135)
!4304 = !DILocation(line: 0, scope: !4298)
!4305 = !DILocation(line: 0, scope: !3991, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 312, column: 18, scope: !4298)
!4307 = !DILocation(line: 49, column: 25, scope: !3991, inlinedAt: !4306)
!4308 = !DILocation(line: 0, scope: !3972, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 49, column: 10, scope: !3991, inlinedAt: !4306)
!4310 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4309)
!4311 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4309)
!4312 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4309)
!4313 = !DILocalVariable(name: "__dest", arg: 1, scope: !4314, file: !1233, line: 26, type: !1236)
!4314 = distinct !DISubprogram(name: "memcpy", scope: !1233, file: !1233, line: 26, type: !1234, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4315)
!4315 = !{!4313, !4316, !4317}
!4316 = !DILocalVariable(name: "__src", arg: 2, scope: !4314, file: !1233, line: 26, type: !1058)
!4317 = !DILocalVariable(name: "__len", arg: 3, scope: !4314, file: !1233, line: 26, type: !135)
!4318 = !DILocation(line: 0, scope: !4314, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 312, column: 10, scope: !4298)
!4320 = !DILocation(line: 29, column: 10, scope: !4314, inlinedAt: !4319)
!4321 = !DILocation(line: 312, column: 3, scope: !4298)
!4322 = distinct !DISubprogram(name: "ximemdup", scope: !776, file: !776, line: 316, type: !4323, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!133, !1059, !392}
!4325 = !{!4326, !4327}
!4326 = !DILocalVariable(name: "p", arg: 1, scope: !4322, file: !776, line: 316, type: !1059)
!4327 = !DILocalVariable(name: "s", arg: 2, scope: !4322, file: !776, line: 316, type: !392)
!4328 = !DILocation(line: 0, scope: !4322)
!4329 = !DILocation(line: 0, scope: !4005, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 318, column: 18, scope: !4322)
!4331 = !DILocation(line: 0, scope: !4012, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 55, column: 25, scope: !4005, inlinedAt: !4330)
!4333 = !DILocation(line: 57, column: 26, scope: !4012, inlinedAt: !4332)
!4334 = !DILocation(line: 0, scope: !3972, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 55, column: 10, scope: !4005, inlinedAt: !4330)
!4336 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4335)
!4337 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4335)
!4338 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4335)
!4339 = !DILocation(line: 0, scope: !4314, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 318, column: 10, scope: !4322)
!4341 = !DILocation(line: 29, column: 10, scope: !4314, inlinedAt: !4340)
!4342 = !DILocation(line: 318, column: 3, scope: !4322)
!4343 = distinct !DISubprogram(name: "ximemdup0", scope: !776, file: !776, line: 325, type: !4344, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4346)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!132, !1059, !392}
!4346 = !{!4347, !4348, !4349}
!4347 = !DILocalVariable(name: "p", arg: 1, scope: !4343, file: !776, line: 325, type: !1059)
!4348 = !DILocalVariable(name: "s", arg: 2, scope: !4343, file: !776, line: 325, type: !392)
!4349 = !DILocalVariable(name: "result", scope: !4343, file: !776, line: 327, type: !132)
!4350 = !DILocation(line: 0, scope: !4343)
!4351 = !DILocation(line: 327, column: 30, scope: !4343)
!4352 = !DILocation(line: 0, scope: !4005, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 327, column: 18, scope: !4343)
!4354 = !DILocation(line: 0, scope: !4012, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 55, column: 25, scope: !4005, inlinedAt: !4353)
!4356 = !DILocation(line: 57, column: 26, scope: !4012, inlinedAt: !4355)
!4357 = !DILocation(line: 0, scope: !3972, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 55, column: 10, scope: !4005, inlinedAt: !4353)
!4359 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4358)
!4360 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4358)
!4361 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4358)
!4362 = !DILocation(line: 328, column: 3, scope: !4343)
!4363 = !DILocation(line: 328, column: 13, scope: !4343)
!4364 = !DILocation(line: 0, scope: !4314, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 329, column: 10, scope: !4343)
!4366 = !DILocation(line: 29, column: 10, scope: !4314, inlinedAt: !4365)
!4367 = !DILocation(line: 329, column: 3, scope: !4343)
!4368 = distinct !DISubprogram(name: "xstrdup", scope: !776, file: !776, line: 335, type: !1037, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4369)
!4369 = !{!4370}
!4370 = !DILocalVariable(name: "string", arg: 1, scope: !4368, file: !776, line: 335, type: !138)
!4371 = !DILocation(line: 0, scope: !4368)
!4372 = !DILocation(line: 337, column: 27, scope: !4368)
!4373 = !DILocation(line: 337, column: 43, scope: !4368)
!4374 = !DILocation(line: 0, scope: !4298, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 337, column: 10, scope: !4368)
!4376 = !DILocation(line: 0, scope: !3991, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 312, column: 18, scope: !4298, inlinedAt: !4375)
!4378 = !DILocation(line: 49, column: 25, scope: !3991, inlinedAt: !4377)
!4379 = !DILocation(line: 0, scope: !3972, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 49, column: 10, scope: !3991, inlinedAt: !4377)
!4381 = !DILocation(line: 39, column: 8, scope: !3979, inlinedAt: !4380)
!4382 = !DILocation(line: 39, column: 7, scope: !3972, inlinedAt: !4380)
!4383 = !DILocation(line: 40, column: 5, scope: !3979, inlinedAt: !4380)
!4384 = !DILocation(line: 0, scope: !4314, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 312, column: 10, scope: !4298, inlinedAt: !4375)
!4386 = !DILocation(line: 29, column: 10, scope: !4314, inlinedAt: !4385)
!4387 = !DILocation(line: 337, column: 3, scope: !4368)
!4388 = distinct !DISubprogram(name: "xalloc_die", scope: !729, file: !729, line: 32, type: !491, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4389)
!4389 = !{!4390}
!4390 = !DILocalVariable(name: "__errstatus", scope: !4391, file: !729, line: 34, type: !4392)
!4391 = distinct !DILexicalBlock(scope: !4388, file: !729, line: 34, column: 3)
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4393 = !DILocation(line: 34, column: 3, scope: !4391)
!4394 = !DILocation(line: 0, scope: !4391)
!4395 = !DILocation(line: 40, column: 3, scope: !4388)
!4396 = distinct !DISubprogram(name: "rpl_fopen", scope: !808, file: !808, line: 46, type: !4397, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4433)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!4399, !138, !138}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4401)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4402)
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4401, file: !218, line: 51, baseType: !78, size: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4401, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4401, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4401, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4401, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4401, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4401, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4401, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4401, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4401, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4401, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4401, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4401, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4401, file: !218, line: 70, baseType: !4417, size: 64, offset: 832)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4401, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4401, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4401, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4401, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4401, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4401, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4401, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4401, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4401, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4401, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4401, file: !218, line: 93, baseType: !4417, size: 64, offset: 1344)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4401, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4401, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4401, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4401, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4433 = !{!4434, !4435, !4436, !4437, !4438, !4439, !4443, !4445, !4446, !4451, !4454, !4455}
!4434 = !DILocalVariable(name: "filename", arg: 1, scope: !4396, file: !808, line: 46, type: !138)
!4435 = !DILocalVariable(name: "mode", arg: 2, scope: !4396, file: !808, line: 46, type: !138)
!4436 = !DILocalVariable(name: "open_direction", scope: !4396, file: !808, line: 54, type: !78)
!4437 = !DILocalVariable(name: "open_flags", scope: !4396, file: !808, line: 55, type: !78)
!4438 = !DILocalVariable(name: "open_flags_gnu", scope: !4396, file: !808, line: 57, type: !172)
!4439 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4396, file: !808, line: 59, type: !4440)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4441)
!4441 = !{!4442}
!4442 = !DISubrange(count: 81)
!4443 = !DILocalVariable(name: "p", scope: !4444, file: !808, line: 62, type: !138)
!4444 = distinct !DILexicalBlock(scope: !4396, file: !808, line: 61, column: 3)
!4445 = !DILocalVariable(name: "q", scope: !4444, file: !808, line: 64, type: !132)
!4446 = !DILocalVariable(name: "len", scope: !4447, file: !808, line: 128, type: !135)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !808, line: 127, column: 9)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !808, line: 68, column: 7)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !808, line: 67, column: 5)
!4450 = distinct !DILexicalBlock(scope: !4444, file: !808, line: 67, column: 5)
!4451 = !DILocalVariable(name: "fd", scope: !4452, file: !808, line: 199, type: !78)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !808, line: 198, column: 5)
!4453 = distinct !DILexicalBlock(scope: !4396, file: !808, line: 197, column: 7)
!4454 = !DILocalVariable(name: "fp", scope: !4452, file: !808, line: 204, type: !4399)
!4455 = !DILocalVariable(name: "saved_errno", scope: !4456, file: !808, line: 207, type: !78)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !808, line: 206, column: 9)
!4457 = distinct !DILexicalBlock(scope: !4452, file: !808, line: 205, column: 11)
!4458 = !DILocation(line: 0, scope: !4396)
!4459 = !DILocation(line: 59, column: 3, scope: !4396)
!4460 = !DILocation(line: 59, column: 8, scope: !4396)
!4461 = !DILocation(line: 0, scope: !4444)
!4462 = !DILocation(line: 67, column: 12, scope: !4449)
!4463 = !DILocation(line: 67, column: 15, scope: !4449)
!4464 = !DILocation(line: 67, column: 5, scope: !4450)
!4465 = !DILocation(line: 138, column: 8, scope: !4444)
!4466 = !DILocation(line: 197, column: 7, scope: !4396)
!4467 = !DILocation(line: 69, column: 9, scope: !4448)
!4468 = !DILocation(line: 74, column: 19, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !808, line: 74, column: 17)
!4470 = distinct !DILexicalBlock(scope: !4448, file: !808, line: 70, column: 11)
!4471 = !DILocation(line: 74, column: 17, scope: !4470)
!4472 = !DILocation(line: 75, column: 17, scope: !4469)
!4473 = !DILocation(line: 75, column: 20, scope: !4469)
!4474 = !DILocation(line: 75, column: 15, scope: !4469)
!4475 = !DILocation(line: 80, column: 24, scope: !4470)
!4476 = !DILocation(line: 82, column: 19, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4470, file: !808, line: 82, column: 17)
!4478 = !DILocation(line: 82, column: 17, scope: !4470)
!4479 = !DILocation(line: 83, column: 17, scope: !4477)
!4480 = !DILocation(line: 83, column: 20, scope: !4477)
!4481 = !DILocation(line: 83, column: 15, scope: !4477)
!4482 = !DILocation(line: 88, column: 24, scope: !4470)
!4483 = !DILocation(line: 90, column: 19, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4470, file: !808, line: 90, column: 17)
!4485 = !DILocation(line: 90, column: 17, scope: !4470)
!4486 = !DILocation(line: 91, column: 17, scope: !4484)
!4487 = !DILocation(line: 91, column: 20, scope: !4484)
!4488 = !DILocation(line: 91, column: 15, scope: !4484)
!4489 = !DILocation(line: 100, column: 19, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4470, file: !808, line: 100, column: 17)
!4491 = !DILocation(line: 100, column: 17, scope: !4470)
!4492 = !DILocation(line: 101, column: 17, scope: !4490)
!4493 = !DILocation(line: 101, column: 20, scope: !4490)
!4494 = !DILocation(line: 101, column: 15, scope: !4490)
!4495 = !DILocation(line: 107, column: 19, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4470, file: !808, line: 107, column: 17)
!4497 = !DILocation(line: 107, column: 17, scope: !4470)
!4498 = !DILocation(line: 108, column: 17, scope: !4496)
!4499 = !DILocation(line: 108, column: 20, scope: !4496)
!4500 = !DILocation(line: 108, column: 15, scope: !4496)
!4501 = !DILocation(line: 113, column: 24, scope: !4470)
!4502 = !DILocation(line: 115, column: 13, scope: !4470)
!4503 = !DILocation(line: 117, column: 24, scope: !4470)
!4504 = !DILocation(line: 119, column: 13, scope: !4470)
!4505 = !DILocation(line: 128, column: 24, scope: !4447)
!4506 = !DILocation(line: 0, scope: !4447)
!4507 = !DILocation(line: 129, column: 48, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4447, file: !808, line: 129, column: 15)
!4509 = !DILocation(line: 129, column: 15, scope: !4447)
!4510 = !DILocalVariable(name: "__dest", arg: 1, scope: !4511, file: !1233, line: 26, type: !1236)
!4511 = distinct !DISubprogram(name: "memcpy", scope: !1233, file: !1233, line: 26, type: !1234, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4512)
!4512 = !{!4510, !4513, !4514}
!4513 = !DILocalVariable(name: "__src", arg: 2, scope: !4511, file: !1233, line: 26, type: !1058)
!4514 = !DILocalVariable(name: "__len", arg: 3, scope: !4511, file: !1233, line: 26, type: !135)
!4515 = !DILocation(line: 0, scope: !4511, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 131, column: 11, scope: !4447)
!4517 = !DILocation(line: 29, column: 10, scope: !4511, inlinedAt: !4516)
!4518 = !DILocation(line: 132, column: 13, scope: !4447)
!4519 = !DILocation(line: 135, column: 9, scope: !4448)
!4520 = !DILocation(line: 67, column: 25, scope: !4449)
!4521 = distinct !{!4521, !4464, !4522, !957}
!4522 = !DILocation(line: 136, column: 7, scope: !4450)
!4523 = !DILocation(line: 197, column: 7, scope: !4453)
!4524 = !DILocation(line: 199, column: 47, scope: !4452)
!4525 = !DILocation(line: 199, column: 16, scope: !4452)
!4526 = !DILocation(line: 0, scope: !4452)
!4527 = !DILocation(line: 201, column: 14, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4452, file: !808, line: 201, column: 11)
!4529 = !DILocation(line: 201, column: 11, scope: !4452)
!4530 = !DILocation(line: 204, column: 18, scope: !4452)
!4531 = !DILocation(line: 205, column: 14, scope: !4457)
!4532 = !DILocation(line: 205, column: 11, scope: !4452)
!4533 = !DILocation(line: 207, column: 29, scope: !4456)
!4534 = !DILocation(line: 0, scope: !4456)
!4535 = !DILocation(line: 208, column: 11, scope: !4456)
!4536 = !DILocation(line: 209, column: 17, scope: !4456)
!4537 = !DILocation(line: 210, column: 9, scope: !4456)
!4538 = !DILocalVariable(name: "filename", arg: 1, scope: !4539, file: !808, line: 30, type: !138)
!4539 = distinct !DISubprogram(name: "orig_fopen", scope: !808, file: !808, line: 30, type: !4397, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4540)
!4540 = !{!4538, !4541}
!4541 = !DILocalVariable(name: "mode", arg: 2, scope: !4539, file: !808, line: 30, type: !138)
!4542 = !DILocation(line: 0, scope: !4539, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 219, column: 10, scope: !4396)
!4544 = !DILocation(line: 32, column: 10, scope: !4539, inlinedAt: !4543)
!4545 = !DILocation(line: 219, column: 3, scope: !4396)
!4546 = !DILocation(line: 220, column: 1, scope: !4396)
!4547 = !DISubprogram(name: "open", scope: !2029, file: !2029, line: 181, type: !4548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!78, !138, !78, null}
!4550 = !DISubprogram(name: "fdopen", scope: !905, file: !905, line: 293, type: !4551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!4399, !78, !138}
!4553 = !DISubprogram(name: "close", scope: !1894, file: !1894, line: 358, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4554 = !DISubprogram(name: "fopen", scope: !905, file: !905, line: 258, type: !4555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!4399, !900, !900}
!4557 = distinct !DISubprogram(name: "close_stream", scope: !810, file: !810, line: 55, type: !4558, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4594)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!78, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4562)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4562, file: !218, line: 51, baseType: !78, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4562, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4562, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4562, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4562, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4562, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4562, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4562, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4562, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4562, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4562, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4562, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4562, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4562, file: !218, line: 70, baseType: !4578, size: 64, offset: 832)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4562, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4562, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4562, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4562, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4562, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4562, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4562, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4562, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4562, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4562, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4562, file: !218, line: 93, baseType: !4578, size: 64, offset: 1344)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4562, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4562, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4562, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4562, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4594 = !{!4595, !4596, !4598, !4599}
!4595 = !DILocalVariable(name: "stream", arg: 1, scope: !4557, file: !810, line: 55, type: !4560)
!4596 = !DILocalVariable(name: "some_pending", scope: !4557, file: !810, line: 57, type: !4597)
!4597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!4598 = !DILocalVariable(name: "prev_fail", scope: !4557, file: !810, line: 58, type: !4597)
!4599 = !DILocalVariable(name: "fclose_fail", scope: !4557, file: !810, line: 59, type: !4597)
!4600 = !DILocation(line: 0, scope: !4557)
!4601 = !DILocation(line: 57, column: 30, scope: !4557)
!4602 = !DILocalVariable(name: "__stream", arg: 1, scope: !4603, file: !1337, line: 135, type: !4560)
!4603 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1337, file: !1337, line: 135, type: !4558, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4604)
!4604 = !{!4602}
!4605 = !DILocation(line: 0, scope: !4603, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 58, column: 27, scope: !4557)
!4607 = !DILocation(line: 137, column: 10, scope: !4603, inlinedAt: !4606)
!4608 = !DILocation(line: 58, column: 43, scope: !4557)
!4609 = !DILocation(line: 59, column: 29, scope: !4557)
!4610 = !DILocation(line: 59, column: 45, scope: !4557)
!4611 = !DILocation(line: 69, column: 17, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4557, file: !810, line: 69, column: 7)
!4613 = !DILocation(line: 57, column: 50, scope: !4557)
!4614 = !DILocation(line: 69, column: 33, scope: !4612)
!4615 = !DILocation(line: 69, column: 53, scope: !4612)
!4616 = !DILocation(line: 69, column: 59, scope: !4612)
!4617 = !DILocation(line: 69, column: 7, scope: !4557)
!4618 = !DILocation(line: 71, column: 11, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4612, file: !810, line: 70, column: 5)
!4620 = !DILocation(line: 72, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !810, line: 71, column: 11)
!4622 = !DILocation(line: 72, column: 15, scope: !4621)
!4623 = !DILocation(line: 77, column: 1, scope: !4557)
!4624 = !DISubprogram(name: "__fpending", scope: !2237, file: !2237, line: 75, type: !4625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!135, !4560}
!4627 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !736, file: !736, line: 100, type: !4628, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !4631)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!135, !1291, !138, !135, !4630}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!4631 = !{!4632, !4633, !4634, !4635, !4636}
!4632 = !DILocalVariable(name: "pwc", arg: 1, scope: !4627, file: !736, line: 100, type: !1291)
!4633 = !DILocalVariable(name: "s", arg: 2, scope: !4627, file: !736, line: 100, type: !138)
!4634 = !DILocalVariable(name: "n", arg: 3, scope: !4627, file: !736, line: 100, type: !135)
!4635 = !DILocalVariable(name: "ps", arg: 4, scope: !4627, file: !736, line: 100, type: !4630)
!4636 = !DILocalVariable(name: "ret", scope: !4627, file: !736, line: 130, type: !135)
!4637 = !DILocation(line: 0, scope: !4627)
!4638 = !DILocation(line: 105, column: 9, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4627, file: !736, line: 105, column: 7)
!4640 = !DILocation(line: 105, column: 7, scope: !4627)
!4641 = !DILocation(line: 117, column: 10, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4627, file: !736, line: 117, column: 7)
!4643 = !DILocation(line: 117, column: 7, scope: !4627)
!4644 = !DILocation(line: 130, column: 16, scope: !4627)
!4645 = !DILocation(line: 135, column: 11, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4627, file: !736, line: 135, column: 7)
!4647 = !DILocation(line: 135, column: 25, scope: !4646)
!4648 = !DILocation(line: 135, column: 30, scope: !4646)
!4649 = !DILocation(line: 135, column: 7, scope: !4627)
!4650 = !DILocalVariable(name: "ps", arg: 1, scope: !4651, file: !2474, line: 1135, type: !4630)
!4651 = distinct !DISubprogram(name: "mbszero", scope: !2474, file: !2474, line: 1135, type: !4652, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !4630}
!4654 = !{!4650}
!4655 = !DILocation(line: 0, scope: !4651, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 137, column: 5, scope: !4646)
!4657 = !DILocalVariable(name: "__dest", arg: 1, scope: !4658, file: !1233, line: 57, type: !133)
!4658 = distinct !DISubprogram(name: "memset", scope: !1233, file: !1233, line: 57, type: !2483, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !4659)
!4659 = !{!4657, !4660, !4661}
!4660 = !DILocalVariable(name: "__ch", arg: 2, scope: !4658, file: !1233, line: 57, type: !78)
!4661 = !DILocalVariable(name: "__len", arg: 3, scope: !4658, file: !1233, line: 57, type: !135)
!4662 = !DILocation(line: 0, scope: !4658, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 1137, column: 3, scope: !4651, inlinedAt: !4656)
!4664 = !DILocation(line: 59, column: 10, scope: !4658, inlinedAt: !4663)
!4665 = !DILocation(line: 137, column: 5, scope: !4646)
!4666 = !DILocation(line: 138, column: 11, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4627, file: !736, line: 138, column: 7)
!4668 = !DILocation(line: 138, column: 7, scope: !4627)
!4669 = !DILocation(line: 139, column: 5, scope: !4667)
!4670 = !DILocation(line: 143, column: 26, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4627, file: !736, line: 143, column: 7)
!4672 = !DILocation(line: 143, column: 41, scope: !4671)
!4673 = !DILocation(line: 143, column: 7, scope: !4627)
!4674 = !DILocation(line: 145, column: 15, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !736, line: 145, column: 11)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !736, line: 144, column: 5)
!4677 = !DILocation(line: 145, column: 11, scope: !4676)
!4678 = !DILocation(line: 146, column: 32, scope: !4675)
!4679 = !DILocation(line: 146, column: 16, scope: !4675)
!4680 = !DILocation(line: 146, column: 14, scope: !4675)
!4681 = !DILocation(line: 146, column: 9, scope: !4675)
!4682 = !DILocation(line: 286, column: 1, scope: !4627)
!4683 = !DISubprogram(name: "mbsinit", scope: !4684, file: !4684, line: 293, type: !4685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !849)
!4684 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!78, !4687}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!4689 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !812, file: !812, line: 27, type: !3956, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4690)
!4690 = !{!4691, !4692, !4693, !4694}
!4691 = !DILocalVariable(name: "ptr", arg: 1, scope: !4689, file: !812, line: 27, type: !133)
!4692 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4689, file: !812, line: 27, type: !135)
!4693 = !DILocalVariable(name: "size", arg: 3, scope: !4689, file: !812, line: 27, type: !135)
!4694 = !DILocalVariable(name: "nbytes", scope: !4689, file: !812, line: 29, type: !135)
!4695 = !DILocation(line: 0, scope: !4689)
!4696 = !DILocation(line: 30, column: 7, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4689, file: !812, line: 30, column: 7)
!4698 = !DILocalVariable(name: "ptr", arg: 1, scope: !4699, file: !4048, line: 2057, type: !133)
!4699 = distinct !DISubprogram(name: "rpl_realloc", scope: !4048, file: !4048, line: 2057, type: !4040, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4700)
!4700 = !{!4698, !4701}
!4701 = !DILocalVariable(name: "size", arg: 2, scope: !4699, file: !4048, line: 2057, type: !135)
!4702 = !DILocation(line: 0, scope: !4699, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 37, column: 10, scope: !4689)
!4704 = !DILocation(line: 2059, column: 24, scope: !4699, inlinedAt: !4703)
!4705 = !DILocation(line: 2059, column: 10, scope: !4699, inlinedAt: !4703)
!4706 = !DILocation(line: 37, column: 3, scope: !4689)
!4707 = !DILocation(line: 32, column: 7, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4697, file: !812, line: 31, column: 5)
!4709 = !DILocation(line: 32, column: 13, scope: !4708)
!4710 = !DILocation(line: 33, column: 7, scope: !4708)
!4711 = !DILocation(line: 38, column: 1, scope: !4689)
!4712 = distinct !DISubprogram(name: "hard_locale", scope: !754, file: !754, line: 28, type: !4713, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4715)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!172, !78}
!4715 = !{!4716, !4717}
!4716 = !DILocalVariable(name: "category", arg: 1, scope: !4712, file: !754, line: 28, type: !78)
!4717 = !DILocalVariable(name: "locale", scope: !4712, file: !754, line: 30, type: !4718)
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4719)
!4719 = !{!4720}
!4720 = !DISubrange(count: 257)
!4721 = !DILocation(line: 0, scope: !4712)
!4722 = !DILocation(line: 30, column: 3, scope: !4712)
!4723 = !DILocation(line: 30, column: 8, scope: !4712)
!4724 = !DILocation(line: 32, column: 7, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4712, file: !754, line: 32, column: 7)
!4726 = !DILocation(line: 32, column: 7, scope: !4712)
!4727 = !DILocalVariable(name: "__s1", arg: 1, scope: !4728, file: !923, line: 1359, type: !138)
!4728 = distinct !DISubprogram(name: "streq", scope: !923, file: !923, line: 1359, type: !924, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4729)
!4729 = !{!4727, !4730}
!4730 = !DILocalVariable(name: "__s2", arg: 2, scope: !4728, file: !923, line: 1359, type: !138)
!4731 = !DILocation(line: 0, scope: !4728, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 35, column: 9, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4712, file: !754, line: 35, column: 7)
!4734 = !DILocation(line: 1361, column: 11, scope: !4728, inlinedAt: !4732)
!4735 = !DILocation(line: 35, column: 29, scope: !4733)
!4736 = !DILocation(line: 0, scope: !4728, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 35, column: 32, scope: !4733)
!4738 = !DILocation(line: 1361, column: 11, scope: !4728, inlinedAt: !4737)
!4739 = !DILocation(line: 1361, column: 10, scope: !4728, inlinedAt: !4737)
!4740 = !DILocation(line: 35, column: 7, scope: !4712)
!4741 = !DILocation(line: 46, column: 3, scope: !4712)
!4742 = !DILocation(line: 47, column: 1, scope: !4712)
!4743 = distinct !DISubprogram(name: "setlocale_null_r", scope: !819, file: !819, line: 154, type: !4744, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4746)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!78, !78, !132, !135}
!4746 = !{!4747, !4748, !4749}
!4747 = !DILocalVariable(name: "category", arg: 1, scope: !4743, file: !819, line: 154, type: !78)
!4748 = !DILocalVariable(name: "buf", arg: 2, scope: !4743, file: !819, line: 154, type: !132)
!4749 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4743, file: !819, line: 154, type: !135)
!4750 = !DILocation(line: 0, scope: !4743)
!4751 = !DILocation(line: 159, column: 10, scope: !4743)
!4752 = !DILocation(line: 159, column: 3, scope: !4743)
!4753 = distinct !DISubprogram(name: "setlocale_null", scope: !819, file: !819, line: 186, type: !4754, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!138, !78}
!4756 = !{!4757}
!4757 = !DILocalVariable(name: "category", arg: 1, scope: !4753, file: !819, line: 186, type: !78)
!4758 = !DILocation(line: 0, scope: !4753)
!4759 = !DILocation(line: 189, column: 10, scope: !4753)
!4760 = !DILocation(line: 189, column: 3, scope: !4753)
!4761 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !821, file: !821, line: 35, type: !4754, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4762)
!4762 = !{!4763, !4764}
!4763 = !DILocalVariable(name: "category", arg: 1, scope: !4761, file: !821, line: 35, type: !78)
!4764 = !DILocalVariable(name: "result", scope: !4761, file: !821, line: 37, type: !138)
!4765 = !DILocation(line: 0, scope: !4761)
!4766 = !DILocation(line: 37, column: 24, scope: !4761)
!4767 = !DILocation(line: 62, column: 3, scope: !4761)
!4768 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !821, file: !821, line: 66, type: !4744, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4769)
!4769 = !{!4770, !4771, !4772, !4773, !4774}
!4770 = !DILocalVariable(name: "category", arg: 1, scope: !4768, file: !821, line: 66, type: !78)
!4771 = !DILocalVariable(name: "buf", arg: 2, scope: !4768, file: !821, line: 66, type: !132)
!4772 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4768, file: !821, line: 66, type: !135)
!4773 = !DILocalVariable(name: "result", scope: !4768, file: !821, line: 111, type: !138)
!4774 = !DILocalVariable(name: "length", scope: !4775, file: !821, line: 125, type: !135)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !821, line: 124, column: 5)
!4776 = distinct !DILexicalBlock(scope: !4768, file: !821, line: 113, column: 7)
!4777 = !DILocation(line: 0, scope: !4768)
!4778 = !DILocation(line: 0, scope: !4761, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 111, column: 24, scope: !4768)
!4780 = !DILocation(line: 37, column: 24, scope: !4761, inlinedAt: !4779)
!4781 = !DILocation(line: 113, column: 14, scope: !4776)
!4782 = !DILocation(line: 113, column: 7, scope: !4768)
!4783 = !DILocation(line: 116, column: 19, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !821, line: 116, column: 11)
!4785 = distinct !DILexicalBlock(scope: !4776, file: !821, line: 114, column: 5)
!4786 = !DILocation(line: 116, column: 11, scope: !4785)
!4787 = !DILocation(line: 120, column: 16, scope: !4784)
!4788 = !DILocation(line: 120, column: 9, scope: !4784)
!4789 = !DILocation(line: 125, column: 23, scope: !4775)
!4790 = !DILocation(line: 0, scope: !4775)
!4791 = !DILocation(line: 126, column: 18, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4775, file: !821, line: 126, column: 11)
!4793 = !DILocation(line: 126, column: 11, scope: !4775)
!4794 = !DILocation(line: 128, column: 39, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4792, file: !821, line: 127, column: 9)
!4796 = !DILocalVariable(name: "__dest", arg: 1, scope: !4797, file: !1233, line: 26, type: !1236)
!4797 = distinct !DISubprogram(name: "memcpy", scope: !1233, file: !1233, line: 26, type: !1234, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4798)
!4798 = !{!4796, !4799, !4800}
!4799 = !DILocalVariable(name: "__src", arg: 2, scope: !4797, file: !1233, line: 26, type: !1058)
!4800 = !DILocalVariable(name: "__len", arg: 3, scope: !4797, file: !1233, line: 26, type: !135)
!4801 = !DILocation(line: 0, scope: !4797, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 128, column: 11, scope: !4795)
!4803 = !DILocation(line: 29, column: 10, scope: !4797, inlinedAt: !4802)
!4804 = !DILocation(line: 129, column: 11, scope: !4795)
!4805 = !DILocation(line: 133, column: 23, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !821, line: 133, column: 15)
!4807 = distinct !DILexicalBlock(scope: !4792, file: !821, line: 132, column: 9)
!4808 = !DILocation(line: 133, column: 15, scope: !4807)
!4809 = !DILocation(line: 138, column: 44, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !821, line: 134, column: 13)
!4811 = !DILocation(line: 0, scope: !4797, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 138, column: 15, scope: !4810)
!4813 = !DILocation(line: 29, column: 10, scope: !4797, inlinedAt: !4812)
!4814 = !DILocation(line: 139, column: 15, scope: !4810)
!4815 = !DILocation(line: 139, column: 32, scope: !4810)
!4816 = !DILocation(line: 140, column: 13, scope: !4810)
!4817 = !DILocation(line: 0, scope: !4776)
!4818 = !DILocation(line: 145, column: 1, scope: !4768)
