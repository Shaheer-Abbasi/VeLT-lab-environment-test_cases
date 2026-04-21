; ModuleID = 'src/base64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.base64_decode_context = type { i32, [4 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [70 x i8] c"Base%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"base64\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [37 x i8] c"  -d, --decode\0A         decode data\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [79 x i8] c"  -i, --ignore-garbage\0A         when decoding, ignore non-alphabet characters\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [122 x i8] c"  -w, --wrap=COLS\0A         wrap encoded lines after COLS character (default 76).\0A         Use 0 to disable line wrapping\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !52
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1, !dbg !67
@long_options = internal constant [6 x %struct.option] [%struct.option { ptr @.str.59, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.62, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.63, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !72
@optarg = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !140
@.str.15 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1, !dbg !142
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !147
@.str.17 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1, !dbg !152
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !157
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !162
@stdin = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !167
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !172
@.str.22 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !174
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !179
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !184
@.str.24 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !267
@.str.25 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !269
@.str.26 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !271
@.str.27 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !276
@.str.41 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !310
@.str.42 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !312
@.str.43 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !314
@.str.44 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !316
@.str.45 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !321
@.str.46 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !326
@.str.47 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !331
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !333
@.str.49 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !335
@.str.50 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !337
@.str.54 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !348
@.str.55 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !350
@.str.56 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !355
@.str.57 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !360
@.str.58 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !365
@.str.59 = private unnamed_addr constant [7 x i8] c"decode\00", align 1, !dbg !370
@.str.60 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1, !dbg !372
@.str.61 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1, !dbg !374
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !376
@.str.63 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !378
@.str.64 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !380
@.str.65 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1, !dbg !385
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !402
@.str.69 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !404
@.str.28 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !419
@Version = dso_local local_unnamed_addr global ptr @.str.28, align 8, !dbg !422
@base64_to_int = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1, !dbg !426
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 1, !dbg !432
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !441
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !454
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !446
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !448
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !450
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !452
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !456
@stderr = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !462
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !499
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !464
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !489
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !491
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !493
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !495
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !497
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !501
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !503
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !508
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !513
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !519
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !521
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !523
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !554
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !557
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !559
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !561
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !563
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !565
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !567
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !569
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !571
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !573
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 8, !dbg !575
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !586
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !600
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !636
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !643
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !602
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !645
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !590
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !605
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !607
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !609
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !611
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !613
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !649
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !652
@.str.2.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !654
@.str.3.105 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !656
@.str.4.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !658
@.str.5.107 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !660
@.str.6.108 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !665
@.str.7.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !670
@.str.8.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !672
@.str.9.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !674
@.str.10.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !679
@.str.11.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !681
@.str.12.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !686
@.str.13.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !688
@.str.14.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !693
@.str.15.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !698
@.str.16.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !703
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.123 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !708
@.str.18.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !710
@.str.19.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !712
@.str.20.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !714
@.str.21.127 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !716
@.str.22.128 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !718
@.str.23.129 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !720
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !725
@exit_failure = dso_local global i32 1, align 4, !dbg !733
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !739
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !742
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !744
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !746
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !749
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !764
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !767

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !857, metadata !DIExpression()), !dbg !858
  %2 = icmp eq i32 %0, 0, !dbg !859
  br i1 %2, label %8, label %3, !dbg !861

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !862, !tbaa !864
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !862
  %6 = load ptr, ptr @program_name, align 8, !dbg !862, !tbaa !864
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !862
  br label %41, !dbg !862

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !868
  %10 = load ptr, ptr @program_name, align 8, !dbg !868, !tbaa !864
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !868
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !870
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 64) #42, !dbg !870
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !871
  %15 = load ptr, ptr @stdout, align 8, !dbg !871, !tbaa !864
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !871
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #42, !dbg !875
  %18 = load ptr, ptr @stdout, align 8, !dbg !875, !tbaa !864
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !875
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !878
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !878
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #42, !dbg !879
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !879
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !880
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !880
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !881
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !881
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !882
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !882
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !883
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #42, !dbg !883
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !884, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr poison, metadata !896, metadata !DIExpression()), !dbg !901
  tail call void @emit_bug_reporting_address() #42, !dbg !903
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !904
  call void @llvm.dbg.value(metadata ptr %27, metadata !899, metadata !DIExpression()), !dbg !901
  %28 = icmp eq ptr %27, null, !dbg !905
  br i1 %28, label %36, label %29, !dbg !907

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #43, !dbg !908
  %31 = icmp eq i32 %30, 0, !dbg !908
  br i1 %31, label %36, label %32, !dbg !909

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #42, !dbg !910
  %34 = load ptr, ptr @stdout, align 8, !dbg !910, !tbaa !864
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !910
  br label %36, !dbg !912

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !901
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #42, !dbg !913
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #42, !dbg !913
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #42, !dbg !914
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #42, !dbg !914
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !915
  unreachable, !dbg !915
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !916 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !920 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !926 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !929 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !932
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !933, !tbaa !934
  %3 = icmp eq i32 %2, -1, !dbg !936
  br i1 %3, label %4, label %16, !dbg !937

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #42, !dbg !938
  call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !939
  %6 = icmp eq ptr %5, null, !dbg !940
  br i1 %6, label %14, label %7, !dbg !941

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !942, !tbaa !943
  %9 = icmp eq i8 %8, 0, !dbg !942
  br i1 %9, label %14, label %10, !dbg !944

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !945, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !951, metadata !DIExpression()), !dbg !952
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #43, !dbg !954
  %12 = icmp eq i32 %11, 0, !dbg !955
  %13 = zext i1 %12 to i32, !dbg !944
  br label %14, !dbg !944

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !956, !tbaa !934
  br label %16, !dbg !957

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !958
  %18 = icmp eq i32 %17, 0, !dbg !958
  br i1 %18, label %22, label %19, !dbg !960

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !864
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !961
  br label %122, !dbg !963

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !932
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #43, !dbg !964
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !965
  call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !932
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !966
  call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !932
  %26 = icmp eq ptr %25, null, !dbg !967
  br i1 %26, label %54, label %27, !dbg !968

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !969
  br i1 %28, label %54, label %29, !dbg !970

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !971
  %30 = icmp ult ptr %24, %25, !dbg !972
  br i1 %30, label %31, label %52, !dbg !973

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !932
  %33 = load ptr, ptr %32, align 8, !tbaa !864
  br label %34, !dbg !973

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !971
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !974
  call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !971
  %38 = load i8, ptr %35, align 1, !dbg !974, !tbaa !943
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !974
  %41 = load i16, ptr %40, align 2, !dbg !974, !tbaa !975
  %42 = freeze i16 %41, !dbg !977
  %43 = lshr i16 %42, 13, !dbg !977
  %44 = and i16 %43, 1, !dbg !977
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !978
  call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !971
  %47 = icmp ult ptr %37, %25, !dbg !972
  %48 = icmp ult i64 %46, 2, !dbg !979
  %49 = select i1 %47, i1 %48, i1 false, !dbg !979
  br i1 %49, label %34, label %50, !dbg !973, !llvm.loop !980

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !982
  br i1 %51, label %52, label %54, !dbg !984

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !984

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !932
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata ptr %55, metadata !198, metadata !DIExpression()), !dbg !932
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.27) #43, !dbg !985
  call void @llvm.dbg.value(metadata i64 %57, metadata !204, metadata !DIExpression()), !dbg !932
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !986
  call void @llvm.dbg.value(metadata ptr %58, metadata !205, metadata !DIExpression()), !dbg !932
  br label %59, !dbg !987

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !932
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata ptr %60, metadata !205, metadata !DIExpression()), !dbg !932
  %62 = load i8, ptr %60, align 1, !dbg !988, !tbaa !943
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !989

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !990
  %65 = load i8, ptr %64, align 1, !dbg !993, !tbaa !943
  %66 = icmp ne i8 %65, 45, !dbg !994
  %67 = select i1 %66, i1 %61, i1 false, !dbg !995
  br label %68, !dbg !995

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !932
  %70 = tail call ptr @__ctype_b_loc() #45, !dbg !996
  %71 = load ptr, ptr %70, align 8, !dbg !996, !tbaa !864
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !996
  %74 = load i16, ptr %73, align 2, !dbg !996, !tbaa !975
  %75 = and i16 %74, 8192, !dbg !996
  %76 = icmp eq i16 %75, 0, !dbg !996
  br i1 %76, label %90, label %77, !dbg !998

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !999
  br i1 %78, label %92, label %79, !dbg !1002

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1003
  %81 = load i8, ptr %80, align 1, !dbg !1003, !tbaa !943
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1003
  %84 = load i16, ptr %83, align 2, !dbg !1003, !tbaa !975
  %85 = and i16 %84, 8192, !dbg !1003
  %86 = icmp eq i16 %85, 0, !dbg !1003
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1004
  br i1 %89, label %90, label %92, !dbg !1004

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %91, metadata !205, metadata !DIExpression()), !dbg !932
  br label %59, !dbg !987, !llvm.loop !1006

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1008
  %94 = load ptr, ptr @stdout, align 8, !dbg !1008, !tbaa !864
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !932
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #43, !dbg !1029
  %97 = icmp eq i32 %96, 0, !dbg !1029
  br i1 %97, label %101, label %98, !dbg !1031

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #43, !dbg !1032
  %100 = icmp eq i32 %99, 0, !dbg !1032
  br i1 %100, label %101, label %104, !dbg !1033

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1034
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #42, !dbg !1034
  br label %107, !dbg !1036

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1037
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #42, !dbg !1037
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !864
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %108), !dbg !1039
  %110 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !864
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %110), !dbg !1040
  %112 = ptrtoint ptr %60 to i64, !dbg !1041
  %113 = sub i64 %112, %93, !dbg !1041
  %114 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !864
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1041
  %116 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !864
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %116), !dbg !1042
  %118 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !864
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %118), !dbg !1043
  %120 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !864
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1044
  br label %122, !dbg !1045

122:                                              ; preds = %107, %19
  ret void, !dbg !1045
}

; Function Attrs: nounwind
declare !dbg !1046 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1050 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1054 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1056 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1062 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1065 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1068 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1074 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1075 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1081 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1086, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 0, metadata !1091, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 0, metadata !1092, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 76, metadata !1093, metadata !DIExpression()), !dbg !1099
  %4 = load ptr, ptr %1, align 8, !dbg !1100, !tbaa !864
  tail call void @set_program_name(ptr noundef %4) #42, !dbg !1101
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #42, !dbg !1102
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #42, !dbg !1103
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #42, !dbg !1104
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1105
  br label %9, !dbg !1106

9:                                                ; preds = %16, %2
  %10 = phi i1 [ false, %2 ], [ true, %16 ]
  %11 = phi i1 [ false, %2 ], [ %14, %16 ]
  %12 = phi i64 [ 76, %2 ], [ %17, %16 ]
  br label %13, !dbg !1106

13:                                               ; preds = %9, %33
  %14 = phi i1 [ %11, %9 ], [ true, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %17, %33 ]
  br label %16, !dbg !1106

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1107
  call void @llvm.dbg.value(metadata i64 %17, metadata !1093, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 poison, metadata !1092, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 poison, metadata !1091, metadata !DIExpression()), !dbg !1099
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #42, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %18, metadata !1088, metadata !DIExpression()), !dbg !1099
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %9
    i32 119, label %19
    i32 105, label %33
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !1106, !llvm.loop !1109

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42, !dbg !1111
  %20 = load ptr, ptr @optarg, align 8, !dbg !1112, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %3, metadata !1094, metadata !DIExpression(DW_OP_deref)), !dbg !1113
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #42, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %21, metadata !1097, metadata !DIExpression()), !dbg !1113
  %22 = icmp ugt i32 %21, 1, !dbg !1115
  %23 = load i64, ptr %3, align 8
  call void @llvm.dbg.value(metadata i64 %23, metadata !1094, metadata !DIExpression()), !dbg !1113
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1117
  br i1 %25, label %26, label %30, !dbg !1117

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !1118
  %28 = load ptr, ptr @optarg, align 8, !dbg !1118, !tbaa !864
  %29 = call ptr @quote(ptr noundef %28) #42, !dbg !1118
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #42, !dbg !1118
  unreachable, !dbg !1118

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1119
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %32, metadata !1093, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !1121
  br label %16, !dbg !1122, !llvm.loop !1109

33:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !1092, metadata !DIExpression()), !dbg !1099
  br label %13, !dbg !1123, !llvm.loop !1109

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #46, !dbg !1124
  unreachable, !dbg !1124

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !864
  %37 = load ptr, ptr @Version, align 8, !dbg !1125, !tbaa !864
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #42, !dbg !1125
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #42, !dbg !1125
  call void @exit(i32 noundef 0) #44, !dbg !1125
  unreachable, !dbg !1125

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #46, !dbg !1126
  unreachable, !dbg !1126

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !1127, !tbaa !934
  %42 = sub nsw i32 %0, %41, !dbg !1129
  %43 = icmp sgt i32 %42, 1, !dbg !1130
  br i1 %43, label %44, label %52, !dbg !1131

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #42, !dbg !1132
  %46 = load i32, ptr @optind, align 4, !dbg !1132, !tbaa !934
  %47 = add nsw i32 %46, 1, !dbg !1132
  %48 = sext i32 %47 to i64, !dbg !1132
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48, !dbg !1132
  %50 = load ptr, ptr %49, align 8, !dbg !1132, !tbaa !864
  %51 = call ptr @quote(ptr noundef %50) #42, !dbg !1132
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #42, !dbg !1132
  call void @usage(i32 noundef 1) #46, !dbg !1134
  unreachable, !dbg !1134

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1135
  br i1 %53, label %54, label %58, !dbg !1137

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1138
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1138
  %57 = load ptr, ptr %56, align 8, !dbg !1138, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %57, metadata !1090, metadata !DIExpression()), !dbg !1099
  br label %58, !dbg !1139

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1140
  call void @llvm.dbg.value(metadata ptr %59, metadata !1090, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %59, metadata !945, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !951, metadata !DIExpression()), !dbg !1141
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1144
  %61 = icmp eq i32 %60, 0, !dbg !1145
  br i1 %61, label %62, label %64, !dbg !1146

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1147, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %63, metadata !1089, metadata !DIExpression()), !dbg !1099
  br label %71, !dbg !1149

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #42, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %65, metadata !1089, metadata !DIExpression()), !dbg !1099
  %66 = icmp eq ptr %65, null, !dbg !1152
  br i1 %66, label %67, label %71, !dbg !1154

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #45, !dbg !1155
  %69 = load i32, ptr %68, align 4, !dbg !1155, !tbaa !934
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #42, !dbg !1155
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #42, !dbg !1155
  unreachable, !dbg !1155

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1156
  call void @llvm.dbg.value(metadata ptr %72, metadata !1089, metadata !DIExpression()), !dbg !1099
  call void @fadvise(ptr noundef %72, i32 noundef 2) #42, !dbg !1157
  %73 = load ptr, ptr @stdout, align 8, !dbg !1158, !tbaa !864
  br i1 %10, label %74, label %75, !dbg !1160

74:                                               ; preds = %71
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef %14) #46, !dbg !1161
  unreachable, !dbg !1161

75:                                               ; preds = %71
  call fastcc void @do_encode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i64 noundef %17) #46, !dbg !1162
  unreachable, !dbg !1162
}

; Function Attrs: nounwind
declare !dbg !1163 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1166 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1167 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1170 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1176 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef %3) unnamed_addr #0 !dbg !1180 {
  %5 = alloca [8 x i8], align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.base64_decode_context, align 4
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1184, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %1, metadata !1185, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %2, metadata !1186, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i1 %3, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #42, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1191, metadata !DIExpression()), !dbg !1214
  %9 = tail call noalias nonnull dereferenceable(4096) ptr @xmalloc(i64 noundef 4096) #47, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %9, metadata !1188, metadata !DIExpression()), !dbg !1212
  %10 = tail call noalias nonnull dereferenceable(3072) ptr @xmalloc(i64 noundef 3072) #47, !dbg !1216
  call void @llvm.dbg.value(metadata ptr %10, metadata !1189, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %7, metadata !1217, metadata !DIExpression()), !dbg !1223
  store i32 0, ptr %7, align 4, !dbg !1225, !tbaa !1226
  br label %11, !dbg !1228

11:                                               ; preds = %58, %4
  %12 = phi i64 [ 0, %4 ], [ %59, %58 ], !dbg !1229
  call void @llvm.dbg.value(metadata i64 %12, metadata !1190, metadata !DIExpression()), !dbg !1212
  %13 = getelementptr inbounds i8, ptr %9, i64 %12, !dbg !1230
  %14 = sub nsw i64 4096, %12, !dbg !1230
  %15 = call i64 @fread_unlocked(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %14, ptr noundef %0), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %15, metadata !1199, metadata !DIExpression()), !dbg !1231
  %16 = icmp sgt i64 %15, 0
  %17 = and i1 %16, %3, !dbg !1232
  call void @llvm.dbg.value(metadata i64 0, metadata !1201, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %15, metadata !1199, metadata !DIExpression()), !dbg !1231
  br i1 %17, label %18, label %43, !dbg !1232

18:                                               ; preds = %11, %37
  %19 = phi i64 [ %39, %37 ], [ 0, %11 ]
  %20 = phi i64 [ %38, %37 ], [ %15, %11 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1201, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %20, metadata !1199, metadata !DIExpression()), !dbg !1231
  %21 = add nsw i64 %19, %12, !dbg !1234
  %22 = getelementptr inbounds i8, ptr %9, i64 %21, !dbg !1238
  %23 = load i8, ptr %22, align 1, !dbg !1238, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %23, metadata !1239, metadata !DIExpression()), !dbg !1244
  %24 = zext i8 %23 to i64, !dbg !1246
  %25 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %24, !dbg !1247
  %26 = load i8, ptr %25, align 1, !dbg !1247, !tbaa !943
  %27 = icmp sgt i8 %26, -1, !dbg !1248
  %28 = icmp eq i8 %23, 61
  %29 = select i1 %27, i1 true, i1 %28, !dbg !1249
  call void @llvm.dbg.value(metadata i32 1, metadata !1250, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 1, metadata !1255, metadata !DIExpression()), !dbg !1256
  br i1 %29, label %30, label %32, !dbg !1249

30:                                               ; preds = %18
  %31 = add nsw i64 %19, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %31, metadata !1201, metadata !DIExpression()), !dbg !1233
  br label %37, !dbg !1259

32:                                               ; preds = %18
  %33 = getelementptr inbounds i8, ptr %13, i64 %19, !dbg !1260
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1261
  %35 = add nsw i64 %20, -1, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %35, metadata !1199, metadata !DIExpression()), !dbg !1231
  %36 = sub nsw i64 %35, %19, !dbg !1263
  call void @llvm.dbg.value(metadata ptr %33, metadata !1264, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %34, metadata !1270, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %36, metadata !1271, metadata !DIExpression()), !dbg !1272
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %33, ptr noundef nonnull align 1 %34, i64 noundef %36, i1 noundef false) #42, !dbg !1274
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i64 [ %20, %30 ], [ %35, %32 ], !dbg !1231
  %39 = phi i64 [ %31, %30 ], [ %19, %32 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %39, metadata !1201, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %38, metadata !1199, metadata !DIExpression()), !dbg !1231
  %40 = icmp sgt i64 %38, 0, !dbg !1275
  %41 = icmp slt i64 %39, %38, !dbg !1276
  %42 = select i1 %40, i1 %41, i1 false, !dbg !1276
  br i1 %42, label %18, label %43, !dbg !1277, !llvm.loop !1278

43:                                               ; preds = %37, %11
  %44 = phi i64 [ %15, %11 ], [ %38, %37 ], !dbg !1280
  call void @llvm.dbg.value(metadata i64 %44, metadata !1199, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata !DIArgList(i64 %44, i64 %12), metadata !1190, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %0, metadata !1281, metadata !DIExpression()), !dbg !1287
  %45 = load i32, ptr %0, align 8, !dbg !1290, !tbaa !1291
  %46 = and i32 %45, 32, !dbg !1294
  %47 = icmp eq i32 %46, 0, !dbg !1294
  br i1 %47, label %52, label %48, !dbg !1295

48:                                               ; preds = %43
  %49 = tail call ptr @__errno_location() #45, !dbg !1296
  %50 = load i32, ptr %49, align 4, !dbg !1296, !tbaa !934
  %51 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #42, !dbg !1296
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %50, ptr noundef %51) #42, !dbg !1296
  unreachable, !dbg !1296

52:                                               ; preds = %43
  %53 = add nsw i64 %44, %12, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %53, metadata !1190, metadata !DIExpression()), !dbg !1212
  %54 = icmp slt i64 %53, 4096, !dbg !1298
  %55 = and i32 %45, 16
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false, !dbg !1299
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1303
  br i1 %57, label %58, label %60, !dbg !1299

58:                                               ; preds = %52, %151
  %59 = phi i64 [ %53, %52 ], [ 0, %151 ]
  br label %11, !dbg !1212, !llvm.loop !1305

60:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %53, metadata !1190, metadata !DIExpression()), !dbg !1212
  %61 = icmp eq i64 %53, 0, !dbg !1307
  br i1 %61, label %65, label %62, !dbg !1308

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !1309
  call void @llvm.dbg.value(metadata i64 3072, metadata !1205, metadata !DIExpression()), !dbg !1310
  store i64 3072, ptr %8, align 8, !dbg !1311, !tbaa !1312
  call void @llvm.dbg.value(metadata ptr %10, metadata !1189, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %8, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1310
  %63 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %53, ptr noundef nonnull %10, ptr noundef nonnull %8) #42, !dbg !1313
  call void @llvm.dbg.value(metadata i1 %63, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1229
  %64 = load i64, ptr %8, align 8, !dbg !1315, !tbaa !1312
  br label %93, !dbg !1316

65:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1317
  %66 = load i32, ptr %0, align 8, !dbg !1319, !tbaa !1291
  %67 = and i32 %66, 16, !dbg !1308
  %68 = icmp eq i32 %67, 0, !dbg !1308
  br i1 %68, label %151, label %69, !dbg !1320

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !1309
  call void @llvm.dbg.value(metadata i64 3072, metadata !1205, metadata !DIExpression()), !dbg !1310
  store i64 3072, ptr %8, align 8, !dbg !1311, !tbaa !1312
  call void @llvm.dbg.value(metadata ptr %8, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %7, metadata !1321, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata ptr undef, metadata !1328, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata ptr %8, metadata !1329, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata ptr %7, metadata !1337, metadata !DIExpression()), !dbg !1342
  %70 = load i32, ptr %7, align 4, !dbg !1345, !tbaa !1226
  %71 = icmp eq i32 %70, 0, !dbg !1346
  br i1 %71, label %92, label %72, !dbg !1347

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !1348
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1330, metadata !DIExpression()), !dbg !1349
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1349
  call void @llvm.dbg.value(metadata ptr %7, metadata !1337, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %70, metadata !1331, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1335
  call void @llvm.dbg.value(metadata i32 %70, metadata !1250, metadata !DIExpression()), !dbg !1352
  %73 = srem i32 %70, 4, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %73, metadata !1255, metadata !DIExpression()), !dbg !1352
  %74 = icmp eq i32 %73, 0, !dbg !1355
  %75 = sub nsw i32 4, %73, !dbg !1355
  %76 = select i1 %74, i32 0, i32 %75, !dbg !1355
  %77 = zext i32 %76 to i64
  call void @llvm.dbg.value(metadata i64 %77, metadata !1332, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !1356
  call void @llvm.dbg.value(metadata i64 3072, metadata !1333, metadata !DIExpression()), !dbg !1335
  store i64 3072, ptr %6, align 8, !dbg !1357, !tbaa !1312
  %78 = icmp eq i32 %76, 0, !dbg !1358
  br i1 %78, label %87, label %79, !dbg !1360

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr %7, metadata !1361, metadata !DIExpression()), !dbg !1366
  %80 = add nsw i32 %70, -1, !dbg !1368
  %81 = sext i32 %80 to i64, !dbg !1369
  %82 = getelementptr inbounds %struct.base64_decode_context, ptr %7, i64 0, i32 1, i64 %81, !dbg !1369
  %83 = load i8, ptr %82, align 1, !dbg !1369, !tbaa !943
  %84 = icmp eq i8 %83, 61, !dbg !1370
  br i1 %84, label %87, label %85, !dbg !1371

85:                                               ; preds = %79
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %86 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %77, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1372
  call void @llvm.dbg.value(metadata i1 %86, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  br label %89, !dbg !1374

87:                                               ; preds = %79, %72
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %88 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1375
  call void @llvm.dbg.value(metadata i1 %88, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i1 [ %88, %87 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata i1 %90, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  %91 = load i64, ptr %6, align 8, !dbg !1377, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %91, metadata !1333, metadata !DIExpression()), !dbg !1335
  store i64 %91, ptr %8, align 8, !dbg !1378, !tbaa !1312
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !1379
  br label %93

92:                                               ; preds = %69
  store i64 0, ptr %8, align 8, !dbg !1380, !tbaa !1312
  br label %93, !dbg !1382

93:                                               ; preds = %92, %89, %62
  %94 = phi i64 [ %64, %62 ], [ 0, %92 ], [ %91, %89 ], !dbg !1315
  %95 = phi i1 [ %63, %62 ], [ true, %92 ], [ %90, %89 ]
  call void @llvm.dbg.value(metadata i1 %95, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %94, metadata !1205, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %94, metadata !1205, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %10, metadata !1189, metadata !DIExpression()), !dbg !1212
  %96 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %94, ptr noundef %2), !dbg !1315
  %97 = load i64, ptr %8, align 8, !dbg !1383, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %97, metadata !1205, metadata !DIExpression()), !dbg !1310
  %98 = icmp ult i64 %96, %97, !dbg !1384
  br i1 %98, label %135, label %99, !dbg !1385

99:                                               ; preds = %93
  br i1 %95, label %100, label %145, !dbg !1386

100:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !1387
  br i1 %61, label %148, label %101

101:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1317
  %102 = load i32, ptr %0, align 8, !dbg !1319, !tbaa !1291
  %103 = and i32 %102, 16, !dbg !1308
  %104 = icmp eq i32 %103, 0, !dbg !1308
  br i1 %104, label %151, label %105, !dbg !1320

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !1309
  call void @llvm.dbg.value(metadata i64 3072, metadata !1205, metadata !DIExpression()), !dbg !1310
  store i64 3072, ptr %8, align 8, !dbg !1311, !tbaa !1312
  call void @llvm.dbg.value(metadata ptr %8, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %7, metadata !1321, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata ptr undef, metadata !1328, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata ptr %8, metadata !1329, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata ptr %7, metadata !1337, metadata !DIExpression()), !dbg !1342
  %106 = load i32, ptr %7, align 4, !dbg !1345, !tbaa !1226
  %107 = icmp eq i32 %106, 0, !dbg !1346
  br i1 %107, label %108, label %109, !dbg !1347

108:                                              ; preds = %105
  store i64 0, ptr %8, align 8, !dbg !1380, !tbaa !1312
  br label %129, !dbg !1382

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !1348
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1330, metadata !DIExpression()), !dbg !1349
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1349
  call void @llvm.dbg.value(metadata ptr %7, metadata !1337, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %106, metadata !1331, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1335
  call void @llvm.dbg.value(metadata i32 %106, metadata !1250, metadata !DIExpression()), !dbg !1352
  %110 = srem i32 %106, 4, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %110, metadata !1255, metadata !DIExpression()), !dbg !1352
  %111 = icmp eq i32 %110, 0, !dbg !1355
  %112 = sub nsw i32 4, %110, !dbg !1355
  %113 = select i1 %111, i32 0, i32 %112, !dbg !1355
  %114 = zext i32 %113 to i64
  call void @llvm.dbg.value(metadata i64 %114, metadata !1332, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !1356
  call void @llvm.dbg.value(metadata i64 3072, metadata !1333, metadata !DIExpression()), !dbg !1335
  store i64 3072, ptr %6, align 8, !dbg !1357, !tbaa !1312
  %115 = icmp eq i32 %113, 0, !dbg !1358
  br i1 %115, label %124, label %116, !dbg !1360

116:                                              ; preds = %109
  call void @llvm.dbg.value(metadata ptr %7, metadata !1361, metadata !DIExpression()), !dbg !1366
  %117 = add nsw i32 %106, -1, !dbg !1368
  %118 = sext i32 %117 to i64, !dbg !1369
  %119 = getelementptr inbounds %struct.base64_decode_context, ptr %7, i64 0, i32 1, i64 %118, !dbg !1369
  %120 = load i8, ptr %119, align 1, !dbg !1369, !tbaa !943
  %121 = icmp eq i8 %120, 61, !dbg !1370
  br i1 %121, label %124, label %122, !dbg !1371

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %123 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %114, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1372
  call void @llvm.dbg.value(metadata i1 %123, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  br label %126, !dbg !1374

124:                                              ; preds = %116, %109
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %125 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1375
  call void @llvm.dbg.value(metadata i1 %125, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i1 [ %125, %124 ], [ %123, %122 ]
  call void @llvm.dbg.value(metadata i1 %127, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  %128 = load i64, ptr %6, align 8, !dbg !1377, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %128, metadata !1333, metadata !DIExpression()), !dbg !1335
  store i64 %128, ptr %8, align 8, !dbg !1378, !tbaa !1312
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !1379
  br label %129

129:                                              ; preds = %126, %108
  %130 = phi i64 [ 0, %108 ], [ %128, %126 ], !dbg !1315
  %131 = phi i1 [ true, %108 ], [ %127, %126 ]
  call void @llvm.dbg.value(metadata i1 %131, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %130, metadata !1205, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %130, metadata !1205, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %10, metadata !1189, metadata !DIExpression()), !dbg !1212
  %132 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %130, ptr noundef %2), !dbg !1315
  %133 = load i64, ptr %8, align 8, !dbg !1383, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %133, metadata !1205, metadata !DIExpression()), !dbg !1310
  %134 = icmp ult i64 %132, %133, !dbg !1384
  br i1 %134, label %135, label %144, !dbg !1385

135:                                              ; preds = %93, %129
  %136 = tail call ptr @__errno_location() #45, !dbg !1388
  %137 = load i32, ptr %136, align 4, !dbg !1388, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %137, metadata !1391, metadata !DIExpression()), !dbg !1393
  %138 = load ptr, ptr @stdout, align 8, !dbg !1394, !tbaa !864
  %139 = call i32 @fflush_unlocked(ptr noundef %138) #42, !dbg !1394
  %140 = load ptr, ptr @stdout, align 8, !dbg !1395, !tbaa !864
  %141 = call i32 @fpurge(ptr noundef %140) #42, !dbg !1396
  %142 = load ptr, ptr @stdout, align 8, !dbg !1397, !tbaa !864
  call void @clearerr_unlocked(ptr noundef %142) #42, !dbg !1397
  %143 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1398
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %137, ptr noundef %143) #42, !dbg !1398
  unreachable, !dbg !1398

144:                                              ; preds = %129
  br i1 %131, label %147, label %145, !dbg !1386

145:                                              ; preds = %99, %144
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #42, !dbg !1399
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %146) #42, !dbg !1399
  unreachable, !dbg !1399

147:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !1387
  br label %148, !dbg !1401

148:                                              ; preds = %147, %100
  %149 = load i32, ptr %0, align 8, !dbg !1401, !tbaa !1291
  %150 = and i32 %149, 16, !dbg !1403
  br label %151

151:                                              ; preds = %65, %101, %148
  %152 = phi i32 [ %150, %148 ], [ 0, %101 ], [ 0, %65 ], !dbg !1403
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1404
  %153 = icmp eq i32 %152, 0, !dbg !1403
  br i1 %153, label %58, label %154, !dbg !1405

154:                                              ; preds = %151
  call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #46, !dbg !1406
  unreachable, !dbg !1406
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1407 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1411, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %1, metadata !1412, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %2, metadata !1413, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %3, metadata !1414, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i64 0, metadata !1415, metadata !DIExpression()), !dbg !1421
  %5 = tail call noalias nonnull dereferenceable(30720) ptr @xmalloc(i64 noundef 30720) #47, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !1421
  %6 = tail call noalias nonnull dereferenceable(40960) ptr @xmalloc(i64 noundef 40960) #47, !dbg !1423
  call void @llvm.dbg.value(metadata ptr %6, metadata !1417, metadata !DIExpression()), !dbg !1421
  %7 = icmp eq i64 %3, 0
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  br label %10, !dbg !1424

10:                                               ; preds = %96, %4
  %11 = phi i64 [ 0, %4 ], [ %92, %96 ], !dbg !1425
  call void @llvm.dbg.value(metadata i64 0, metadata !1418, metadata !DIExpression()), !dbg !1421
  br label %12, !dbg !1426

12:                                               ; preds = %21, %10
  %13 = phi i64 [ 0, %10 ], [ %17, %21 ], !dbg !1427
  call void @llvm.dbg.value(metadata i64 %13, metadata !1418, metadata !DIExpression()), !dbg !1421
  %14 = getelementptr inbounds i8, ptr %5, i64 %13, !dbg !1428
  %15 = sub nsw i64 30720, %13, !dbg !1428
  %16 = tail call i64 @fread_unlocked(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %15, ptr noundef %0), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %16, metadata !1419, metadata !DIExpression()), !dbg !1427
  %17 = add nsw i64 %16, %13, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %17, metadata !1418, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1431
  %18 = load i32, ptr %0, align 8, !dbg !1433, !tbaa !1291
  %19 = and i32 %18, 16, !dbg !1434
  %20 = icmp eq i32 %19, 0, !dbg !1434
  br i1 %20, label %21, label %26, !dbg !1435

21:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %0, metadata !1281, metadata !DIExpression()), !dbg !1436
  %22 = and i32 %18, 32, !dbg !1438
  %23 = icmp eq i32 %22, 0, !dbg !1438
  %24 = icmp slt i64 %17, 30720
  %25 = select i1 %23, i1 %24, i1 false, !dbg !1439
  br i1 %25, label %12, label %26, !dbg !1439, !llvm.loop !1440

26:                                               ; preds = %21, %12
  %27 = icmp sgt i64 %17, 0, !dbg !1442
  br i1 %27, label %28, label %91, !dbg !1444

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %17, 2, !dbg !1445
  %30 = udiv i64 %29, 3, !dbg !1445
  %31 = shl nuw nsw i64 %30, 2, !dbg !1445
  tail call void @base64_encode(ptr noundef nonnull %5, i64 noundef %17, ptr noundef nonnull %6, i64 noundef %31) #42, !dbg !1448
  call void @llvm.dbg.value(metadata ptr %6, metadata !1449, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %31, metadata !1454, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %3, metadata !1455, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr undef, metadata !1456, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %2, metadata !1457, metadata !DIExpression()), !dbg !1477
  br i1 %7, label %32, label %45, !dbg !1479

32:                                               ; preds = %28
  %33 = load ptr, ptr @stdout, align 8, !dbg !1480, !tbaa !864
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1480
  %35 = icmp ult i64 %34, %31, !dbg !1481
  br i1 %35, label %36, label %91, !dbg !1482

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #45, !dbg !1483
  %38 = load i32, ptr %37, align 4, !dbg !1483, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %38, metadata !1391, metadata !DIExpression()), !dbg !1485
  %39 = load ptr, ptr @stdout, align 8, !dbg !1486, !tbaa !864
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #42, !dbg !1486
  %41 = load ptr, ptr @stdout, align 8, !dbg !1487, !tbaa !864
  %42 = tail call i32 @fpurge(ptr noundef %41) #42, !dbg !1488
  %43 = load ptr, ptr @stdout, align 8, !dbg !1489, !tbaa !864
  tail call void @clearerr_unlocked(ptr noundef %43) #42, !dbg !1489
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1490
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %44) #42, !dbg !1490
  unreachable, !dbg !1490

45:                                               ; preds = %28, %87
  %46 = phi i64 [ %88, %87 ], [ %11, %28 ], !dbg !1421
  %47 = phi i64 [ %89, %87 ], [ 0, %28 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1465, metadata !DIExpression()), !dbg !1491
  %48 = sub nsw i64 %3, %46, !dbg !1492
  %49 = sub nsw i64 %31, %47, !dbg !1492
  %50 = tail call i64 @llvm.smin.i64(i64 %48, i64 %49), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %50, metadata !1467, metadata !DIExpression()), !dbg !1493
  %51 = icmp eq i64 %50, 0, !dbg !1494
  br i1 %51, label %52, label %70, !dbg !1495

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 10, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %2, metadata !1501, metadata !DIExpression()), !dbg !1502
  %53 = load ptr, ptr %8, align 8, !dbg !1506, !tbaa !1507
  %54 = load ptr, ptr %9, align 8, !dbg !1506, !tbaa !1508
  %55 = icmp ult ptr %53, %54, !dbg !1506
  br i1 %55, label %56, label %58, !dbg !1506, !prof !1509

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1506
  store ptr %57, ptr %8, align 8, !dbg !1506, !tbaa !1507
  store i8 10, ptr %53, align 1, !dbg !1506, !tbaa !943
  br label %87, !dbg !1510

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1506
  %60 = icmp eq i32 %59, -1, !dbg !1511
  br i1 %60, label %61, label %87, !dbg !1510

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #45, !dbg !1512
  %63 = load i32, ptr %62, align 4, !dbg !1512, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %63, metadata !1391, metadata !DIExpression()), !dbg !1514
  %64 = load ptr, ptr @stdout, align 8, !dbg !1515, !tbaa !864
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #42, !dbg !1515
  %66 = load ptr, ptr @stdout, align 8, !dbg !1516, !tbaa !864
  %67 = tail call i32 @fpurge(ptr noundef %66) #42, !dbg !1517
  %68 = load ptr, ptr @stdout, align 8, !dbg !1518, !tbaa !864
  tail call void @clearerr_unlocked(ptr noundef %68) #42, !dbg !1518
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1519
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #42, !dbg !1519
  unreachable, !dbg !1519

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1520, !tbaa !864
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1520
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1520
  %74 = icmp ult i64 %73, %50, !dbg !1521
  br i1 %74, label %75, label %84, !dbg !1522

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #45, !dbg !1523
  %77 = load i32, ptr %76, align 4, !dbg !1523, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %77, metadata !1391, metadata !DIExpression()), !dbg !1525
  %78 = load ptr, ptr @stdout, align 8, !dbg !1526, !tbaa !864
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #42, !dbg !1526
  %80 = load ptr, ptr @stdout, align 8, !dbg !1527, !tbaa !864
  %81 = tail call i32 @fpurge(ptr noundef %80) #42, !dbg !1528
  %82 = load ptr, ptr @stdout, align 8, !dbg !1529, !tbaa !864
  tail call void @clearerr_unlocked(ptr noundef %82) #42, !dbg !1529
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1530
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #42, !dbg !1530
  unreachable, !dbg !1530

84:                                               ; preds = %70
  %85 = add nsw i64 %50, %46, !dbg !1531
  %86 = add nsw i64 %50, %47, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %86, metadata !1465, metadata !DIExpression()), !dbg !1491
  br label %87

87:                                               ; preds = %56, %58, %84
  %88 = phi i64 [ %85, %84 ], [ 0, %58 ], [ 0, %56 ], !dbg !1533
  %89 = phi i64 [ %86, %84 ], [ %47, %58 ], [ %47, %56 ], !dbg !1491
  call void @llvm.dbg.value(metadata i64 %89, metadata !1465, metadata !DIExpression()), !dbg !1491
  %90 = icmp slt i64 %89, %31, !dbg !1534
  br i1 %90, label %45, label %91, !dbg !1535, !llvm.loop !1536

91:                                               ; preds = %87, %32, %26
  %92 = phi i64 [ %11, %26 ], [ %11, %32 ], [ %88, %87 ], !dbg !1425
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1538
  %93 = load i32, ptr %0, align 8, !dbg !1540, !tbaa !1291
  %94 = and i32 %93, 16, !dbg !1541
  %95 = icmp eq i32 %94, 0, !dbg !1541
  br i1 %95, label %96, label %101, !dbg !1542

96:                                               ; preds = %91
  call void @llvm.dbg.value(metadata ptr %0, metadata !1281, metadata !DIExpression()), !dbg !1543
  %97 = and i32 %93, 32, !dbg !1545
  %98 = icmp eq i32 %97, 0, !dbg !1545
  %99 = icmp eq i64 %17, 30720
  %100 = select i1 %98, i1 %99, i1 false, !dbg !1546
  br i1 %100, label %10, label %101, !dbg !1546, !llvm.loop !1547

101:                                              ; preds = %96, %91
  %102 = icmp ne i64 %3, 0, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %92, metadata !1415, metadata !DIExpression()), !dbg !1421
  %103 = icmp sgt i64 %92, 0
  %104 = select i1 %102, i1 %103, i1 false, !dbg !1551
  br i1 %104, label %105, label %123, !dbg !1551

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 10, metadata !1496, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %2, metadata !1501, metadata !DIExpression()), !dbg !1552
  %106 = load ptr, ptr %8, align 8, !dbg !1554, !tbaa !1507
  %107 = load ptr, ptr %9, align 8, !dbg !1554, !tbaa !1508
  %108 = icmp ult ptr %106, %107, !dbg !1554
  br i1 %108, label %109, label %111, !dbg !1554, !prof !1509

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !1554
  store ptr %110, ptr %8, align 8, !dbg !1554, !tbaa !1507
  store i8 10, ptr %106, align 1, !dbg !1554, !tbaa !943
  br label %123, !dbg !1555

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1554
  %113 = icmp eq i32 %112, -1, !dbg !1556
  br i1 %113, label %114, label %123, !dbg !1555

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #45, !dbg !1557
  %116 = load i32, ptr %115, align 4, !dbg !1557, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %116, metadata !1391, metadata !DIExpression()), !dbg !1559
  %117 = load ptr, ptr @stdout, align 8, !dbg !1560, !tbaa !864
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #42, !dbg !1560
  %119 = load ptr, ptr @stdout, align 8, !dbg !1561, !tbaa !864
  %120 = tail call i32 @fpurge(ptr noundef %119) #42, !dbg !1562
  %121 = load ptr, ptr @stdout, align 8, !dbg !1563, !tbaa !864
  tail call void @clearerr_unlocked(ptr noundef %121) #42, !dbg !1563
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1564
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #42, !dbg !1564
  unreachable, !dbg !1564

123:                                              ; preds = %109, %111, %101
  call void @llvm.dbg.value(metadata ptr %0, metadata !1281, metadata !DIExpression()), !dbg !1565
  %124 = load i32, ptr %0, align 8, !dbg !1568, !tbaa !1291
  %125 = and i32 %124, 32, !dbg !1569
  %126 = icmp eq i32 %125, 0, !dbg !1569
  br i1 %126, label %131, label %127, !dbg !1570

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #45, !dbg !1571
  %129 = load i32, ptr %128, align 4, !dbg !1571, !tbaa !934
  %130 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #42, !dbg !1571
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %130) #42, !dbg !1571
  unreachable, !dbg !1571

131:                                              ; preds = %123
  tail call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #46, !dbg !1572
  unreachable, !dbg !1572
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1573 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1574 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1577 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !dbg !1580 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1584, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata ptr %1, metadata !1585, metadata !DIExpression()), !dbg !1586
  %3 = tail call i32 @rpl_fclose(ptr noundef %0) #42, !dbg !1587
  %4 = icmp eq i32 %3, 0, !dbg !1589
  br i1 %4, label %14, label %5, !dbg !1590

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %1, metadata !945, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !951, metadata !DIExpression()), !dbg !1591
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1595
  %7 = icmp eq i32 %6, 0, !dbg !1596
  %8 = tail call ptr @__errno_location() #45, !dbg !1597
  %9 = load i32, ptr %8, align 4, !dbg !1597, !tbaa !934
  br i1 %7, label %10, label %12, !dbg !1598

10:                                               ; preds = %5
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #42, !dbg !1599
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %11) #42, !dbg !1599
  unreachable, !dbg !1599

12:                                               ; preds = %5
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #42, !dbg !1600
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef nonnull @.str.21, ptr noundef %13) #42, !dbg !1600
  unreachable, !dbg !1600

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #44, !dbg !1601
  unreachable, !dbg !1601
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @isubase64(i8 noundef %0) local_unnamed_addr #12 !dbg !1602 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1604, metadata !DIExpression()), !dbg !1605
  %2 = zext i8 %0 to i64, !dbg !1606
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1607
  %4 = load i8, ptr %3, align 1, !dbg !1607, !tbaa !943
  %5 = icmp sgt i8 %4, -1, !dbg !1608
  ret i1 %5, !dbg !1609
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @isbase64(i8 noundef %0) local_unnamed_addr #12 !dbg !1610 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1614, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 %0, metadata !1604, metadata !DIExpression()), !dbg !1616
  %2 = zext i8 %0 to i64, !dbg !1618
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1619
  %4 = load i8, ptr %3, align 1, !dbg !1619, !tbaa !943
  %5 = icmp sgt i8 %4, -1, !dbg !1620
  ret i1 %5, !dbg !1621
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @base64_decode_ctx_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1622 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1631, metadata !DIExpression()), !dbg !1632
  store i32 0, ptr %0, align 4, !dbg !1633, !tbaa !1226
  ret void, !dbg !1634
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @base64_encode(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !1635 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1639, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 %1, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 %3, metadata !1642, metadata !DIExpression()), !dbg !1643
  %5 = and i64 %3, 3, !dbg !1644
  %6 = icmp eq i64 %5, 0, !dbg !1644
  br i1 %6, label %7, label %53, !dbg !1646

7:                                                ; preds = %4
  %8 = ashr i64 %3, 2, !dbg !1647
  %9 = mul nsw i64 %8, 3, !dbg !1648
  %10 = icmp eq i64 %9, %1, !dbg !1649
  br i1 %10, label %11, label %53, !dbg !1650

11:                                               ; preds = %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651), !dbg !1654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %0, metadata !1658, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %1, metadata !1663, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata ptr %2, metadata !1664, metadata !DIExpression()), !dbg !1665
  %12 = icmp eq i64 %1, 0, !dbg !1667
  br i1 %12, label %137, label %13, !dbg !1667

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %49, %13 ], [ %2, %11 ]
  %15 = phi i64 [ %50, %13 ], [ %1, %11 ]
  %16 = phi ptr [ %51, %13 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata ptr %14, metadata !1664, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %15, metadata !1663, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata ptr %16, metadata !1658, metadata !DIExpression()), !dbg !1665
  %17 = load i8, ptr %16, align 1, !dbg !1668, !tbaa !943, !alias.scope !1651, !noalias !1656
  %18 = lshr i8 %17, 2
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %19, !dbg !1670
  %21 = load i8, ptr %20, align 1, !dbg !1670, !tbaa !943, !noalias !1671
  %22 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %22, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %21, ptr %14, align 1, !dbg !1673, !tbaa !943, !alias.scope !1656, !noalias !1651
  %23 = zext i8 %17 to i64, !dbg !1674
  %24 = shl nuw nsw i64 %23, 4, !dbg !1675
  %25 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1676
  %26 = load i8, ptr %25, align 1, !dbg !1676, !tbaa !943, !alias.scope !1651, !noalias !1656
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i64
  %29 = and i64 %24, 48, !dbg !1677
  %30 = or i64 %29, %28, !dbg !1677
  %31 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %30, !dbg !1678
  %32 = load i8, ptr %31, align 1, !dbg !1678, !tbaa !943, !noalias !1671
  %33 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %33, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %32, ptr %22, align 1, !dbg !1680, !tbaa !943, !alias.scope !1656, !noalias !1651
  %34 = zext i8 %26 to i64, !dbg !1681
  %35 = shl nuw nsw i64 %34, 2, !dbg !1682
  %36 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1683
  %37 = load i8, ptr %36, align 1, !dbg !1683, !tbaa !943, !alias.scope !1651, !noalias !1656
  %38 = lshr i8 %37, 6
  %39 = zext i8 %38 to i64
  %40 = and i64 %35, 60, !dbg !1684
  %41 = or i64 %40, %39, !dbg !1684
  %42 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %41, !dbg !1685
  %43 = load i8, ptr %42, align 1, !dbg !1685, !tbaa !943, !noalias !1671
  %44 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %44, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %43, ptr %33, align 1, !dbg !1687, !tbaa !943, !alias.scope !1656, !noalias !1651
  %45 = and i8 %37, 63, !dbg !1688
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %46, !dbg !1689
  %48 = load i8, ptr %47, align 1, !dbg !1689, !tbaa !943, !noalias !1671
  %49 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %49, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %48, ptr %44, align 1, !dbg !1691, !tbaa !943, !alias.scope !1656, !noalias !1651
  %50 = add nsw i64 %15, -3, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %50, metadata !1663, metadata !DIExpression()), !dbg !1665
  %51 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %51, metadata !1658, metadata !DIExpression()), !dbg !1665
  %52 = icmp eq i64 %50, 0, !dbg !1667
  br i1 %52, label %137, label %13, !dbg !1667, !llvm.loop !1694

53:                                               ; preds = %7, %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 %1, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %0, metadata !1639, metadata !DIExpression()), !dbg !1643
  %54 = icmp ne i64 %1, 0, !dbg !1696
  %55 = icmp ne i64 %3, 0, !dbg !1697
  %56 = and i1 %54, %55, !dbg !1697
  br i1 %56, label %57, label %133, !dbg !1698

57:                                               ; preds = %53, %126
  %58 = phi i64 [ %124, %126 ], [ %3, %53 ]
  %59 = phi ptr [ %127, %126 ], [ %2, %53 ]
  %60 = phi i64 [ %129, %126 ], [ %1, %53 ]
  %61 = phi ptr [ %132, %126 ], [ %0, %53 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 %60, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %61, metadata !1639, metadata !DIExpression()), !dbg !1643
  %62 = load i8, ptr %61, align 1, !dbg !1699, !tbaa !943
  %63 = lshr i8 %62, 2
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %64, !dbg !1701
  %66 = load i8, ptr %65, align 1, !dbg !1701, !tbaa !943
  %67 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %67, metadata !1641, metadata !DIExpression()), !dbg !1643
  store i8 %66, ptr %59, align 1, !dbg !1703, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %68 = icmp eq i64 %58, 1, !dbg !1704
  br i1 %68, label %137, label %69, !dbg !1706

69:                                               ; preds = %57
  %70 = zext i8 %62 to i64, !dbg !1707
  %71 = shl nuw nsw i64 %70, 4, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %60, metadata !1640, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %72 = icmp eq i64 %60, 1, !dbg !1709
  br i1 %72, label %73, label %78, !dbg !1709

73:                                               ; preds = %69
  %74 = and i64 %71, 48, !dbg !1710
  %75 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %74, !dbg !1711
  %76 = load i8, ptr %75, align 1, !dbg !1711, !tbaa !943
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1643
  store i8 %76, ptr %67, align 1, !dbg !1712, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %77 = icmp eq i64 %58, 2, !dbg !1713
  br i1 %77, label %137, label %109, !dbg !1715

78:                                               ; preds = %69
  %79 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1716
  %80 = load i8, ptr %79, align 1, !dbg !1716, !tbaa !943
  %81 = lshr i8 %80, 4
  %82 = zext i8 %81 to i64
  %83 = and i64 %71, 48, !dbg !1710
  %84 = or i64 %83, %82, !dbg !1710
  %85 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %84, !dbg !1711
  %86 = load i8, ptr %85, align 1, !dbg !1711, !tbaa !943
  %87 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %87, metadata !1641, metadata !DIExpression()), !dbg !1643
  store i8 %86, ptr %67, align 1, !dbg !1712, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %88 = icmp eq i64 %58, 2, !dbg !1713
  br i1 %88, label %137, label %89, !dbg !1715

89:                                               ; preds = %78
  %90 = zext i8 %80 to i64, !dbg !1718
  %91 = shl nuw nsw i64 %90, 2, !dbg !1719
  %92 = add nsw i64 %60, -2, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %92, metadata !1640, metadata !DIExpression()), !dbg !1643
  %93 = icmp eq i64 %92, 0, !dbg !1720
  br i1 %93, label %94, label %99, !dbg !1720

94:                                               ; preds = %89
  %95 = and i64 %91, 60, !dbg !1721
  %96 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %95, !dbg !1722
  %97 = load i8, ptr %96, align 1, !dbg !1722, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %92, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1643
  store i8 %97, ptr %87, align 1, !dbg !1723, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %98 = icmp eq i64 %58, 3, !dbg !1724
  br i1 %98, label %137, label %119, !dbg !1726

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1727
  %101 = load i8, ptr %100, align 1, !dbg !1727, !tbaa !943
  %102 = lshr i8 %101, 6
  %103 = zext i8 %102 to i64
  %104 = and i64 %91, 60, !dbg !1721
  %105 = or i64 %104, %103, !dbg !1721
  %106 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %105, !dbg !1722
  %107 = load i8, ptr %106, align 1, !dbg !1722, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %92, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1643
  store i8 %107, ptr %87, align 1, !dbg !1723, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %108 = icmp eq i64 %58, 3, !dbg !1724
  br i1 %108, label %137, label %112, !dbg !1726

109:                                              ; preds = %73
  %110 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1643
  store i8 61, ptr %110, align 1, !dbg !1723, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %111 = icmp eq i64 %58, 3, !dbg !1724
  br i1 %111, label %137, label %119, !dbg !1726

112:                                              ; preds = %99
  %113 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1728
  %114 = load i8, ptr %113, align 1, !dbg !1728, !tbaa !943
  %115 = and i8 %114, 63, !dbg !1729
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %116, !dbg !1730
  %118 = load i8, ptr %117, align 1, !dbg !1730, !tbaa !943
  br label %119, !dbg !1731

119:                                              ; preds = %94, %109, %112
  %120 = phi i1 [ false, %112 ], [ true, %109 ], [ true, %94 ]
  %121 = phi i64 [ %92, %112 ], [ 0, %109 ], [ 0, %94 ]
  %122 = phi i8 [ %118, %112 ], [ 61, %109 ], [ 61, %94 ]
  %123 = getelementptr inbounds i8, ptr %59, i64 3, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1643
  store i8 %122, ptr %123, align 1, !dbg !1733, !tbaa !943
  %124 = add nsw i64 %58, -4, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %124, metadata !1642, metadata !DIExpression()), !dbg !1643
  %125 = icmp eq i64 %124, 0, !dbg !1734
  br i1 %125, label %137, label %126, !dbg !1736

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, ptr %59, i64 4, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %127, metadata !1641, metadata !DIExpression()), !dbg !1643
  %128 = add nsw i64 %121, -1
  %129 = select i1 %120, i64 0, i64 %128, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %129, metadata !1640, metadata !DIExpression()), !dbg !1643
  %130 = icmp eq i64 %129, 0, !dbg !1739
  %131 = select i1 %130, i64 0, i64 3, !dbg !1741
  %132 = getelementptr i8, ptr %61, i64 %131, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %124, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %132, metadata !1639, metadata !DIExpression()), !dbg !1643
  br i1 %130, label %135, label %57, !dbg !1698, !llvm.loop !1742

133:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %3, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !1643
  %134 = icmp eq i64 %3, 0, !dbg !1744
  br i1 %134, label %137, label %135, !dbg !1746

135:                                              ; preds = %126, %133
  %136 = phi ptr [ %2, %133 ], [ %127, %126 ]
  store i8 0, ptr %136, align 1, !dbg !1747, !tbaa !943
  br label %137, !dbg !1748

137:                                              ; preds = %109, %78, %57, %73, %94, %119, %99, %13, %11, %135, %133
  ret void, !dbg !1749
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base64_encode_alloc(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !dbg !1750 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1754, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %1, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata ptr %2, metadata !1756, metadata !DIExpression()), !dbg !1759
  %4 = sdiv i64 %1, 3, !dbg !1760
  %5 = mul i64 %4, 3
  %6 = sub i64 %1, %5
  %7 = icmp ne i64 %6, 0, !dbg !1761
  %8 = zext i1 %7 to i64
  %9 = add nsw i64 %4, %8, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %9, metadata !1757, metadata !DIExpression()), !dbg !1759
  %10 = icmp slt i64 %9, 0, !dbg !1763
  br i1 %10, label %11, label %13, !dbg !1763

11:                                               ; preds = %3
  %12 = icmp ult i64 %9, -2305843009213693952, !dbg !1763
  br i1 %12, label %18, label %15, !dbg !1763

13:                                               ; preds = %3
  %14 = icmp ugt i64 %9, 2305843009213693951, !dbg !1763
  br i1 %14, label %18, label %15, !dbg !1763

15:                                               ; preds = %13, %11
  call void @llvm.dbg.value(metadata i64 %9, metadata !1758, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !1759
  %16 = shl nsw i64 %9, 2, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %16, metadata !1758, metadata !DIExpression()), !dbg !1759
  %17 = icmp slt i64 %1, 0
  br i1 %17, label %18, label %19, !dbg !1765

18:                                               ; preds = %11, %13, %15
  store ptr null, ptr %2, align 8, !dbg !1766, !tbaa !864
  br label %24, !dbg !1768

19:                                               ; preds = %15
  %20 = or i64 %16, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %20, metadata !1758, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %20, metadata !1770, metadata !DIExpression()), !dbg !1776
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #47, !dbg !1778
  store ptr %21, ptr %2, align 8, !dbg !1779, !tbaa !864
  %22 = icmp eq ptr %21, null, !dbg !1780
  br i1 %22, label %24, label %23, !dbg !1782

23:                                               ; preds = %19
  tail call void @base64_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %21, i64 noundef %20), !dbg !1783
  br label %24, !dbg !1784

24:                                               ; preds = %19, %23, %18
  %25 = phi i64 [ 0, %18 ], [ %16, %23 ], [ %20, %19 ], !dbg !1759
  ret i64 %25, !dbg !1785
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1786 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @base64_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #16 !dbg !1789 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1793, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %1, metadata !1794, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %2, metadata !1795, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %3, metadata !1796, metadata !DIExpression()), !dbg !1809
  store ptr %3, ptr %6, align 8, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %4, metadata !1797, metadata !DIExpression()), !dbg !1809
  %8 = icmp eq ptr %0, null, !dbg !1810
  call void @llvm.dbg.value(metadata i1 %8, metadata !1798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1809
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i32 0, metadata !1800, metadata !DIExpression()), !dbg !1809
  br i1 %8, label %13, label %9, !dbg !1811

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1812, !tbaa !1226
  call void @llvm.dbg.value(metadata i32 %10, metadata !1800, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %2, metadata !1795, metadata !DIExpression()), !dbg !1809
  %11 = icmp eq i64 %2, 0, !dbg !1815
  call void @llvm.dbg.value(metadata i1 %11, metadata !1799, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1809
  %12 = icmp ne i32 %10, 0
  br label %13, !dbg !1816

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ]
  %15 = phi i1 [ %11, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1799, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i32 poison, metadata !1800, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #42, !dbg !1817
  %16 = load i64, ptr %4, align 8, !dbg !1818, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %16, metadata !1801, metadata !DIExpression()), !dbg !1809
  store i64 %16, ptr %7, align 8, !dbg !1819, !tbaa !1312
  %17 = or i1 %14, %15
  %18 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1
  br label %19, !dbg !1820

19:                                               ; preds = %107, %13
  %20 = phi i64 [ %16, %13 ], [ %110, %107 ], !dbg !1821
  %21 = phi ptr [ %1, %13 ], [ %108, %107 ]
  %22 = phi i64 [ %2, %13 ], [ %109, %107 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !1801, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %20, metadata !1802, metadata !DIExpression()), !dbg !1822
  br i1 %17, label %32, label %23, !dbg !1823

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %20, metadata !1801, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %20, metadata !1802, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %21, metadata !1794, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %22, metadata !1795, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %6, metadata !1796, metadata !DIExpression(DW_OP_deref)), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %7, metadata !1801, metadata !DIExpression(DW_OP_deref)), !dbg !1809
  %24 = call fastcc i1 @decode_4(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1825
  br i1 %24, label %25, label %32, !dbg !1829

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %21, %23 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !1795, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %27, metadata !1794, metadata !DIExpression()), !dbg !1809
  %28 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !1830
  call void @llvm.dbg.value(metadata ptr %28, metadata !1794, metadata !DIExpression()), !dbg !1809
  %29 = add nsw i64 %26, -4, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %29, metadata !1795, metadata !DIExpression()), !dbg !1809
  %30 = load i64, ptr %7, align 8, !dbg !1832, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %30, metadata !1802, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %6, metadata !1796, metadata !DIExpression(DW_OP_deref)), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %7, metadata !1801, metadata !DIExpression(DW_OP_deref)), !dbg !1809
  %31 = call fastcc i1 @decode_4(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1825
  br i1 %31, label %25, label %32, !dbg !1829, !llvm.loop !1833

32:                                               ; preds = %25, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %28, %25 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %29, %25 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %30, %25 ], !dbg !1822
  call void @llvm.dbg.value(metadata i64 %35, metadata !1802, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %34, metadata !1795, metadata !DIExpression()), !dbg !1809
  %36 = icmp ne i64 %34, 0, !dbg !1836
  %37 = or i1 %15, %36, !dbg !1838
  br i1 %37, label %38, label %111, !dbg !1838

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 %34, metadata !1795, metadata !DIExpression()), !dbg !1809
  br i1 %36, label %39, label %46, !dbg !1839

39:                                               ; preds = %38
  call void @llvm.dbg.value(metadata ptr %33, metadata !1794, metadata !DIExpression()), !dbg !1809
  %40 = load i8, ptr %33, align 1, !dbg !1840, !tbaa !943
  %41 = icmp ne i8 %40, 10, !dbg !1841
  %42 = or i1 %8, %41, !dbg !1842
  br i1 %42, label %46, label %43, !dbg !1842

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %44, metadata !1794, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %34, metadata !1795, metadata !DIExpression()), !dbg !1809
  %45 = add nsw i64 %34, -1, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %45, metadata !1795, metadata !DIExpression()), !dbg !1809
  br label %107, !dbg !1846

46:                                               ; preds = %39, %38
  %47 = load i64, ptr %7, align 8, !dbg !1847, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %47, metadata !1801, metadata !DIExpression()), !dbg !1809
  %48 = sub i64 %47, %35, !dbg !1848
  %49 = load ptr, ptr %6, align 8, !dbg !1849, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %49, metadata !1796, metadata !DIExpression()), !dbg !1809
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %50, metadata !1796, metadata !DIExpression()), !dbg !1809
  store ptr %50, ptr %6, align 8, !dbg !1849, !tbaa !864
  call void @llvm.dbg.value(metadata i64 %35, metadata !1801, metadata !DIExpression()), !dbg !1809
  store i64 %35, ptr %7, align 8, !dbg !1850, !tbaa !1312
  call void @llvm.dbg.value(metadata ptr %33, metadata !1794, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %34, metadata !1795, metadata !DIExpression()), !dbg !1809
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1851
  call void @llvm.dbg.value(metadata ptr %51, metadata !1804, metadata !DIExpression()), !dbg !1852
  br i1 %8, label %89, label %52, !dbg !1853

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1854, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr undef, metadata !1860, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %51, metadata !1861, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr undef, metadata !1862, metadata !DIExpression()), !dbg !1870
  %53 = load i32, ptr %0, align 4, !dbg !1873, !tbaa !1226, !noalias !1875
  switch i32 %53, label %62 [
    i32 4, label %54
    i32 0, label %55
  ], !dbg !1878

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1879, !tbaa !1226, !noalias !1875
  br label %55, !dbg !1880

55:                                               ; preds = %54, %52
  call void @llvm.dbg.value(metadata ptr %33, metadata !1863, metadata !DIExpression()), !dbg !1881
  %56 = icmp sgt i64 %34, 3, !dbg !1882
  br i1 %56, label %57, label %62, !dbg !1884

57:                                               ; preds = %55
  %58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 10, i64 noundef 4) #43, !dbg !1885
  %59 = icmp eq ptr %58, null, !dbg !1886
  br i1 %59, label %60, label %65, !dbg !1887

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %33, i64 4, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %33, metadata !1808, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 4, metadata !1795, metadata !DIExpression()), !dbg !1809
  br label %98, !dbg !1890

62:                                               ; preds = %52, %55
  %63 = phi i32 [ 0, %55 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1866, metadata !DIExpression()), !dbg !1892
  %64 = icmp sgt i64 %34, 0, !dbg !1893
  br i1 %64, label %65, label %85, !dbg !1894

65:                                               ; preds = %57, %62
  %66 = phi i32 [ 0, %57 ], [ %63, %62 ]
  br label %67, !dbg !1895

67:                                               ; preds = %65, %75
  %68 = phi i32 [ %66, %65 ], [ %79, %75 ]
  %69 = phi ptr [ %33, %65 ], [ %72, %75 ]
  br label %70, !dbg !1895

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1866, metadata !DIExpression()), !dbg !1892
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1896
  call void @llvm.dbg.value(metadata ptr %72, metadata !1866, metadata !DIExpression()), !dbg !1892
  %73 = load i8, ptr %71, align 1, !dbg !1897, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %73, metadata !1868, metadata !DIExpression()), !dbg !1898
  %74 = icmp eq i8 %73, 10, !dbg !1899
  br i1 %74, label %83, label %75, !dbg !1895

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1, !dbg !1901
  store i32 %76, ptr %0, align 4, !dbg !1901, !tbaa !1226, !noalias !1875
  %77 = sext i32 %68 to i64, !dbg !1903
  %78 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1903
  store i8 %73, ptr %78, align 1, !dbg !1904, !tbaa !943, !noalias !1875
  %79 = load i32, ptr %0, align 4, !dbg !1905, !tbaa !1226, !noalias !1875
  %80 = icmp ne i32 %79, 4, !dbg !1907
  %81 = icmp ult ptr %72, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1908
  call void @llvm.dbg.value(metadata ptr %72, metadata !1866, metadata !DIExpression()), !dbg !1892
  br i1 %82, label %67, label %85, !dbg !1908

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1866, metadata !DIExpression()), !dbg !1892
  %84 = icmp ult ptr %72, %51, !dbg !1893
  br i1 %84, label %70, label %85, !dbg !1894

85:                                               ; preds = %83, %75, %62
  %86 = phi i32 [ %63, %62 ], [ %68, %83 ], [ %79, %75 ], !dbg !1909
  %87 = phi ptr [ %33, %62 ], [ %72, %75 ], [ %72, %83 ], !dbg !1892
  call void @llvm.dbg.value(metadata ptr %87, metadata !1866, metadata !DIExpression()), !dbg !1892
  %88 = sext i32 %86 to i64, !dbg !1910
  br label %89

89:                                               ; preds = %85, %46
  %90 = phi ptr [ %33, %46 ], [ %87, %85 ]
  %91 = phi i64 [ %34, %46 ], [ %88, %85 ]
  %92 = phi ptr [ %33, %46 ], [ %18, %85 ], !dbg !1911
  call void @llvm.dbg.value(metadata ptr %92, metadata !1808, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %91, metadata !1795, metadata !DIExpression()), !dbg !1809
  %93 = icmp eq i64 %91, 0, !dbg !1912
  br i1 %93, label %111, label %94, !dbg !1913

94:                                               ; preds = %89
  %95 = icmp sgt i64 %91, 3, !dbg !1914
  %96 = or i1 %15, %95, !dbg !1890
  %97 = or i1 %8, %96, !dbg !1890
  br i1 %97, label %98, label %111, !dbg !1890

98:                                               ; preds = %60, %94
  %99 = phi ptr [ %61, %60 ], [ %90, %94 ]
  %100 = phi i64 [ 4, %60 ], [ %91, %94 ]
  %101 = phi ptr [ %33, %60 ], [ %92, %94 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1795, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %6, metadata !1796, metadata !DIExpression(DW_OP_deref)), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %7, metadata !1801, metadata !DIExpression(DW_OP_deref)), !dbg !1809
  %102 = call fastcc i1 @decode_4(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1915
  br i1 %102, label %103, label %111, !dbg !1917

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata ptr %90, metadata !1794, metadata !DIExpression()), !dbg !1809
  %104 = ptrtoint ptr %51 to i64, !dbg !1918
  %105 = ptrtoint ptr %99 to i64, !dbg !1918
  %106 = sub i64 %104, %105, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %106, metadata !1795, metadata !DIExpression()), !dbg !1809
  br label %107

107:                                              ; preds = %43, %103
  %108 = phi ptr [ %99, %103 ], [ %44, %43 ]
  %109 = phi i64 [ %106, %103 ], [ %45, %43 ]
  %110 = load i64, ptr %7, align 8, !dbg !1821, !tbaa !1312
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %89 ], [ true, %94 ], [ false, %98 ], [ true, %32 ]
  %113 = load i64, ptr %7, align 8, !dbg !1919, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %113, metadata !1801, metadata !DIExpression()), !dbg !1809
  %114 = load i64, ptr %4, align 8, !dbg !1920, !tbaa !1312
  %115 = sub nsw i64 %114, %113, !dbg !1920
  store i64 %115, ptr %4, align 8, !dbg !1920, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %109, metadata !1795, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #42, !dbg !1921
  ret i1 %112, !dbg !1922
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i1 @decode_4(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #18 !dbg !1923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1927, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %1, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %2, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %3, metadata !1930, metadata !DIExpression()), !dbg !1932
  %5 = icmp slt i64 %1, 2, !dbg !1933
  br i1 %5, label %92, label %6, !dbg !1935

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1936, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %7, metadata !1614, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 %7, metadata !1604, metadata !DIExpression()), !dbg !1940
  %8 = zext i8 %7 to i64, !dbg !1942
  %9 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %8, !dbg !1943
  %10 = load i8, ptr %9, align 1, !dbg !1943, !tbaa !943
  %11 = icmp sgt i8 %10, -1, !dbg !1944
  br i1 %11, label %12, label %92, !dbg !1945

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1946
  %14 = load i8, ptr %13, align 1, !dbg !1946, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %14, metadata !1614, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %14, metadata !1604, metadata !DIExpression()), !dbg !1949
  %15 = zext i8 %14 to i64, !dbg !1951
  %16 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %15, !dbg !1952
  %17 = load i8, ptr %16, align 1, !dbg !1952, !tbaa !943
  %18 = icmp sgt i8 %17, -1, !dbg !1953
  br i1 %18, label %19, label %92, !dbg !1954

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1955, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %20, metadata !1931, metadata !DIExpression()), !dbg !1932
  %21 = load i64, ptr %3, align 8, !dbg !1956, !tbaa !1312
  %22 = icmp eq i64 %21, 0, !dbg !1956
  br i1 %22, label %30, label %23, !dbg !1958

23:                                               ; preds = %19
  %24 = shl i8 %10, 2, !dbg !1959
  %25 = lshr i8 %17, 4, !dbg !1961
  %26 = or i8 %25, %24, !dbg !1962
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %27, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i8 %26, ptr %20, align 1, !dbg !1964, !tbaa !943
  %28 = load i64, ptr %3, align 8, !dbg !1965, !tbaa !1312
  %29 = add nsw i64 %28, -1, !dbg !1965
  store i64 %29, ptr %3, align 8, !dbg !1965, !tbaa !1312
  br label %30, !dbg !1966

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi ptr [ %27, %23 ], [ %20, %19 ], !dbg !1932
  call void @llvm.dbg.value(metadata ptr %32, metadata !1931, metadata !DIExpression()), !dbg !1932
  %33 = icmp eq i64 %1, 2, !dbg !1967
  br i1 %33, label %89, label %34, !dbg !1969

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1970
  %36 = load i8, ptr %35, align 1, !dbg !1970, !tbaa !943
  %37 = icmp eq i8 %36, 61, !dbg !1972
  br i1 %37, label %38, label %47, !dbg !1973

38:                                               ; preds = %34
  %39 = icmp eq i64 %1, 4, !dbg !1974
  br i1 %39, label %40, label %89, !dbg !1977

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1978
  %42 = load i8, ptr %41, align 1, !dbg !1978, !tbaa !943
  %43 = icmp eq i8 %42, 61, !dbg !1980
  %44 = and i8 %17, 15
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false, !dbg !1981
  br i1 %46, label %87, label %89, !dbg !1981

47:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 %36, metadata !1614, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 %36, metadata !1604, metadata !DIExpression()), !dbg !1986
  %48 = zext i8 %36 to i64, !dbg !1988
  %49 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %48, !dbg !1989
  %50 = load i8, ptr %49, align 1, !dbg !1989, !tbaa !943
  %51 = icmp sgt i8 %50, -1, !dbg !1990
  br i1 %51, label %52, label %89, !dbg !1991

52:                                               ; preds = %47
  %53 = icmp eq i64 %31, 0, !dbg !1992
  br i1 %53, label %61, label %54, !dbg !1994

54:                                               ; preds = %52
  %55 = shl i8 %17, 4, !dbg !1995
  %56 = lshr i8 %50, 2, !dbg !1997
  %57 = or i8 %56, %55, !dbg !1998
  %58 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %58, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i8 %57, ptr %32, align 1, !dbg !2000, !tbaa !943
  %59 = load i64, ptr %3, align 8, !dbg !2001, !tbaa !1312
  %60 = add nsw i64 %59, -1, !dbg !2001
  store i64 %60, ptr %3, align 8, !dbg !2001, !tbaa !1312
  br label %61, !dbg !2002

61:                                               ; preds = %54, %52
  %62 = phi i64 [ %60, %54 ], [ 0, %52 ]
  %63 = phi ptr [ %58, %54 ], [ %32, %52 ], !dbg !1932
  call void @llvm.dbg.value(metadata ptr %63, metadata !1931, metadata !DIExpression()), !dbg !1932
  %64 = icmp eq i64 %1, 3, !dbg !2003
  br i1 %64, label %89, label %65, !dbg !2005

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2006
  %67 = load i8, ptr %66, align 1, !dbg !2006, !tbaa !943
  %68 = icmp eq i8 %67, 61, !dbg !2008
  br i1 %68, label %69, label %74, !dbg !2009

69:                                               ; preds = %65
  %70 = icmp eq i64 %1, 4, !dbg !2010
  %71 = and i8 %50, 3
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 %72, i1 false, !dbg !2013
  br i1 %73, label %87, label %89, !dbg !2013

74:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 %67, metadata !1614, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %67, metadata !1604, metadata !DIExpression()), !dbg !2018
  %75 = zext i8 %67 to i64, !dbg !2020
  %76 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %75, !dbg !2021
  %77 = load i8, ptr %76, align 1, !dbg !2021, !tbaa !943
  %78 = icmp sgt i8 %77, -1, !dbg !2022
  br i1 %78, label %79, label %89, !dbg !2023

79:                                               ; preds = %74
  %80 = icmp eq i64 %62, 0, !dbg !2024
  br i1 %80, label %87, label %81, !dbg !2026

81:                                               ; preds = %79
  %82 = shl i8 %50, 6, !dbg !2027
  %83 = or i8 %77, %82, !dbg !2029
  %84 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %84, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i8 %83, ptr %63, align 1, !dbg !2031, !tbaa !943
  %85 = load i64, ptr %3, align 8, !dbg !2032, !tbaa !1312
  %86 = add nsw i64 %85, -1, !dbg !2032
  store i64 %86, ptr %3, align 8, !dbg !2032, !tbaa !1312
  br label %87, !dbg !2033

87:                                               ; preds = %69, %40, %81, %79
  %88 = phi ptr [ %84, %81 ], [ %63, %79 ], [ %32, %40 ], [ %63, %69 ], !dbg !1932
  call void @llvm.dbg.value(metadata ptr %88, metadata !1931, metadata !DIExpression()), !dbg !1932
  br label %89, !dbg !2034

89:                                               ; preds = %74, %69, %61, %47, %40, %38, %30, %87
  %90 = phi ptr [ %88, %87 ], [ %32, %30 ], [ %32, %38 ], [ %32, %40 ], [ %32, %47 ], [ %63, %61 ], [ %63, %69 ], [ %63, %74 ]
  %91 = phi i1 [ true, %87 ], [ false, %30 ], [ false, %38 ], [ false, %40 ], [ false, %47 ], [ false, %61 ], [ false, %69 ], [ false, %74 ]
  store ptr %90, ptr %2, align 8, !dbg !1932, !tbaa !864
  br label %92, !dbg !2035

92:                                               ; preds = %89, %6, %12, %4
  %93 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %91, %89 ], !dbg !1932
  ret i1 %93, !dbg !2035
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2036 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i1 @base64_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !2039 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2043, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata ptr %1, metadata !2044, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %2, metadata !2045, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata ptr %3, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata ptr %4, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !2050
  %7 = ashr i64 %2, 2, !dbg !2051
  %8 = mul nsw i64 %7, 3, !dbg !2052
  %9 = add nsw i64 %8, 3, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %9, metadata !2048, metadata !DIExpression()), !dbg !2049
  store i64 %9, ptr %6, align 8, !dbg !2053, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %9, metadata !1770, metadata !DIExpression()), !dbg !2054
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #47, !dbg !2056
  store ptr %10, ptr %3, align 8, !dbg !2057, !tbaa !864
  %11 = icmp eq ptr %10, null, !dbg !2058
  br i1 %11, label %20, label %12, !dbg !2060

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !2048, metadata !DIExpression(DW_OP_deref)), !dbg !2049
  %13 = call i1 @base64_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2061
  br i1 %13, label %16, label %14, !dbg !2063

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2064, !tbaa !864
  tail call void @free(ptr noundef %15) #42, !dbg !2066
  store ptr null, ptr %3, align 8, !dbg !2067, !tbaa !864
  br label %20, !dbg !2068

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2069
  br i1 %17, label %20, label %18, !dbg !2071

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2072, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %19, metadata !2048, metadata !DIExpression()), !dbg !2049
  store i64 %19, ptr %4, align 8, !dbg !2073, !tbaa !1312
  br label %20, !dbg !2074

20:                                               ; preds = %16, %18, %5, %14
  %21 = phi i1 [ false, %14 ], [ true, %5 ], [ true, %18 ], [ true, %16 ], !dbg !2049
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !2075
  ret i1 %21, !dbg !2075
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2076 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #21 !dbg !2079 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2081, metadata !DIExpression()), !dbg !2082
  store ptr %0, ptr @file_name, align 8, !dbg !2083, !tbaa !864
  ret void, !dbg !2084
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #21 !dbg !2085 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2089, metadata !DIExpression()), !dbg !2090
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2091, !tbaa !2092
  ret void, !dbg !2094
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #19 !dbg !2095 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2100, !tbaa !864
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !2101
  %3 = icmp eq i32 %2, 0, !dbg !2102
  br i1 %3, label %22, label %4, !dbg !2103

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2104, !tbaa !2092, !range !2105, !noundef !873
  %6 = icmp eq i8 %5, 0, !dbg !2104
  br i1 %6, label %11, label %7, !dbg !2106

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !2107
  %9 = load i32, ptr %8, align 4, !dbg !2107, !tbaa !934
  %10 = icmp eq i32 %9, 32, !dbg !2108
  br i1 %10, label %22, label %11, !dbg !2109

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #42, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %12, metadata !2097, metadata !DIExpression()), !dbg !2111
  %13 = load ptr, ptr @file_name, align 8, !dbg !2112, !tbaa !864
  %14 = icmp eq ptr %13, null, !dbg !2112
  %15 = tail call ptr @__errno_location() #45, !dbg !2114
  %16 = load i32, ptr %15, align 4, !dbg !2114, !tbaa !934
  br i1 %14, label %19, label %17, !dbg !2115

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !2116
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #42, !dbg !2116
  br label %20, !dbg !2116

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #42, !dbg !2117
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2118, !tbaa !934
  tail call void @_exit(i32 noundef %21) #44, !dbg !2119
  unreachable, !dbg !2119

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2120, !tbaa !864
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !2122
  %25 = icmp eq i32 %24, 0, !dbg !2123
  br i1 %25, label %28, label %26, !dbg !2124

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2125, !tbaa !934
  tail call void @_exit(i32 noundef %27) #44, !dbg !2126
  unreachable, !dbg !2126

28:                                               ; preds = %22
  ret void, !dbg !2127
}

; Function Attrs: noreturn
declare !dbg !2128 void @_exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #23 !dbg !2130 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2134, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %1, metadata !2135, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %2, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2137, metadata !DIExpression()), !dbg !2139
  tail call fastcc void @flush_stdout(), !dbg !2140
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2141, !tbaa !864
  %7 = icmp eq ptr %6, null, !dbg !2141
  br i1 %7, label %9, label %8, !dbg !2143

8:                                                ; preds = %4
  tail call void %6() #42, !dbg !2144
  br label %13, !dbg !2144

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2145, !tbaa !864
  %11 = tail call ptr @getprogname() #43, !dbg !2145
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %11) #42, !dbg !2145
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !2147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2147, !tbaa.struct !2148
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2147
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !2147
  ret void, !dbg !2149
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #19 !dbg !2150 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 1, metadata !2154, metadata !DIExpression()), !dbg !2157
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !2160
  %2 = icmp slt i32 %1, 0, !dbg !2161
  br i1 %2, label %6, label %3, !dbg !2162

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2163, !tbaa !864
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !2163
  br label %6, !dbg !2163

6:                                                ; preds = %3, %0
  ret void, !dbg !2164
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #19 !dbg !2165 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %2, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2170, metadata !DIExpression()), !dbg !2172
  %7 = load ptr, ptr @stderr, align 8, !dbg !2173, !tbaa !864
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !2174, !noalias !2218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %7, metadata !2214, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata ptr %2, metadata !2215, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2216, metadata !DIExpression()), !dbg !2224
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #42, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !2174, !noalias !2218
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2225, !tbaa !934
  %10 = add i32 %9, 1, !dbg !2225
  store i32 %10, ptr @error_message_count, align 4, !dbg !2225, !tbaa !934
  %11 = icmp eq i32 %1, 0, !dbg !2226
  br i1 %11, label %21, label %12, !dbg !2228

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2229, metadata !DIExpression()), !dbg !2237
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2233, metadata !DIExpression()), !dbg !2240
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %13, metadata !2232, metadata !DIExpression()), !dbg !2237
  %14 = icmp eq ptr %13, null, !dbg !2242
  br i1 %14, label %15, label %17, !dbg !2244

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #42, !dbg !2245
  call void @llvm.dbg.value(metadata ptr %16, metadata !2232, metadata !DIExpression()), !dbg !2237
  br label %17, !dbg !2246

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2237
  call void @llvm.dbg.value(metadata ptr %18, metadata !2232, metadata !DIExpression()), !dbg !2237
  %19 = load ptr, ptr @stderr, align 8, !dbg !2247, !tbaa !864
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %18) #42, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !2248
  br label %21, !dbg !2249

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2250, !tbaa !864
  call void @llvm.dbg.value(metadata i32 10, metadata !2251, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata ptr %22, metadata !2256, metadata !DIExpression()), !dbg !2257
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2259
  %24 = load ptr, ptr %23, align 8, !dbg !2259, !tbaa !1507
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2259
  %26 = load ptr, ptr %25, align 8, !dbg !2259, !tbaa !1508
  %27 = icmp ult ptr %24, %26, !dbg !2259
  br i1 %27, label %30, label %28, !dbg !2259, !prof !1509

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #42, !dbg !2259
  br label %32, !dbg !2259

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2259
  store ptr %31, ptr %23, align 8, !dbg !2259, !tbaa !1507
  store i8 10, ptr %24, align 1, !dbg !2259, !tbaa !943
  br label %32, !dbg !2259

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2260, !tbaa !864
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #42, !dbg !2260
  %35 = icmp eq i32 %0, 0, !dbg !2261
  br i1 %35, label %37, label %36, !dbg !2263

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #44, !dbg !2264
  unreachable, !dbg !2264

37:                                               ; preds = %32
  ret void, !dbg !2265
}

declare !dbg !2266 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2269 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2272 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #19 !dbg !2276 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %2, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #42, !dbg !2285
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2283, metadata !DIExpression()), !dbg !2286
  call void @llvm.va_start(ptr nonnull %4), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !2288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2288, !tbaa.struct !2148
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #48, !dbg !2288
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !2288
  call void @llvm.va_end(ptr nonnull %4), !dbg !2289
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #42, !dbg !2290
  ret void, !dbg !2290
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #24

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #23 !dbg !466 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !483, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1, metadata !484, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata ptr %2, metadata !485, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %3, metadata !486, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata ptr %4, metadata !487, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.declare(metadata ptr %5, metadata !488, metadata !DIExpression()), !dbg !2292
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2293, !tbaa !934
  %9 = icmp eq i32 %8, 0, !dbg !2293
  br i1 %9, label %24, label %10, !dbg !2295

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2296, !tbaa !934
  %12 = icmp eq i32 %11, %3, !dbg !2299
  br i1 %12, label %13, label %23, !dbg !2300

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2301, !tbaa !864
  %15 = icmp eq ptr %14, %2, !dbg !2302
  br i1 %15, label %37, label %16, !dbg !2303

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2304
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2305
  br i1 %19, label %20, label %23, !dbg !2305

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2306
  %22 = icmp eq i32 %21, 0, !dbg !2307
  br i1 %22, label %37, label %23, !dbg !2308

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2309, !tbaa !864
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2310, !tbaa !934
  br label %24, !dbg !2311

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2312
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2313, !tbaa !864
  %26 = icmp eq ptr %25, null, !dbg !2313
  br i1 %26, label %28, label %27, !dbg !2315

27:                                               ; preds = %24
  tail call void %25() #42, !dbg !2316
  br label %32, !dbg !2316

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2317, !tbaa !864
  %30 = tail call ptr @getprogname() #43, !dbg !2317
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %30) #42, !dbg !2317
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2319, !tbaa !864
  %34 = icmp eq ptr %2, null, !dbg !2319
  %35 = select i1 %34, ptr @.str.3.58, ptr @.str.2.59, !dbg !2319
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #42, !dbg !2319
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42, !dbg !2320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2320, !tbaa.struct !2148
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2320
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42, !dbg !2320
  br label %37, !dbg !2321

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2321
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #19 !dbg !2322 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2326, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %1, metadata !2327, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %2, metadata !2328, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %3, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %4, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !2333
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.va_start(ptr nonnull %6), !dbg !2335
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42, !dbg !2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2336, !tbaa.struct !2148
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #48, !dbg !2336
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42, !dbg !2336
  call void @llvm.va_end(ptr nonnull %6), !dbg !2337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !2338
  ret void, !dbg !2338
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #19 !dbg !2339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %1, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %2, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %3, metadata !2348, metadata !DIExpression()), !dbg !2349
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !2350
  ret void, !dbg !2351
}

; Function Attrs: nounwind
declare !dbg !2352 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #19 !dbg !2355 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2395
  %3 = icmp eq ptr %0, null, !dbg !2396
  br i1 %3, label %7, label %4, !dbg !2398

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %5, metadata !2345, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i64 0, metadata !2347, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2400
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !2402
  br label %7, !dbg !2403

7:                                                ; preds = %4, %2
  ret void, !dbg !2404
}

; Function Attrs: nofree nounwind
declare !dbg !2405 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2408 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2450
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %2, metadata !2448, metadata !DIExpression()), !dbg !2450
  %3 = icmp slt i32 %2, 0, !dbg !2452
  br i1 %3, label %4, label %6, !dbg !2454

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2455
  br label %24, !dbg !2456

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2457
  %8 = icmp eq i32 %7, 0, !dbg !2457
  br i1 %8, label %13, label %9, !dbg !2459

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2460
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !2461
  %12 = icmp eq i64 %11, -1, !dbg !2462
  br i1 %12, label %16, label %13, !dbg !2463

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !2464
  %15 = icmp eq i32 %14, 0, !dbg !2464
  br i1 %15, label %16, label %18, !dbg !2465

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2450
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2466
  call void @llvm.dbg.value(metadata i32 %17, metadata !2449, metadata !DIExpression()), !dbg !2450
  br label %24, !dbg !2467

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !2468
  %20 = load i32, ptr %19, align 4, !dbg !2468, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %20, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2450
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2466
  call void @llvm.dbg.value(metadata i32 %21, metadata !2449, metadata !DIExpression()), !dbg !2450
  %22 = icmp eq i32 %20, 0, !dbg !2469
  br i1 %22, label %24, label %23, !dbg !2467

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2471, !tbaa !934
  call void @llvm.dbg.value(metadata i32 -1, metadata !2449, metadata !DIExpression()), !dbg !2450
  br label %24, !dbg !2473

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2450
  ret i32 %25, !dbg !2474
}

; Function Attrs: nofree nounwind
declare !dbg !2475 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2476 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2478 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #19 !dbg !2481 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2519, metadata !DIExpression()), !dbg !2520
  %2 = icmp eq ptr %0, null, !dbg !2521
  br i1 %2, label %6, label %3, !dbg !2523

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2524
  %5 = icmp eq i32 %4, 0, !dbg !2524
  br i1 %5, label %6, label %8, !dbg !2525

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2526
  br label %16, !dbg !2527

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2533
  %9 = load i32, ptr %0, align 8, !dbg !2535, !tbaa !1291
  %10 = and i32 %9, 256, !dbg !2537
  %11 = icmp eq i32 %10, 0, !dbg !2537
  br i1 %11, label %14, label %12, !dbg !2538

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2539
  br label %14, !dbg !2539

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2540
  br label %16, !dbg !2541

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2520
  ret i32 %17, !dbg !2542
}

; Function Attrs: nofree nounwind
declare !dbg !2543 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2544 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2582, metadata !DIExpression()), !dbg !2583
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2584
  ret i32 0, !dbg !2585
}

; Function Attrs: nounwind
declare !dbg !2586 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #19 !dbg !2589 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2627, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %1, metadata !2628, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %2, metadata !2629, metadata !DIExpression()), !dbg !2633
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2634
  %5 = load ptr, ptr %4, align 8, !dbg !2634, !tbaa !2635
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2636
  %7 = load ptr, ptr %6, align 8, !dbg !2636, !tbaa !2637
  %8 = icmp eq ptr %5, %7, !dbg !2638
  br i1 %8, label %9, label %27, !dbg !2639

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2640
  %11 = load ptr, ptr %10, align 8, !dbg !2640, !tbaa !1507
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2641
  %13 = load ptr, ptr %12, align 8, !dbg !2641, !tbaa !2642
  %14 = icmp eq ptr %11, %13, !dbg !2643
  br i1 %14, label %15, label %27, !dbg !2644

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2645
  %17 = load ptr, ptr %16, align 8, !dbg !2645, !tbaa !2646
  %18 = icmp eq ptr %17, null, !dbg !2647
  br i1 %18, label %19, label %27, !dbg !2648

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2649
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %21, metadata !2630, metadata !DIExpression()), !dbg !2651
  %22 = icmp eq i64 %21, -1, !dbg !2652
  br i1 %22, label %29, label %23, !dbg !2654

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2655, !tbaa !1291
  %25 = and i32 %24, -17, !dbg !2655
  store i32 %25, ptr %0, align 8, !dbg !2655, !tbaa !1291
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2656
  store i64 %21, ptr %26, align 8, !dbg !2657, !tbaa !2658
  br label %29, !dbg !2659

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2660
  br label %29, !dbg !2661

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2633
  ret i32 %30, !dbg !2662
}

; Function Attrs: nofree nounwind
declare !dbg !2663 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #25 !dbg !2666 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2669, !tbaa !864
  ret ptr %1, !dbg !2670
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #26 !dbg !2671 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2673, metadata !DIExpression()), !dbg !2676
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %2, metadata !2674, metadata !DIExpression()), !dbg !2676
  %3 = icmp eq ptr %2, null, !dbg !2678
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2678
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2678
  call void @llvm.dbg.value(metadata ptr %5, metadata !2675, metadata !DIExpression()), !dbg !2676
  %6 = ptrtoint ptr %5 to i64, !dbg !2679
  %7 = ptrtoint ptr %0 to i64, !dbg !2679
  %8 = sub i64 %6, %7, !dbg !2679
  %9 = icmp sgt i64 %8, 6, !dbg !2681
  br i1 %9, label %10, label %19, !dbg !2682

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %11, metadata !2684, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 7, metadata !2690, metadata !DIExpression()), !dbg !2691
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2693
  %13 = icmp eq i32 %12, 0, !dbg !2694
  br i1 %13, label %14, label %19, !dbg !2695

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2673, metadata !DIExpression()), !dbg !2676
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #43, !dbg !2696
  %16 = icmp eq i32 %15, 0, !dbg !2699
  %17 = select i1 %16, i64 3, i64 0, !dbg !2700
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2700
  br label %19, !dbg !2700

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2676
  call void @llvm.dbg.value(metadata ptr %21, metadata !2675, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata ptr %20, metadata !2673, metadata !DIExpression()), !dbg !2676
  store ptr %20, ptr @program_name, align 8, !dbg !2701, !tbaa !864
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2702, !tbaa !864
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2703, !tbaa !864
  ret void, !dbg !2704
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2705 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #19 !dbg !525 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !532, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %1, metadata !533, metadata !DIExpression()), !dbg !2706
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !2707
  call void @llvm.dbg.value(metadata ptr %5, metadata !534, metadata !DIExpression()), !dbg !2706
  %6 = icmp eq ptr %5, %0, !dbg !2708
  br i1 %6, label %7, label %14, !dbg !2710

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !2711
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !2712
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %4, metadata !2714, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %4, metadata !2723, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 8, metadata !2729, metadata !DIExpression()), !dbg !2730
  store i64 0, ptr %4, align 8, !dbg !2732
  call void @llvm.dbg.value(metadata ptr %3, metadata !535, metadata !DIExpression(DW_OP_deref)), !dbg !2706
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !2733
  %9 = icmp eq i64 %8, 2, !dbg !2735
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !535, metadata !DIExpression()), !dbg !2706
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2736
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !2737
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2706
  ret ptr %15, !dbg !2737
}

; Function Attrs: nounwind
declare !dbg !2738 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #19 !dbg !2744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2749, metadata !DIExpression()), !dbg !2752
  %2 = tail call ptr @__errno_location() #45, !dbg !2753
  %3 = load i32, ptr %2, align 4, !dbg !2753, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %3, metadata !2750, metadata !DIExpression()), !dbg !2752
  %4 = icmp eq ptr %0, null, !dbg !2754
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2754
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #49, !dbg !2755
  call void @llvm.dbg.value(metadata ptr %6, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i32 %3, ptr %2, align 4, !dbg !2756, !tbaa !934
  ret ptr %6, !dbg !2757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #28 !dbg !2758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2765
  %2 = icmp eq ptr %0, null, !dbg !2766
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2766
  %4 = load i32, ptr %3, align 8, !dbg !2767, !tbaa !2768
  ret i32 %4, !dbg !2770
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #29 !dbg !2771 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression()), !dbg !2777
  %3 = icmp eq ptr %0, null, !dbg !2778
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2778
  store i32 %1, ptr %4, align 8, !dbg !2779, !tbaa !2768
  ret void, !dbg !2780
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #30 !dbg !2781 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %1, metadata !2786, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 %2, metadata !2787, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %1, metadata !2788, metadata !DIExpression()), !dbg !2793
  %4 = icmp eq ptr %0, null, !dbg !2794
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2794
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2795
  %7 = lshr i8 %1, 5, !dbg !2796
  %8 = zext i8 %7 to i64, !dbg !2796
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2797
  call void @llvm.dbg.value(metadata ptr %9, metadata !2789, metadata !DIExpression()), !dbg !2793
  %10 = and i8 %1, 31, !dbg !2798
  %11 = zext i8 %10 to i32, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %11, metadata !2791, metadata !DIExpression()), !dbg !2793
  %12 = load i32, ptr %9, align 4, !dbg !2799, !tbaa !934
  %13 = lshr i32 %12, %11, !dbg !2800
  %14 = and i32 %13, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %14, metadata !2792, metadata !DIExpression()), !dbg !2793
  %15 = xor i32 %13, %2, !dbg !2802
  %16 = and i32 %15, 1, !dbg !2802
  %17 = shl nuw i32 %16, %11, !dbg !2803
  %18 = xor i32 %17, %12, !dbg !2804
  store i32 %18, ptr %9, align 4, !dbg !2804, !tbaa !934
  ret i32 %14, !dbg !2805
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #30 !dbg !2806 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2810, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 %1, metadata !2811, metadata !DIExpression()), !dbg !2813
  %3 = icmp eq ptr %0, null, !dbg !2814
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2816
  call void @llvm.dbg.value(metadata ptr %4, metadata !2810, metadata !DIExpression()), !dbg !2813
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2817
  %6 = load i32, ptr %5, align 4, !dbg !2817, !tbaa !2818
  call void @llvm.dbg.value(metadata i32 %6, metadata !2812, metadata !DIExpression()), !dbg !2813
  store i32 %1, ptr %5, align 4, !dbg !2819, !tbaa !2818
  ret i32 %6, !dbg !2820
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !2821 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !2828
  %4 = icmp eq ptr %0, null, !dbg !2829
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2831
  call void @llvm.dbg.value(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !2828
  store i32 10, ptr %5, align 8, !dbg !2832, !tbaa !2768
  %6 = icmp ne ptr %1, null, !dbg !2833
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2835
  br i1 %8, label %10, label %9, !dbg !2835

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !2836
  unreachable, !dbg !2836

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2837
  store ptr %1, ptr %11, align 8, !dbg !2838, !tbaa !2839
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2840
  store ptr %2, ptr %12, align 8, !dbg !2841, !tbaa !2842
  ret void, !dbg !2843
}

; Function Attrs: noreturn nounwind
declare !dbg !2844 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #19 !dbg !2845 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2850, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %3, metadata !2852, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %4, metadata !2853, metadata !DIExpression()), !dbg !2857
  %6 = icmp eq ptr %4, null, !dbg !2858
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2858
  call void @llvm.dbg.value(metadata ptr %7, metadata !2854, metadata !DIExpression()), !dbg !2857
  %8 = tail call ptr @__errno_location() #45, !dbg !2859
  %9 = load i32, ptr %8, align 4, !dbg !2859, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %9, metadata !2855, metadata !DIExpression()), !dbg !2857
  %10 = load i32, ptr %7, align 8, !dbg !2860, !tbaa !2768
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2861
  %12 = load i32, ptr %11, align 4, !dbg !2861, !tbaa !2818
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2862
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2863
  %15 = load ptr, ptr %14, align 8, !dbg !2863, !tbaa !2839
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2864
  %17 = load ptr, ptr %16, align 8, !dbg !2864, !tbaa !2842
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %18, metadata !2856, metadata !DIExpression()), !dbg !2857
  store i32 %9, ptr %8, align 4, !dbg !2866, !tbaa !934
  ret i64 %18, !dbg !2867
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #19 !dbg !2868 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2874, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %2, metadata !2876, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %3, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %4, metadata !2878, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %5, metadata !2879, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %6, metadata !2880, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %7, metadata !2881, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %8, metadata !2882, metadata !DIExpression()), !dbg !2936
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !2937
  %17 = icmp eq i64 %16, 1, !dbg !2938
  call void @llvm.dbg.value(metadata i1 %17, metadata !2883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2936
  call void @llvm.dbg.value(metadata i64 0, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 0, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr null, metadata !2886, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 0, metadata !2887, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %5, metadata !2889, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 1, metadata !2891, metadata !DIExpression()), !dbg !2936
  %18 = and i32 %5, 2, !dbg !2939
  %19 = icmp ne i32 %18, 0, !dbg !2939
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2939

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2940
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2941
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2942
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2891, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2888, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %34, metadata !2887, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %33, metadata !2886, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %32, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 0, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %31, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %30, metadata !2882, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %29, metadata !2881, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %28, metadata !2878, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.label(metadata !2929), !dbg !2943
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2936
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
  ], !dbg !2944

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 5, metadata !2878, metadata !DIExpression()), !dbg !2936
  br label %102, !dbg !2945

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 5, metadata !2878, metadata !DIExpression()), !dbg !2936
  br i1 %36, label %102, label %42, !dbg !2945

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2946
  br i1 %43, label %102, label %44, !dbg !2950

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2946, !tbaa !943
  br label %102, !dbg !2946

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !619, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %28, metadata !620, metadata !DIExpression()), !dbg !2951
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #42, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %46, metadata !621, metadata !DIExpression()), !dbg !2951
  %47 = icmp eq ptr %46, @.str.11.92, !dbg !2956
  br i1 %47, label %48, label %57, !dbg !2958

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !2959
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !2960
  call void @llvm.dbg.declare(metadata ptr %13, metadata !623, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %13, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %13, metadata !2970, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 0, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 8, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i64 0, ptr %13, align 8, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %12, metadata !622, metadata !DIExpression(DW_OP_deref)), !dbg !2951
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !2978
  %50 = icmp eq i64 %49, 3, !dbg !2980
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !622, metadata !DIExpression()), !dbg !2951
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2981
  %54 = icmp eq i32 %28, 9, !dbg !2981
  %55 = select i1 %54, ptr @.str.10.94, ptr @.str.12.95, !dbg !2981
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2981
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !2982
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2951
  call void @llvm.dbg.value(metadata ptr %58, metadata !2881, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !619, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %28, metadata !620, metadata !DIExpression()), !dbg !2983
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #42, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %59, metadata !621, metadata !DIExpression()), !dbg !2983
  %60 = icmp eq ptr %59, @.str.12.95, !dbg !2986
  br i1 %60, label %61, label %70, !dbg !2987

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !2988
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !2989
  call void @llvm.dbg.declare(metadata ptr %11, metadata !623, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %11, metadata !2962, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %11, metadata !2970, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 0, metadata !2973, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 8, metadata !2974, metadata !DIExpression()), !dbg !2993
  store i64 0, ptr %11, align 8, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %10, metadata !622, metadata !DIExpression(DW_OP_deref)), !dbg !2983
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !2996
  %63 = icmp eq i64 %62, 3, !dbg !2997
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !622, metadata !DIExpression()), !dbg !2983
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2998
  %67 = icmp eq i32 %28, 9, !dbg !2998
  %68 = select i1 %67, ptr @.str.10.94, ptr @.str.12.95, !dbg !2998
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2998
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !2999
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2882, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %71, metadata !2881, metadata !DIExpression()), !dbg !2936
  br i1 %36, label %88, label %73, !dbg !3000

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2893, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 0, metadata !2884, metadata !DIExpression()), !dbg !2936
  %74 = load i8, ptr %71, align 1, !dbg !3002, !tbaa !943
  %75 = icmp eq i8 %74, 0, !dbg !3004
  br i1 %75, label %88, label %76, !dbg !3004

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2893, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %79, metadata !2884, metadata !DIExpression()), !dbg !2936
  %80 = icmp ult i64 %79, %39, !dbg !3005
  br i1 %80, label %81, label %83, !dbg !3008

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3005
  store i8 %77, ptr %82, align 1, !dbg !3005, !tbaa !943
  br label %83, !dbg !3005

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3008
  call void @llvm.dbg.value(metadata i64 %84, metadata !2884, metadata !DIExpression()), !dbg !2936
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3009
  call void @llvm.dbg.value(metadata ptr %85, metadata !2893, metadata !DIExpression()), !dbg !3001
  %86 = load i8, ptr %85, align 1, !dbg !3002, !tbaa !943
  %87 = icmp eq i8 %86, 0, !dbg !3004
  br i1 %87, label %88, label %76, !dbg !3004, !llvm.loop !3010

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3012
  call void @llvm.dbg.value(metadata i64 %89, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 1, metadata !2888, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %72, metadata !2886, metadata !DIExpression()), !dbg !2936
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #43, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %90, metadata !2887, metadata !DIExpression()), !dbg !2936
  br label %102, !dbg !3014

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2888, metadata !DIExpression()), !dbg !2936
  br label %93, !dbg !3015

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2888, metadata !DIExpression()), !dbg !2936
  br i1 %36, label %102, label %96, !dbg !3016

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2888, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 2, metadata !2878, metadata !DIExpression()), !dbg !2936
  br label %102, !dbg !3017

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2888, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 2, metadata !2878, metadata !DIExpression()), !dbg !2936
  br i1 %36, label %102, label %96, !dbg !3017

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3018
  br i1 %98, label %102, label %99, !dbg !3022

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3018, !tbaa !943
  br label %102, !dbg !3018

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !2936
  br label %102, !dbg !3023

101:                                              ; preds = %27
  call void @abort() #44, !dbg !3024
  unreachable, !dbg !3024

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3012
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.94, %42 ], [ @.str.10.94, %44 ], [ @.str.10.94, %41 ], [ %33, %27 ], [ @.str.12.95, %96 ], [ @.str.12.95, %99 ], [ @.str.12.95, %95 ], [ @.str.10.94, %40 ], [ @.str.12.95, %93 ], [ @.str.12.95, %92 ], !dbg !2936
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2936
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2888, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %108, metadata !2887, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %107, metadata !2886, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %106, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %105, metadata !2882, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %104, metadata !2881, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %103, metadata !2878, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 0, metadata !2898, metadata !DIExpression()), !dbg !3025
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
  br label %122, !dbg !3026

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3012
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2940
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3027
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %129, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2891, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %125, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %124, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %123, metadata !2877, metadata !DIExpression()), !dbg !2936
  %131 = icmp eq i64 %123, -1, !dbg !3028
  br i1 %131, label %132, label %136, !dbg !3029

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3030
  %134 = load i8, ptr %133, align 1, !dbg !3030, !tbaa !943
  %135 = icmp eq i8 %134, 0, !dbg !3031
  br i1 %135, label %579, label %138, !dbg !3032

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3033
  br i1 %137, label %579, label %138, !dbg !3032

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 0, metadata !2904, metadata !DIExpression()), !dbg !3034
  br i1 %114, label %139, label %152, !dbg !3035

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3037
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3038
  br i1 %141, label %142, label %144, !dbg !3038

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %143, metadata !2877, metadata !DIExpression()), !dbg !2936
  br label %144, !dbg !3040

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3040
  call void @llvm.dbg.value(metadata i64 %145, metadata !2877, metadata !DIExpression()), !dbg !2936
  %146 = icmp ugt i64 %140, %145, !dbg !3041
  br i1 %146, label %152, label %147, !dbg !3042

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %148, metadata !3044, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %107, metadata !3047, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %108, metadata !3048, metadata !DIExpression()), !dbg !3049
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3051
  %150 = icmp eq i32 %149, 0, !dbg !3052
  %151 = and i1 %150, %110, !dbg !3053
  br i1 %151, label %630, label %152, !dbg !3053

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2900, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %153, metadata !2877, metadata !DIExpression()), !dbg !2936
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3054
  %156 = load i8, ptr %155, align 1, !dbg !3054, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %156, metadata !2905, metadata !DIExpression()), !dbg !3034
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
  ], !dbg !3055

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3056

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3057

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2903, metadata !DIExpression()), !dbg !3034
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3061
  br i1 %160, label %177, label %161, !dbg !3061

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3063
  br i1 %162, label %163, label %165, !dbg !3067

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3063
  store i8 39, ptr %164, align 1, !dbg !3063, !tbaa !943
  br label %165, !dbg !3063

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %166, metadata !2884, metadata !DIExpression()), !dbg !2936
  %167 = icmp ult i64 %166, %130, !dbg !3068
  br i1 %167, label %168, label %170, !dbg !3071

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3068
  store i8 36, ptr %169, align 1, !dbg !3068, !tbaa !943
  br label %170, !dbg !3068

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %171, metadata !2884, metadata !DIExpression()), !dbg !2936
  %172 = icmp ult i64 %171, %130, !dbg !3072
  br i1 %172, label %173, label %175, !dbg !3075

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3072
  store i8 39, ptr %174, align 1, !dbg !3072, !tbaa !943
  br label %175, !dbg !3072

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %176, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 1, metadata !2892, metadata !DIExpression()), !dbg !2936
  br label %177, !dbg !3076

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2936
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %178, metadata !2884, metadata !DIExpression()), !dbg !2936
  %180 = icmp ult i64 %178, %130, !dbg !3077
  br i1 %180, label %181, label %183, !dbg !3080

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3077
  store i8 92, ptr %182, align 1, !dbg !3077, !tbaa !943
  br label %183, !dbg !3077

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %184, metadata !2884, metadata !DIExpression()), !dbg !2936
  br i1 %111, label %185, label %482, !dbg !3081

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3083
  %187 = icmp ult i64 %186, %153, !dbg !3084
  br i1 %187, label %188, label %439, !dbg !3085

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3086
  %190 = load i8, ptr %189, align 1, !dbg !3086, !tbaa !943
  %191 = add i8 %190, -48, !dbg !3087
  %192 = icmp ult i8 %191, 10, !dbg !3087
  br i1 %192, label %193, label %439, !dbg !3087

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3088
  br i1 %194, label %195, label %197, !dbg !3092

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3088
  store i8 48, ptr %196, align 1, !dbg !3088, !tbaa !943
  br label %197, !dbg !3088

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %198, metadata !2884, metadata !DIExpression()), !dbg !2936
  %199 = icmp ult i64 %198, %130, !dbg !3093
  br i1 %199, label %200, label %202, !dbg !3096

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3093
  store i8 48, ptr %201, align 1, !dbg !3093, !tbaa !943
  br label %202, !dbg !3093

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %203, metadata !2884, metadata !DIExpression()), !dbg !2936
  br label %439, !dbg !3097

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3098

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3099

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3100

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3102

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3104
  %210 = icmp ult i64 %209, %153, !dbg !3105
  br i1 %210, label %211, label %439, !dbg !3106

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3107
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3108
  %214 = load i8, ptr %213, align 1, !dbg !3108, !tbaa !943
  %215 = icmp eq i8 %214, 63, !dbg !3109
  br i1 %215, label %216, label %439, !dbg !3110

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3111
  %218 = load i8, ptr %217, align 1, !dbg !3111, !tbaa !943
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
  ], !dbg !3112

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3113

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %209, metadata !2898, metadata !DIExpression()), !dbg !3025
  %221 = icmp ult i64 %124, %130, !dbg !3115
  br i1 %221, label %222, label %224, !dbg !3118

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3115
  store i8 63, ptr %223, align 1, !dbg !3115, !tbaa !943
  br label %224, !dbg !3115

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %225, metadata !2884, metadata !DIExpression()), !dbg !2936
  %226 = icmp ult i64 %225, %130, !dbg !3119
  br i1 %226, label %227, label %229, !dbg !3122

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3119
  store i8 34, ptr %228, align 1, !dbg !3119, !tbaa !943
  br label %229, !dbg !3119

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %230, metadata !2884, metadata !DIExpression()), !dbg !2936
  %231 = icmp ult i64 %230, %130, !dbg !3123
  br i1 %231, label %232, label %234, !dbg !3126

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3123
  store i8 34, ptr %233, align 1, !dbg !3123, !tbaa !943
  br label %234, !dbg !3123

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %235, metadata !2884, metadata !DIExpression()), !dbg !2936
  %236 = icmp ult i64 %235, %130, !dbg !3127
  br i1 %236, label %237, label %239, !dbg !3130

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3127
  store i8 63, ptr %238, align 1, !dbg !3127, !tbaa !943
  br label %239, !dbg !3127

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %240, metadata !2884, metadata !DIExpression()), !dbg !2936
  br label %439, !dbg !3131

241:                                              ; preds = %152
  br label %251, !dbg !3132

242:                                              ; preds = %152
  br label %251, !dbg !3133

243:                                              ; preds = %152
  br label %249, !dbg !3134

244:                                              ; preds = %152
  br label %249, !dbg !3135

245:                                              ; preds = %152
  br label %251, !dbg !3136

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3137

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3138

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3141

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3143
  call void @llvm.dbg.label(metadata !2930), !dbg !3144
  br i1 %119, label %621, label %251, !dbg !3145

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3143
  call void @llvm.dbg.label(metadata !2932), !dbg !3147
  br i1 %109, label %493, label %450, !dbg !3148

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3149

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3150, !tbaa !943
  %256 = icmp eq i8 %255, 0, !dbg !3152
  br i1 %256, label %257, label %439, !dbg !3153

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3154
  br i1 %258, label %259, label %439, !dbg !3156

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2904, metadata !DIExpression()), !dbg !3034
  br label %260, !dbg !3157

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2904, metadata !DIExpression()), !dbg !3034
  br i1 %116, label %262, label %439, !dbg !3158

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3160

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 1, metadata !2904, metadata !DIExpression()), !dbg !3034
  br i1 %116, label %264, label %439, !dbg !3161

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3162

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3165
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3167
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3167
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %270, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %269, metadata !2885, metadata !DIExpression()), !dbg !2936
  %271 = icmp ult i64 %124, %270, !dbg !3168
  br i1 %271, label %272, label %274, !dbg !3171

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3168
  store i8 39, ptr %273, align 1, !dbg !3168, !tbaa !943
  br label %274, !dbg !3168

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %275, metadata !2884, metadata !DIExpression()), !dbg !2936
  %276 = icmp ult i64 %275, %270, !dbg !3172
  br i1 %276, label %277, label %279, !dbg !3175

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3172
  store i8 92, ptr %278, align 1, !dbg !3172, !tbaa !943
  br label %279, !dbg !3172

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %280, metadata !2884, metadata !DIExpression()), !dbg !2936
  %281 = icmp ult i64 %280, %270, !dbg !3176
  br i1 %281, label %282, label %284, !dbg !3179

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3176
  store i8 39, ptr %283, align 1, !dbg !3176, !tbaa !943
  br label %284, !dbg !3176

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %285, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2936
  br label %439, !dbg !3180

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3181

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2906, metadata !DIExpression()), !dbg !3182
  %288 = tail call ptr @__ctype_b_loc() #45, !dbg !3183
  %289 = load ptr, ptr %288, align 8, !dbg !3183, !tbaa !864
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3183
  %292 = load i16, ptr %291, align 2, !dbg !3183, !tbaa !975
  %293 = and i16 %292, 16384, !dbg !3183
  %294 = icmp ne i16 %293, 0, !dbg !3185
  call void @llvm.dbg.value(metadata i1 %294, metadata !2909, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3182
  br label %337, !dbg !3186

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3187
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2910, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %14, metadata !2962, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata ptr %14, metadata !2970, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i32 0, metadata !2973, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 8, metadata !2974, metadata !DIExpression()), !dbg !3191
  store i64 0, ptr %14, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8 1, metadata !2909, metadata !DIExpression()), !dbg !3182
  %296 = icmp eq i64 %153, -1, !dbg !3194
  br i1 %296, label %297, label %299, !dbg !3196

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %298, metadata !2877, metadata !DIExpression()), !dbg !2936
  br label %299, !dbg !3198

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3034
  call void @llvm.dbg.value(metadata i64 %300, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3199
  %301 = sub i64 %300, %129, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %15, metadata !2913, metadata !DIExpression(DW_OP_deref)), !dbg !3201
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #42, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %302, metadata !2917, metadata !DIExpression()), !dbg !3201
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3203

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !3182
  %304 = icmp ugt i64 %300, %129, !dbg !3204
  br i1 %304, label %306, label %332, !dbg !3206

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !3182
  br label %332, !dbg !3207

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2906, metadata !DIExpression()), !dbg !3182
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3209
  %310 = load i8, ptr %309, align 1, !dbg !3209, !tbaa !943
  %311 = icmp eq i8 %310, 0, !dbg !3206
  br i1 %311, label %332, label %312, !dbg !3210

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %313, metadata !2906, metadata !DIExpression()), !dbg !3182
  %314 = add i64 %313, %129, !dbg !3212
  %315 = icmp eq i64 %313, %301, !dbg !3204
  br i1 %315, label %332, label %306, !dbg !3206, !llvm.loop !3213

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3214
  %319 = and i1 %318, %110, !dbg !3214
  call void @llvm.dbg.value(metadata i64 1, metadata !2918, metadata !DIExpression()), !dbg !3215
  br i1 %319, label %320, label %328, !dbg !3214

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2918, metadata !DIExpression()), !dbg !3215
  %322 = add i64 %321, %129, !dbg !3216
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3218
  %324 = load i8, ptr %323, align 1, !dbg !3218, !tbaa !943
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3219

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %326, metadata !2918, metadata !DIExpression()), !dbg !3215
  %327 = icmp eq i64 %326, %302, !dbg !3221
  br i1 %327, label %328, label %320, !dbg !3222, !llvm.loop !3223

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3225, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %329, metadata !2913, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %329, metadata !3227, metadata !DIExpression()), !dbg !3235
  %330 = call i32 @iswprint(i32 noundef %329) #42, !dbg !3237
  %331 = icmp ne i32 %330, 0, !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !2909, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %302, metadata !2906, metadata !DIExpression()), !dbg !3182
  br label %332, !dbg !3239

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2909, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %333, metadata !2906, metadata !DIExpression()), !dbg !3182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3241
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2909, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !3182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3241
  call void @llvm.dbg.label(metadata !2935), !dbg !3242
  %336 = select i1 %109, i32 4, i32 2, !dbg !3243
  br label %626, !dbg !3243

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3034
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3245
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2909, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %339, metadata !2906, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %338, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i1 %340, metadata !2904, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3034
  %341 = icmp ult i64 %339, 2, !dbg !3246
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3247
  br i1 %343, label %439, label %344, !dbg !3247

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %345, metadata !2926, metadata !DIExpression()), !dbg !3249
  br label %346, !dbg !3250

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2936
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3025
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3251
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %352, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %351, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2900, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %349, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %347, metadata !2884, metadata !DIExpression()), !dbg !2936
  br i1 %342, label %397, label %353, !dbg !3252

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3257

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2903, metadata !DIExpression()), !dbg !3034
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3260
  br i1 %355, label %372, label %356, !dbg !3260

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3262
  br i1 %357, label %358, label %360, !dbg !3266

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3262
  store i8 39, ptr %359, align 1, !dbg !3262, !tbaa !943
  br label %360, !dbg !3262

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %361, metadata !2884, metadata !DIExpression()), !dbg !2936
  %362 = icmp ult i64 %361, %130, !dbg !3267
  br i1 %362, label %363, label %365, !dbg !3270

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3267
  store i8 36, ptr %364, align 1, !dbg !3267, !tbaa !943
  br label %365, !dbg !3267

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %366, metadata !2884, metadata !DIExpression()), !dbg !2936
  %367 = icmp ult i64 %366, %130, !dbg !3271
  br i1 %367, label %368, label %370, !dbg !3274

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3271
  store i8 39, ptr %369, align 1, !dbg !3271, !tbaa !943
  br label %370, !dbg !3271

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %371, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 1, metadata !2892, metadata !DIExpression()), !dbg !2936
  br label %372, !dbg !3275

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2936
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %373, metadata !2884, metadata !DIExpression()), !dbg !2936
  %375 = icmp ult i64 %373, %130, !dbg !3276
  br i1 %375, label %376, label %378, !dbg !3279

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3276
  store i8 92, ptr %377, align 1, !dbg !3276, !tbaa !943
  br label %378, !dbg !3276

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %379, metadata !2884, metadata !DIExpression()), !dbg !2936
  %380 = icmp ult i64 %379, %130, !dbg !3280
  br i1 %380, label %381, label %385, !dbg !3283

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3280
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3280
  store i8 %383, ptr %384, align 1, !dbg !3280, !tbaa !943
  br label %385, !dbg !3280

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %386, metadata !2884, metadata !DIExpression()), !dbg !2936
  %387 = icmp ult i64 %386, %130, !dbg !3284
  br i1 %387, label %388, label %393, !dbg !3287

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3284
  %391 = or i8 %390, 48, !dbg !3284
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3284
  store i8 %391, ptr %392, align 1, !dbg !3284, !tbaa !943
  br label %393, !dbg !3284

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %394, metadata !2884, metadata !DIExpression()), !dbg !2936
  %395 = and i8 %352, 7, !dbg !3288
  %396 = or i8 %395, 48, !dbg !3289
  call void @llvm.dbg.value(metadata i8 %396, metadata !2905, metadata !DIExpression()), !dbg !3034
  br label %404, !dbg !3290

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3291

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3292
  br i1 %399, label %400, label %402, !dbg !3297

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3292
  store i8 92, ptr %401, align 1, !dbg !3292, !tbaa !943
  br label %402, !dbg !3292

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %403, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !3034
  br label %404, !dbg !3298

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2936
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3034
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %409, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %408, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2900, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %405, metadata !2884, metadata !DIExpression()), !dbg !2936
  %410 = add i64 %349, 1, !dbg !3299
  %411 = icmp ugt i64 %345, %410, !dbg !3301
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3302

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3303
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3303
  br i1 %415, label %416, label %427, !dbg !3303

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3306
  br i1 %417, label %418, label %420, !dbg !3310

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3306
  store i8 39, ptr %419, align 1, !dbg !3306, !tbaa !943
  br label %420, !dbg !3306

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %421, metadata !2884, metadata !DIExpression()), !dbg !2936
  %422 = icmp ult i64 %421, %130, !dbg !3311
  br i1 %422, label %423, label %425, !dbg !3314

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3311
  store i8 39, ptr %424, align 1, !dbg !3311, !tbaa !943
  br label %425, !dbg !3311

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %426, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2936
  br label %427, !dbg !3315

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3316
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %428, metadata !2884, metadata !DIExpression()), !dbg !2936
  %430 = icmp ult i64 %428, %130, !dbg !3317
  br i1 %430, label %431, label %433, !dbg !3320

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3317
  store i8 %409, ptr %432, align 1, !dbg !3317, !tbaa !943
  br label %433, !dbg !3317

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %434, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %410, metadata !2898, metadata !DIExpression()), !dbg !3025
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3321
  %436 = load i8, ptr %435, align 1, !dbg !3321, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %436, metadata !2905, metadata !DIExpression()), !dbg !3034
  br label %346, !dbg !3322, !llvm.loop !3323

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i1 %340, metadata !2904, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %408, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2900, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %349, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %405, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %338, metadata !2877, metadata !DIExpression()), !dbg !2936
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3326
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2936
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2940
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3025
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3034
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 %448, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2904, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2900, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %445, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %442, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %441, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %440, metadata !2877, metadata !DIExpression()), !dbg !2936
  br i1 %112, label %461, label %450, !dbg !3327

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
  br i1 %121, label %462, label %482, !dbg !3329

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3330

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
  %473 = lshr i8 %464, 5, !dbg !3331
  %474 = zext i8 %473 to i64, !dbg !3331
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3332
  %476 = load i32, ptr %475, align 4, !dbg !3332, !tbaa !934
  %477 = and i8 %464, 31, !dbg !3333
  %478 = zext i8 %477 to i32, !dbg !3333
  %479 = shl nuw i32 1, %478, !dbg !3334
  %480 = and i32 %476, %479, !dbg !3334
  %481 = icmp eq i32 %480, 0, !dbg !3334
  br i1 %481, label %482, label %493, !dbg !3335

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
  br i1 %154, label %493, label %529, !dbg !3336

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3326
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2936
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2940
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3337
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3034
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 %501, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2904, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %499, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %496, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %495, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %494, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.label(metadata !2933), !dbg !3338
  br i1 %110, label %621, label %503, !dbg !3339

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2903, metadata !DIExpression()), !dbg !3034
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3341
  br i1 %504, label %521, label %505, !dbg !3341

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3343
  br i1 %506, label %507, label %509, !dbg !3347

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3343
  store i8 39, ptr %508, align 1, !dbg !3343, !tbaa !943
  br label %509, !dbg !3343

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %510, metadata !2884, metadata !DIExpression()), !dbg !2936
  %511 = icmp ult i64 %510, %502, !dbg !3348
  br i1 %511, label %512, label %514, !dbg !3351

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3348
  store i8 36, ptr %513, align 1, !dbg !3348, !tbaa !943
  br label %514, !dbg !3348

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %515, metadata !2884, metadata !DIExpression()), !dbg !2936
  %516 = icmp ult i64 %515, %502, !dbg !3352
  br i1 %516, label %517, label %519, !dbg !3355

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3352
  store i8 39, ptr %518, align 1, !dbg !3352, !tbaa !943
  br label %519, !dbg !3352

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %520, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 1, metadata !2892, metadata !DIExpression()), !dbg !2936
  br label %521, !dbg !3356

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3034
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %522, metadata !2884, metadata !DIExpression()), !dbg !2936
  %524 = icmp ult i64 %522, %502, !dbg !3357
  br i1 %524, label %525, label %527, !dbg !3360

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3357
  store i8 92, ptr %526, align 1, !dbg !3357, !tbaa !943
  br label %527, !dbg !3357

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %502, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 %501, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2904, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %499, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %496, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %528, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %494, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.label(metadata !2934), !dbg !3361
  br label %553, !dbg !3362

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3326
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2936
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2940
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3337
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3365
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 %538, metadata !2905, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2904, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %535, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %532, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %531, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %530, metadata !2877, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.label(metadata !2934), !dbg !3361
  %540 = xor i1 %534, true, !dbg !3362
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3362
  br i1 %541, label %553, label %542, !dbg !3362

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3366
  br i1 %543, label %544, label %546, !dbg !3370

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3366
  store i8 39, ptr %545, align 1, !dbg !3366, !tbaa !943
  br label %546, !dbg !3366

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %547, metadata !2884, metadata !DIExpression()), !dbg !2936
  %548 = icmp ult i64 %547, %539, !dbg !3371
  br i1 %548, label %549, label %551, !dbg !3374

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3371
  store i8 39, ptr %550, align 1, !dbg !3371, !tbaa !943
  br label %551, !dbg !3371

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %552, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2936
  br label %553, !dbg !3375

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3034
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %561, metadata !2884, metadata !DIExpression()), !dbg !2936
  %563 = icmp ult i64 %561, %554, !dbg !3376
  br i1 %563, label %564, label %566, !dbg !3379

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3376
  store i8 %555, ptr %565, align 1, !dbg !3376, !tbaa !943
  br label %566, !dbg !3376

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %567, metadata !2884, metadata !DIExpression()), !dbg !2936
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3380
  call void @llvm.dbg.value(metadata i8 poison, metadata !2891, metadata !DIExpression()), !dbg !2936
  br label %569, !dbg !3381

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3326
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2936
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2940
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3337
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %576, metadata !2898, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2892, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2891, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %572, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %571, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %570, metadata !2877, metadata !DIExpression()), !dbg !2936
  %578 = add i64 %576, 1, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %578, metadata !2898, metadata !DIExpression()), !dbg !3025
  br label %122, !dbg !3383, !llvm.loop !3384

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2875, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2891, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 poison, metadata !2890, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %125, metadata !2885, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %124, metadata !2884, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %123, metadata !2877, metadata !DIExpression()), !dbg !2936
  %580 = icmp ne i64 %124, 0, !dbg !3386
  %581 = xor i1 %110, true, !dbg !3388
  %582 = or i1 %580, %581, !dbg !3388
  %583 = or i1 %582, %111, !dbg !3388
  br i1 %583, label %584, label %621, !dbg !3388

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3389
  %586 = xor i1 %126, true, !dbg !3389
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3389
  br i1 %587, label %595, label %588, !dbg !3389

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3391

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3393
  br label %636, !dbg !3395

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3396
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3398
  br i1 %594, label %27, label %595, !dbg !3398

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3399
  %598 = or i1 %597, %596, !dbg !3401
  br i1 %598, label %614, label %599, !dbg !3401

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2886, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %124, metadata !2884, metadata !DIExpression()), !dbg !2936
  %600 = load i8, ptr %107, align 1, !dbg !3402, !tbaa !943
  %601 = icmp eq i8 %600, 0, !dbg !3405
  br i1 %601, label %614, label %602, !dbg !3405

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2886, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %605, metadata !2884, metadata !DIExpression()), !dbg !2936
  %606 = icmp ult i64 %605, %130, !dbg !3406
  br i1 %606, label %607, label %609, !dbg !3409

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3406
  store i8 %603, ptr %608, align 1, !dbg !3406, !tbaa !943
  br label %609, !dbg !3406

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %610, metadata !2884, metadata !DIExpression()), !dbg !2936
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3410
  call void @llvm.dbg.value(metadata ptr %611, metadata !2886, metadata !DIExpression()), !dbg !2936
  %612 = load i8, ptr %611, align 1, !dbg !3402, !tbaa !943
  %613 = icmp eq i8 %612, 0, !dbg !3405
  br i1 %613, label %614, label %602, !dbg !3405, !llvm.loop !3411

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3012
  call void @llvm.dbg.value(metadata i64 %615, metadata !2884, metadata !DIExpression()), !dbg !2936
  %616 = icmp ult i64 %615, %130, !dbg !3413
  br i1 %616, label %617, label %636, !dbg !3415

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3416
  store i8 0, ptr %618, align 1, !dbg !3417, !tbaa !943
  br label %636, !dbg !3416

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2935), !dbg !3242
  %620 = icmp eq i32 %103, 2, !dbg !3418
  br i1 %620, label %626, label %630, !dbg !3243

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2935), !dbg !3242
  %624 = icmp eq i32 %103, 2, !dbg !3418
  %625 = select i1 %109, i32 4, i32 2, !dbg !3243
  br i1 %624, label %626, label %630, !dbg !3243

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3243

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2878, metadata !DIExpression()), !dbg !2936
  %634 = and i32 %5, -3, !dbg !3419
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3420
  br label %636, !dbg !3421

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3422
}

; Function Attrs: nounwind
declare !dbg !3423 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3426 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3429 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3431 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %2, metadata !3437, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %0, metadata !3439, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr null, metadata !3445, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %2, metadata !3446, metadata !DIExpression()), !dbg !3452
  %4 = icmp eq ptr %2, null, !dbg !3454
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %5, metadata !3447, metadata !DIExpression()), !dbg !3452
  %6 = tail call ptr @__errno_location() #45, !dbg !3455
  %7 = load i32, ptr %6, align 4, !dbg !3455, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %7, metadata !3448, metadata !DIExpression()), !dbg !3452
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3456
  %9 = load i32, ptr %8, align 4, !dbg !3456, !tbaa !2818
  %10 = or i32 %9, 1, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %10, metadata !3449, metadata !DIExpression()), !dbg !3452
  %11 = load i32, ptr %5, align 8, !dbg !3458, !tbaa !2768
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3459
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3460
  %14 = load ptr, ptr %13, align 8, !dbg !3460, !tbaa !2839
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3461
  %16 = load ptr, ptr %15, align 8, !dbg !3461, !tbaa !2842
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3462
  %18 = add i64 %17, 1, !dbg !3463
  call void @llvm.dbg.value(metadata i64 %18, metadata !3450, metadata !DIExpression()), !dbg !3452
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3464
  call void @llvm.dbg.value(metadata ptr %19, metadata !3451, metadata !DIExpression()), !dbg !3452
  %20 = load i32, ptr %5, align 8, !dbg !3465, !tbaa !2768
  %21 = load ptr, ptr %13, align 8, !dbg !3466, !tbaa !2839
  %22 = load ptr, ptr %15, align 8, !dbg !3467, !tbaa !2842
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3468
  store i32 %7, ptr %6, align 4, !dbg !3469, !tbaa !934
  ret ptr %19, !dbg !3470
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #19 !dbg !3440 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3439, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %2, metadata !3445, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %3, metadata !3446, metadata !DIExpression()), !dbg !3471
  %5 = icmp eq ptr %3, null, !dbg !3472
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3472
  call void @llvm.dbg.value(metadata ptr %6, metadata !3447, metadata !DIExpression()), !dbg !3471
  %7 = tail call ptr @__errno_location() #45, !dbg !3473
  %8 = load i32, ptr %7, align 4, !dbg !3473, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %8, metadata !3448, metadata !DIExpression()), !dbg !3471
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3474
  %10 = load i32, ptr %9, align 4, !dbg !3474, !tbaa !2818
  %11 = icmp eq ptr %2, null, !dbg !3475
  %12 = zext i1 %11 to i32, !dbg !3475
  %13 = or i32 %10, %12, !dbg !3476
  call void @llvm.dbg.value(metadata i32 %13, metadata !3449, metadata !DIExpression()), !dbg !3471
  %14 = load i32, ptr %6, align 8, !dbg !3477, !tbaa !2768
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3478
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3479
  %17 = load ptr, ptr %16, align 8, !dbg !3479, !tbaa !2839
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3480
  %19 = load ptr, ptr %18, align 8, !dbg !3480, !tbaa !2842
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3481
  %21 = add i64 %20, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %21, metadata !3450, metadata !DIExpression()), !dbg !3471
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %22, metadata !3451, metadata !DIExpression()), !dbg !3471
  %23 = load i32, ptr %6, align 8, !dbg !3484, !tbaa !2768
  %24 = load ptr, ptr %16, align 8, !dbg !3485, !tbaa !2839
  %25 = load ptr, ptr %18, align 8, !dbg !3486, !tbaa !2842
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3487
  store i32 %8, ptr %7, align 4, !dbg !3488, !tbaa !934
  br i1 %11, label %28, label %27, !dbg !3489

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3490, !tbaa !1312
  br label %28, !dbg !3492

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #19 !dbg !3494 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3499, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %1, metadata !3496, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 1, metadata !3497, metadata !DIExpression()), !dbg !3501
  %2 = load i32, ptr @nslots, align 4, !tbaa !934
  call void @llvm.dbg.value(metadata i32 1, metadata !3497, metadata !DIExpression()), !dbg !3501
  %3 = icmp sgt i32 %2, 1, !dbg !3502
  br i1 %3, label %4, label %6, !dbg !3504

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3502
  br label %10, !dbg !3504

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3505
  %8 = load ptr, ptr %7, align 8, !dbg !3505, !tbaa !3507
  %9 = icmp eq ptr %8, @slot0, !dbg !3509
  br i1 %9, label %17, label %16, !dbg !3510

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3497, metadata !DIExpression()), !dbg !3501
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3511
  %13 = load ptr, ptr %12, align 8, !dbg !3511, !tbaa !3507
  tail call void @free(ptr noundef %13) #42, !dbg !3512
  %14 = add nuw nsw i64 %11, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %14, metadata !3497, metadata !DIExpression()), !dbg !3501
  %15 = icmp eq i64 %14, %5, !dbg !3502
  br i1 %15, label %6, label %10, !dbg !3504, !llvm.loop !3514

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3516
  store i64 256, ptr @slotvec0, align 8, !dbg !3518, !tbaa !3519
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3520, !tbaa !3507
  br label %17, !dbg !3521

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3522
  br i1 %18, label %20, label %19, !dbg !3524

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3525
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3527, !tbaa !864
  br label %20, !dbg !3528

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3529, !tbaa !934
  ret void, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !3531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata ptr %1, metadata !3534, metadata !DIExpression()), !dbg !3535
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3536
  ret ptr %3, !dbg !3537
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #19 !dbg !3538 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %1, metadata !3543, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %2, metadata !3544, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %3, metadata !3545, metadata !DIExpression()), !dbg !3558
  %6 = tail call ptr @__errno_location() #45, !dbg !3559
  %7 = load i32, ptr %6, align 4, !dbg !3559, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %7, metadata !3546, metadata !DIExpression()), !dbg !3558
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3560, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %8, metadata !3547, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3548, metadata !DIExpression()), !dbg !3558
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3561
  br i1 %9, label %10, label %11, !dbg !3561

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !3563
  unreachable, !dbg !3563

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3564, !tbaa !934
  %13 = icmp sgt i32 %12, %0, !dbg !3565
  br i1 %13, label %32, label %14, !dbg !3566

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3567
  call void @llvm.dbg.value(metadata i1 %15, metadata !3549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3568
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !3569
  %16 = sext i32 %12 to i64, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %16, metadata !3552, metadata !DIExpression()), !dbg !3568
  store i64 %16, ptr %5, align 8, !dbg !3571, !tbaa !1312
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3572
  %18 = add nuw nsw i32 %0, 1, !dbg !3573
  %19 = sub i32 %18, %12, !dbg !3574
  %20 = sext i32 %19 to i64, !dbg !3575
  call void @llvm.dbg.value(metadata ptr %5, metadata !3552, metadata !DIExpression(DW_OP_deref)), !dbg !3568
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %21, metadata !3547, metadata !DIExpression()), !dbg !3558
  store ptr %21, ptr @slotvec, align 8, !dbg !3577, !tbaa !864
  br i1 %15, label %22, label %23, !dbg !3578

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3579, !tbaa.struct !3581
  br label %23, !dbg !3582

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3583, !tbaa !934
  %25 = sext i32 %24 to i64, !dbg !3584
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3584
  %27 = load i64, ptr %5, align 8, !dbg !3585, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %27, metadata !3552, metadata !DIExpression()), !dbg !3568
  %28 = sub nsw i64 %27, %25, !dbg !3586
  %29 = shl i64 %28, 4, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %26, metadata !2970, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 0, metadata !2973, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %29, metadata !2974, metadata !DIExpression()), !dbg !3588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !3590
  %30 = load i64, ptr %5, align 8, !dbg !3591, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %30, metadata !3552, metadata !DIExpression()), !dbg !3568
  %31 = trunc i64 %30 to i32, !dbg !3591
  store i32 %31, ptr @nslots, align 4, !dbg !3592, !tbaa !934
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !3593
  br label %32, !dbg !3594

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3558
  call void @llvm.dbg.value(metadata ptr %33, metadata !3547, metadata !DIExpression()), !dbg !3558
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3595
  %36 = load i64, ptr %35, align 8, !dbg !3596, !tbaa !3519
  call void @llvm.dbg.value(metadata i64 %36, metadata !3553, metadata !DIExpression()), !dbg !3597
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3598
  %38 = load ptr, ptr %37, align 8, !dbg !3598, !tbaa !3507
  call void @llvm.dbg.value(metadata ptr %38, metadata !3555, metadata !DIExpression()), !dbg !3597
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3599
  %40 = load i32, ptr %39, align 4, !dbg !3599, !tbaa !2818
  %41 = or i32 %40, 1, !dbg !3600
  call void @llvm.dbg.value(metadata i32 %41, metadata !3556, metadata !DIExpression()), !dbg !3597
  %42 = load i32, ptr %3, align 8, !dbg !3601, !tbaa !2768
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3602
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3603
  %45 = load ptr, ptr %44, align 8, !dbg !3603, !tbaa !2839
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3604
  %47 = load ptr, ptr %46, align 8, !dbg !3604, !tbaa !2842
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %48, metadata !3557, metadata !DIExpression()), !dbg !3597
  %49 = icmp ugt i64 %36, %48, !dbg !3606
  br i1 %49, label %60, label %50, !dbg !3608

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %51, metadata !3553, metadata !DIExpression()), !dbg !3597
  store i64 %51, ptr %35, align 8, !dbg !3611, !tbaa !3519
  %52 = icmp eq ptr %38, @slot0, !dbg !3612
  br i1 %52, label %54, label %53, !dbg !3614

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !3615
  br label %54, !dbg !3615

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3616
  call void @llvm.dbg.value(metadata ptr %55, metadata !3555, metadata !DIExpression()), !dbg !3597
  store ptr %55, ptr %37, align 8, !dbg !3617, !tbaa !3507
  %56 = load i32, ptr %3, align 8, !dbg !3618, !tbaa !2768
  %57 = load ptr, ptr %44, align 8, !dbg !3619, !tbaa !2839
  %58 = load ptr, ptr %46, align 8, !dbg !3620, !tbaa !2842
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3621
  br label %60, !dbg !3622

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3597
  call void @llvm.dbg.value(metadata ptr %61, metadata !3555, metadata !DIExpression()), !dbg !3597
  store i32 %7, ptr %6, align 4, !dbg !3623, !tbaa !934
  ret ptr %61, !dbg !3624
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #31

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %1, metadata !3630, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %2, metadata !3631, metadata !DIExpression()), !dbg !3632
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3633
  ret ptr %4, !dbg !3634
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #19 !dbg !3635 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3533, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %0, metadata !3534, metadata !DIExpression()), !dbg !3639
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3641
  ret ptr %2, !dbg !3642
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3643 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3647, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3648, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %0, metadata !3630, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()), !dbg !3650
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3652
  ret ptr %3, !dbg !3653
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3654 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %1, metadata !3659, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %2, metadata !3660, metadata !DIExpression()), !dbg !3662
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3663
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3661, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665), !dbg !3668
  call void @llvm.dbg.value(metadata i32 %1, metadata !3669, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3674, metadata !DIExpression()), !dbg !3677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3677, !alias.scope !3665
  %5 = icmp eq i32 %1, 10, !dbg !3678
  br i1 %5, label %6, label %7, !dbg !3680

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3681, !noalias !3665
  unreachable, !dbg !3681

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3682, !tbaa !2768, !alias.scope !3665
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3683
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3684
  ret ptr %8, !dbg !3685
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3686 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 %1, metadata !3691, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %3, metadata !3693, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3694, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3698), !dbg !3701
  call void @llvm.dbg.value(metadata i32 %1, metadata !3669, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3674, metadata !DIExpression()), !dbg !3704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3704, !alias.scope !3698
  %6 = icmp eq i32 %1, 10, !dbg !3705
  br i1 %6, label %7, label %8, !dbg !3706

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3707, !noalias !3698
  unreachable, !dbg !3707

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3708, !tbaa !2768, !alias.scope !3698
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3710
  ret ptr %9, !dbg !3711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !3712 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %1, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 0, metadata !3658, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %1, metadata !3660, metadata !DIExpression()), !dbg !3719
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3661, metadata !DIExpression()), !dbg !3722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3723), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %0, metadata !3669, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3674, metadata !DIExpression()), !dbg !3729
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3729, !alias.scope !3723
  %4 = icmp eq i32 %0, 10, !dbg !3730
  br i1 %4, label %5, label %6, !dbg !3731

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !3732, !noalias !3723
  unreachable, !dbg !3732

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3733, !tbaa !2768, !alias.scope !3723
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3734
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3735
  ret ptr %7, !dbg !3736
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3737 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata ptr %1, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %2, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3690, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %1, metadata !3692, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %2, metadata !3693, metadata !DIExpression()), !dbg !3745
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3747
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3694, metadata !DIExpression()), !dbg !3748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3749), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %0, metadata !3669, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3674, metadata !DIExpression()), !dbg !3755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3755, !alias.scope !3749
  %5 = icmp eq i32 %0, 10, !dbg !3756
  br i1 %5, label %6, label %7, !dbg !3757

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3758, !noalias !3749
  unreachable, !dbg !3758

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3759, !tbaa !2768, !alias.scope !3749
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3760
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3761
  ret ptr %8, !dbg !3762
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #19 !dbg !3763 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i8 %2, metadata !3769, metadata !DIExpression()), !dbg !3771
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3772
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3770, metadata !DIExpression()), !dbg !3773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3774, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %4, metadata !2785, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 %2, metadata !2786, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 1, metadata !2787, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 %2, metadata !2788, metadata !DIExpression()), !dbg !3776
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3778
  %6 = lshr i8 %2, 5, !dbg !3779
  %7 = zext i8 %6 to i64, !dbg !3779
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3780
  call void @llvm.dbg.value(metadata ptr %8, metadata !2789, metadata !DIExpression()), !dbg !3776
  %9 = and i8 %2, 31, !dbg !3781
  %10 = zext i8 %9 to i32, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %10, metadata !2791, metadata !DIExpression()), !dbg !3776
  %11 = load i32, ptr %8, align 4, !dbg !3782, !tbaa !934
  %12 = lshr i32 %11, %10, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %12, metadata !2792, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3776
  %13 = and i32 %12, 1, !dbg !3784
  %14 = xor i32 %13, 1, !dbg !3784
  %15 = shl nuw i32 %14, %10, !dbg !3785
  %16 = xor i32 %15, %11, !dbg !3786
  store i32 %16, ptr %8, align 4, !dbg !3786, !tbaa !934
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3787
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3788
  ret ptr %17, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #19 !dbg !3790 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 %1, metadata !3795, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 -1, metadata !3768, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i8 %1, metadata !3769, metadata !DIExpression()), !dbg !3797
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3799
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3770, metadata !DIExpression()), !dbg !3800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3801, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %3, metadata !2785, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 %1, metadata !2786, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 1, metadata !2787, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 %1, metadata !2788, metadata !DIExpression()), !dbg !3802
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3804
  %5 = lshr i8 %1, 5, !dbg !3805
  %6 = zext i8 %5 to i64, !dbg !3805
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3806
  call void @llvm.dbg.value(metadata ptr %7, metadata !2789, metadata !DIExpression()), !dbg !3802
  %8 = and i8 %1, 31, !dbg !3807
  %9 = zext i8 %8 to i32, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %9, metadata !2791, metadata !DIExpression()), !dbg !3802
  %10 = load i32, ptr %7, align 4, !dbg !3808, !tbaa !934
  %11 = lshr i32 %10, %9, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %11, metadata !2792, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3802
  %12 = and i32 %11, 1, !dbg !3810
  %13 = xor i32 %12, 1, !dbg !3810
  %14 = shl nuw i32 %13, %9, !dbg !3811
  %15 = xor i32 %14, %10, !dbg !3812
  store i32 %15, ptr %7, align 4, !dbg !3812, !tbaa !934
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3813
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3814
  ret ptr %16, !dbg !3815
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #19 !dbg !3816 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3818, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !3794, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 58, metadata !3795, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 -1, metadata !3768, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8 58, metadata !3769, metadata !DIExpression()), !dbg !3822
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3770, metadata !DIExpression()), !dbg !3825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3826, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %2, metadata !2785, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 1, metadata !2787, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8 58, metadata !2788, metadata !DIExpression()), !dbg !3827
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3829
  call void @llvm.dbg.value(metadata ptr %3, metadata !2789, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 26, metadata !2791, metadata !DIExpression()), !dbg !3827
  %4 = load i32, ptr %3, align 4, !dbg !3830, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %4, metadata !2792, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3827
  %5 = or i32 %4, 67108864, !dbg !3831
  store i32 %5, ptr %3, align 4, !dbg !3831, !tbaa !934
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3832
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !3833
  ret ptr %6, !dbg !3834
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3835 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8 58, metadata !3769, metadata !DIExpression()), !dbg !3840
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3842
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3770, metadata !DIExpression()), !dbg !3843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3844, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %3, metadata !2785, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 1, metadata !2787, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i8 58, metadata !2788, metadata !DIExpression()), !dbg !3845
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3847
  call void @llvm.dbg.value(metadata ptr %4, metadata !2789, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 26, metadata !2791, metadata !DIExpression()), !dbg !3845
  %5 = load i32, ptr %4, align 4, !dbg !3848, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %5, metadata !2792, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3845
  %6 = or i32 %5, 67108864, !dbg !3849
  store i32 %6, ptr %4, align 4, !dbg !3849, !tbaa !934
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3851
  ret ptr %7, !dbg !3852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3853 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3674, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 %1, metadata !3856, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %2, metadata !3857, metadata !DIExpression()), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3858, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i32 %1, metadata !3669, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 0, metadata !3674, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3864
  %5 = icmp eq i32 %1, 10, !dbg !3865
  br i1 %5, label %6, label %7, !dbg !3866

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3867, !noalias !3868
  unreachable, !dbg !3867

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3674, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3864
  store i32 %1, ptr %4, align 8, !dbg !3871, !tbaa.struct !3775
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3871
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3871
  call void @llvm.dbg.value(metadata ptr %4, metadata !2785, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 1, metadata !2787, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 58, metadata !2788, metadata !DIExpression()), !dbg !3872
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3874
  call void @llvm.dbg.value(metadata ptr %9, metadata !2789, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 26, metadata !2791, metadata !DIExpression()), !dbg !3872
  %10 = load i32, ptr %9, align 4, !dbg !3875, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %10, metadata !2792, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3872
  %11 = or i32 %10, 67108864, !dbg !3876
  store i32 %11, ptr %9, align 4, !dbg !3876, !tbaa !934
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3877
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3878
  ret ptr %12, !dbg !3879
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !3880 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %1, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %2, metadata !3886, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %3, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata ptr %1, metadata !3894, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata ptr %2, metadata !3895, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata ptr %3, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 -1, metadata !3897, metadata !DIExpression()), !dbg !3899
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3901
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3898, metadata !DIExpression()), !dbg !3902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3903, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !3904
  store i32 10, ptr %5, align 8, !dbg !3906, !tbaa !2768
  %6 = icmp ne ptr %1, null, !dbg !3907
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3908
  br i1 %8, label %10, label %9, !dbg !3908

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3909
  unreachable, !dbg !3909

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3910
  store ptr %1, ptr %11, align 8, !dbg !3911, !tbaa !2839
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3912
  store ptr %2, ptr %12, align 8, !dbg !3913, !tbaa !2842
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3914
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3915
  ret ptr %13, !dbg !3916
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !3890 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata ptr %1, metadata !3894, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata ptr %2, metadata !3895, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata ptr %3, metadata !3896, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 %4, metadata !3897, metadata !DIExpression()), !dbg !3917
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !3918
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3898, metadata !DIExpression()), !dbg !3919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3920, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %6, metadata !2825, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %6, metadata !2825, metadata !DIExpression()), !dbg !3921
  store i32 10, ptr %6, align 8, !dbg !3923, !tbaa !2768
  %7 = icmp ne ptr %1, null, !dbg !3924
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3925
  br i1 %9, label %11, label %10, !dbg !3925

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !3926
  unreachable, !dbg !3926

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3927
  store ptr %1, ptr %12, align 8, !dbg !3928, !tbaa !2839
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3929
  store ptr %2, ptr %13, align 8, !dbg !3930, !tbaa !2842
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3931
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !3932
  ret ptr %14, !dbg !3933
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3934 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %1, metadata !3939, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %2, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 0, metadata !3884, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %0, metadata !3885, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %1, metadata !3886, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %2, metadata !3887, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3889, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %1, metadata !3895, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %2, metadata !3896, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i64 -1, metadata !3897, metadata !DIExpression()), !dbg !3944
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3946
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3898, metadata !DIExpression()), !dbg !3947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3948, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %4, metadata !2825, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %0, metadata !2826, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %1, metadata !2827, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %4, metadata !2825, metadata !DIExpression()), !dbg !3949
  store i32 10, ptr %4, align 8, !dbg !3951, !tbaa !2768
  %5 = icmp ne ptr %0, null, !dbg !3952
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3953
  br i1 %7, label %9, label %8, !dbg !3953

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3954
  unreachable, !dbg !3954

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3955
  store ptr %0, ptr %10, align 8, !dbg !3956, !tbaa !2839
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3957
  store ptr %1, ptr %11, align 8, !dbg !3958, !tbaa !2842
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3959
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3960
  ret ptr %12, !dbg !3961
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3962 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3966, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %1, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %2, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %3, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3889, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %1, metadata !3895, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %2, metadata !3896, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %3, metadata !3897, metadata !DIExpression()), !dbg !3971
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3898, metadata !DIExpression()), !dbg !3974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3975, !tbaa.struct !3775
  call void @llvm.dbg.value(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr %0, metadata !2826, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr %1, metadata !2827, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !3976
  store i32 10, ptr %5, align 8, !dbg !3978, !tbaa !2768
  %6 = icmp ne ptr %0, null, !dbg !3979
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3980
  br i1 %8, label %10, label %9, !dbg !3980

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3981
  unreachable, !dbg !3981

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3982
  store ptr %0, ptr %11, align 8, !dbg !3983, !tbaa !2839
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3984
  store ptr %1, ptr %12, align 8, !dbg !3985, !tbaa !2842
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3986
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3987
  ret ptr %13, !dbg !3988
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %1, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %2, metadata !3995, metadata !DIExpression()), !dbg !3996
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3997
  ret ptr %4, !dbg !3998
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3999 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()), !dbg !4006
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4008
  ret ptr %3, !dbg !4009
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !4010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata ptr %1, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %1, metadata !3994, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()), !dbg !4017
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4019
  ret ptr %3, !dbg !4020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #19 !dbg !4021 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 0, metadata !4014, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata ptr %0, metadata !4015, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()), !dbg !4029
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4031
  ret ptr %2, !dbg !4032
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #19 !dbg !4033 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4072, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %1, metadata !4073, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %2, metadata !4074, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %3, metadata !4075, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %4, metadata !4076, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %5, metadata !4077, metadata !DIExpression()), !dbg !4078
  %7 = icmp eq ptr %1, null, !dbg !4079
  br i1 %7, label %10, label %8, !dbg !4081

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4082
  br label %12, !dbg !4082

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #42, !dbg !4083
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #42, !dbg !4084
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4084
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4085
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #42, !dbg !4086
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #42, !dbg !4086
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4087
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
  ], !dbg !4088

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #42, !dbg !4089
  %21 = load ptr, ptr %4, align 8, !dbg !4089, !tbaa !864
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4089
  br label %147, !dbg !4091

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #42, !dbg !4092
  %25 = load ptr, ptr %4, align 8, !dbg !4092, !tbaa !864
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4092
  %27 = load ptr, ptr %26, align 8, !dbg !4092, !tbaa !864
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4092
  br label %147, !dbg !4093

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #42, !dbg !4094
  %31 = load ptr, ptr %4, align 8, !dbg !4094, !tbaa !864
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4094
  %33 = load ptr, ptr %32, align 8, !dbg !4094, !tbaa !864
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4094
  %35 = load ptr, ptr %34, align 8, !dbg !4094, !tbaa !864
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4094
  br label %147, !dbg !4095

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #42, !dbg !4096
  %39 = load ptr, ptr %4, align 8, !dbg !4096, !tbaa !864
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4096
  %41 = load ptr, ptr %40, align 8, !dbg !4096, !tbaa !864
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4096
  %43 = load ptr, ptr %42, align 8, !dbg !4096, !tbaa !864
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4096
  %45 = load ptr, ptr %44, align 8, !dbg !4096, !tbaa !864
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4096
  br label %147, !dbg !4097

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #42, !dbg !4098
  %49 = load ptr, ptr %4, align 8, !dbg !4098, !tbaa !864
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4098
  %51 = load ptr, ptr %50, align 8, !dbg !4098, !tbaa !864
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4098
  %53 = load ptr, ptr %52, align 8, !dbg !4098, !tbaa !864
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4098
  %55 = load ptr, ptr %54, align 8, !dbg !4098, !tbaa !864
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4098
  %57 = load ptr, ptr %56, align 8, !dbg !4098, !tbaa !864
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4098
  br label %147, !dbg !4099

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #42, !dbg !4100
  %61 = load ptr, ptr %4, align 8, !dbg !4100, !tbaa !864
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4100
  %63 = load ptr, ptr %62, align 8, !dbg !4100, !tbaa !864
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4100
  %65 = load ptr, ptr %64, align 8, !dbg !4100, !tbaa !864
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4100
  %67 = load ptr, ptr %66, align 8, !dbg !4100, !tbaa !864
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4100
  %69 = load ptr, ptr %68, align 8, !dbg !4100, !tbaa !864
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4100
  %71 = load ptr, ptr %70, align 8, !dbg !4100, !tbaa !864
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4100
  br label %147, !dbg !4101

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #42, !dbg !4102
  %75 = load ptr, ptr %4, align 8, !dbg !4102, !tbaa !864
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4102
  %77 = load ptr, ptr %76, align 8, !dbg !4102, !tbaa !864
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4102
  %79 = load ptr, ptr %78, align 8, !dbg !4102, !tbaa !864
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4102
  %81 = load ptr, ptr %80, align 8, !dbg !4102, !tbaa !864
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4102
  %83 = load ptr, ptr %82, align 8, !dbg !4102, !tbaa !864
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4102
  %85 = load ptr, ptr %84, align 8, !dbg !4102, !tbaa !864
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4102
  %87 = load ptr, ptr %86, align 8, !dbg !4102, !tbaa !864
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4102
  br label %147, !dbg !4103

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #42, !dbg !4104
  %91 = load ptr, ptr %4, align 8, !dbg !4104, !tbaa !864
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4104
  %93 = load ptr, ptr %92, align 8, !dbg !4104, !tbaa !864
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4104
  %95 = load ptr, ptr %94, align 8, !dbg !4104, !tbaa !864
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4104
  %97 = load ptr, ptr %96, align 8, !dbg !4104, !tbaa !864
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4104
  %99 = load ptr, ptr %98, align 8, !dbg !4104, !tbaa !864
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4104
  %101 = load ptr, ptr %100, align 8, !dbg !4104, !tbaa !864
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4104
  %103 = load ptr, ptr %102, align 8, !dbg !4104, !tbaa !864
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4104
  %105 = load ptr, ptr %104, align 8, !dbg !4104, !tbaa !864
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4104
  br label %147, !dbg !4105

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #42, !dbg !4106
  %109 = load ptr, ptr %4, align 8, !dbg !4106, !tbaa !864
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4106
  %111 = load ptr, ptr %110, align 8, !dbg !4106, !tbaa !864
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4106
  %113 = load ptr, ptr %112, align 8, !dbg !4106, !tbaa !864
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4106
  %115 = load ptr, ptr %114, align 8, !dbg !4106, !tbaa !864
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4106
  %117 = load ptr, ptr %116, align 8, !dbg !4106, !tbaa !864
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4106
  %119 = load ptr, ptr %118, align 8, !dbg !4106, !tbaa !864
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4106
  %121 = load ptr, ptr %120, align 8, !dbg !4106, !tbaa !864
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4106
  %123 = load ptr, ptr %122, align 8, !dbg !4106, !tbaa !864
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4106
  %125 = load ptr, ptr %124, align 8, !dbg !4106, !tbaa !864
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4106
  br label %147, !dbg !4107

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #42, !dbg !4108
  %129 = load ptr, ptr %4, align 8, !dbg !4108, !tbaa !864
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4108
  %131 = load ptr, ptr %130, align 8, !dbg !4108, !tbaa !864
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4108
  %133 = load ptr, ptr %132, align 8, !dbg !4108, !tbaa !864
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4108
  %135 = load ptr, ptr %134, align 8, !dbg !4108, !tbaa !864
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4108
  %137 = load ptr, ptr %136, align 8, !dbg !4108, !tbaa !864
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4108
  %139 = load ptr, ptr %138, align 8, !dbg !4108, !tbaa !864
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4108
  %141 = load ptr, ptr %140, align 8, !dbg !4108, !tbaa !864
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4108
  %143 = load ptr, ptr %142, align 8, !dbg !4108, !tbaa !864
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4108
  %145 = load ptr, ptr %144, align 8, !dbg !4108, !tbaa !864
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4108
  br label %147, !dbg !4109

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #19 !dbg !4111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4115, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %1, metadata !4116, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %2, metadata !4117, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %4, metadata !4119, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 0, metadata !4120, metadata !DIExpression()), !dbg !4121
  br label %6, !dbg !4122

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4124
  call void @llvm.dbg.value(metadata i64 %7, metadata !4120, metadata !DIExpression()), !dbg !4121
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4125
  %9 = load ptr, ptr %8, align 8, !dbg !4125, !tbaa !864
  %10 = icmp eq ptr %9, null, !dbg !4127
  %11 = add i64 %7, 1, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %11, metadata !4120, metadata !DIExpression()), !dbg !4121
  br i1 %10, label %12, label %6, !dbg !4127, !llvm.loop !4129

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4131
  ret void, !dbg !4132
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #19 !dbg !4133 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4148, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %1, metadata !4149, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %3, metadata !4151, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4152, metadata !DIExpression()), !dbg !4157
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4154, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 0, metadata !4153, metadata !DIExpression()), !dbg !4156
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4153, metadata !DIExpression()), !dbg !4156
  %10 = icmp sgt i32 %9, -1, !dbg !4160
  br i1 %10, label %18, label %11, !dbg !4160

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4160
  store i32 %12, ptr %7, align 8, !dbg !4160
  %13 = icmp ult i32 %9, -7, !dbg !4160
  br i1 %13, label %14, label %18, !dbg !4160

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4160
  %16 = sext i32 %9 to i64, !dbg !4160
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4160
  br label %22, !dbg !4160

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4160
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4160
  store ptr %21, ptr %4, align 8, !dbg !4160
  br label %22, !dbg !4160

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4160
  %25 = load ptr, ptr %24, align 8, !dbg !4160
  store ptr %25, ptr %6, align 8, !dbg !4163, !tbaa !864
  %26 = icmp eq ptr %25, null, !dbg !4164
  br i1 %26, label %197, label %27, !dbg !4165

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 1, metadata !4153, metadata !DIExpression()), !dbg !4156
  %28 = icmp sgt i32 %23, -1, !dbg !4160
  br i1 %28, label %36, label %29, !dbg !4160

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4160
  store i32 %30, ptr %7, align 8, !dbg !4160
  %31 = icmp ult i32 %23, -7, !dbg !4160
  br i1 %31, label %32, label %36, !dbg !4160

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4160
  %34 = sext i32 %23 to i64, !dbg !4160
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4160
  br label %40, !dbg !4160

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4160
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4160
  store ptr %39, ptr %4, align 8, !dbg !4160
  br label %40, !dbg !4160

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4160
  %43 = load ptr, ptr %42, align 8, !dbg !4160
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4166
  store ptr %43, ptr %44, align 8, !dbg !4163, !tbaa !864
  %45 = icmp eq ptr %43, null, !dbg !4164
  br i1 %45, label %197, label %46, !dbg !4165

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 2, metadata !4153, metadata !DIExpression()), !dbg !4156
  %47 = icmp sgt i32 %41, -1, !dbg !4160
  br i1 %47, label %55, label %48, !dbg !4160

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4160
  store i32 %49, ptr %7, align 8, !dbg !4160
  %50 = icmp ult i32 %41, -7, !dbg !4160
  br i1 %50, label %51, label %55, !dbg !4160

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4160
  %53 = sext i32 %41 to i64, !dbg !4160
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4160
  br label %59, !dbg !4160

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4160
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4160
  store ptr %58, ptr %4, align 8, !dbg !4160
  br label %59, !dbg !4160

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4160
  %62 = load ptr, ptr %61, align 8, !dbg !4160
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4166
  store ptr %62, ptr %63, align 8, !dbg !4163, !tbaa !864
  %64 = icmp eq ptr %62, null, !dbg !4164
  br i1 %64, label %197, label %65, !dbg !4165

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 3, metadata !4153, metadata !DIExpression()), !dbg !4156
  %66 = icmp sgt i32 %60, -1, !dbg !4160
  br i1 %66, label %74, label %67, !dbg !4160

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4160
  store i32 %68, ptr %7, align 8, !dbg !4160
  %69 = icmp ult i32 %60, -7, !dbg !4160
  br i1 %69, label %70, label %74, !dbg !4160

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4160
  %72 = sext i32 %60 to i64, !dbg !4160
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4160
  br label %78, !dbg !4160

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4160
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4160
  store ptr %77, ptr %4, align 8, !dbg !4160
  br label %78, !dbg !4160

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4160
  %81 = load ptr, ptr %80, align 8, !dbg !4160
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4166
  store ptr %81, ptr %82, align 8, !dbg !4163, !tbaa !864
  %83 = icmp eq ptr %81, null, !dbg !4164
  br i1 %83, label %197, label %84, !dbg !4165

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 4, metadata !4153, metadata !DIExpression()), !dbg !4156
  %85 = icmp sgt i32 %79, -1, !dbg !4160
  br i1 %85, label %93, label %86, !dbg !4160

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4160
  store i32 %87, ptr %7, align 8, !dbg !4160
  %88 = icmp ult i32 %79, -7, !dbg !4160
  br i1 %88, label %89, label %93, !dbg !4160

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4160
  %91 = sext i32 %79 to i64, !dbg !4160
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4160
  br label %97, !dbg !4160

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4160
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4160
  store ptr %96, ptr %4, align 8, !dbg !4160
  br label %97, !dbg !4160

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4160
  %100 = load ptr, ptr %99, align 8, !dbg !4160
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4166
  store ptr %100, ptr %101, align 8, !dbg !4163, !tbaa !864
  %102 = icmp eq ptr %100, null, !dbg !4164
  br i1 %102, label %197, label %103, !dbg !4165

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 5, metadata !4153, metadata !DIExpression()), !dbg !4156
  %104 = icmp sgt i32 %98, -1, !dbg !4160
  br i1 %104, label %112, label %105, !dbg !4160

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4160
  store i32 %106, ptr %7, align 8, !dbg !4160
  %107 = icmp ult i32 %98, -7, !dbg !4160
  br i1 %107, label %108, label %112, !dbg !4160

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4160
  %110 = sext i32 %98 to i64, !dbg !4160
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4160
  br label %116, !dbg !4160

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4160
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4160
  store ptr %115, ptr %4, align 8, !dbg !4160
  br label %116, !dbg !4160

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4160
  %119 = load ptr, ptr %118, align 8, !dbg !4160
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4166
  store ptr %119, ptr %120, align 8, !dbg !4163, !tbaa !864
  %121 = icmp eq ptr %119, null, !dbg !4164
  br i1 %121, label %197, label %122, !dbg !4165

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 6, metadata !4153, metadata !DIExpression()), !dbg !4156
  %123 = icmp sgt i32 %117, -1, !dbg !4160
  br i1 %123, label %131, label %124, !dbg !4160

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4160
  store i32 %125, ptr %7, align 8, !dbg !4160
  %126 = icmp ult i32 %117, -7, !dbg !4160
  br i1 %126, label %127, label %131, !dbg !4160

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4160
  %129 = sext i32 %117 to i64, !dbg !4160
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4160
  br label %135, !dbg !4160

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4160
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4160
  store ptr %134, ptr %4, align 8, !dbg !4160
  br label %135, !dbg !4160

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4160
  %138 = load ptr, ptr %137, align 8, !dbg !4160
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4166
  store ptr %138, ptr %139, align 8, !dbg !4163, !tbaa !864
  %140 = icmp eq ptr %138, null, !dbg !4164
  br i1 %140, label %197, label %141, !dbg !4165

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 7, metadata !4153, metadata !DIExpression()), !dbg !4156
  %142 = icmp sgt i32 %136, -1, !dbg !4160
  br i1 %142, label %150, label %143, !dbg !4160

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4160
  store i32 %144, ptr %7, align 8, !dbg !4160
  %145 = icmp ult i32 %136, -7, !dbg !4160
  br i1 %145, label %146, label %150, !dbg !4160

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4160
  %148 = sext i32 %136 to i64, !dbg !4160
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4160
  br label %154, !dbg !4160

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4160
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4160
  store ptr %153, ptr %4, align 8, !dbg !4160
  br label %154, !dbg !4160

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4160
  %157 = load ptr, ptr %156, align 8, !dbg !4160
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4166
  store ptr %157, ptr %158, align 8, !dbg !4163, !tbaa !864
  %159 = icmp eq ptr %157, null, !dbg !4164
  br i1 %159, label %197, label %160, !dbg !4165

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 8, metadata !4153, metadata !DIExpression()), !dbg !4156
  %161 = icmp sgt i32 %155, -1, !dbg !4160
  br i1 %161, label %169, label %162, !dbg !4160

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4160
  store i32 %163, ptr %7, align 8, !dbg !4160
  %164 = icmp ult i32 %155, -7, !dbg !4160
  br i1 %164, label %165, label %169, !dbg !4160

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4160
  %167 = sext i32 %155 to i64, !dbg !4160
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4160
  br label %173, !dbg !4160

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4160
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4160
  store ptr %172, ptr %4, align 8, !dbg !4160
  br label %173, !dbg !4160

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4160
  %176 = load ptr, ptr %175, align 8, !dbg !4160
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4166
  store ptr %176, ptr %177, align 8, !dbg !4163, !tbaa !864
  %178 = icmp eq ptr %176, null, !dbg !4164
  br i1 %178, label %197, label %179, !dbg !4165

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 9, metadata !4153, metadata !DIExpression()), !dbg !4156
  %180 = icmp sgt i32 %174, -1, !dbg !4160
  br i1 %180, label %188, label %181, !dbg !4160

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4160
  store i32 %182, ptr %7, align 8, !dbg !4160
  %183 = icmp ult i32 %174, -7, !dbg !4160
  br i1 %183, label %184, label %188, !dbg !4160

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4160
  %186 = sext i32 %174 to i64, !dbg !4160
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4160
  br label %191, !dbg !4160

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4160
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4160
  store ptr %190, ptr %4, align 8, !dbg !4160
  br label %191, !dbg !4160

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4160
  %193 = load ptr, ptr %192, align 8, !dbg !4160
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4166
  store ptr %193, ptr %194, align 8, !dbg !4163, !tbaa !864
  %195 = icmp eq ptr %193, null, !dbg !4164
  %196 = select i1 %195, i64 9, i64 10, !dbg !4165
  br label %197, !dbg !4165

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4167
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4168
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4169
  ret void, !dbg !4169
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #19 !dbg !4170 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %1, metadata !4175, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %3, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4178, metadata !DIExpression()), !dbg !4181
  call void @llvm.va_start(ptr nonnull %5), !dbg !4182
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !4183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4183, !tbaa.struct !2148
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4183
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !4183
  call void @llvm.va_end(ptr nonnull %5), !dbg !4184
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !4185
  ret void, !dbg !4185
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #19 !dbg !4186 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4187, !tbaa !864
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4187
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #42, !dbg !4188
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #42, !dbg !4188
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #42, !dbg !4189
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #42, !dbg !4189
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #42, !dbg !4190
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #42, !dbg !4190
  ret void, !dbg !4191
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4192 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4197, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %1, metadata !4198, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %2, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %2, metadata !4205, metadata !DIExpression()), !dbg !4206
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4208
  call void @llvm.dbg.value(metadata ptr %4, metadata !4209, metadata !DIExpression()), !dbg !4214
  %5 = icmp eq ptr %4, null, !dbg !4216
  br i1 %5, label %6, label %7, !dbg !4218

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4219
  unreachable, !dbg !4219

7:                                                ; preds = %3
  ret ptr %4, !dbg !4220
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %2, metadata !4205, metadata !DIExpression()), !dbg !4221
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %4, metadata !4209, metadata !DIExpression()), !dbg !4223
  %5 = icmp eq ptr %4, null, !dbg !4225
  br i1 %5, label %6, label %7, !dbg !4226

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4227
  unreachable, !dbg !4227

7:                                                ; preds = %3
  ret ptr %4, !dbg !4228
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4229 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4231, metadata !DIExpression()), !dbg !4232
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4234
  %3 = icmp eq ptr %2, null, !dbg !4236
  br i1 %3, label %4, label %5, !dbg !4237

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4238
  unreachable, !dbg !4238

5:                                                ; preds = %1
  ret ptr %2, !dbg !4239
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4247
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4249
  call void @llvm.dbg.value(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4250
  %3 = icmp eq ptr %2, null, !dbg !4252
  br i1 %3, label %4, label %5, !dbg !4253

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4254
  unreachable, !dbg !4254

5:                                                ; preds = %1
  ret ptr %2, !dbg !4255
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4256 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4260, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %0, metadata !4231, metadata !DIExpression()), !dbg !4262
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4264
  call void @llvm.dbg.value(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4265
  %3 = icmp eq ptr %2, null, !dbg !4267
  br i1 %3, label %4, label %5, !dbg !4268

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4269
  unreachable, !dbg !4269

5:                                                ; preds = %1
  ret ptr %2, !dbg !4270
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4271 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4275, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !4282, metadata !DIExpression()), !dbg !4283
  %3 = icmp eq i64 %1, 0, !dbg !4285
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4285
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4286
  call void @llvm.dbg.value(metadata ptr %5, metadata !4209, metadata !DIExpression()), !dbg !4287
  %6 = icmp eq ptr %5, null, !dbg !4289
  br i1 %6, label %7, label %8, !dbg !4290

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4291
  unreachable, !dbg !4291

8:                                                ; preds = %2
  ret ptr %5, !dbg !4292
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4293 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %0, metadata !4301, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 %1, metadata !4304, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %1, metadata !4282, metadata !DIExpression()), !dbg !4307
  %3 = icmp eq i64 %1, 0, !dbg !4309
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4309
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4310
  call void @llvm.dbg.value(metadata ptr %5, metadata !4209, metadata !DIExpression()), !dbg !4311
  %6 = icmp eq ptr %5, null, !dbg !4313
  br i1 %6, label %7, label %8, !dbg !4314

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4315
  unreachable, !dbg !4315

8:                                                ; preds = %2
  ret ptr %5, !dbg !4316
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4317 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4321, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i64 %1, metadata !4322, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i64 %2, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr %0, metadata !4325, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %1, metadata !4328, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %2, metadata !4329, metadata !DIExpression()), !dbg !4330
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4332
  call void @llvm.dbg.value(metadata ptr %4, metadata !4209, metadata !DIExpression()), !dbg !4333
  %5 = icmp eq ptr %4, null, !dbg !4335
  br i1 %5, label %6, label %7, !dbg !4336

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4337
  unreachable, !dbg !4337

7:                                                ; preds = %3
  ret ptr %4, !dbg !4338
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4339 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4343, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i64 %1, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr null, metadata !4201, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %0, metadata !4204, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()), !dbg !4346
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4348
  call void @llvm.dbg.value(metadata ptr %3, metadata !4209, metadata !DIExpression()), !dbg !4349
  %4 = icmp eq ptr %3, null, !dbg !4351
  br i1 %4, label %5, label %6, !dbg !4352

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4353
  unreachable, !dbg !4353

6:                                                ; preds = %2
  ret ptr %3, !dbg !4354
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4355 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4359, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %1, metadata !4360, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata ptr null, metadata !4321, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %0, metadata !4322, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %1, metadata !4323, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr null, metadata !4325, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %0, metadata !4328, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %1, metadata !4329, metadata !DIExpression()), !dbg !4364
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4366
  call void @llvm.dbg.value(metadata ptr %3, metadata !4209, metadata !DIExpression()), !dbg !4367
  %4 = icmp eq ptr %3, null, !dbg !4369
  br i1 %4, label %5, label %6, !dbg !4370

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4371
  unreachable, !dbg !4371

6:                                                ; preds = %2
  ret ptr %3, !dbg !4372
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #19 !dbg !4373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4377, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata ptr %1, metadata !4378, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata ptr %0, metadata !798, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %1, metadata !799, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 1, metadata !800, metadata !DIExpression()), !dbg !4380
  %3 = load i64, ptr %1, align 8, !dbg !4382, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %3, metadata !801, metadata !DIExpression()), !dbg !4380
  %4 = icmp eq ptr %0, null, !dbg !4383
  br i1 %4, label %5, label %8, !dbg !4385

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4386
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4389
  br label %15, !dbg !4389

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4390
  %10 = add nuw i64 %9, 1, !dbg !4390
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4390
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4390
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4390
  call void @llvm.dbg.value(metadata i64 %13, metadata !801, metadata !DIExpression()), !dbg !4380
  br i1 %12, label %14, label %15, !dbg !4393

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4394
  unreachable, !dbg !4394

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4380
  call void @llvm.dbg.value(metadata i64 %16, metadata !801, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i64 %16, metadata !4204, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i64 1, metadata !4205, metadata !DIExpression()), !dbg !4395
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4397
  call void @llvm.dbg.value(metadata ptr %17, metadata !4209, metadata !DIExpression()), !dbg !4398
  %18 = icmp eq ptr %17, null, !dbg !4400
  br i1 %18, label %19, label %20, !dbg !4401

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4402
  unreachable, !dbg !4402

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !798, metadata !DIExpression()), !dbg !4380
  store i64 %16, ptr %1, align 8, !dbg !4403, !tbaa !1312
  ret ptr %17, !dbg !4404
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !793 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !798, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata ptr %1, metadata !799, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 %2, metadata !800, metadata !DIExpression()), !dbg !4405
  %4 = load i64, ptr %1, align 8, !dbg !4406, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %4, metadata !801, metadata !DIExpression()), !dbg !4405
  %5 = icmp eq ptr %0, null, !dbg !4407
  br i1 %5, label %6, label %13, !dbg !4408

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4409
  br i1 %7, label %8, label %20, !dbg !4410

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4411
  call void @llvm.dbg.value(metadata i64 %9, metadata !801, metadata !DIExpression()), !dbg !4405
  %10 = icmp ugt i64 %2, 128, !dbg !4413
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4414
  call void @llvm.dbg.value(metadata i64 %12, metadata !801, metadata !DIExpression()), !dbg !4405
  br label %20, !dbg !4415

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4416
  %15 = add nuw i64 %14, 1, !dbg !4416
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4416
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4416
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4416
  call void @llvm.dbg.value(metadata i64 %18, metadata !801, metadata !DIExpression()), !dbg !4405
  br i1 %17, label %19, label %20, !dbg !4417

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4418
  unreachable, !dbg !4418

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4405
  call void @llvm.dbg.value(metadata i64 %21, metadata !801, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %21, metadata !4204, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %2, metadata !4205, metadata !DIExpression()), !dbg !4419
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4421
  call void @llvm.dbg.value(metadata ptr %22, metadata !4209, metadata !DIExpression()), !dbg !4422
  %23 = icmp eq ptr %22, null, !dbg !4424
  br i1 %23, label %24, label %25, !dbg !4425

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4426
  unreachable, !dbg !4426

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !798, metadata !DIExpression()), !dbg !4405
  store i64 %21, ptr %1, align 8, !dbg !4427, !tbaa !1312
  ret ptr %22, !dbg !4428
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !805 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !813, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata ptr %1, metadata !814, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %2, metadata !815, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %3, metadata !816, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %4, metadata !817, metadata !DIExpression()), !dbg !4429
  %6 = load i64, ptr %1, align 8, !dbg !4430, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %6, metadata !818, metadata !DIExpression()), !dbg !4429
  %7 = ashr i64 %6, 1, !dbg !4431
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4431
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4431
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4431
  call void @llvm.dbg.value(metadata i64 %10, metadata !819, metadata !DIExpression()), !dbg !4429
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4433
  call void @llvm.dbg.value(metadata i64 %11, metadata !819, metadata !DIExpression()), !dbg !4429
  %12 = icmp sgt i64 %3, -1, !dbg !4434
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4436
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %15, metadata !819, metadata !DIExpression()), !dbg !4429
  %16 = icmp slt i64 %4, 0, !dbg !4437
  br i1 %16, label %17, label %30, !dbg !4437

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4437
  br i1 %18, label %19, label %24, !dbg !4437

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4437
  %21 = udiv i64 9223372036854775807, %20, !dbg !4437
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4437
  br i1 %23, label %46, label %43, !dbg !4437

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4437
  br i1 %25, label %43, label %26, !dbg !4437

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4437
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4437
  %29 = icmp ult i64 %28, %15, !dbg !4437
  br i1 %29, label %46, label %43, !dbg !4437

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4437
  br i1 %31, label %43, label %32, !dbg !4437

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4437
  br i1 %33, label %34, label %40, !dbg !4437

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4437
  br i1 %35, label %43, label %36, !dbg !4437

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4437
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4437
  %39 = icmp ult i64 %38, %4, !dbg !4437
  br i1 %39, label %46, label %43, !dbg !4437

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4437
  br i1 %42, label %46, label %43, !dbg !4437

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !820, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  %44 = mul i64 %15, %4, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %44, metadata !820, metadata !DIExpression()), !dbg !4429
  %45 = icmp slt i64 %44, 128, !dbg !4437
  br i1 %45, label %46, label %52, !dbg !4437

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !821, metadata !DIExpression()), !dbg !4429
  %48 = sdiv i64 %47, %4, !dbg !4438
  call void @llvm.dbg.value(metadata i64 %48, metadata !819, metadata !DIExpression()), !dbg !4429
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4441
  call void @llvm.dbg.value(metadata i64 %51, metadata !820, metadata !DIExpression()), !dbg !4429
  br label %52, !dbg !4442

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4429
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4429
  call void @llvm.dbg.value(metadata i64 %54, metadata !820, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %53, metadata !819, metadata !DIExpression()), !dbg !4429
  %55 = icmp eq ptr %0, null, !dbg !4443
  br i1 %55, label %56, label %57, !dbg !4445

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4446, !tbaa !1312
  br label %57, !dbg !4447

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4448
  %59 = icmp slt i64 %58, %2, !dbg !4450
  br i1 %59, label %60, label %97, !dbg !4451

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4452
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4452
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4452
  call void @llvm.dbg.value(metadata i64 %63, metadata !819, metadata !DIExpression()), !dbg !4429
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4453
  br i1 %66, label %96, label %67, !dbg !4453

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4454

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4454
  br i1 %69, label %70, label %75, !dbg !4454

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4454
  %72 = udiv i64 9223372036854775807, %71, !dbg !4454
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4454
  br i1 %74, label %96, label %94, !dbg !4454

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4454
  br i1 %76, label %94, label %77, !dbg !4454

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4454
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4454
  %80 = icmp ult i64 %79, %63, !dbg !4454
  br i1 %80, label %96, label %94, !dbg !4454

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4454
  br i1 %82, label %94, label %83, !dbg !4454

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4454
  br i1 %84, label %85, label %91, !dbg !4454

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4454
  br i1 %86, label %94, label %87, !dbg !4454

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4454
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4454
  %90 = icmp ult i64 %89, %4, !dbg !4454
  br i1 %90, label %96, label %94, !dbg !4454

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4454
  br i1 %93, label %96, label %94, !dbg !4454

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !820, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  %95 = mul i64 %63, %4, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %95, metadata !820, metadata !DIExpression()), !dbg !4429
  br label %97, !dbg !4455

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #44, !dbg !4456
  unreachable, !dbg !4456

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4429
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4429
  call void @llvm.dbg.value(metadata i64 %99, metadata !820, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %98, metadata !819, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata ptr %0, metadata !4275, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 %99, metadata !4276, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %99, metadata !4282, metadata !DIExpression()), !dbg !4459
  %100 = icmp eq i64 %99, 0, !dbg !4461
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4461
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #49, !dbg !4462
  call void @llvm.dbg.value(metadata ptr %102, metadata !4209, metadata !DIExpression()), !dbg !4463
  %103 = icmp eq ptr %102, null, !dbg !4465
  br i1 %103, label %104, label %105, !dbg !4466

104:                                              ; preds = %97
  tail call void @xalloc_die() #44, !dbg !4467
  unreachable, !dbg !4467

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !813, metadata !DIExpression()), !dbg !4429
  store i64 %98, ptr %1, align 8, !dbg !4468, !tbaa !1312
  ret ptr %102, !dbg !4469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4470 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %0, metadata !4474, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i64 1, metadata !4477, metadata !DIExpression()), !dbg !4478
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4480
  call void @llvm.dbg.value(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4481
  %3 = icmp eq ptr %2, null, !dbg !4483
  br i1 %3, label %4, label %5, !dbg !4484

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4485
  unreachable, !dbg !4485

5:                                                ; preds = %1
  ret ptr %2, !dbg !4486
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4487 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4475 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4474, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %1, metadata !4477, metadata !DIExpression()), !dbg !4488
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4489
  call void @llvm.dbg.value(metadata ptr %3, metadata !4209, metadata !DIExpression()), !dbg !4490
  %4 = icmp eq ptr %3, null, !dbg !4492
  br i1 %4, label %5, label %6, !dbg !4493

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4494
  unreachable, !dbg !4494

6:                                                ; preds = %2
  ret ptr %3, !dbg !4495
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4496 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 %0, metadata !4500, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 1, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %0, metadata !4506, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 1, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %0, metadata !4506, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 1, metadata !4509, metadata !DIExpression()), !dbg !4510
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4512
  call void @llvm.dbg.value(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4513
  %3 = icmp eq ptr %2, null, !dbg !4515
  br i1 %3, label %4, label %5, !dbg !4516

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4517
  unreachable, !dbg !4517

5:                                                ; preds = %1
  ret ptr %2, !dbg !4518
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4501 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4500, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %0, metadata !4506, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %1, metadata !4509, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %0, metadata !4506, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %1, metadata !4509, metadata !DIExpression()), !dbg !4520
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4522
  call void @llvm.dbg.value(metadata ptr %3, metadata !4209, metadata !DIExpression()), !dbg !4523
  %4 = icmp eq ptr %3, null, !dbg !4525
  br i1 %4, label %5, label %6, !dbg !4526

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4527
  unreachable, !dbg !4527

6:                                                ; preds = %2
  ret ptr %3, !dbg !4528
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4529 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4533, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %1, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %1, metadata !4231, metadata !DIExpression()), !dbg !4536
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4538
  call void @llvm.dbg.value(metadata ptr %3, metadata !4209, metadata !DIExpression()), !dbg !4539
  %4 = icmp eq ptr %3, null, !dbg !4541
  br i1 %4, label %5, label %6, !dbg !4542

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4543
  unreachable, !dbg !4543

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4544, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4554
  ret ptr %3, !dbg !4555
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4556 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4560, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %1, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4565
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4567
  call void @llvm.dbg.value(metadata ptr %3, metadata !4209, metadata !DIExpression()), !dbg !4568
  %4 = icmp eq ptr %3, null, !dbg !4570
  br i1 %4, label %5, label %6, !dbg !4571

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4572
  unreachable, !dbg !4572

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4544, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4573
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4575
  ret ptr %3, !dbg !4576
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !dbg !4577 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4581, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4584
  %3 = add nsw i64 %1, 1, !dbg !4585
  call void @llvm.dbg.value(metadata i64 %3, metadata !4242, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %3, metadata !4244, metadata !DIExpression()), !dbg !4588
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4590
  call void @llvm.dbg.value(metadata ptr %4, metadata !4209, metadata !DIExpression()), !dbg !4591
  %5 = icmp eq ptr %4, null, !dbg !4593
  br i1 %5, label %6, label %7, !dbg !4594

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4595
  unreachable, !dbg !4595

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4583, metadata !DIExpression()), !dbg !4584
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4596
  store i8 0, ptr %8, align 1, !dbg !4597, !tbaa !943
  call void @llvm.dbg.value(metadata ptr %4, metadata !4544, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4598
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4600
  ret ptr %4, !dbg !4601
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !dbg !4602 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4604, metadata !DIExpression()), !dbg !4605
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !4606
  %3 = add i64 %2, 1, !dbg !4607
  call void @llvm.dbg.value(metadata ptr %0, metadata !4533, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %3, metadata !4534, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %3, metadata !4231, metadata !DIExpression()), !dbg !4610
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4612
  call void @llvm.dbg.value(metadata ptr %4, metadata !4209, metadata !DIExpression()), !dbg !4613
  %5 = icmp eq ptr %4, null, !dbg !4615
  br i1 %5, label %6, label %7, !dbg !4616

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4617
  unreachable, !dbg !4617

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4544, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata i64 %3, metadata !4551, metadata !DIExpression()), !dbg !4618
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !4620
  ret ptr %4, !dbg !4621
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4622 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4627, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %1, metadata !4624, metadata !DIExpression()), !dbg !4628
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #42, !dbg !4627
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #42, !dbg !4627
  %3 = icmp eq i32 %1, 0, !dbg !4627
  tail call void @llvm.assume(i1 %3), !dbg !4627
  tail call void @abort() #44, !dbg !4629
  unreachable, !dbg !4629
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #19 !dbg !4630 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4636, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata ptr %1, metadata !4637, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i32 %2, metadata !4638, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata ptr %3, metadata !4639, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata ptr %4, metadata !4640, metadata !DIExpression()), !dbg !4650
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !4651
  %7 = icmp eq ptr %1, null, !dbg !4652
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4652
  call void @llvm.dbg.value(metadata ptr %8, metadata !4642, metadata !DIExpression()), !dbg !4650
  %9 = tail call ptr @__errno_location() #45, !dbg !4653
  store i32 0, ptr %9, align 4, !dbg !4654, !tbaa !934
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #42, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %10, metadata !4643, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i32 0, metadata !4644, metadata !DIExpression()), !dbg !4650
  %11 = load ptr, ptr %8, align 8, !dbg !4656, !tbaa !864
  %12 = icmp eq ptr %11, %0, !dbg !4658
  br i1 %12, label %13, label %22, !dbg !4659

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4660
  br i1 %14, label %990, label %15, !dbg !4663

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4664, !tbaa !943
  %17 = icmp eq i8 %16, 0, !dbg !4664
  br i1 %17, label %990, label %18, !dbg !4665

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !4664
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #43, !dbg !4666
  %21 = icmp eq ptr %20, null, !dbg !4666
  br i1 %21, label %990, label %29, !dbg !4667

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4668, !tbaa !934
  switch i32 %23, label %990 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4670

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !4644, metadata !DIExpression()), !dbg !4650
  br label %25, !dbg !4671

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4650
  call void @llvm.dbg.value(metadata i32 %26, metadata !4644, metadata !DIExpression()), !dbg !4650
  %27 = icmp eq ptr %4, null, !dbg !4673
  br i1 %27, label %28, label %29, !dbg !4675

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !4643, metadata !DIExpression()), !dbg !4650
  store i64 %10, ptr %3, align 8, !dbg !4676, !tbaa !1312
  br label %990, !dbg !4678

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4679, !tbaa !943
  %33 = icmp eq i8 %32, 0, !dbg !4680
  br i1 %33, label %987, label %34, !dbg !4681

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !4679
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #43, !dbg !4682
  %37 = icmp eq ptr %36, null, !dbg !4682
  br i1 %37, label %38, label %40, !dbg !4684

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %10, metadata !4643, metadata !DIExpression()), !dbg !4650
  store i64 %31, ptr %3, align 8, !dbg !4685, !tbaa !1312
  %39 = or i32 %30, 2, !dbg !4687
  br label %990, !dbg !4688

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 1024, metadata !4645, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i32 1, metadata !4648, metadata !DIExpression()), !dbg !4689
  switch i8 %32, label %53 [
    i8 69, label %41
    i8 71, label %41
    i8 103, label %41
    i8 107, label %41
    i8 75, label %41
    i8 77, label %41
    i8 109, label %41
    i8 80, label %41
    i8 81, label %41
    i8 82, label %41
    i8 84, label %41
    i8 116, label %41
    i8 89, label %41
    i8 90, label %41
  ], !dbg !4690

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #43, !dbg !4691
  %43 = icmp eq ptr %42, null, !dbg !4691
  br i1 %43, label %53, label %44, !dbg !4694

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4695
  %46 = load i8, ptr %45, align 1, !dbg !4695, !tbaa !943
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4696

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4697
  %49 = load i8, ptr %48, align 1, !dbg !4697, !tbaa !943
  %50 = icmp eq i8 %49, 66, !dbg !4700
  %51 = select i1 %50, i64 3, i64 1, !dbg !4701
  br label %53, !dbg !4701

52:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !4645, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i32 2, metadata !4648, metadata !DIExpression()), !dbg !4689
  br label %53, !dbg !4702

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ]
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4648, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i32 poison, metadata !4645, metadata !DIExpression()), !dbg !4689
  switch i8 %32, label %985 [
    i8 98, label %68
    i8 66, label %76
    i8 99, label %976
    i8 69, label %66
    i8 71, label %180
    i8 103, label %180
    i8 107, label %230
    i8 75, label %230
    i8 77, label %243
    i8 109, label %243
    i8 80, label %64
    i8 81, label %62
    i8 82, label %60
    i8 84, label %661
    i8 116, label %661
    i8 119, label %727
    i8 89, label %58
    i8 90, label %56
  ], !dbg !4703

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 7, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 6, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %57 = icmp slt i64 %31, 0, !dbg !4724
  br i1 %57, label %864, label %870, !dbg !4724

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 8, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 7, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %59 = icmp slt i64 %31, 0, !dbg !4730
  br i1 %59, label %736, label %742, !dbg !4730

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 9, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 8, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %61 = icmp slt i64 %31, 0, !dbg !4735
  br i1 %61, label %517, label %523, !dbg !4735

62:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 10, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 9, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %63 = icmp slt i64 %31, 0, !dbg !4740
  br i1 %63, label %357, label %363, !dbg !4740

64:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 5, metadata !4711, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 4, metadata !4711, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4743
  %65 = icmp slt i64 %31, 0, !dbg !4745
  br i1 %65, label %277, label %283, !dbg !4745

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 6, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 5, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4748
  %67 = icmp slt i64 %31, 0, !dbg !4750
  br i1 %67, label %84, label %90, !dbg !4750

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 512, metadata !4720, metadata !DIExpression()), !dbg !4751
  %69 = icmp slt i64 %31, 0, !dbg !4753
  br i1 %69, label %70, label %72, !dbg !4753

70:                                               ; preds = %68
  %71 = icmp ult i64 %31, -18014398509481984, !dbg !4753
  br i1 %71, label %976, label %74, !dbg !4753

72:                                               ; preds = %68
  %73 = icmp ugt i64 %31, 18014398509481983, !dbg !4753
  br i1 %73, label %976, label %74, !dbg !4753

74:                                               ; preds = %70, %72
  %75 = shl nsw i64 %31, 9, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %75, metadata !4721, metadata !DIExpression()), !dbg !4751
  br label %976, !dbg !4754

76:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 1024, metadata !4720, metadata !DIExpression()), !dbg !4755
  %77 = icmp slt i64 %31, 0, !dbg !4757
  br i1 %77, label %78, label %80, !dbg !4757

78:                                               ; preds = %76
  %79 = icmp ult i64 %31, -9007199254740992, !dbg !4757
  br i1 %79, label %976, label %82, !dbg !4757

80:                                               ; preds = %76
  %81 = icmp ugt i64 %31, 9007199254740991, !dbg !4757
  br i1 %81, label %976, label %82, !dbg !4757

82:                                               ; preds = %78, %80
  %83 = shl nsw i64 %31, 10, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %83, metadata !4721, metadata !DIExpression()), !dbg !4755
  br label %976, !dbg !4758

84:                                               ; preds = %66
  %85 = icmp eq i64 %31, -1, !dbg !4750
  br i1 %85, label %93, label %86, !dbg !4750

86:                                               ; preds = %84
  %87 = sub i64 0, %31, !dbg !4750
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4750
  %89 = icmp ult i64 %88, %54, !dbg !4750
  br i1 %89, label %101, label %93, !dbg !4750

90:                                               ; preds = %66
  %91 = udiv i64 9223372036854775807, %54, !dbg !4750
  %92 = icmp ult i64 %91, %31, !dbg !4750
  br i1 %92, label %96, label %93, !dbg !4750

93:                                               ; preds = %84, %86, %90
  %94 = mul i64 %31, %54, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %94, metadata !4721, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 4, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4748
  %95 = icmp slt i64 %94, 0, !dbg !4750
  br i1 %95, label %101, label %96, !dbg !4750

96:                                               ; preds = %90, %93
  %97 = phi i32 [ 0, %93 ], [ 1, %90 ]
  %98 = phi i64 [ %94, %93 ], [ 9223372036854775807, %90 ]
  %99 = udiv i64 9223372036854775807, %54, !dbg !4750
  %100 = icmp ult i64 %99, %98, !dbg !4750
  br i1 %100, label %112, label %107, !dbg !4750

101:                                              ; preds = %86, %93
  %102 = phi i32 [ 0, %93 ], [ 1, %86 ]
  %103 = phi i64 [ %94, %93 ], [ -9223372036854775808, %86 ]
  %104 = sub i64 0, %103, !dbg !4750
  %105 = udiv i64 -9223372036854775808, %104, !dbg !4750
  %106 = icmp ult i64 %105, %54, !dbg !4750
  br i1 %106, label %117, label %107, !dbg !4750

107:                                              ; preds = %96, %101
  %108 = phi i32 [ %102, %101 ], [ %97, %96 ]
  %109 = phi i64 [ %103, %101 ], [ %98, %96 ]
  %110 = mul i64 %109, %54, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %110, metadata !4721, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 %108, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4748
  %111 = icmp slt i64 %110, 0, !dbg !4750
  br i1 %111, label %117, label %112, !dbg !4750

112:                                              ; preds = %96, %107
  %113 = phi i32 [ %108, %107 ], [ 1, %96 ]
  %114 = phi i64 [ %110, %107 ], [ 9223372036854775807, %96 ]
  %115 = udiv i64 9223372036854775807, %54, !dbg !4750
  %116 = icmp ult i64 %115, %114, !dbg !4750
  br i1 %116, label %128, label %123, !dbg !4750

117:                                              ; preds = %101, %107
  %118 = phi i32 [ %108, %107 ], [ 1, %101 ]
  %119 = phi i64 [ %110, %107 ], [ -9223372036854775808, %101 ]
  %120 = sub i64 0, %119, !dbg !4750
  %121 = udiv i64 -9223372036854775808, %120, !dbg !4750
  %122 = icmp ult i64 %121, %54, !dbg !4750
  br i1 %122, label %133, label %123, !dbg !4750

123:                                              ; preds = %112, %117
  %124 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %125 = phi i64 [ %119, %117 ], [ %114, %112 ]
  %126 = mul i64 %125, %54, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %126, metadata !4721, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 %124, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4748
  %127 = icmp slt i64 %126, 0, !dbg !4750
  br i1 %127, label %133, label %128, !dbg !4750

128:                                              ; preds = %112, %123
  %129 = phi i32 [ %124, %123 ], [ 1, %112 ]
  %130 = phi i64 [ %126, %123 ], [ 9223372036854775807, %112 ]
  %131 = udiv i64 9223372036854775807, %54, !dbg !4750
  %132 = icmp ult i64 %131, %130, !dbg !4750
  br i1 %132, label %144, label %139, !dbg !4750

133:                                              ; preds = %117, %123
  %134 = phi i32 [ %124, %123 ], [ 1, %117 ]
  %135 = phi i64 [ %126, %123 ], [ -9223372036854775808, %117 ]
  %136 = sub i64 0, %135, !dbg !4750
  %137 = udiv i64 -9223372036854775808, %136, !dbg !4750
  %138 = icmp ult i64 %137, %54, !dbg !4750
  br i1 %138, label %149, label %139, !dbg !4750

139:                                              ; preds = %128, %133
  %140 = phi i32 [ %134, %133 ], [ %129, %128 ]
  %141 = phi i64 [ %135, %133 ], [ %130, %128 ]
  %142 = mul i64 %141, %54, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %142, metadata !4721, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 %140, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4748
  %143 = icmp slt i64 %142, 0, !dbg !4750
  br i1 %143, label %149, label %144, !dbg !4750

144:                                              ; preds = %128, %139
  %145 = phi i32 [ %140, %139 ], [ 1, %128 ]
  %146 = phi i64 [ %142, %139 ], [ 9223372036854775807, %128 ]
  %147 = udiv i64 9223372036854775807, %54, !dbg !4750
  %148 = icmp ult i64 %147, %146, !dbg !4750
  br i1 %148, label %160, label %155, !dbg !4750

149:                                              ; preds = %133, %139
  %150 = phi i32 [ %140, %139 ], [ 1, %133 ]
  %151 = phi i64 [ %142, %139 ], [ -9223372036854775808, %133 ]
  %152 = sub i64 0, %151, !dbg !4750
  %153 = udiv i64 -9223372036854775808, %152, !dbg !4750
  %154 = icmp ult i64 %153, %54, !dbg !4750
  br i1 %154, label %165, label %155, !dbg !4750

155:                                              ; preds = %144, %149
  %156 = phi i32 [ %150, %149 ], [ %145, %144 ]
  %157 = phi i64 [ %151, %149 ], [ %146, %144 ]
  %158 = mul i64 %157, %54, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %158, metadata !4721, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 %156, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4748
  %159 = icmp slt i64 %158, 0, !dbg !4750
  br i1 %159, label %165, label %160, !dbg !4750

160:                                              ; preds = %144, %155
  %161 = phi i32 [ %156, %155 ], [ 1, %144 ]
  %162 = phi i64 [ %158, %155 ], [ 9223372036854775807, %144 ]
  %163 = udiv i64 9223372036854775807, %54, !dbg !4750
  %164 = icmp ult i64 %163, %162, !dbg !4750
  br i1 %164, label %175, label %171, !dbg !4750

165:                                              ; preds = %149, %155
  %166 = phi i32 [ %156, %155 ], [ 1, %149 ]
  %167 = phi i64 [ %158, %155 ], [ -9223372036854775808, %149 ]
  %168 = sub i64 0, %167, !dbg !4750
  %169 = udiv i64 -9223372036854775808, %168, !dbg !4750
  %170 = icmp ult i64 %169, %54, !dbg !4750
  br i1 %170, label %175, label %171, !dbg !4750

171:                                              ; preds = %165, %160
  %172 = phi i32 [ %166, %165 ], [ %161, %160 ]
  %173 = phi i64 [ %167, %165 ], [ %162, %160 ]
  %174 = mul i64 %173, %54, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %174, metadata !4721, metadata !DIExpression()), !dbg !4748
  br label %175, !dbg !4759

175:                                              ; preds = %171, %165, %160
  %176 = phi i32 [ %172, %171 ], [ %161, %160 ], [ %166, %165 ]
  %177 = phi i64 [ %174, %171 ], [ 9223372036854775807, %160 ], [ -9223372036854775808, %165 ], !dbg !4748
  %178 = phi i32 [ 0, %171 ], [ 1, %160 ], [ 1, %165 ], !dbg !4748
  %179 = or i32 %178, %176, !dbg !4760
  call void @llvm.dbg.value(metadata i32 %179, metadata !4704, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4746
  br label %976, !dbg !4761

180:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4709, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 poison, metadata !4710, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4764
  %181 = icmp slt i64 %31, 0, !dbg !4766
  br i1 %181, label %182, label %188, !dbg !4766

182:                                              ; preds = %180
  %183 = icmp eq i64 %31, -1, !dbg !4766
  br i1 %183, label %191, label %184, !dbg !4766

184:                                              ; preds = %182
  %185 = sub i64 0, %31, !dbg !4766
  %186 = udiv i64 -9223372036854775808, %185, !dbg !4766
  %187 = icmp ult i64 %186, %54, !dbg !4766
  br i1 %187, label %199, label %191, !dbg !4766

188:                                              ; preds = %180
  %189 = udiv i64 9223372036854775807, %54, !dbg !4766
  %190 = icmp ult i64 %189, %31, !dbg !4766
  br i1 %190, label %194, label %191, !dbg !4766

191:                                              ; preds = %182, %184, %188
  %192 = mul i64 %31, %54, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %192, metadata !4721, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4764
  %193 = icmp slt i64 %192, 0, !dbg !4766
  br i1 %193, label %199, label %194, !dbg !4766

194:                                              ; preds = %188, %191
  %195 = phi i32 [ 0, %191 ], [ 1, %188 ]
  %196 = phi i64 [ %192, %191 ], [ 9223372036854775807, %188 ]
  %197 = udiv i64 9223372036854775807, %54, !dbg !4766
  %198 = icmp ult i64 %197, %196, !dbg !4766
  br i1 %198, label %210, label %205, !dbg !4766

199:                                              ; preds = %184, %191
  %200 = phi i32 [ 0, %191 ], [ 1, %184 ]
  %201 = phi i64 [ %192, %191 ], [ -9223372036854775808, %184 ]
  %202 = sub i64 0, %201, !dbg !4766
  %203 = udiv i64 -9223372036854775808, %202, !dbg !4766
  %204 = icmp ult i64 %203, %54, !dbg !4766
  br i1 %204, label %215, label %205, !dbg !4766

205:                                              ; preds = %194, %199
  %206 = phi i32 [ %200, %199 ], [ %195, %194 ]
  %207 = phi i64 [ %201, %199 ], [ %196, %194 ]
  %208 = mul i64 %207, %54, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %208, metadata !4721, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 %206, metadata !4704, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4764
  %209 = icmp slt i64 %208, 0, !dbg !4766
  br i1 %209, label %215, label %210, !dbg !4766

210:                                              ; preds = %194, %205
  %211 = phi i32 [ %206, %205 ], [ 1, %194 ]
  %212 = phi i64 [ %208, %205 ], [ 9223372036854775807, %194 ]
  %213 = udiv i64 9223372036854775807, %54, !dbg !4766
  %214 = icmp ult i64 %213, %212, !dbg !4766
  br i1 %214, label %225, label %221, !dbg !4766

215:                                              ; preds = %199, %205
  %216 = phi i32 [ %206, %205 ], [ 1, %199 ]
  %217 = phi i64 [ %208, %205 ], [ -9223372036854775808, %199 ]
  %218 = sub i64 0, %217, !dbg !4766
  %219 = udiv i64 -9223372036854775808, %218, !dbg !4766
  %220 = icmp ult i64 %219, %54, !dbg !4766
  br i1 %220, label %225, label %221, !dbg !4766

221:                                              ; preds = %215, %210
  %222 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %223 = phi i64 [ %217, %215 ], [ %212, %210 ]
  %224 = mul i64 %223, %54, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %224, metadata !4721, metadata !DIExpression()), !dbg !4764
  br label %225, !dbg !4767

225:                                              ; preds = %221, %215, %210
  %226 = phi i32 [ %222, %221 ], [ %211, %210 ], [ %216, %215 ]
  %227 = phi i64 [ %224, %221 ], [ 9223372036854775807, %210 ], [ -9223372036854775808, %215 ], !dbg !4764
  %228 = phi i32 [ 0, %221 ], [ 1, %210 ], [ 1, %215 ], !dbg !4764
  %229 = or i32 %228, %226, !dbg !4768
  call void @llvm.dbg.value(metadata i32 %229, metadata !4704, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4762
  br label %976, !dbg !4761

230:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4709, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i32 poison, metadata !4710, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4771
  %231 = icmp slt i64 %31, 0, !dbg !4773
  br i1 %231, label %232, label %238, !dbg !4773

232:                                              ; preds = %230
  %233 = icmp eq i64 %31, -1, !dbg !4773
  br i1 %233, label %241, label %234, !dbg !4773

234:                                              ; preds = %232
  %235 = sub i64 0, %31, !dbg !4773
  %236 = udiv i64 -9223372036854775808, %235, !dbg !4773
  %237 = icmp ult i64 %236, %54, !dbg !4773
  br i1 %237, label %976, label %241, !dbg !4773

238:                                              ; preds = %230
  %239 = udiv i64 9223372036854775807, %54, !dbg !4773
  %240 = icmp ult i64 %239, %31, !dbg !4773
  br i1 %240, label %976, label %241, !dbg !4773

241:                                              ; preds = %238, %234, %232
  %242 = mul i64 %31, %54, !dbg !4773
  call void @llvm.dbg.value(metadata i64 %242, metadata !4721, metadata !DIExpression()), !dbg !4771
  br label %976, !dbg !4774

243:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4709, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 poison, metadata !4710, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4777
  %244 = icmp slt i64 %31, 0, !dbg !4779
  br i1 %244, label %245, label %251, !dbg !4779

245:                                              ; preds = %243
  %246 = icmp eq i64 %31, -1, !dbg !4779
  br i1 %246, label %254, label %247, !dbg !4779

247:                                              ; preds = %245
  %248 = sub i64 0, %31, !dbg !4779
  %249 = udiv i64 -9223372036854775808, %248, !dbg !4779
  %250 = icmp ult i64 %249, %54, !dbg !4779
  br i1 %250, label %262, label %254, !dbg !4779

251:                                              ; preds = %243
  %252 = udiv i64 9223372036854775807, %54, !dbg !4779
  %253 = icmp ult i64 %252, %31, !dbg !4779
  br i1 %253, label %257, label %254, !dbg !4779

254:                                              ; preds = %245, %247, %251
  %255 = mul i64 %31, %54, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %255, metadata !4721, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4777
  %256 = icmp slt i64 %255, 0, !dbg !4779
  br i1 %256, label %262, label %257, !dbg !4779

257:                                              ; preds = %251, %254
  %258 = phi i32 [ 0, %254 ], [ 1, %251 ]
  %259 = phi i64 [ %255, %254 ], [ 9223372036854775807, %251 ]
  %260 = udiv i64 9223372036854775807, %54, !dbg !4779
  %261 = icmp ult i64 %260, %259, !dbg !4779
  br i1 %261, label %272, label %268, !dbg !4779

262:                                              ; preds = %247, %254
  %263 = phi i32 [ 0, %254 ], [ 1, %247 ]
  %264 = phi i64 [ %255, %254 ], [ -9223372036854775808, %247 ]
  %265 = sub i64 0, %264, !dbg !4779
  %266 = udiv i64 -9223372036854775808, %265, !dbg !4779
  %267 = icmp ult i64 %266, %54, !dbg !4779
  br i1 %267, label %272, label %268, !dbg !4779

268:                                              ; preds = %262, %257
  %269 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %270 = phi i64 [ %264, %262 ], [ %259, %257 ]
  %271 = mul i64 %270, %54, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %271, metadata !4721, metadata !DIExpression()), !dbg !4777
  br label %272, !dbg !4780

272:                                              ; preds = %268, %262, %257
  %273 = phi i32 [ %269, %268 ], [ %258, %257 ], [ %263, %262 ]
  %274 = phi i64 [ %271, %268 ], [ 9223372036854775807, %257 ], [ -9223372036854775808, %262 ], !dbg !4777
  %275 = phi i32 [ 0, %268 ], [ 1, %257 ], [ 1, %262 ], !dbg !4777
  %276 = or i32 %275, %273, !dbg !4781
  call void @llvm.dbg.value(metadata i32 %276, metadata !4704, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4775
  br label %976, !dbg !4761

277:                                              ; preds = %64
  %278 = icmp eq i64 %31, -1, !dbg !4745
  br i1 %278, label %286, label %279, !dbg !4745

279:                                              ; preds = %277
  %280 = sub i64 0, %31, !dbg !4745
  %281 = udiv i64 -9223372036854775808, %280, !dbg !4745
  %282 = icmp ult i64 %281, %54, !dbg !4745
  br i1 %282, label %294, label %286, !dbg !4745

283:                                              ; preds = %64
  %284 = udiv i64 9223372036854775807, %54, !dbg !4745
  %285 = icmp ult i64 %284, %31, !dbg !4745
  br i1 %285, label %289, label %286, !dbg !4745

286:                                              ; preds = %277, %279, %283
  %287 = mul i64 %31, %54, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %287, metadata !4721, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4743
  %288 = icmp slt i64 %287, 0, !dbg !4745
  br i1 %288, label %294, label %289, !dbg !4745

289:                                              ; preds = %283, %286
  %290 = phi i32 [ 0, %286 ], [ 1, %283 ]
  %291 = phi i64 [ %287, %286 ], [ 9223372036854775807, %283 ]
  %292 = udiv i64 9223372036854775807, %54, !dbg !4745
  %293 = icmp ult i64 %292, %291, !dbg !4745
  br i1 %293, label %305, label %300, !dbg !4745

294:                                              ; preds = %279, %286
  %295 = phi i32 [ 0, %286 ], [ 1, %279 ]
  %296 = phi i64 [ %287, %286 ], [ -9223372036854775808, %279 ]
  %297 = sub i64 0, %296, !dbg !4745
  %298 = udiv i64 -9223372036854775808, %297, !dbg !4745
  %299 = icmp ult i64 %298, %54, !dbg !4745
  br i1 %299, label %310, label %300, !dbg !4745

300:                                              ; preds = %289, %294
  %301 = phi i32 [ %295, %294 ], [ %290, %289 ]
  %302 = phi i64 [ %296, %294 ], [ %291, %289 ]
  %303 = mul i64 %302, %54, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %303, metadata !4721, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %301, metadata !4704, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4743
  %304 = icmp slt i64 %303, 0, !dbg !4745
  br i1 %304, label %310, label %305, !dbg !4745

305:                                              ; preds = %289, %300
  %306 = phi i32 [ %301, %300 ], [ 1, %289 ]
  %307 = phi i64 [ %303, %300 ], [ 9223372036854775807, %289 ]
  %308 = udiv i64 9223372036854775807, %54, !dbg !4745
  %309 = icmp ult i64 %308, %307, !dbg !4745
  br i1 %309, label %321, label %316, !dbg !4745

310:                                              ; preds = %294, %300
  %311 = phi i32 [ %301, %300 ], [ 1, %294 ]
  %312 = phi i64 [ %303, %300 ], [ -9223372036854775808, %294 ]
  %313 = sub i64 0, %312, !dbg !4745
  %314 = udiv i64 -9223372036854775808, %313, !dbg !4745
  %315 = icmp ult i64 %314, %54, !dbg !4745
  br i1 %315, label %326, label %316, !dbg !4745

316:                                              ; preds = %305, %310
  %317 = phi i32 [ %311, %310 ], [ %306, %305 ]
  %318 = phi i64 [ %312, %310 ], [ %307, %305 ]
  %319 = mul i64 %318, %54, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %319, metadata !4721, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %317, metadata !4704, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4743
  %320 = icmp slt i64 %319, 0, !dbg !4745
  br i1 %320, label %326, label %321, !dbg !4745

321:                                              ; preds = %305, %316
  %322 = phi i32 [ %317, %316 ], [ 1, %305 ]
  %323 = phi i64 [ %319, %316 ], [ 9223372036854775807, %305 ]
  %324 = udiv i64 9223372036854775807, %54, !dbg !4745
  %325 = icmp ult i64 %324, %323, !dbg !4745
  br i1 %325, label %337, label %332, !dbg !4745

326:                                              ; preds = %310, %316
  %327 = phi i32 [ %317, %316 ], [ 1, %310 ]
  %328 = phi i64 [ %319, %316 ], [ -9223372036854775808, %310 ]
  %329 = sub i64 0, %328, !dbg !4745
  %330 = udiv i64 -9223372036854775808, %329, !dbg !4745
  %331 = icmp ult i64 %330, %54, !dbg !4745
  br i1 %331, label %342, label %332, !dbg !4745

332:                                              ; preds = %321, %326
  %333 = phi i32 [ %327, %326 ], [ %322, %321 ]
  %334 = phi i64 [ %328, %326 ], [ %323, %321 ]
  %335 = mul i64 %334, %54, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %335, metadata !4721, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %333, metadata !4704, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4743
  %336 = icmp slt i64 %335, 0, !dbg !4745
  br i1 %336, label %342, label %337, !dbg !4745

337:                                              ; preds = %321, %332
  %338 = phi i32 [ %333, %332 ], [ 1, %321 ]
  %339 = phi i64 [ %335, %332 ], [ 9223372036854775807, %321 ]
  %340 = udiv i64 9223372036854775807, %54, !dbg !4745
  %341 = icmp ult i64 %340, %339, !dbg !4745
  br i1 %341, label %352, label %348, !dbg !4745

342:                                              ; preds = %326, %332
  %343 = phi i32 [ %333, %332 ], [ 1, %326 ]
  %344 = phi i64 [ %335, %332 ], [ -9223372036854775808, %326 ]
  %345 = sub i64 0, %344, !dbg !4745
  %346 = udiv i64 -9223372036854775808, %345, !dbg !4745
  %347 = icmp ult i64 %346, %54, !dbg !4745
  br i1 %347, label %352, label %348, !dbg !4745

348:                                              ; preds = %342, %337
  %349 = phi i32 [ %343, %342 ], [ %338, %337 ]
  %350 = phi i64 [ %344, %342 ], [ %339, %337 ]
  %351 = mul i64 %350, %54, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %351, metadata !4721, metadata !DIExpression()), !dbg !4743
  br label %352, !dbg !4782

352:                                              ; preds = %348, %342, %337
  %353 = phi i32 [ %349, %348 ], [ %338, %337 ], [ %343, %342 ]
  %354 = phi i64 [ %351, %348 ], [ 9223372036854775807, %337 ], [ -9223372036854775808, %342 ], !dbg !4743
  %355 = phi i32 [ 0, %348 ], [ 1, %337 ], [ 1, %342 ], !dbg !4743
  %356 = or i32 %355, %353, !dbg !4783
  call void @llvm.dbg.value(metadata i32 %356, metadata !4704, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4741
  br label %976, !dbg !4761

357:                                              ; preds = %62
  %358 = icmp eq i64 %31, -1, !dbg !4740
  br i1 %358, label %366, label %359, !dbg !4740

359:                                              ; preds = %357
  %360 = sub i64 0, %31, !dbg !4740
  %361 = udiv i64 -9223372036854775808, %360, !dbg !4740
  %362 = icmp ult i64 %361, %54, !dbg !4740
  br i1 %362, label %374, label %366, !dbg !4740

363:                                              ; preds = %62
  %364 = udiv i64 9223372036854775807, %54, !dbg !4740
  %365 = icmp ult i64 %364, %31, !dbg !4740
  br i1 %365, label %369, label %366, !dbg !4740

366:                                              ; preds = %357, %359, %363
  %367 = mul i64 %31, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %367, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 8, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %368 = icmp slt i64 %367, 0, !dbg !4740
  br i1 %368, label %374, label %369, !dbg !4740

369:                                              ; preds = %363, %366
  %370 = phi i32 [ 0, %366 ], [ 1, %363 ]
  %371 = phi i64 [ %367, %366 ], [ 9223372036854775807, %363 ]
  %372 = udiv i64 9223372036854775807, %54, !dbg !4740
  %373 = icmp ult i64 %372, %371, !dbg !4740
  br i1 %373, label %385, label %380, !dbg !4740

374:                                              ; preds = %359, %366
  %375 = phi i32 [ 0, %366 ], [ 1, %359 ]
  %376 = phi i64 [ %367, %366 ], [ -9223372036854775808, %359 ]
  %377 = sub i64 0, %376, !dbg !4740
  %378 = udiv i64 -9223372036854775808, %377, !dbg !4740
  %379 = icmp ult i64 %378, %54, !dbg !4740
  br i1 %379, label %390, label %380, !dbg !4740

380:                                              ; preds = %369, %374
  %381 = phi i32 [ %375, %374 ], [ %370, %369 ]
  %382 = phi i64 [ %376, %374 ], [ %371, %369 ]
  %383 = mul i64 %382, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %383, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %381, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 7, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %384 = icmp slt i64 %383, 0, !dbg !4740
  br i1 %384, label %390, label %385, !dbg !4740

385:                                              ; preds = %369, %380
  %386 = phi i32 [ %381, %380 ], [ 1, %369 ]
  %387 = phi i64 [ %383, %380 ], [ 9223372036854775807, %369 ]
  %388 = udiv i64 9223372036854775807, %54, !dbg !4740
  %389 = icmp ult i64 %388, %387, !dbg !4740
  br i1 %389, label %401, label %396, !dbg !4740

390:                                              ; preds = %374, %380
  %391 = phi i32 [ %381, %380 ], [ 1, %374 ]
  %392 = phi i64 [ %383, %380 ], [ -9223372036854775808, %374 ]
  %393 = sub i64 0, %392, !dbg !4740
  %394 = udiv i64 -9223372036854775808, %393, !dbg !4740
  %395 = icmp ult i64 %394, %54, !dbg !4740
  br i1 %395, label %406, label %396, !dbg !4740

396:                                              ; preds = %385, %390
  %397 = phi i32 [ %391, %390 ], [ %386, %385 ]
  %398 = phi i64 [ %392, %390 ], [ %387, %385 ]
  %399 = mul i64 %398, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %399, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %397, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 6, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %400 = icmp slt i64 %399, 0, !dbg !4740
  br i1 %400, label %406, label %401, !dbg !4740

401:                                              ; preds = %385, %396
  %402 = phi i32 [ %397, %396 ], [ 1, %385 ]
  %403 = phi i64 [ %399, %396 ], [ 9223372036854775807, %385 ]
  %404 = udiv i64 9223372036854775807, %54, !dbg !4740
  %405 = icmp ult i64 %404, %403, !dbg !4740
  br i1 %405, label %417, label %412, !dbg !4740

406:                                              ; preds = %390, %396
  %407 = phi i32 [ %397, %396 ], [ 1, %390 ]
  %408 = phi i64 [ %399, %396 ], [ -9223372036854775808, %390 ]
  %409 = sub i64 0, %408, !dbg !4740
  %410 = udiv i64 -9223372036854775808, %409, !dbg !4740
  %411 = icmp ult i64 %410, %54, !dbg !4740
  br i1 %411, label %422, label %412, !dbg !4740

412:                                              ; preds = %401, %406
  %413 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %414 = phi i64 [ %408, %406 ], [ %403, %401 ]
  %415 = mul i64 %414, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %415, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %413, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 5, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %416 = icmp slt i64 %415, 0, !dbg !4740
  br i1 %416, label %422, label %417, !dbg !4740

417:                                              ; preds = %401, %412
  %418 = phi i32 [ %413, %412 ], [ 1, %401 ]
  %419 = phi i64 [ %415, %412 ], [ 9223372036854775807, %401 ]
  %420 = udiv i64 9223372036854775807, %54, !dbg !4740
  %421 = icmp ult i64 %420, %419, !dbg !4740
  br i1 %421, label %433, label %428, !dbg !4740

422:                                              ; preds = %406, %412
  %423 = phi i32 [ %413, %412 ], [ 1, %406 ]
  %424 = phi i64 [ %415, %412 ], [ -9223372036854775808, %406 ]
  %425 = sub i64 0, %424, !dbg !4740
  %426 = udiv i64 -9223372036854775808, %425, !dbg !4740
  %427 = icmp ult i64 %426, %54, !dbg !4740
  br i1 %427, label %438, label %428, !dbg !4740

428:                                              ; preds = %417, %422
  %429 = phi i32 [ %423, %422 ], [ %418, %417 ]
  %430 = phi i64 [ %424, %422 ], [ %419, %417 ]
  %431 = mul i64 %430, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %431, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %429, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 4, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %432 = icmp slt i64 %431, 0, !dbg !4740
  br i1 %432, label %438, label %433, !dbg !4740

433:                                              ; preds = %417, %428
  %434 = phi i32 [ %429, %428 ], [ 1, %417 ]
  %435 = phi i64 [ %431, %428 ], [ 9223372036854775807, %417 ]
  %436 = udiv i64 9223372036854775807, %54, !dbg !4740
  %437 = icmp ult i64 %436, %435, !dbg !4740
  br i1 %437, label %449, label %444, !dbg !4740

438:                                              ; preds = %422, %428
  %439 = phi i32 [ %429, %428 ], [ 1, %422 ]
  %440 = phi i64 [ %431, %428 ], [ -9223372036854775808, %422 ]
  %441 = sub i64 0, %440, !dbg !4740
  %442 = udiv i64 -9223372036854775808, %441, !dbg !4740
  %443 = icmp ult i64 %442, %54, !dbg !4740
  br i1 %443, label %454, label %444, !dbg !4740

444:                                              ; preds = %433, %438
  %445 = phi i32 [ %439, %438 ], [ %434, %433 ]
  %446 = phi i64 [ %440, %438 ], [ %435, %433 ]
  %447 = mul i64 %446, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %447, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %445, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %448 = icmp slt i64 %447, 0, !dbg !4740
  br i1 %448, label %454, label %449, !dbg !4740

449:                                              ; preds = %433, %444
  %450 = phi i32 [ %445, %444 ], [ 1, %433 ]
  %451 = phi i64 [ %447, %444 ], [ 9223372036854775807, %433 ]
  %452 = udiv i64 9223372036854775807, %54, !dbg !4740
  %453 = icmp ult i64 %452, %451, !dbg !4740
  br i1 %453, label %465, label %460, !dbg !4740

454:                                              ; preds = %438, %444
  %455 = phi i32 [ %445, %444 ], [ 1, %438 ]
  %456 = phi i64 [ %447, %444 ], [ -9223372036854775808, %438 ]
  %457 = sub i64 0, %456, !dbg !4740
  %458 = udiv i64 -9223372036854775808, %457, !dbg !4740
  %459 = icmp ult i64 %458, %54, !dbg !4740
  br i1 %459, label %470, label %460, !dbg !4740

460:                                              ; preds = %449, %454
  %461 = phi i32 [ %455, %454 ], [ %450, %449 ]
  %462 = phi i64 [ %456, %454 ], [ %451, %449 ]
  %463 = mul i64 %462, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %463, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %461, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %464 = icmp slt i64 %463, 0, !dbg !4740
  br i1 %464, label %470, label %465, !dbg !4740

465:                                              ; preds = %449, %460
  %466 = phi i32 [ %461, %460 ], [ 1, %449 ]
  %467 = phi i64 [ %463, %460 ], [ 9223372036854775807, %449 ]
  %468 = udiv i64 9223372036854775807, %54, !dbg !4740
  %469 = icmp ult i64 %468, %467, !dbg !4740
  br i1 %469, label %481, label %476, !dbg !4740

470:                                              ; preds = %454, %460
  %471 = phi i32 [ %461, %460 ], [ 1, %454 ]
  %472 = phi i64 [ %463, %460 ], [ -9223372036854775808, %454 ]
  %473 = sub i64 0, %472, !dbg !4740
  %474 = udiv i64 -9223372036854775808, %473, !dbg !4740
  %475 = icmp ult i64 %474, %54, !dbg !4740
  br i1 %475, label %486, label %476, !dbg !4740

476:                                              ; preds = %465, %470
  %477 = phi i32 [ %471, %470 ], [ %466, %465 ]
  %478 = phi i64 [ %472, %470 ], [ %467, %465 ]
  %479 = mul i64 %478, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %479, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %477, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %480 = icmp slt i64 %479, 0, !dbg !4740
  br i1 %480, label %486, label %481, !dbg !4740

481:                                              ; preds = %465, %476
  %482 = phi i32 [ %477, %476 ], [ 1, %465 ]
  %483 = phi i64 [ %479, %476 ], [ 9223372036854775807, %465 ]
  %484 = udiv i64 9223372036854775807, %54, !dbg !4740
  %485 = icmp ult i64 %484, %483, !dbg !4740
  br i1 %485, label %497, label %492, !dbg !4740

486:                                              ; preds = %470, %476
  %487 = phi i32 [ %477, %476 ], [ 1, %470 ]
  %488 = phi i64 [ %479, %476 ], [ -9223372036854775808, %470 ]
  %489 = sub i64 0, %488, !dbg !4740
  %490 = udiv i64 -9223372036854775808, %489, !dbg !4740
  %491 = icmp ult i64 %490, %54, !dbg !4740
  br i1 %491, label %502, label %492, !dbg !4740

492:                                              ; preds = %481, %486
  %493 = phi i32 [ %487, %486 ], [ %482, %481 ]
  %494 = phi i64 [ %488, %486 ], [ %483, %481 ]
  %495 = mul i64 %494, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %495, metadata !4721, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 %493, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4738
  %496 = icmp slt i64 %495, 0, !dbg !4740
  br i1 %496, label %502, label %497, !dbg !4740

497:                                              ; preds = %481, %492
  %498 = phi i32 [ %493, %492 ], [ 1, %481 ]
  %499 = phi i64 [ %495, %492 ], [ 9223372036854775807, %481 ]
  %500 = udiv i64 9223372036854775807, %54, !dbg !4740
  %501 = icmp ult i64 %500, %499, !dbg !4740
  br i1 %501, label %512, label %508, !dbg !4740

502:                                              ; preds = %486, %492
  %503 = phi i32 [ %493, %492 ], [ 1, %486 ]
  %504 = phi i64 [ %495, %492 ], [ -9223372036854775808, %486 ]
  %505 = sub i64 0, %504, !dbg !4740
  %506 = udiv i64 -9223372036854775808, %505, !dbg !4740
  %507 = icmp ult i64 %506, %54, !dbg !4740
  br i1 %507, label %512, label %508, !dbg !4740

508:                                              ; preds = %502, %497
  %509 = phi i32 [ %503, %502 ], [ %498, %497 ]
  %510 = phi i64 [ %504, %502 ], [ %499, %497 ]
  %511 = mul i64 %510, %54, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %511, metadata !4721, metadata !DIExpression()), !dbg !4738
  br label %512, !dbg !4784

512:                                              ; preds = %508, %502, %497
  %513 = phi i32 [ %509, %508 ], [ %498, %497 ], [ %503, %502 ]
  %514 = phi i64 [ %511, %508 ], [ 9223372036854775807, %497 ], [ -9223372036854775808, %502 ], !dbg !4738
  %515 = phi i32 [ 0, %508 ], [ 1, %497 ], [ 1, %502 ], !dbg !4738
  %516 = or i32 %515, %513, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %516, metadata !4704, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4736
  br label %976, !dbg !4761

517:                                              ; preds = %60
  %518 = icmp eq i64 %31, -1, !dbg !4735
  br i1 %518, label %526, label %519, !dbg !4735

519:                                              ; preds = %517
  %520 = sub i64 0, %31, !dbg !4735
  %521 = udiv i64 -9223372036854775808, %520, !dbg !4735
  %522 = icmp ult i64 %521, %54, !dbg !4735
  br i1 %522, label %534, label %526, !dbg !4735

523:                                              ; preds = %60
  %524 = udiv i64 9223372036854775807, %54, !dbg !4735
  %525 = icmp ult i64 %524, %31, !dbg !4735
  br i1 %525, label %529, label %526, !dbg !4735

526:                                              ; preds = %517, %519, %523
  %527 = mul i64 %31, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %527, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 7, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %528 = icmp slt i64 %527, 0, !dbg !4735
  br i1 %528, label %534, label %529, !dbg !4735

529:                                              ; preds = %523, %526
  %530 = phi i32 [ 0, %526 ], [ 1, %523 ]
  %531 = phi i64 [ %527, %526 ], [ 9223372036854775807, %523 ]
  %532 = udiv i64 9223372036854775807, %54, !dbg !4735
  %533 = icmp ult i64 %532, %531, !dbg !4735
  br i1 %533, label %545, label %540, !dbg !4735

534:                                              ; preds = %519, %526
  %535 = phi i32 [ 0, %526 ], [ 1, %519 ]
  %536 = phi i64 [ %527, %526 ], [ -9223372036854775808, %519 ]
  %537 = sub i64 0, %536, !dbg !4735
  %538 = udiv i64 -9223372036854775808, %537, !dbg !4735
  %539 = icmp ult i64 %538, %54, !dbg !4735
  br i1 %539, label %550, label %540, !dbg !4735

540:                                              ; preds = %529, %534
  %541 = phi i32 [ %535, %534 ], [ %530, %529 ]
  %542 = phi i64 [ %536, %534 ], [ %531, %529 ]
  %543 = mul i64 %542, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %543, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %541, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 6, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %544 = icmp slt i64 %543, 0, !dbg !4735
  br i1 %544, label %550, label %545, !dbg !4735

545:                                              ; preds = %529, %540
  %546 = phi i32 [ %541, %540 ], [ 1, %529 ]
  %547 = phi i64 [ %543, %540 ], [ 9223372036854775807, %529 ]
  %548 = udiv i64 9223372036854775807, %54, !dbg !4735
  %549 = icmp ult i64 %548, %547, !dbg !4735
  br i1 %549, label %561, label %556, !dbg !4735

550:                                              ; preds = %534, %540
  %551 = phi i32 [ %541, %540 ], [ 1, %534 ]
  %552 = phi i64 [ %543, %540 ], [ -9223372036854775808, %534 ]
  %553 = sub i64 0, %552, !dbg !4735
  %554 = udiv i64 -9223372036854775808, %553, !dbg !4735
  %555 = icmp ult i64 %554, %54, !dbg !4735
  br i1 %555, label %566, label %556, !dbg !4735

556:                                              ; preds = %545, %550
  %557 = phi i32 [ %551, %550 ], [ %546, %545 ]
  %558 = phi i64 [ %552, %550 ], [ %547, %545 ]
  %559 = mul i64 %558, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %559, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %557, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 5, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %560 = icmp slt i64 %559, 0, !dbg !4735
  br i1 %560, label %566, label %561, !dbg !4735

561:                                              ; preds = %545, %556
  %562 = phi i32 [ %557, %556 ], [ 1, %545 ]
  %563 = phi i64 [ %559, %556 ], [ 9223372036854775807, %545 ]
  %564 = udiv i64 9223372036854775807, %54, !dbg !4735
  %565 = icmp ult i64 %564, %563, !dbg !4735
  br i1 %565, label %577, label %572, !dbg !4735

566:                                              ; preds = %550, %556
  %567 = phi i32 [ %557, %556 ], [ 1, %550 ]
  %568 = phi i64 [ %559, %556 ], [ -9223372036854775808, %550 ]
  %569 = sub i64 0, %568, !dbg !4735
  %570 = udiv i64 -9223372036854775808, %569, !dbg !4735
  %571 = icmp ult i64 %570, %54, !dbg !4735
  br i1 %571, label %582, label %572, !dbg !4735

572:                                              ; preds = %561, %566
  %573 = phi i32 [ %567, %566 ], [ %562, %561 ]
  %574 = phi i64 [ %568, %566 ], [ %563, %561 ]
  %575 = mul i64 %574, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %575, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %573, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 4, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %576 = icmp slt i64 %575, 0, !dbg !4735
  br i1 %576, label %582, label %577, !dbg !4735

577:                                              ; preds = %561, %572
  %578 = phi i32 [ %573, %572 ], [ 1, %561 ]
  %579 = phi i64 [ %575, %572 ], [ 9223372036854775807, %561 ]
  %580 = udiv i64 9223372036854775807, %54, !dbg !4735
  %581 = icmp ult i64 %580, %579, !dbg !4735
  br i1 %581, label %593, label %588, !dbg !4735

582:                                              ; preds = %566, %572
  %583 = phi i32 [ %573, %572 ], [ 1, %566 ]
  %584 = phi i64 [ %575, %572 ], [ -9223372036854775808, %566 ]
  %585 = sub i64 0, %584, !dbg !4735
  %586 = udiv i64 -9223372036854775808, %585, !dbg !4735
  %587 = icmp ult i64 %586, %54, !dbg !4735
  br i1 %587, label %598, label %588, !dbg !4735

588:                                              ; preds = %577, %582
  %589 = phi i32 [ %583, %582 ], [ %578, %577 ]
  %590 = phi i64 [ %584, %582 ], [ %579, %577 ]
  %591 = mul i64 %590, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %591, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %589, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %592 = icmp slt i64 %591, 0, !dbg !4735
  br i1 %592, label %598, label %593, !dbg !4735

593:                                              ; preds = %577, %588
  %594 = phi i32 [ %589, %588 ], [ 1, %577 ]
  %595 = phi i64 [ %591, %588 ], [ 9223372036854775807, %577 ]
  %596 = udiv i64 9223372036854775807, %54, !dbg !4735
  %597 = icmp ult i64 %596, %595, !dbg !4735
  br i1 %597, label %609, label %604, !dbg !4735

598:                                              ; preds = %582, %588
  %599 = phi i32 [ %589, %588 ], [ 1, %582 ]
  %600 = phi i64 [ %591, %588 ], [ -9223372036854775808, %582 ]
  %601 = sub i64 0, %600, !dbg !4735
  %602 = udiv i64 -9223372036854775808, %601, !dbg !4735
  %603 = icmp ult i64 %602, %54, !dbg !4735
  br i1 %603, label %614, label %604, !dbg !4735

604:                                              ; preds = %593, %598
  %605 = phi i32 [ %599, %598 ], [ %594, %593 ]
  %606 = phi i64 [ %600, %598 ], [ %595, %593 ]
  %607 = mul i64 %606, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %607, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %605, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %608 = icmp slt i64 %607, 0, !dbg !4735
  br i1 %608, label %614, label %609, !dbg !4735

609:                                              ; preds = %593, %604
  %610 = phi i32 [ %605, %604 ], [ 1, %593 ]
  %611 = phi i64 [ %607, %604 ], [ 9223372036854775807, %593 ]
  %612 = udiv i64 9223372036854775807, %54, !dbg !4735
  %613 = icmp ult i64 %612, %611, !dbg !4735
  br i1 %613, label %625, label %620, !dbg !4735

614:                                              ; preds = %598, %604
  %615 = phi i32 [ %605, %604 ], [ 1, %598 ]
  %616 = phi i64 [ %607, %604 ], [ -9223372036854775808, %598 ]
  %617 = sub i64 0, %616, !dbg !4735
  %618 = udiv i64 -9223372036854775808, %617, !dbg !4735
  %619 = icmp ult i64 %618, %54, !dbg !4735
  br i1 %619, label %630, label %620, !dbg !4735

620:                                              ; preds = %609, %614
  %621 = phi i32 [ %615, %614 ], [ %610, %609 ]
  %622 = phi i64 [ %616, %614 ], [ %611, %609 ]
  %623 = mul i64 %622, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %623, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %621, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %624 = icmp slt i64 %623, 0, !dbg !4735
  br i1 %624, label %630, label %625, !dbg !4735

625:                                              ; preds = %609, %620
  %626 = phi i32 [ %621, %620 ], [ 1, %609 ]
  %627 = phi i64 [ %623, %620 ], [ 9223372036854775807, %609 ]
  %628 = udiv i64 9223372036854775807, %54, !dbg !4735
  %629 = icmp ult i64 %628, %627, !dbg !4735
  br i1 %629, label %641, label %636, !dbg !4735

630:                                              ; preds = %614, %620
  %631 = phi i32 [ %621, %620 ], [ 1, %614 ]
  %632 = phi i64 [ %623, %620 ], [ -9223372036854775808, %614 ]
  %633 = sub i64 0, %632, !dbg !4735
  %634 = udiv i64 -9223372036854775808, %633, !dbg !4735
  %635 = icmp ult i64 %634, %54, !dbg !4735
  br i1 %635, label %646, label %636, !dbg !4735

636:                                              ; preds = %625, %630
  %637 = phi i32 [ %631, %630 ], [ %626, %625 ]
  %638 = phi i64 [ %632, %630 ], [ %627, %625 ]
  %639 = mul i64 %638, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %639, metadata !4721, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %637, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4733
  %640 = icmp slt i64 %639, 0, !dbg !4735
  br i1 %640, label %646, label %641, !dbg !4735

641:                                              ; preds = %625, %636
  %642 = phi i32 [ %637, %636 ], [ 1, %625 ]
  %643 = phi i64 [ %639, %636 ], [ 9223372036854775807, %625 ]
  %644 = udiv i64 9223372036854775807, %54, !dbg !4735
  %645 = icmp ult i64 %644, %643, !dbg !4735
  br i1 %645, label %656, label %652, !dbg !4735

646:                                              ; preds = %630, %636
  %647 = phi i32 [ %637, %636 ], [ 1, %630 ]
  %648 = phi i64 [ %639, %636 ], [ -9223372036854775808, %630 ]
  %649 = sub i64 0, %648, !dbg !4735
  %650 = udiv i64 -9223372036854775808, %649, !dbg !4735
  %651 = icmp ult i64 %650, %54, !dbg !4735
  br i1 %651, label %656, label %652, !dbg !4735

652:                                              ; preds = %646, %641
  %653 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %654 = phi i64 [ %648, %646 ], [ %643, %641 ]
  %655 = mul i64 %654, %54, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %655, metadata !4721, metadata !DIExpression()), !dbg !4733
  br label %656, !dbg !4786

656:                                              ; preds = %652, %646, %641
  %657 = phi i32 [ %653, %652 ], [ %642, %641 ], [ %647, %646 ]
  %658 = phi i64 [ %655, %652 ], [ 9223372036854775807, %641 ], [ -9223372036854775808, %646 ], !dbg !4733
  %659 = phi i32 [ 0, %652 ], [ 1, %641 ], [ 1, %646 ], !dbg !4733
  %660 = or i32 %659, %657, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %660, metadata !4704, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4731
  br label %976, !dbg !4761

661:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4709, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 poison, metadata !4710, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4790
  %662 = icmp slt i64 %31, 0, !dbg !4792
  br i1 %662, label %663, label %669, !dbg !4792

663:                                              ; preds = %661
  %664 = icmp eq i64 %31, -1, !dbg !4792
  br i1 %664, label %672, label %665, !dbg !4792

665:                                              ; preds = %663
  %666 = sub i64 0, %31, !dbg !4792
  %667 = udiv i64 -9223372036854775808, %666, !dbg !4792
  %668 = icmp ult i64 %667, %54, !dbg !4792
  br i1 %668, label %680, label %672, !dbg !4792

669:                                              ; preds = %661
  %670 = udiv i64 9223372036854775807, %54, !dbg !4792
  %671 = icmp ult i64 %670, %31, !dbg !4792
  br i1 %671, label %675, label %672, !dbg !4792

672:                                              ; preds = %663, %665, %669
  %673 = mul i64 %31, %54, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %673, metadata !4721, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4790
  %674 = icmp slt i64 %673, 0, !dbg !4792
  br i1 %674, label %680, label %675, !dbg !4792

675:                                              ; preds = %669, %672
  %676 = phi i32 [ 0, %672 ], [ 1, %669 ]
  %677 = phi i64 [ %673, %672 ], [ 9223372036854775807, %669 ]
  %678 = udiv i64 9223372036854775807, %54, !dbg !4792
  %679 = icmp ult i64 %678, %677, !dbg !4792
  br i1 %679, label %691, label %686, !dbg !4792

680:                                              ; preds = %665, %672
  %681 = phi i32 [ 0, %672 ], [ 1, %665 ]
  %682 = phi i64 [ %673, %672 ], [ -9223372036854775808, %665 ]
  %683 = sub i64 0, %682, !dbg !4792
  %684 = udiv i64 -9223372036854775808, %683, !dbg !4792
  %685 = icmp ult i64 %684, %54, !dbg !4792
  br i1 %685, label %696, label %686, !dbg !4792

686:                                              ; preds = %675, %680
  %687 = phi i32 [ %681, %680 ], [ %676, %675 ]
  %688 = phi i64 [ %682, %680 ], [ %677, %675 ]
  %689 = mul i64 %688, %54, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %689, metadata !4721, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %687, metadata !4704, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4790
  %690 = icmp slt i64 %689, 0, !dbg !4792
  br i1 %690, label %696, label %691, !dbg !4792

691:                                              ; preds = %675, %686
  %692 = phi i32 [ %687, %686 ], [ 1, %675 ]
  %693 = phi i64 [ %689, %686 ], [ 9223372036854775807, %675 ]
  %694 = udiv i64 9223372036854775807, %54, !dbg !4792
  %695 = icmp ult i64 %694, %693, !dbg !4792
  br i1 %695, label %707, label %702, !dbg !4792

696:                                              ; preds = %680, %686
  %697 = phi i32 [ %687, %686 ], [ 1, %680 ]
  %698 = phi i64 [ %689, %686 ], [ -9223372036854775808, %680 ]
  %699 = sub i64 0, %698, !dbg !4792
  %700 = udiv i64 -9223372036854775808, %699, !dbg !4792
  %701 = icmp ult i64 %700, %54, !dbg !4792
  br i1 %701, label %712, label %702, !dbg !4792

702:                                              ; preds = %691, %696
  %703 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %704 = phi i64 [ %698, %696 ], [ %693, %691 ]
  %705 = mul i64 %704, %54, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %705, metadata !4721, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %703, metadata !4704, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4790
  %706 = icmp slt i64 %705, 0, !dbg !4792
  br i1 %706, label %712, label %707, !dbg !4792

707:                                              ; preds = %691, %702
  %708 = phi i32 [ %703, %702 ], [ 1, %691 ]
  %709 = phi i64 [ %705, %702 ], [ 9223372036854775807, %691 ]
  %710 = udiv i64 9223372036854775807, %54, !dbg !4792
  %711 = icmp ult i64 %710, %709, !dbg !4792
  br i1 %711, label %722, label %718, !dbg !4792

712:                                              ; preds = %696, %702
  %713 = phi i32 [ %703, %702 ], [ 1, %696 ]
  %714 = phi i64 [ %705, %702 ], [ -9223372036854775808, %696 ]
  %715 = sub i64 0, %714, !dbg !4792
  %716 = udiv i64 -9223372036854775808, %715, !dbg !4792
  %717 = icmp ult i64 %716, %54, !dbg !4792
  br i1 %717, label %722, label %718, !dbg !4792

718:                                              ; preds = %712, %707
  %719 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %720 = phi i64 [ %714, %712 ], [ %709, %707 ]
  %721 = mul i64 %720, %54, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %721, metadata !4721, metadata !DIExpression()), !dbg !4790
  br label %722, !dbg !4793

722:                                              ; preds = %718, %712, %707
  %723 = phi i32 [ %719, %718 ], [ %708, %707 ], [ %713, %712 ]
  %724 = phi i64 [ %721, %718 ], [ 9223372036854775807, %707 ], [ -9223372036854775808, %712 ], !dbg !4790
  %725 = phi i32 [ 0, %718 ], [ 1, %707 ], [ 1, %712 ], !dbg !4790
  %726 = or i32 %725, %723, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %726, metadata !4704, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4788
  br label %976, !dbg !4761

727:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4720, metadata !DIExpression()), !dbg !4795
  %728 = icmp slt i64 %31, 0, !dbg !4797
  br i1 %728, label %729, label %732, !dbg !4797

729:                                              ; preds = %727
  %730 = add i64 %31, -1, !dbg !4797
  %731 = icmp ult i64 %730, -4611686018427387905, !dbg !4797
  br i1 %731, label %976, label %734, !dbg !4797

732:                                              ; preds = %727
  %733 = icmp ugt i64 %31, 4611686018427387903, !dbg !4797
  br i1 %733, label %976, label %734, !dbg !4797

734:                                              ; preds = %729, %732
  %735 = shl nsw i64 %31, 1, !dbg !4797
  call void @llvm.dbg.value(metadata i64 %735, metadata !4721, metadata !DIExpression()), !dbg !4795
  br label %976, !dbg !4798

736:                                              ; preds = %58
  %737 = icmp eq i64 %31, -1, !dbg !4730
  br i1 %737, label %745, label %738, !dbg !4730

738:                                              ; preds = %736
  %739 = sub i64 0, %31, !dbg !4730
  %740 = udiv i64 -9223372036854775808, %739, !dbg !4730
  %741 = icmp ult i64 %740, %54, !dbg !4730
  br i1 %741, label %753, label %745, !dbg !4730

742:                                              ; preds = %58
  %743 = udiv i64 9223372036854775807, %54, !dbg !4730
  %744 = icmp ult i64 %743, %31, !dbg !4730
  br i1 %744, label %748, label %745, !dbg !4730

745:                                              ; preds = %736, %738, %742
  %746 = mul i64 %31, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %746, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 6, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %747 = icmp slt i64 %746, 0, !dbg !4730
  br i1 %747, label %753, label %748, !dbg !4730

748:                                              ; preds = %742, %745
  %749 = phi i32 [ 0, %745 ], [ 1, %742 ]
  %750 = phi i64 [ %746, %745 ], [ 9223372036854775807, %742 ]
  %751 = udiv i64 9223372036854775807, %54, !dbg !4730
  %752 = icmp ult i64 %751, %750, !dbg !4730
  br i1 %752, label %764, label %759, !dbg !4730

753:                                              ; preds = %738, %745
  %754 = phi i32 [ 0, %745 ], [ 1, %738 ]
  %755 = phi i64 [ %746, %745 ], [ -9223372036854775808, %738 ]
  %756 = sub i64 0, %755, !dbg !4730
  %757 = udiv i64 -9223372036854775808, %756, !dbg !4730
  %758 = icmp ult i64 %757, %54, !dbg !4730
  br i1 %758, label %769, label %759, !dbg !4730

759:                                              ; preds = %748, %753
  %760 = phi i32 [ %754, %753 ], [ %749, %748 ]
  %761 = phi i64 [ %755, %753 ], [ %750, %748 ]
  %762 = mul i64 %761, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %762, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 %760, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 5, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %763 = icmp slt i64 %762, 0, !dbg !4730
  br i1 %763, label %769, label %764, !dbg !4730

764:                                              ; preds = %748, %759
  %765 = phi i32 [ %760, %759 ], [ 1, %748 ]
  %766 = phi i64 [ %762, %759 ], [ 9223372036854775807, %748 ]
  %767 = udiv i64 9223372036854775807, %54, !dbg !4730
  %768 = icmp ult i64 %767, %766, !dbg !4730
  br i1 %768, label %780, label %775, !dbg !4730

769:                                              ; preds = %753, %759
  %770 = phi i32 [ %760, %759 ], [ 1, %753 ]
  %771 = phi i64 [ %762, %759 ], [ -9223372036854775808, %753 ]
  %772 = sub i64 0, %771, !dbg !4730
  %773 = udiv i64 -9223372036854775808, %772, !dbg !4730
  %774 = icmp ult i64 %773, %54, !dbg !4730
  br i1 %774, label %785, label %775, !dbg !4730

775:                                              ; preds = %764, %769
  %776 = phi i32 [ %770, %769 ], [ %765, %764 ]
  %777 = phi i64 [ %771, %769 ], [ %766, %764 ]
  %778 = mul i64 %777, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %778, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 %776, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 4, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %779 = icmp slt i64 %778, 0, !dbg !4730
  br i1 %779, label %785, label %780, !dbg !4730

780:                                              ; preds = %764, %775
  %781 = phi i32 [ %776, %775 ], [ 1, %764 ]
  %782 = phi i64 [ %778, %775 ], [ 9223372036854775807, %764 ]
  %783 = udiv i64 9223372036854775807, %54, !dbg !4730
  %784 = icmp ult i64 %783, %782, !dbg !4730
  br i1 %784, label %796, label %791, !dbg !4730

785:                                              ; preds = %769, %775
  %786 = phi i32 [ %776, %775 ], [ 1, %769 ]
  %787 = phi i64 [ %778, %775 ], [ -9223372036854775808, %769 ]
  %788 = sub i64 0, %787, !dbg !4730
  %789 = udiv i64 -9223372036854775808, %788, !dbg !4730
  %790 = icmp ult i64 %789, %54, !dbg !4730
  br i1 %790, label %801, label %791, !dbg !4730

791:                                              ; preds = %780, %785
  %792 = phi i32 [ %786, %785 ], [ %781, %780 ]
  %793 = phi i64 [ %787, %785 ], [ %782, %780 ]
  %794 = mul i64 %793, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %794, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 %792, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %795 = icmp slt i64 %794, 0, !dbg !4730
  br i1 %795, label %801, label %796, !dbg !4730

796:                                              ; preds = %780, %791
  %797 = phi i32 [ %792, %791 ], [ 1, %780 ]
  %798 = phi i64 [ %794, %791 ], [ 9223372036854775807, %780 ]
  %799 = udiv i64 9223372036854775807, %54, !dbg !4730
  %800 = icmp ult i64 %799, %798, !dbg !4730
  br i1 %800, label %812, label %807, !dbg !4730

801:                                              ; preds = %785, %791
  %802 = phi i32 [ %792, %791 ], [ 1, %785 ]
  %803 = phi i64 [ %794, %791 ], [ -9223372036854775808, %785 ]
  %804 = sub i64 0, %803, !dbg !4730
  %805 = udiv i64 -9223372036854775808, %804, !dbg !4730
  %806 = icmp ult i64 %805, %54, !dbg !4730
  br i1 %806, label %817, label %807, !dbg !4730

807:                                              ; preds = %796, %801
  %808 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %809 = phi i64 [ %803, %801 ], [ %798, %796 ]
  %810 = mul i64 %809, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %810, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 %808, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %811 = icmp slt i64 %810, 0, !dbg !4730
  br i1 %811, label %817, label %812, !dbg !4730

812:                                              ; preds = %796, %807
  %813 = phi i32 [ %808, %807 ], [ 1, %796 ]
  %814 = phi i64 [ %810, %807 ], [ 9223372036854775807, %796 ]
  %815 = udiv i64 9223372036854775807, %54, !dbg !4730
  %816 = icmp ult i64 %815, %814, !dbg !4730
  br i1 %816, label %828, label %823, !dbg !4730

817:                                              ; preds = %801, %807
  %818 = phi i32 [ %808, %807 ], [ 1, %801 ]
  %819 = phi i64 [ %810, %807 ], [ -9223372036854775808, %801 ]
  %820 = sub i64 0, %819, !dbg !4730
  %821 = udiv i64 -9223372036854775808, %820, !dbg !4730
  %822 = icmp ult i64 %821, %54, !dbg !4730
  br i1 %822, label %833, label %823, !dbg !4730

823:                                              ; preds = %812, %817
  %824 = phi i32 [ %818, %817 ], [ %813, %812 ]
  %825 = phi i64 [ %819, %817 ], [ %814, %812 ]
  %826 = mul i64 %825, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %826, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 %824, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %827 = icmp slt i64 %826, 0, !dbg !4730
  br i1 %827, label %833, label %828, !dbg !4730

828:                                              ; preds = %812, %823
  %829 = phi i32 [ %824, %823 ], [ 1, %812 ]
  %830 = phi i64 [ %826, %823 ], [ 9223372036854775807, %812 ]
  %831 = udiv i64 9223372036854775807, %54, !dbg !4730
  %832 = icmp ult i64 %831, %830, !dbg !4730
  br i1 %832, label %844, label %839, !dbg !4730

833:                                              ; preds = %817, %823
  %834 = phi i32 [ %824, %823 ], [ 1, %817 ]
  %835 = phi i64 [ %826, %823 ], [ -9223372036854775808, %817 ]
  %836 = sub i64 0, %835, !dbg !4730
  %837 = udiv i64 -9223372036854775808, %836, !dbg !4730
  %838 = icmp ult i64 %837, %54, !dbg !4730
  br i1 %838, label %849, label %839, !dbg !4730

839:                                              ; preds = %828, %833
  %840 = phi i32 [ %834, %833 ], [ %829, %828 ]
  %841 = phi i64 [ %835, %833 ], [ %830, %828 ]
  %842 = mul i64 %841, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %842, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 %840, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4728
  %843 = icmp slt i64 %842, 0, !dbg !4730
  br i1 %843, label %849, label %844, !dbg !4730

844:                                              ; preds = %828, %839
  %845 = phi i32 [ %840, %839 ], [ 1, %828 ]
  %846 = phi i64 [ %842, %839 ], [ 9223372036854775807, %828 ]
  %847 = udiv i64 9223372036854775807, %54, !dbg !4730
  %848 = icmp ult i64 %847, %846, !dbg !4730
  br i1 %848, label %859, label %855, !dbg !4730

849:                                              ; preds = %833, %839
  %850 = phi i32 [ %840, %839 ], [ 1, %833 ]
  %851 = phi i64 [ %842, %839 ], [ -9223372036854775808, %833 ]
  %852 = sub i64 0, %851, !dbg !4730
  %853 = udiv i64 -9223372036854775808, %852, !dbg !4730
  %854 = icmp ult i64 %853, %54, !dbg !4730
  br i1 %854, label %859, label %855, !dbg !4730

855:                                              ; preds = %849, %844
  %856 = phi i32 [ %850, %849 ], [ %845, %844 ]
  %857 = phi i64 [ %851, %849 ], [ %846, %844 ]
  %858 = mul i64 %857, %54, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %858, metadata !4721, metadata !DIExpression()), !dbg !4728
  br label %859, !dbg !4799

859:                                              ; preds = %855, %849, %844
  %860 = phi i32 [ %856, %855 ], [ %845, %844 ], [ %850, %849 ]
  %861 = phi i64 [ %858, %855 ], [ 9223372036854775807, %844 ], [ -9223372036854775808, %849 ], !dbg !4728
  %862 = phi i32 [ 0, %855 ], [ 1, %844 ], [ 1, %849 ], !dbg !4728
  %863 = or i32 %862, %860, !dbg !4800
  call void @llvm.dbg.value(metadata i32 %863, metadata !4704, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4726
  br label %976, !dbg !4761

864:                                              ; preds = %56
  %865 = icmp eq i64 %31, -1, !dbg !4724
  br i1 %865, label %873, label %866, !dbg !4724

866:                                              ; preds = %864
  %867 = sub i64 0, %31, !dbg !4724
  %868 = udiv i64 -9223372036854775808, %867, !dbg !4724
  %869 = icmp ult i64 %868, %54, !dbg !4724
  br i1 %869, label %881, label %873, !dbg !4724

870:                                              ; preds = %56
  %871 = udiv i64 9223372036854775807, %54, !dbg !4724
  %872 = icmp ult i64 %871, %31, !dbg !4724
  br i1 %872, label %876, label %873, !dbg !4724

873:                                              ; preds = %864, %866, %870
  %874 = mul i64 %31, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %874, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 5, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %875 = icmp slt i64 %874, 0, !dbg !4724
  br i1 %875, label %881, label %876, !dbg !4724

876:                                              ; preds = %870, %873
  %877 = phi i32 [ 0, %873 ], [ 1, %870 ]
  %878 = phi i64 [ %874, %873 ], [ 9223372036854775807, %870 ]
  %879 = udiv i64 9223372036854775807, %54, !dbg !4724
  %880 = icmp ult i64 %879, %878, !dbg !4724
  br i1 %880, label %892, label %887, !dbg !4724

881:                                              ; preds = %866, %873
  %882 = phi i32 [ 0, %873 ], [ 1, %866 ]
  %883 = phi i64 [ %874, %873 ], [ -9223372036854775808, %866 ]
  %884 = sub i64 0, %883, !dbg !4724
  %885 = udiv i64 -9223372036854775808, %884, !dbg !4724
  %886 = icmp ult i64 %885, %54, !dbg !4724
  br i1 %886, label %897, label %887, !dbg !4724

887:                                              ; preds = %876, %881
  %888 = phi i32 [ %882, %881 ], [ %877, %876 ]
  %889 = phi i64 [ %883, %881 ], [ %878, %876 ]
  %890 = mul i64 %889, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %890, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %888, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 4, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %891 = icmp slt i64 %890, 0, !dbg !4724
  br i1 %891, label %897, label %892, !dbg !4724

892:                                              ; preds = %876, %887
  %893 = phi i32 [ %888, %887 ], [ 1, %876 ]
  %894 = phi i64 [ %890, %887 ], [ 9223372036854775807, %876 ]
  %895 = udiv i64 9223372036854775807, %54, !dbg !4724
  %896 = icmp ult i64 %895, %894, !dbg !4724
  br i1 %896, label %908, label %903, !dbg !4724

897:                                              ; preds = %881, %887
  %898 = phi i32 [ %888, %887 ], [ 1, %881 ]
  %899 = phi i64 [ %890, %887 ], [ -9223372036854775808, %881 ]
  %900 = sub i64 0, %899, !dbg !4724
  %901 = udiv i64 -9223372036854775808, %900, !dbg !4724
  %902 = icmp ult i64 %901, %54, !dbg !4724
  br i1 %902, label %913, label %903, !dbg !4724

903:                                              ; preds = %892, %897
  %904 = phi i32 [ %898, %897 ], [ %893, %892 ]
  %905 = phi i64 [ %899, %897 ], [ %894, %892 ]
  %906 = mul i64 %905, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %906, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %904, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 3, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %907 = icmp slt i64 %906, 0, !dbg !4724
  br i1 %907, label %913, label %908, !dbg !4724

908:                                              ; preds = %892, %903
  %909 = phi i32 [ %904, %903 ], [ 1, %892 ]
  %910 = phi i64 [ %906, %903 ], [ 9223372036854775807, %892 ]
  %911 = udiv i64 9223372036854775807, %54, !dbg !4724
  %912 = icmp ult i64 %911, %910, !dbg !4724
  br i1 %912, label %924, label %919, !dbg !4724

913:                                              ; preds = %897, %903
  %914 = phi i32 [ %904, %903 ], [ 1, %897 ]
  %915 = phi i64 [ %906, %903 ], [ -9223372036854775808, %897 ]
  %916 = sub i64 0, %915, !dbg !4724
  %917 = udiv i64 -9223372036854775808, %916, !dbg !4724
  %918 = icmp ult i64 %917, %54, !dbg !4724
  br i1 %918, label %929, label %919, !dbg !4724

919:                                              ; preds = %908, %913
  %920 = phi i32 [ %914, %913 ], [ %909, %908 ]
  %921 = phi i64 [ %915, %913 ], [ %910, %908 ]
  %922 = mul i64 %921, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %922, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %920, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 2, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %923 = icmp slt i64 %922, 0, !dbg !4724
  br i1 %923, label %929, label %924, !dbg !4724

924:                                              ; preds = %908, %919
  %925 = phi i32 [ %920, %919 ], [ 1, %908 ]
  %926 = phi i64 [ %922, %919 ], [ 9223372036854775807, %908 ]
  %927 = udiv i64 9223372036854775807, %54, !dbg !4724
  %928 = icmp ult i64 %927, %926, !dbg !4724
  br i1 %928, label %940, label %935, !dbg !4724

929:                                              ; preds = %913, %919
  %930 = phi i32 [ %920, %919 ], [ 1, %913 ]
  %931 = phi i64 [ %922, %919 ], [ -9223372036854775808, %913 ]
  %932 = sub i64 0, %931, !dbg !4724
  %933 = udiv i64 -9223372036854775808, %932, !dbg !4724
  %934 = icmp ult i64 %933, %54, !dbg !4724
  br i1 %934, label %945, label %935, !dbg !4724

935:                                              ; preds = %924, %929
  %936 = phi i32 [ %930, %929 ], [ %925, %924 ]
  %937 = phi i64 [ %931, %929 ], [ %926, %924 ]
  %938 = mul i64 %937, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %938, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %936, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 1, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %939 = icmp slt i64 %938, 0, !dbg !4724
  br i1 %939, label %945, label %940, !dbg !4724

940:                                              ; preds = %924, %935
  %941 = phi i32 [ %936, %935 ], [ 1, %924 ]
  %942 = phi i64 [ %938, %935 ], [ 9223372036854775807, %924 ]
  %943 = udiv i64 9223372036854775807, %54, !dbg !4724
  %944 = icmp ult i64 %943, %942, !dbg !4724
  br i1 %944, label %956, label %951, !dbg !4724

945:                                              ; preds = %929, %935
  %946 = phi i32 [ %936, %935 ], [ 1, %929 ]
  %947 = phi i64 [ %938, %935 ], [ -9223372036854775808, %929 ]
  %948 = sub i64 0, %947, !dbg !4724
  %949 = udiv i64 -9223372036854775808, %948, !dbg !4724
  %950 = icmp ult i64 %949, %54, !dbg !4724
  br i1 %950, label %961, label %951, !dbg !4724

951:                                              ; preds = %940, %945
  %952 = phi i32 [ %946, %945 ], [ %941, %940 ]
  %953 = phi i64 [ %947, %945 ], [ %942, %940 ]
  %954 = mul i64 %953, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %954, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %952, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 poison, metadata !4720, metadata !DIExpression()), !dbg !4722
  %955 = icmp slt i64 %954, 0, !dbg !4724
  br i1 %955, label %961, label %956, !dbg !4724

956:                                              ; preds = %940, %951
  %957 = phi i32 [ %952, %951 ], [ 1, %940 ]
  %958 = phi i64 [ %954, %951 ], [ 9223372036854775807, %940 ]
  %959 = udiv i64 9223372036854775807, %54, !dbg !4724
  %960 = icmp ult i64 %959, %958, !dbg !4724
  br i1 %960, label %971, label %967, !dbg !4724

961:                                              ; preds = %945, %951
  %962 = phi i32 [ %952, %951 ], [ 1, %945 ]
  %963 = phi i64 [ %954, %951 ], [ -9223372036854775808, %945 ]
  %964 = sub i64 0, %963, !dbg !4724
  %965 = udiv i64 -9223372036854775808, %964, !dbg !4724
  %966 = icmp ult i64 %965, %54, !dbg !4724
  br i1 %966, label %971, label %967, !dbg !4724

967:                                              ; preds = %961, %956
  %968 = phi i32 [ %962, %961 ], [ %957, %956 ]
  %969 = phi i64 [ %963, %961 ], [ %958, %956 ]
  %970 = mul i64 %969, %54, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %970, metadata !4721, metadata !DIExpression()), !dbg !4722
  br label %971, !dbg !4801

971:                                              ; preds = %967, %961, %956
  %972 = phi i32 [ %968, %967 ], [ %957, %956 ], [ %962, %961 ]
  %973 = phi i64 [ %970, %967 ], [ 9223372036854775807, %956 ], [ -9223372036854775808, %961 ], !dbg !4722
  %974 = phi i32 [ 0, %967 ], [ 1, %956 ], [ 1, %961 ], !dbg !4722
  %975 = or i32 %974, %972, !dbg !4802
  call void @llvm.dbg.value(metadata i32 %975, metadata !4704, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4712
  br label %976, !dbg !4761

976:                                              ; preds = %234, %238, %241, %971, %859, %722, %656, %512, %352, %272, %225, %175, %729, %78, %70, %53, %72, %74, %80, %82, %732, %734
  %977 = phi i64 [ %31, %53 ], [ %75, %74 ], [ 9223372036854775807, %72 ], [ %83, %82 ], [ 9223372036854775807, %80 ], [ %735, %734 ], [ 9223372036854775807, %732 ], [ -9223372036854775808, %70 ], [ -9223372036854775808, %78 ], [ -9223372036854775808, %729 ], [ %177, %175 ], [ %227, %225 ], [ %274, %272 ], [ %354, %352 ], [ %514, %512 ], [ %658, %656 ], [ %724, %722 ], [ %861, %859 ], [ %973, %971 ], [ %242, %241 ], [ 9223372036854775807, %238 ], [ -9223372036854775808, %234 ], !dbg !4650
  %978 = phi i32 [ 0, %53 ], [ 0, %74 ], [ 1, %72 ], [ 0, %82 ], [ 1, %80 ], [ 0, %734 ], [ 1, %732 ], [ 1, %70 ], [ 1, %78 ], [ 1, %729 ], [ %179, %175 ], [ %229, %225 ], [ %276, %272 ], [ %356, %352 ], [ %516, %512 ], [ %660, %656 ], [ %726, %722 ], [ %863, %859 ], [ %975, %971 ], [ 0, %241 ], [ 1, %238 ], [ 1, %234 ], !dbg !4803
  call void @llvm.dbg.value(metadata i32 %978, metadata !4649, metadata !DIExpression()), !dbg !4689
  %979 = or i32 %978, %30, !dbg !4761
  call void @llvm.dbg.value(metadata i32 %979, metadata !4644, metadata !DIExpression()), !dbg !4650
  %980 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4804
  store ptr %980, ptr %8, align 8, !dbg !4804, !tbaa !864
  %981 = load i8, ptr %980, align 1, !dbg !4805, !tbaa !943
  %982 = icmp eq i8 %981, 0, !dbg !4805
  %983 = or i32 %979, 2
  %984 = select i1 %982, i32 %979, i32 %983, !dbg !4807
  call void @llvm.dbg.value(metadata i32 %984, metadata !4644, metadata !DIExpression()), !dbg !4650
  br label %987

985:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %10, metadata !4643, metadata !DIExpression()), !dbg !4650
  store i64 %31, ptr %3, align 8, !dbg !4808, !tbaa !1312
  %986 = or i32 %30, 2, !dbg !4809
  call void @llvm.dbg.value(metadata i32 %30, metadata !4644, metadata !DIExpression()), !dbg !4650
  br label %990

987:                                              ; preds = %976, %29
  %988 = phi i64 [ %31, %29 ], [ %977, %976 ], !dbg !4810
  %989 = phi i32 [ %30, %29 ], [ %984, %976 ], !dbg !4811
  call void @llvm.dbg.value(metadata i32 %989, metadata !4644, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i64 %988, metadata !4643, metadata !DIExpression()), !dbg !4650
  store i64 %988, ptr %3, align 8, !dbg !4812, !tbaa !1312
  br label %990, !dbg !4813

990:                                              ; preds = %985, %22, %13, %15, %18, %987, %38, %28
  %991 = phi i32 [ %989, %987 ], [ %986, %985 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !4814
  ret i32 %991, !dbg !4814
}

; Function Attrs: nounwind
declare !dbg !4815 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #19 !dbg !4820 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4858, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata ptr %1, metadata !4859, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 0, metadata !4860, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 0, metadata !4861, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i8 0, metadata !4862, metadata !DIExpression()), !dbg !4882
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4863, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata ptr %1, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr %3, metadata !4869, metadata !DIExpression()), !dbg !4885
  br label %4, !dbg !4886

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4885
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4882
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4887
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4882
  call void @llvm.dbg.value(metadata i32 %9, metadata !4860, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 %8, metadata !4861, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata ptr %10, metadata !4869, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr %6, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i8 poison, metadata !4862, metadata !DIExpression()), !dbg !4882
  %11 = load i8, ptr %6, align 1, !dbg !4888, !tbaa !943
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4889

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4860, metadata !DIExpression()), !dbg !4882
  %13 = icmp slt i64 %7, 80, !dbg !4890
  br i1 %13, label %14, label %43, !dbg !4893

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4894
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4885
  store i8 114, ptr %10, align 1, !dbg !4895, !tbaa !943
  br label %43, !dbg !4896

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4860, metadata !DIExpression()), !dbg !4882
  %17 = or i32 %8, 576, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %17, metadata !4861, metadata !DIExpression()), !dbg !4882
  %18 = icmp slt i64 %7, 80, !dbg !4898
  br i1 %18, label %19, label %43, !dbg !4900

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4901
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4885
  store i8 119, ptr %10, align 1, !dbg !4902, !tbaa !943
  br label %43, !dbg !4903

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4860, metadata !DIExpression()), !dbg !4882
  %22 = or i32 %8, 1088, !dbg !4904
  call void @llvm.dbg.value(metadata i32 %22, metadata !4861, metadata !DIExpression()), !dbg !4882
  %23 = icmp slt i64 %7, 80, !dbg !4905
  br i1 %23, label %24, label %43, !dbg !4907

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4908
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4885
  store i8 97, ptr %10, align 1, !dbg !4909, !tbaa !943
  br label %43, !dbg !4910

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4861, metadata !DIExpression()), !dbg !4882
  %27 = icmp slt i64 %7, 80, !dbg !4911
  br i1 %27, label %28, label %43, !dbg !4913

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4914
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4885
  store i8 98, ptr %10, align 1, !dbg !4915, !tbaa !943
  br label %43, !dbg !4916

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4860, metadata !DIExpression()), !dbg !4882
  %31 = icmp slt i64 %7, 80, !dbg !4917
  br i1 %31, label %32, label %43, !dbg !4919

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4920
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4885
  store i8 43, ptr %10, align 1, !dbg !4921, !tbaa !943
  br label %43, !dbg !4922

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4923
  call void @llvm.dbg.value(metadata i32 %35, metadata !4861, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i8 1, metadata !4862, metadata !DIExpression()), !dbg !4882
  br label %43, !dbg !4924

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4925
  call void @llvm.dbg.value(metadata i32 %37, metadata !4861, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i8 1, metadata !4862, metadata !DIExpression()), !dbg !4882
  br label %43, !dbg !4926

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #43, !dbg !4927
  call void @llvm.dbg.value(metadata i64 %39, metadata !4870, metadata !DIExpression()), !dbg !4928
  %40 = sub nsw i64 80, %7, !dbg !4929
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4931
  call void @llvm.dbg.value(metadata i64 %41, metadata !4870, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata ptr %10, metadata !4932, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata ptr %6, metadata !4935, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i64 %41, metadata !4936, metadata !DIExpression()), !dbg !4937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #42, !dbg !4939
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %42, metadata !4869, metadata !DIExpression()), !dbg !4885
  br label %49, !dbg !4941

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4882
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4882
  call void @llvm.dbg.value(metadata i32 %47, metadata !4860, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 %46, metadata !4861, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4885
  call void @llvm.dbg.value(metadata i8 poison, metadata !4862, metadata !DIExpression()), !dbg !4882
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4942
  call void @llvm.dbg.value(metadata ptr %48, metadata !4867, metadata !DIExpression()), !dbg !4885
  br label %4, !dbg !4943, !llvm.loop !4944

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4885
  call void @llvm.dbg.value(metadata ptr %50, metadata !4869, metadata !DIExpression()), !dbg !4885
  store i8 0, ptr %50, align 1, !dbg !4946, !tbaa !943
  br i1 %5, label %51, label %62, !dbg !4947

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4948
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #42, !dbg !4949
  call void @llvm.dbg.value(metadata i32 %53, metadata !4875, metadata !DIExpression()), !dbg !4950
  %54 = icmp slt i32 %53, 0, !dbg !4951
  br i1 %54, label %64, label %55, !dbg !4953

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #42, !dbg !4954
  call void @llvm.dbg.value(metadata ptr %56, metadata !4878, metadata !DIExpression()), !dbg !4950
  %57 = icmp eq ptr %56, null, !dbg !4955
  br i1 %57, label %58, label %64, !dbg !4956

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #45, !dbg !4957
  %60 = load i32, ptr %59, align 4, !dbg !4957, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %60, metadata !4879, metadata !DIExpression()), !dbg !4958
  %61 = tail call i32 @close(i32 noundef %53) #42, !dbg !4959
  store i32 %60, ptr %59, align 4, !dbg !4960, !tbaa !934
  br label %64, !dbg !4961

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4962, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata ptr %1, metadata !4965, metadata !DIExpression()), !dbg !4966
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4968
  br label %64, !dbg !4969

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4882
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !4970
  ret ptr %65, !dbg !4970
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4971 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #39

; Function Attrs: nofree nounwind
declare !dbg !4974 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4977 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4978 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #19 !dbg !4981 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5019, metadata !DIExpression()), !dbg !5024
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !5025
  call void @llvm.dbg.value(metadata i1 poison, metadata !5020, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5024
  call void @llvm.dbg.value(metadata ptr %0, metadata !5026, metadata !DIExpression()), !dbg !5029
  %3 = load i32, ptr %0, align 8, !dbg !5031, !tbaa !1291
  %4 = and i32 %3, 32, !dbg !5032
  %5 = icmp eq i32 %4, 0, !dbg !5032
  call void @llvm.dbg.value(metadata i1 %5, metadata !5022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5024
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !5033
  %7 = icmp eq i32 %6, 0, !dbg !5034
  call void @llvm.dbg.value(metadata i1 %7, metadata !5023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5024
  br i1 %5, label %8, label %18, !dbg !5035

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5037
  call void @llvm.dbg.value(metadata i1 %9, metadata !5020, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5024
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5038
  %11 = xor i1 %7, true, !dbg !5038
  %12 = sext i1 %11 to i32, !dbg !5038
  br i1 %10, label %21, label %13, !dbg !5038

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !5039
  %15 = load i32, ptr %14, align 4, !dbg !5039, !tbaa !934
  %16 = icmp ne i32 %15, 9, !dbg !5040
  %17 = sext i1 %16 to i32, !dbg !5041
  br label %21, !dbg !5041

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5042

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !5044
  store i32 0, ptr %20, align 4, !dbg !5046, !tbaa !934
  br label %21, !dbg !5044

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5024
  ret i32 %22, !dbg !5047
}

; Function Attrs: nounwind
declare !dbg !5048 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !5051 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5056, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata ptr %1, metadata !5057, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata i64 %2, metadata !5058, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata ptr %3, metadata !5059, metadata !DIExpression()), !dbg !5061
  %5 = icmp eq ptr %1, null, !dbg !5062
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5064
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5064
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5064
  call void @llvm.dbg.value(metadata i64 %8, metadata !5058, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata ptr %7, metadata !5057, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata ptr %6, metadata !5056, metadata !DIExpression()), !dbg !5061
  %9 = icmp eq ptr %3, null, !dbg !5065
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5067
  call void @llvm.dbg.value(metadata ptr %10, metadata !5059, metadata !DIExpression()), !dbg !5061
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #42, !dbg !5068
  call void @llvm.dbg.value(metadata i64 %11, metadata !5060, metadata !DIExpression()), !dbg !5061
  %12 = icmp ult i64 %11, -3, !dbg !5069
  br i1 %12, label %13, label %17, !dbg !5071

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #43, !dbg !5072
  %15 = icmp eq i32 %14, 0, !dbg !5072
  br i1 %15, label %16, label %29, !dbg !5073

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5074, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata ptr %10, metadata !5081, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i32 0, metadata !5084, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i64 8, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i64 0, ptr %10, align 1, !dbg !5088
  br label %29, !dbg !5089

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5090
  br i1 %18, label %19, label %20, !dbg !5092

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5093
  unreachable, !dbg !5093

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5094

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #42, !dbg !5096
  br i1 %23, label %29, label %24, !dbg !5097

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5098
  br i1 %25, label %29, label %26, !dbg !5101

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5102, !tbaa !943
  %28 = zext i8 %27 to i32, !dbg !5103
  store i32 %28, ptr %6, align 4, !dbg !5104, !tbaa !934
  br label %29, !dbg !5105

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5061
  ret i64 %30, !dbg !5106
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5107 i32 @mbsinit(ptr noundef) local_unnamed_addr #40

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5113 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5115, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i64 %1, metadata !5116, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i64 %2, metadata !5117, metadata !DIExpression()), !dbg !5119
  %4 = icmp eq i64 %2, 0, !dbg !5120
  br i1 %4, label %8, label %5, !dbg !5120

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5120
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5120
  br i1 %7, label %13, label %8, !dbg !5120

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5118, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5119
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5118, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5119
  %9 = mul i64 %2, %1, !dbg !5120
  call void @llvm.dbg.value(metadata i64 %9, metadata !5118, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata ptr %0, metadata !5122, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata i64 %9, metadata !5125, metadata !DIExpression()), !dbg !5126
  %10 = icmp eq i64 %9, 0, !dbg !5128
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5128
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #49, !dbg !5129
  br label %15, !dbg !5130

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5118, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5119
  %14 = tail call ptr @__errno_location() #45, !dbg !5131
  store i32 12, ptr %14, align 4, !dbg !5133, !tbaa !934
  br label %15, !dbg !5134

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5119
  ret ptr %16, !dbg !5135
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #19 !dbg !5136 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5140, metadata !DIExpression()), !dbg !5145
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !5146
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5141, metadata !DIExpression()), !dbg !5147
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !5148
  %4 = icmp eq i32 %3, 0, !dbg !5148
  br i1 %4, label %5, label %12, !dbg !5150

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5151, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.value(metadata ptr @.str.158, metadata !5154, metadata !DIExpression()), !dbg !5155
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.158, i64 2), !dbg !5158
  %7 = icmp eq i32 %6, 0, !dbg !5159
  br i1 %7, label %11, label %8, !dbg !5160

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5151, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata ptr @.str.1.159, metadata !5154, metadata !DIExpression()), !dbg !5161
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.159, i64 6), !dbg !5163
  %10 = icmp eq i32 %9, 0, !dbg !5164
  br i1 %10, label %11, label %12, !dbg !5165

11:                                               ; preds = %8, %5
  br label %12, !dbg !5166

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5145
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !5167
  ret i1 %13, !dbg !5167
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !5168 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata ptr %1, metadata !5173, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %2, metadata !5174, metadata !DIExpression()), !dbg !5175
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !5176
  ret i32 %4, !dbg !5177
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #19 !dbg !5178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5182, metadata !DIExpression()), !dbg !5183
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !5184
  ret ptr %2, !dbg !5185
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #19 !dbg !5186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5188, metadata !DIExpression()), !dbg !5190
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5191
  call void @llvm.dbg.value(metadata ptr %2, metadata !5189, metadata !DIExpression()), !dbg !5190
  ret ptr %2, !dbg !5192
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !5193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5195, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata ptr %1, metadata !5196, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata i64 %2, metadata !5197, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata i32 %0, metadata !5188, metadata !DIExpression()), !dbg !5203
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5205
  call void @llvm.dbg.value(metadata ptr %4, metadata !5189, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata ptr %4, metadata !5198, metadata !DIExpression()), !dbg !5202
  %5 = icmp eq ptr %4, null, !dbg !5206
  br i1 %5, label %6, label %9, !dbg !5207

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5208
  br i1 %7, label %19, label %8, !dbg !5211

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5212, !tbaa !943
  br label %19, !dbg !5213

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !5214
  call void @llvm.dbg.value(metadata i64 %10, metadata !5199, metadata !DIExpression()), !dbg !5215
  %11 = icmp ult i64 %10, %2, !dbg !5216
  br i1 %11, label %12, label %14, !dbg !5218

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5219
  call void @llvm.dbg.value(metadata ptr %1, metadata !5221, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.value(metadata ptr %4, metadata !5224, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.value(metadata i64 %13, metadata !5225, metadata !DIExpression()), !dbg !5226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #42, !dbg !5228
  br label %19, !dbg !5229

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5230
  br i1 %15, label %19, label %16, !dbg !5233

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5234
  call void @llvm.dbg.value(metadata ptr %1, metadata !5221, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.value(metadata ptr %4, metadata !5224, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.value(metadata i64 %17, metadata !5225, metadata !DIExpression()), !dbg !5236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !5238
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5239
  store i8 0, ptr %18, align 1, !dbg !5240, !tbaa !943
  br label %19, !dbg !5241

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5242
  ret i32 %20, !dbg !5243
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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nofree nosync nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nosync nounwind willreturn }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #32 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #42 = { nounwind }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { noreturn }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { cold }
attributes #49 = { nounwind allocsize(1) }
attributes #50 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !424, !428, !443, !458, !735, !769, !772, !774, !777, !779, !781, !515, !529, !577, !783, !727, !789, !823, !825, !832, !834, !751, !836, !839, !841, !843}
!llvm.ident = !{!845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845, !845}
!llvm.module.flags = !{!846, !847, !848, !849, !850, !851, !852}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/basenc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c3d15bc5cd58555d8b873e09066a687")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 70)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 37)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 79)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 976, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 122)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2144, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 268)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1649, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1650, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1650, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1655, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 5)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "long_options", scope: !74, file: !2, line: 75, type: !409, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !129, globals: !139, splitDebugInlining: false, nameTableKind: None)
!75 = !{!76, !85, !91, !105, !114}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !77, line: 30, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!81 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!82 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!83 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!84 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 337, baseType: !87, size: 32, elements: !88)
!86 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!90 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !92, line: 42, baseType: !78, size: 32, elements: !93)
!92 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!94 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!95 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!96 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!97 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!98 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!99 = !DIEnumerator(name: "c_quoting_style", value: 5)
!100 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!101 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!102 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!103 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!104 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 44, baseType: !78, size: 32, elements: !107)
!106 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!107 = !{!108, !109, !110, !111, !112, !113}
!108 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!109 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!110 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!111 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!112 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!113 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 46, baseType: !78, size: 32, elements: !116)
!115 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!117 = !DIEnumerator(name: "_ISupper", value: 256)
!118 = !DIEnumerator(name: "_ISlower", value: 512)
!119 = !DIEnumerator(name: "_ISalpha", value: 1024)
!120 = !DIEnumerator(name: "_ISdigit", value: 2048)
!121 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!122 = !DIEnumerator(name: "_ISspace", value: 8192)
!123 = !DIEnumerator(name: "_ISprint", value: 16384)
!124 = !DIEnumerator(name: "_ISgraph", value: 32768)
!125 = !DIEnumerator(name: "_ISblank", value: 1)
!126 = !DIEnumerator(name: "_IScntrl", value: 2)
!127 = !DIEnumerator(name: "_ISpunct", value: 4)
!128 = !DIEnumerator(name: "_ISalnum", value: 8)
!129 = !{!130, !131, !87, !132, !133, !136, !138}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 46, baseType: !135)
!134 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!135 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !140, !142, !147, !152, !157, !162, !167, !172, !174, !179, !184, !267, !269, !271, !276, !281, !283, !285, !287, !289, !291, !293, !295, !297, !302, !304, !306, !308, !310, !312, !314, !316, !321, !326, !331, !333, !335, !337, !339, !341, !346, !348, !350, !355, !360, !365, !370, !372, !374, !376, !378, !72, !380, !385, !387, !392, !397, !402, !404}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1667, type: !19, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1667, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 18)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1693, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 14)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1693, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1807, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 17)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1814, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 2)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1823, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 3)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1825, type: !169, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !86, line: 729, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 56)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !86, line: 736, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 75)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !186, file: !86, line: 575, type: !87, isLocal: true, isDefinition: true)
!186 = distinct !DISubprogram(name: "oputs_", scope: !86, file: !86, line: 573, type: !187, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !189)
!187 = !DISubroutineType(cc: DW_CC_nocall, types: !188)
!188 = !{null, !136, !136}
!189 = !{!190, !191, !192, !195, !197, !198, !199, !203, !204, !205, !206, !208, !261, !262, !263, !265, !266}
!190 = !DILocalVariable(name: "program", arg: 1, scope: !186, file: !86, line: 573, type: !136)
!191 = !DILocalVariable(name: "option", arg: 2, scope: !186, file: !86, line: 573, type: !136)
!192 = !DILocalVariable(name: "term", scope: !193, file: !86, line: 585, type: !136)
!193 = distinct !DILexicalBlock(scope: !194, file: !86, line: 582, column: 5)
!194 = distinct !DILexicalBlock(scope: !186, file: !86, line: 581, column: 7)
!195 = !DILocalVariable(name: "double_space", scope: !186, file: !86, line: 594, type: !196)
!196 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!197 = !DILocalVariable(name: "first_word", scope: !186, file: !86, line: 595, type: !136)
!198 = !DILocalVariable(name: "option_text", scope: !186, file: !86, line: 596, type: !136)
!199 = !DILocalVariable(name: "s", scope: !200, file: !86, line: 608, type: !136)
!200 = distinct !DILexicalBlock(scope: !201, file: !86, line: 605, column: 5)
!201 = distinct !DILexicalBlock(scope: !202, file: !86, line: 604, column: 12)
!202 = distinct !DILexicalBlock(scope: !186, file: !86, line: 597, column: 7)
!203 = !DILocalVariable(name: "spaces", scope: !200, file: !86, line: 609, type: !133)
!204 = !DILocalVariable(name: "anchor_len", scope: !186, file: !86, line: 620, type: !133)
!205 = !DILocalVariable(name: "desc_text", scope: !186, file: !86, line: 625, type: !136)
!206 = !DILocalVariable(name: "__ptr", scope: !207, file: !86, line: 644, type: !136)
!207 = distinct !DILexicalBlock(scope: !186, file: !86, line: 644, column: 3)
!208 = !DILocalVariable(name: "__stream", scope: !207, file: !86, line: 644, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !212)
!211 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !214)
!213 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !230, !232, !233, !234, !238, !239, !241, !242, !245, !247, !250, !253, !254, !255, !256, !257}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !212, file: !213, line: 51, baseType: !87, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !212, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !212, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !212, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !212, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !212, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !212, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !212, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !212, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !212, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !212, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !212, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !212, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !213, line: 36, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !212, file: !213, line: 70, baseType: !231, size: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !212, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !212, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !212, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !236, line: 152, baseType: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!237 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !212, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !212, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!240 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !212, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !212, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !213, line: 43, baseType: null)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !212, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !236, line: 153, baseType: !237)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !212, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !213, line: 37, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !212, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !213, line: 38, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !212, file: !213, line: 93, baseType: !231, size: 64, offset: 1344)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !212, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !212, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !212, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !212, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 20)
!261 = !DILocalVariable(name: "__cnt", scope: !207, file: !86, line: 644, type: !133)
!262 = !DILocalVariable(name: "url_program", scope: !186, file: !86, line: 648, type: !136)
!263 = !DILocalVariable(name: "__ptr", scope: !264, file: !86, line: 686, type: !136)
!264 = distinct !DILexicalBlock(scope: !186, file: !86, line: 686, column: 3)
!265 = !DILocalVariable(name: "__stream", scope: !264, file: !86, line: 686, type: !209)
!266 = !DILocalVariable(name: "__cnt", scope: !264, file: !86, line: 686, type: !133)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !86, line: 585, type: !69, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !86, line: 586, type: !69, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !86, line: 595, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 4)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !86, line: 620, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 6)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !86, line: 648, type: !164, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !86, line: 648, type: !69, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !86, line: 649, type: !273, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !86, line: 649, type: !169, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !86, line: 650, type: !69, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !86, line: 651, type: !278, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !86, line: 651, type: !278, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !86, line: 652, type: !19, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !86, line: 653, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 8)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !86, line: 654, type: !59, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !86, line: 655, type: !59, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !86, line: 656, type: !59, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !86, line: 657, type: !59, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !86, line: 663, type: !19, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !86, line: 664, type: !59, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !86, line: 669, type: !159, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !86, line: 669, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 40)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !86, line: 676, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 15)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !86, line: 676, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 61)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !86, line: 679, type: !169, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !86, line: 683, type: !69, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !86, line: 688, type: !69, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !86, line: 691, type: !299, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !86, line: 839, type: !154, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !86, line: 840, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 22)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !86, line: 841, type: !323, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !86, line: 862, type: !273, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !86, line: 868, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 71)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !86, line: 875, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 27)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !86, line: 877, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 51)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !86, line: 877, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 12)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !19, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !69, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !323, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !69, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !299, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1601, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 11)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1617, type: !149, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 32)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 13)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 680, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 85)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !86, line: 952, type: !367, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1479, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 23)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 1536, elements: !279)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !412, line: 50, size: 256, elements: !413)
!412 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!413 = !{!414, !415, !416, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !411, file: !412, line: 52, baseType: !136, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !411, file: !412, line: 55, baseType: !87, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !411, file: !412, line: 56, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !412, line: 57, baseType: !87, size: 32, offset: 192)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !421, line: 3, type: !323, isLocal: true, isDefinition: true)
!421 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "Version", scope: !424, file: !421, line: 3, type: !136, isLocal: false, isDefinition: true)
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
!425 = !{!419, !422}
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "base64_to_int", scope: !428, file: !429, line: 243, type: !437, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !431, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/base64.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de7b87ba8809e6c9b8f3253a3b932105")
!430 = !{!196, !237, !135, !131, !130}
!431 = !{!426, !432}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "b64c", scope: !428, file: !429, line: 62, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 512, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 64)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 2048, elements: !439)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!439 = !{!440}
!440 = !DISubrange(count: 256)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "file_name", scope: !443, file: !444, line: 45, type: !136, isLocal: true, isDefinition: true)
!443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !444, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !445, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!445 = !{!446, !448, !450, !452, !441, !454}
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !444, line: 121, type: !19, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !444, line: 121, type: !367, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !444, line: 123, type: !19, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !444, line: 126, type: !169, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !443, file: !444, line: 55, type: !196, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !458, file: !459, line: 66, type: !510, isLocal: false, isDefinition: true)
!458 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !460, globals: !461, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!460 = !{!131, !138}
!461 = !{!462, !464, !489, !491, !493, !495, !456, !497, !499, !501, !503, !508}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 272, type: !69, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "old_file_name", scope: !466, file: !459, line: 304, type: !136, isLocal: true, isDefinition: true)
!466 = distinct !DISubprogram(name: "verror_at_line", scope: !459, file: !459, line: 298, type: !467, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !482)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !87, !87, !136, !78, !136, !469}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !470, line: 52, baseType: !471)
!470 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !472, line: 14, baseType: !473)
!472 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !474, baseType: !475)
!474 = !DIFile(filename: "lib/error.c", directory: "/src")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !476)
!476 = !{!477, !478, !479, !480, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !475, file: !474, baseType: !131, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !475, file: !474, baseType: !131, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !475, file: !474, baseType: !131, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !475, file: !474, baseType: !87, size: 32, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !475, file: !474, baseType: !87, size: 32, offset: 224)
!482 = !{!483, !484, !485, !486, !487, !488}
!483 = !DILocalVariable(name: "status", arg: 1, scope: !466, file: !459, line: 298, type: !87)
!484 = !DILocalVariable(name: "errnum", arg: 2, scope: !466, file: !459, line: 298, type: !87)
!485 = !DILocalVariable(name: "file_name", arg: 3, scope: !466, file: !459, line: 298, type: !136)
!486 = !DILocalVariable(name: "line_number", arg: 4, scope: !466, file: !459, line: 298, type: !78)
!487 = !DILocalVariable(name: "message", arg: 5, scope: !466, file: !459, line: 298, type: !136)
!488 = !DILocalVariable(name: "args", arg: 6, scope: !466, file: !459, line: 298, type: !469)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "old_line_number", scope: !466, file: !459, line: 305, type: !78, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !459, line: 338, type: !273, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !299, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !164, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "error_message_count", scope: !458, file: !459, line: 69, type: !78, isLocal: false, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !458, file: !459, line: 295, type: !87, isLocal: false, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !19, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !505, isLocal: true, isDefinition: true)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 21)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !459, line: 214, type: !69, isLocal: true, isDefinition: true)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null}
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "program_name", scope: !515, file: !516, line: 31, type: !136, isLocal: false, isDefinition: true)
!515 = distinct !DICompileUnit(language: DW_LANG_C11, file: !516, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !517, globals: !518, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!517 = !{!130}
!518 = !{!513, !519, !521}
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !516, line: 46, type: !299, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !516, line: 49, type: !273, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "utf07FF", scope: !525, file: !526, line: 46, type: !553, isLocal: true, isDefinition: true)
!525 = distinct !DISubprogram(name: "proper_name_lite", scope: !526, file: !526, line: 38, type: !527, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !531)
!526 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!527 = !DISubroutineType(types: !528)
!528 = !{!136, !136, !136}
!529 = distinct !DICompileUnit(language: DW_LANG_C11, file: !526, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !530, splitDebugInlining: false, nameTableKind: None)
!530 = !{!523}
!531 = !{!532, !533, !534, !535, !540}
!532 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !525, file: !526, line: 38, type: !136)
!533 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !525, file: !526, line: 38, type: !136)
!534 = !DILocalVariable(name: "translation", scope: !525, file: !526, line: 40, type: !136)
!535 = !DILocalVariable(name: "w", scope: !525, file: !526, line: 47, type: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !537, line: 37, baseType: !538)
!537 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!540 = !DILocalVariable(name: "mbs", scope: !525, file: !526, line: 48, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !542, line: 6, baseType: !543)
!542 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !544, line: 21, baseType: !545)
!544 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 13, size: 64, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !545, file: !544, line: 15, baseType: !87, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !545, file: !544, line: 20, baseType: !549, size: 32, offset: 32)
!549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !544, line: 16, size: 32, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !549, file: !544, line: 18, baseType: !78, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !549, file: !544, line: 19, baseType: !273, size: 32)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !556, line: 78, type: !299, isLocal: true, isDefinition: true)
!556 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !556, line: 79, type: !278, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !556, line: 80, type: !394, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !556, line: 81, type: !394, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !556, line: 82, type: !258, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !556, line: 83, type: !164, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !556, line: 84, type: !299, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !556, line: 85, type: !19, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !556, line: 86, type: !19, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !556, line: 87, type: !299, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !577, file: !556, line: 76, type: !647, isLocal: false, isDefinition: true)
!577 = distinct !DICompileUnit(language: DW_LANG_C11, file: !556, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !578, retainedTypes: !584, globals: !585, splitDebugInlining: false, nameTableKind: None)
!578 = !{!91, !579, !114}
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !92, line: 254, baseType: !78, size: 32, elements: !580)
!580 = !{!581, !582, !583}
!581 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!582 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!583 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!584 = !{!87, !132, !133}
!585 = !{!554, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !586, !590, !600, !602, !605, !607, !609, !611, !613, !636, !643, !645}
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !577, file: !556, line: 92, type: !588, isLocal: false, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 320, elements: !60)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !577, file: !556, line: 1040, type: !592, isLocal: false, isDefinition: true)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !556, line: 56, size: 448, elements: !593)
!593 = !{!594, !595, !596, !598, !599}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !592, file: !556, line: 59, baseType: !91, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !556, line: 62, baseType: !87, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !592, file: !556, line: 66, baseType: !597, size: 256, offset: 64)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !592, file: !556, line: 69, baseType: !136, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !592, file: !556, line: 72, baseType: !136, size: 64, offset: 384)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !577, file: !556, line: 107, type: !592, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "slot0", scope: !577, file: !556, line: 831, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !439)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !556, line: 321, type: !164, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !556, line: 357, type: !164, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !556, line: 358, type: !164, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !556, line: 199, type: !19, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "quote", scope: !615, file: !556, line: 228, type: !634, isLocal: true, isDefinition: true)
!615 = distinct !DISubprogram(name: "gettext_quote", scope: !556, file: !556, line: 197, type: !616, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!136, !136, !91}
!618 = !{!619, !620, !621, !622, !623}
!619 = !DILocalVariable(name: "msgid", arg: 1, scope: !615, file: !556, line: 197, type: !136)
!620 = !DILocalVariable(name: "s", arg: 2, scope: !615, file: !556, line: 197, type: !91)
!621 = !DILocalVariable(name: "translation", scope: !615, file: !556, line: 199, type: !136)
!622 = !DILocalVariable(name: "w", scope: !615, file: !556, line: 229, type: !536)
!623 = !DILocalVariable(name: "mbs", scope: !615, file: !556, line: 230, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !542, line: 6, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !544, line: 21, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 13, size: 64, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !626, file: !544, line: 15, baseType: !87, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !626, file: !544, line: 20, baseType: !630, size: 32, offset: 32)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !544, line: 16, size: 32, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !630, file: !544, line: 18, baseType: !78, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !630, file: !544, line: 19, baseType: !273, size: 32)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !635)
!635 = !{!166, !275}
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "slotvec", scope: !577, file: !556, line: 834, type: !638, isLocal: true, isDefinition: true)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !556, line: 823, size: 128, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !639, file: !556, line: 825, baseType: !133, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !639, file: !556, line: 826, baseType: !130, size: 64, offset: 64)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "nslots", scope: !577, file: !556, line: 832, type: !87, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "slotvec0", scope: !577, file: !556, line: 833, type: !639, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 704, elements: !383)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 67, type: !367, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !651, line: 69, type: !19, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !651, line: 83, type: !19, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !651, line: 83, type: !273, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !651, line: 85, type: !164, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !651, line: 88, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 171)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !651, line: 88, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 34)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !651, line: 105, type: !154, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !651, line: 109, type: !406, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !651, line: 113, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 28)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !651, line: 120, type: !389, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !651, line: 127, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 36)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !651, line: 134, type: !318, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !651, line: 142, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 44)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !651, line: 150, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 48)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !651, line: 159, type: !700, isLocal: true, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 52)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !651, line: 170, type: !705, isLocal: true, isDefinition: true)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 60)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !651, line: 248, type: !258, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !651, line: 248, type: !343, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !651, line: 254, type: !258, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !651, line: 254, type: !149, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !651, line: 254, type: !318, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !651, line: 259, type: !3, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !651, line: 259, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 29)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !727, file: !728, line: 26, type: !730, isLocal: false, isDefinition: true)
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !729, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!729 = !{!725}
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 47)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "exit_failure", scope: !735, file: !736, line: 24, type: !738, isLocal: false, isDefinition: true)
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!737 = !{!733}
!738 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !741, line: 34, type: !169, isLocal: true, isDefinition: true)
!741 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !741, line: 34, type: !19, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !741, line: 34, type: !159, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !748, line: 108, type: !54, isLocal: true, isDefinition: true)
!748 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "internal_state", scope: !751, file: !748, line: 97, type: !754, isLocal: true, isDefinition: true)
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !752, globals: !753, splitDebugInlining: false, nameTableKind: None)
!752 = !{!131, !133, !138}
!753 = !{!746, !749}
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !542, line: 6, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !544, line: 21, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 13, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !544, line: 15, baseType: !87, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !756, file: !544, line: 20, baseType: !760, size: 32, offset: 32)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !544, line: 16, size: 32, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !760, file: !544, line: 18, baseType: !78, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !760, file: !544, line: 19, baseType: !273, size: 32)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !766, line: 35, type: !164, isLocal: true, isDefinition: true)
!766 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !766, line: 35, type: !278, isLocal: true, isDefinition: true)
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !771, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!771 = !{!105}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !776, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!776 = !{!131}
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !776, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !784, retainedTypes: !776, globals: !788, splitDebugInlining: false, nameTableKind: None)
!784 = !{!785}
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !651, line: 40, baseType: !78, size: 32, elements: !786)
!786 = !{!787}
!787 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!788 = !{!649, !652, !654, !656, !658, !660, !665, !670, !672, !674, !679, !681, !686, !688, !693, !698, !703, !708, !710, !712, !714, !716, !718, !720}
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !791, retainedTypes: !822, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!791 = !{!792, !804}
!792 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !793, file: !790, line: 188, baseType: !78, size: 32, elements: !802)
!793 = distinct !DISubprogram(name: "x2nrealloc", scope: !790, file: !790, line: 176, type: !794, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !797)
!794 = !DISubroutineType(types: !795)
!795 = !{!131, !131, !796, !133}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!797 = !{!798, !799, !800, !801}
!798 = !DILocalVariable(name: "p", arg: 1, scope: !793, file: !790, line: 176, type: !131)
!799 = !DILocalVariable(name: "pn", arg: 2, scope: !793, file: !790, line: 176, type: !796)
!800 = !DILocalVariable(name: "s", arg: 3, scope: !793, file: !790, line: 176, type: !133)
!801 = !DILocalVariable(name: "n", scope: !793, file: !790, line: 178, type: !133)
!802 = !{!803}
!803 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!804 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !805, file: !790, line: 228, baseType: !78, size: 32, elements: !802)
!805 = distinct !DISubprogram(name: "xpalloc", scope: !790, file: !790, line: 223, type: !806, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !812)
!806 = !DISubroutineType(types: !807)
!807 = !{!131, !131, !808, !809, !811, !809}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !810, line: 130, baseType: !811)
!810 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !134, line: 35, baseType: !237)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821}
!813 = !DILocalVariable(name: "pa", arg: 1, scope: !805, file: !790, line: 223, type: !131)
!814 = !DILocalVariable(name: "pn", arg: 2, scope: !805, file: !790, line: 223, type: !808)
!815 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !805, file: !790, line: 223, type: !809)
!816 = !DILocalVariable(name: "n_max", arg: 4, scope: !805, file: !790, line: 223, type: !811)
!817 = !DILocalVariable(name: "s", arg: 5, scope: !805, file: !790, line: 223, type: !809)
!818 = !DILocalVariable(name: "n0", scope: !805, file: !790, line: 230, type: !809)
!819 = !DILocalVariable(name: "n", scope: !805, file: !790, line: 237, type: !809)
!820 = !DILocalVariable(name: "nbytes", scope: !805, file: !790, line: 248, type: !809)
!821 = !DILocalVariable(name: "adjusted_nbytes", scope: !805, file: !790, line: 252, type: !809)
!822 = !{!130, !131, !196, !237, !135}
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !824, splitDebugInlining: false, nameTableKind: None)
!824 = !{!739, !742, !744}
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !827, retainedTypes: !828, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!827 = !{!76}
!828 = !{!196, !237, !135, !829}
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !830, line: 101, baseType: !831)
!830 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !833, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !776, splitDebugInlining: false, nameTableKind: None)
!833 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!834 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!836 = distinct !DICompileUnit(language: DW_LANG_C11, file: !837, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !838, splitDebugInlining: false, nameTableKind: None)
!837 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!838 = !{!196, !135, !131}
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !840, splitDebugInlining: false, nameTableKind: None)
!840 = !{!764, !767}
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!843 = distinct !DICompileUnit(language: DW_LANG_C11, file: !844, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !776, splitDebugInlining: false, nameTableKind: None)
!844 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!845 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!846 = !{i32 7, !"Dwarf Version", i32 5}
!847 = !{i32 2, !"Debug Info Version", i32 3}
!848 = !{i32 1, !"wchar_size", i32 4}
!849 = !{i32 8, !"PIC Level", i32 2}
!850 = !{i32 7, !"PIE Level", i32 2}
!851 = !{i32 7, !"uwtable", i32 2}
!852 = !{i32 7, !"frame-pointer", i32 1}
!853 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !854, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !87}
!856 = !{!857}
!857 = !DILocalVariable(name: "status", arg: 1, scope: !853, file: !2, line: 97, type: !87)
!858 = !DILocation(line: 0, scope: !853)
!859 = !DILocation(line: 99, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !2, line: 99, column: 7)
!861 = !DILocation(line: 99, column: 7, scope: !853)
!862 = !DILocation(line: 100, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !2, line: 100, column: 5)
!864 = !{!865, !865, i64 0}
!865 = !{!"any pointer", !866, i64 0}
!866 = !{!"omnipotent char", !867, i64 0}
!867 = !{!"Simple C/C++ TBAA"}
!868 = !DILocation(line: 103, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !860, file: !2, line: 102, column: 5)
!870 = !DILocation(line: 112, column: 7, scope: !869)
!871 = !DILocation(line: 729, column: 3, scope: !872, inlinedAt: !874)
!872 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !511, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !873)
!873 = !{}
!874 = distinct !DILocation(line: 117, column: 7, scope: !869)
!875 = !DILocation(line: 736, column: 3, scope: !876, inlinedAt: !877)
!876 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !511, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !873)
!877 = distinct !DILocation(line: 118, column: 7, scope: !869)
!878 = !DILocation(line: 153, column: 7, scope: !869)
!879 = !DILocation(line: 157, column: 7, scope: !869)
!880 = !DILocation(line: 161, column: 7, scope: !869)
!881 = !DILocation(line: 174, column: 7, scope: !869)
!882 = !DILocation(line: 175, column: 7, scope: !869)
!883 = !DILocation(line: 184, column: 7, scope: !869)
!884 = !DILocalVariable(name: "program", arg: 1, scope: !885, file: !86, line: 836, type: !136)
!885 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 836, type: !886, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !136}
!888 = !{!884, !889, !896, !897, !899, !900}
!889 = !DILocalVariable(name: "infomap", scope: !885, file: !86, line: 838, type: !890)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 896, elements: !20)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !885, file: !86, line: 838, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !892, file: !86, line: 838, baseType: !136, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !892, file: !86, line: 838, baseType: !136, size: 64, offset: 64)
!896 = !DILocalVariable(name: "node", scope: !885, file: !86, line: 848, type: !136)
!897 = !DILocalVariable(name: "map_prog", scope: !885, file: !86, line: 849, type: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!899 = !DILocalVariable(name: "lc_messages", scope: !885, file: !86, line: 861, type: !136)
!900 = !DILocalVariable(name: "url_program", scope: !885, file: !86, line: 874, type: !136)
!901 = !DILocation(line: 0, scope: !885, inlinedAt: !902)
!902 = distinct !DILocation(line: 192, column: 7, scope: !869)
!903 = !DILocation(line: 857, column: 3, scope: !885, inlinedAt: !902)
!904 = !DILocation(line: 861, column: 29, scope: !885, inlinedAt: !902)
!905 = !DILocation(line: 862, column: 7, scope: !906, inlinedAt: !902)
!906 = distinct !DILexicalBlock(scope: !885, file: !86, line: 862, column: 7)
!907 = !DILocation(line: 862, column: 19, scope: !906, inlinedAt: !902)
!908 = !DILocation(line: 862, column: 22, scope: !906, inlinedAt: !902)
!909 = !DILocation(line: 862, column: 7, scope: !885, inlinedAt: !902)
!910 = !DILocation(line: 868, column: 7, scope: !911, inlinedAt: !902)
!911 = distinct !DILexicalBlock(scope: !906, file: !86, line: 863, column: 5)
!912 = !DILocation(line: 870, column: 5, scope: !911, inlinedAt: !902)
!913 = !DILocation(line: 875, column: 3, scope: !885, inlinedAt: !902)
!914 = !DILocation(line: 877, column: 3, scope: !885, inlinedAt: !902)
!915 = !DILocation(line: 195, column: 3, scope: !853)
!916 = !DISubprogram(name: "dcgettext", scope: !917, file: !917, line: 51, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!917 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!918 = !DISubroutineType(types: !919)
!919 = !{!130, !136, !136, !87}
!920 = !DISubprogram(name: "__fprintf_chk", scope: !921, file: !921, line: 93, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!921 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!922 = !DISubroutineType(types: !923)
!923 = !{!87, !924, !87, !925, null}
!924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!925 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!926 = !DISubprogram(name: "__printf_chk", scope: !921, file: !921, line: 95, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!927 = !DISubroutineType(types: !928)
!928 = !{!87, !87, !925, null}
!929 = !DISubprogram(name: "fputs_unlocked", scope: !470, file: !470, line: 691, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!930 = !DISubroutineType(types: !931)
!931 = !{!87, !925, !924}
!932 = !DILocation(line: 0, scope: !186)
!933 = !DILocation(line: 581, column: 7, scope: !194)
!934 = !{!935, !935, i64 0}
!935 = !{!"int", !866, i64 0}
!936 = !DILocation(line: 581, column: 19, scope: !194)
!937 = !DILocation(line: 581, column: 7, scope: !186)
!938 = !DILocation(line: 585, column: 26, scope: !193)
!939 = !DILocation(line: 0, scope: !193)
!940 = !DILocation(line: 586, column: 23, scope: !193)
!941 = !DILocation(line: 586, column: 28, scope: !193)
!942 = !DILocation(line: 586, column: 32, scope: !193)
!943 = !{!866, !866, i64 0}
!944 = !DILocation(line: 586, column: 38, scope: !193)
!945 = !DILocalVariable(name: "__s1", arg: 1, scope: !946, file: !947, line: 1359, type: !136)
!946 = distinct !DISubprogram(name: "streq", scope: !947, file: !947, line: 1359, type: !948, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !950)
!947 = !DIFile(filename: "./lib/string.h", directory: "/src")
!948 = !DISubroutineType(types: !949)
!949 = !{!196, !136, !136}
!950 = !{!945, !951}
!951 = !DILocalVariable(name: "__s2", arg: 2, scope: !946, file: !947, line: 1359, type: !136)
!952 = !DILocation(line: 0, scope: !946, inlinedAt: !953)
!953 = distinct !DILocation(line: 586, column: 41, scope: !193)
!954 = !DILocation(line: 1361, column: 11, scope: !946, inlinedAt: !953)
!955 = !DILocation(line: 1361, column: 10, scope: !946, inlinedAt: !953)
!956 = !DILocation(line: 586, column: 19, scope: !193)
!957 = !DILocation(line: 587, column: 5, scope: !193)
!958 = !DILocation(line: 588, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !186, file: !86, line: 588, column: 7)
!960 = !DILocation(line: 588, column: 7, scope: !186)
!961 = !DILocation(line: 590, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !86, line: 589, column: 5)
!963 = !DILocation(line: 591, column: 7, scope: !962)
!964 = !DILocation(line: 595, column: 37, scope: !186)
!965 = !DILocation(line: 595, column: 35, scope: !186)
!966 = !DILocation(line: 596, column: 29, scope: !186)
!967 = !DILocation(line: 597, column: 8, scope: !202)
!968 = !DILocation(line: 597, column: 7, scope: !186)
!969 = !DILocation(line: 604, column: 24, scope: !201)
!970 = !DILocation(line: 604, column: 12, scope: !202)
!971 = !DILocation(line: 0, scope: !200)
!972 = !DILocation(line: 610, column: 16, scope: !200)
!973 = !DILocation(line: 610, column: 7, scope: !200)
!974 = !DILocation(line: 611, column: 21, scope: !200)
!975 = !{!976, !976, i64 0}
!976 = !{!"short", !866, i64 0}
!977 = !DILocation(line: 611, column: 19, scope: !200)
!978 = !DILocation(line: 611, column: 16, scope: !200)
!979 = !DILocation(line: 610, column: 30, scope: !200)
!980 = distinct !{!980, !973, !974, !981}
!981 = !{!"llvm.loop.mustprogress"}
!982 = !DILocation(line: 612, column: 18, scope: !983)
!983 = distinct !DILexicalBlock(scope: !200, file: !86, line: 612, column: 11)
!984 = !DILocation(line: 612, column: 11, scope: !200)
!985 = !DILocation(line: 620, column: 23, scope: !186)
!986 = !DILocation(line: 625, column: 39, scope: !186)
!987 = !DILocation(line: 626, column: 3, scope: !186)
!988 = !DILocation(line: 626, column: 10, scope: !186)
!989 = !DILocation(line: 626, column: 21, scope: !186)
!990 = !DILocation(line: 628, column: 44, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !86, line: 628, column: 11)
!992 = distinct !DILexicalBlock(scope: !186, file: !86, line: 627, column: 5)
!993 = !DILocation(line: 628, column: 32, scope: !991)
!994 = !DILocation(line: 628, column: 49, scope: !991)
!995 = !DILocation(line: 628, column: 11, scope: !992)
!996 = !DILocation(line: 630, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !86, line: 630, column: 11)
!998 = !DILocation(line: 630, column: 11, scope: !992)
!999 = !DILocation(line: 632, column: 26, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !86, line: 632, column: 15)
!1001 = distinct !DILexicalBlock(scope: !997, file: !86, line: 631, column: 9)
!1002 = !DILocation(line: 632, column: 34, scope: !1000)
!1003 = !DILocation(line: 632, column: 37, scope: !1000)
!1004 = !DILocation(line: 632, column: 15, scope: !1001)
!1005 = !DILocation(line: 640, column: 16, scope: !992)
!1006 = distinct !{!1006, !987, !1007, !981}
!1007 = !DILocation(line: 641, column: 5, scope: !186)
!1008 = !DILocation(line: 644, column: 3, scope: !186)
!1009 = !DILocation(line: 0, scope: !946, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1011 = !DILocation(line: 0, scope: !946, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1013 = !DILocation(line: 0, scope: !946, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1015 = !DILocation(line: 0, scope: !946, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1017 = !DILocation(line: 0, scope: !946, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1019 = !DILocation(line: 0, scope: !946, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1021 = !DILocation(line: 0, scope: !946, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1023 = !DILocation(line: 0, scope: !946, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1025 = !DILocation(line: 0, scope: !946, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1027 = !DILocation(line: 0, scope: !946, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1029 = !DILocation(line: 663, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1031 = !DILocation(line: 664, column: 7, scope: !1030)
!1032 = !DILocation(line: 664, column: 10, scope: !1030)
!1033 = !DILocation(line: 663, column: 7, scope: !186)
!1034 = !DILocation(line: 669, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !86, line: 665, column: 5)
!1036 = !DILocation(line: 671, column: 5, scope: !1035)
!1037 = !DILocation(line: 676, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1030, file: !86, line: 673, column: 5)
!1039 = !DILocation(line: 679, column: 3, scope: !186)
!1040 = !DILocation(line: 683, column: 3, scope: !186)
!1041 = !DILocation(line: 686, column: 3, scope: !186)
!1042 = !DILocation(line: 688, column: 3, scope: !186)
!1043 = !DILocation(line: 691, column: 3, scope: !186)
!1044 = !DILocation(line: 695, column: 3, scope: !186)
!1045 = !DILocation(line: 696, column: 1, scope: !186)
!1046 = !DISubprogram(name: "setlocale", scope: !1047, file: !1047, line: 122, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1047 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!130, !87, !136}
!1050 = !DISubprogram(name: "strncmp", scope: !1051, file: !1051, line: 159, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1051 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!87, !136, !136, !133}
!1054 = !DISubprogram(name: "exit", scope: !1055, file: !1055, line: 624, type: !854, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1055 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1056 = !DISubprogram(name: "getenv", scope: !1055, file: !1055, line: 641, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!130, !136}
!1059 = !DISubprogram(name: "strcmp", scope: !1051, file: !1051, line: 156, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!87, !136, !136}
!1062 = !DISubprogram(name: "strspn", scope: !1051, file: !1051, line: 297, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!135, !136, !136}
!1065 = !DISubprogram(name: "strchr", scope: !1051, file: !1051, line: 246, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!130, !136, !87}
!1068 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1074 = !DISubprogram(name: "strcspn", scope: !1051, file: !1051, line: 293, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1075 = !DISubprogram(name: "fwrite_unlocked", scope: !470, file: !470, line: 704, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!133, !1078, !133, !133, !924}
!1078 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1081 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1082, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1085)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!87, !87, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1097}
!1086 = !DILocalVariable(name: "argc", arg: 1, scope: !1081, file: !2, line: 1630, type: !87)
!1087 = !DILocalVariable(name: "argv", arg: 2, scope: !1081, file: !2, line: 1630, type: !1084)
!1088 = !DILocalVariable(name: "opt", scope: !1081, file: !2, line: 1632, type: !87)
!1089 = !DILocalVariable(name: "input_fh", scope: !1081, file: !2, line: 1633, type: !209)
!1090 = !DILocalVariable(name: "infile", scope: !1081, file: !2, line: 1634, type: !136)
!1091 = !DILocalVariable(name: "decode", scope: !1081, file: !2, line: 1637, type: !196)
!1092 = !DILocalVariable(name: "ignore_garbage", scope: !1081, file: !2, line: 1639, type: !196)
!1093 = !DILocalVariable(name: "wrap_column", scope: !1081, file: !2, line: 1641, type: !809)
!1094 = !DILocalVariable(name: "w", scope: !1095, file: !2, line: 1664, type: !829)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 1663, column: 9)
!1096 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 1657, column: 7)
!1097 = !DILocalVariable(name: "s_err", scope: !1095, file: !2, line: 1665, type: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1099 = !DILocation(line: 0, scope: !1081)
!1100 = !DILocation(line: 1648, column: 21, scope: !1081)
!1101 = !DILocation(line: 1648, column: 3, scope: !1081)
!1102 = !DILocation(line: 1649, column: 3, scope: !1081)
!1103 = !DILocation(line: 1650, column: 3, scope: !1081)
!1104 = !DILocation(line: 1651, column: 3, scope: !1081)
!1105 = !DILocation(line: 1653, column: 3, scope: !1081)
!1106 = !DILocation(line: 1655, column: 3, scope: !1081)
!1107 = !DILocation(line: 1641, column: 9, scope: !1081)
!1108 = !DILocation(line: 1655, column: 17, scope: !1081)
!1109 = distinct !{!1109, !1106, !1110, !981}
!1110 = !DILocation(line: 1698, column: 7, scope: !1081)
!1111 = !DILocation(line: 1664, column: 11, scope: !1095)
!1112 = !DILocation(line: 1665, column: 44, scope: !1095)
!1113 = !DILocation(line: 0, scope: !1095)
!1114 = !DILocation(line: 1665, column: 32, scope: !1095)
!1115 = !DILocation(line: 1666, column: 32, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 1666, column: 15)
!1117 = !DILocation(line: 1666, column: 40, scope: !1116)
!1118 = !DILocation(line: 1667, column: 13, scope: !1116)
!1119 = !DILocation(line: 1669, column: 31, scope: !1095)
!1120 = !DILocation(line: 1669, column: 51, scope: !1095)
!1121 = !DILocation(line: 1670, column: 9, scope: !1096)
!1122 = !DILocation(line: 1671, column: 9, scope: !1096)
!1123 = !DILocation(line: 1675, column: 9, scope: !1096)
!1124 = !DILocation(line: 1691, column: 7, scope: !1096)
!1125 = !DILocation(line: 1693, column: 7, scope: !1096)
!1126 = !DILocation(line: 1696, column: 9, scope: !1096)
!1127 = !DILocation(line: 1805, column: 14, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 1805, column: 7)
!1129 = !DILocation(line: 1805, column: 12, scope: !1128)
!1130 = !DILocation(line: 1805, column: 21, scope: !1128)
!1131 = !DILocation(line: 1805, column: 7, scope: !1081)
!1132 = !DILocation(line: 1807, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 1806, column: 5)
!1134 = !DILocation(line: 1808, column: 7, scope: !1133)
!1135 = !DILocation(line: 1811, column: 14, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 1811, column: 7)
!1137 = !DILocation(line: 1811, column: 7, scope: !1081)
!1138 = !DILocation(line: 1812, column: 14, scope: !1136)
!1139 = !DILocation(line: 1812, column: 5, scope: !1136)
!1140 = !DILocation(line: 0, scope: !1136)
!1141 = !DILocation(line: 0, scope: !946, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 1816, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 1816, column: 7)
!1144 = !DILocation(line: 1361, column: 11, scope: !946, inlinedAt: !1142)
!1145 = !DILocation(line: 1361, column: 10, scope: !946, inlinedAt: !1142)
!1146 = !DILocation(line: 1816, column: 7, scope: !1081)
!1147 = !DILocation(line: 1819, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 1817, column: 5)
!1149 = !DILocation(line: 1820, column: 5, scope: !1148)
!1150 = !DILocation(line: 1823, column: 18, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 1822, column: 5)
!1152 = !DILocation(line: 1824, column: 20, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1824, column: 11)
!1154 = !DILocation(line: 1824, column: 11, scope: !1151)
!1155 = !DILocation(line: 1825, column: 9, scope: !1153)
!1156 = !DILocation(line: 0, scope: !1143)
!1157 = !DILocation(line: 1828, column: 3, scope: !1081)
!1158 = !DILocation(line: 0, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 1830, column: 7)
!1160 = !DILocation(line: 1830, column: 7, scope: !1081)
!1161 = !DILocation(line: 1831, column: 5, scope: !1159)
!1162 = !DILocation(line: 1833, column: 5, scope: !1159)
!1163 = !DISubprogram(name: "bindtextdomain", scope: !917, file: !917, line: 86, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!130, !136, !136}
!1166 = !DISubprogram(name: "textdomain", scope: !917, file: !917, line: 82, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1167 = !DISubprogram(name: "atexit", scope: !1055, file: !1055, line: 602, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!87, !510}
!1170 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!87, !87, !1173, !136, !1175, !417}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1176 = !DISubprogram(name: "__errno_location", scope: !1177, file: !1177, line: 37, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1177 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!417}
!1180 = distinct !DISubprogram(name: "do_decode", scope: !2, file: !2, line: 1562, type: !1181, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !209, !136, !209, !196}
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1197, !1199, !1201, !1205, !1207, !1210, !1211}
!1184 = !DILocalVariable(name: "in", arg: 1, scope: !1180, file: !2, line: 1562, type: !209)
!1185 = !DILocalVariable(name: "infile", arg: 2, scope: !1180, file: !2, line: 1562, type: !136)
!1186 = !DILocalVariable(name: "out", arg: 3, scope: !1180, file: !2, line: 1562, type: !209)
!1187 = !DILocalVariable(name: "ignore_garbage", arg: 4, scope: !1180, file: !2, line: 1562, type: !196)
!1188 = !DILocalVariable(name: "inbuf", scope: !1180, file: !2, line: 1564, type: !130)
!1189 = !DILocalVariable(name: "outbuf", scope: !1180, file: !2, line: 1564, type: !130)
!1190 = !DILocalVariable(name: "sum", scope: !1180, file: !2, line: 1565, type: !809)
!1191 = !DILocalVariable(name: "ctx", scope: !1180, file: !2, line: 1566, type: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1193, line: 47, size: 64, elements: !1194)
!1193 = !DIFile(filename: "./lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1192, file: !1193, line: 49, baseType: !87, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1192, file: !1193, line: 50, baseType: !273, size: 32, offset: 32)
!1197 = !DILocalVariable(name: "ok", scope: !1198, file: !2, line: 1578, type: !196)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 1577, column: 5)
!1199 = !DILocalVariable(name: "n", scope: !1200, file: !2, line: 1583, type: !809)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 1582, column: 9)
!1201 = !DILocalVariable(name: "i", scope: !1202, file: !2, line: 1588, type: !809)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 1588, column: 15)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 1587, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 1586, column: 15)
!1205 = !DILocalVariable(name: "n", scope: !1206, file: !2, line: 1607, type: !809)
!1206 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 1606, column: 9)
!1207 = !DILocalVariable(name: "__ptr", scope: !1208, file: !2, line: 1613, type: !136)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1613, column: 15)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 1613, column: 15)
!1210 = !DILocalVariable(name: "__stream", scope: !1208, file: !2, line: 1613, type: !209)
!1211 = !DILocalVariable(name: "__cnt", scope: !1208, file: !2, line: 1613, type: !133)
!1212 = !DILocation(line: 0, scope: !1180)
!1213 = !DILocation(line: 1566, column: 3, scope: !1180)
!1214 = !DILocation(line: 1566, column: 30, scope: !1180)
!1215 = !DILocation(line: 1568, column: 11, scope: !1180)
!1216 = !DILocation(line: 1569, column: 12, scope: !1180)
!1217 = !DILocalVariable(name: "ctx", arg: 1, scope: !1218, file: !1193, line: 74, type: !1221)
!1218 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !1193, file: !1193, line: 74, type: !1219, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1222)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1222 = !{!1217}
!1223 = !DILocation(line: 0, scope: !1218, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 1574, column: 3, scope: !1180)
!1225 = !DILocation(line: 76, column: 10, scope: !1218, inlinedAt: !1224)
!1226 = !{!1227, !935, i64 0}
!1227 = !{!"base64_decode_context", !935, i64 0, !866, i64 4}
!1228 = !DILocation(line: 1576, column: 3, scope: !1180)
!1229 = !DILocation(line: 0, scope: !1198)
!1230 = !DILocation(line: 1583, column: 21, scope: !1200)
!1231 = !DILocation(line: 0, scope: !1200)
!1232 = !DILocation(line: 1586, column: 15, scope: !1200)
!1233 = !DILocation(line: 0, scope: !1202)
!1234 = !DILocation(line: 1590, column: 42, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 1590, column: 23)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 1589, column: 17)
!1237 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 1588, column: 15)
!1238 = !DILocation(line: 1590, column: 32, scope: !1235)
!1239 = !DILocalVariable(name: "ch", arg: 1, scope: !1240, file: !1193, line: 56, type: !138)
!1240 = distinct !DISubprogram(name: "isubase64", scope: !1193, file: !1193, line: 56, type: !1241, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!196, !138}
!1243 = !{!1239}
!1244 = !DILocation(line: 0, scope: !1240, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 1590, column: 23, scope: !1235)
!1246 = !DILocation(line: 58, column: 10, scope: !1240, inlinedAt: !1245)
!1247 = !DILocation(line: 58, column: 44, scope: !1240, inlinedAt: !1245)
!1248 = !DILocation(line: 58, column: 41, scope: !1240, inlinedAt: !1245)
!1249 = !DILocation(line: 1591, column: 23, scope: !1235)
!1250 = !DILocalVariable(name: "len", arg: 1, scope: !1251, file: !2, line: 209, type: !87)
!1251 = distinct !DISubprogram(name: "base64_required_padding", scope: !2, file: !2, line: 209, type: !1252, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!87, !87}
!1254 = !{!1250, !1255}
!1255 = !DILocalVariable(name: "partial", scope: !1251, file: !2, line: 211, type: !87)
!1256 = !DILocation(line: 0, scope: !1251, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 1591, column: 27, scope: !1235)
!1258 = !DILocation(line: 1592, column: 22, scope: !1235)
!1259 = !DILocation(line: 1592, column: 21, scope: !1235)
!1260 = !DILocation(line: 1594, column: 42, scope: !1235)
!1261 = !DILocation(line: 1594, column: 63, scope: !1235)
!1262 = !DILocation(line: 1594, column: 68, scope: !1235)
!1263 = !DILocation(line: 1594, column: 72, scope: !1235)
!1264 = !DILocalVariable(name: "__dest", arg: 1, scope: !1265, file: !1266, line: 34, type: !131)
!1265 = distinct !DISubprogram(name: "memmove", scope: !1266, file: !1266, line: 34, type: !1267, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1269)
!1266 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!131, !131, !1079, !133}
!1269 = !{!1264, !1270, !1271}
!1270 = !DILocalVariable(name: "__src", arg: 2, scope: !1265, file: !1266, line: 34, type: !1079)
!1271 = !DILocalVariable(name: "__len", arg: 3, scope: !1265, file: !1266, line: 34, type: !133)
!1272 = !DILocation(line: 0, scope: !1265, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 1594, column: 21, scope: !1235)
!1274 = !DILocation(line: 36, column: 10, scope: !1265, inlinedAt: !1273)
!1275 = !DILocation(line: 1588, column: 35, scope: !1237)
!1276 = !DILocation(line: 1588, column: 39, scope: !1237)
!1277 = !DILocation(line: 1588, column: 15, scope: !1202)
!1278 = distinct !{!1278, !1277, !1279, !981}
!1279 = !DILocation(line: 1595, column: 17, scope: !1202)
!1280 = !DILocation(line: 1583, column: 17, scope: !1200)
!1281 = !DILocalVariable(name: "__stream", arg: 1, scope: !1282, file: !1283, line: 135, type: !209)
!1282 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1283, file: !1283, line: 135, type: !1284, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1286)
!1283 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!87, !209}
!1286 = !{!1281}
!1287 = !DILocation(line: 0, scope: !1282, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 1600, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 1600, column: 15)
!1290 = !DILocation(line: 137, column: 10, scope: !1282, inlinedAt: !1288)
!1291 = !{!1292, !935, i64 0}
!1292 = !{!"_IO_FILE", !935, i64 0, !865, i64 8, !865, i64 16, !865, i64 24, !865, i64 32, !865, i64 40, !865, i64 48, !865, i64 56, !865, i64 64, !865, i64 72, !865, i64 80, !865, i64 88, !865, i64 96, !865, i64 104, !935, i64 112, !935, i64 116, !1293, i64 120, !976, i64 128, !866, i64 130, !866, i64 131, !865, i64 136, !1293, i64 144, !865, i64 152, !865, i64 160, !865, i64 168, !865, i64 176, !1293, i64 184, !935, i64 192, !866, i64 196}
!1293 = !{!"long", !866, i64 0}
!1294 = !DILocation(line: 1600, column: 15, scope: !1289)
!1295 = !DILocation(line: 1600, column: 15, scope: !1200)
!1296 = !DILocation(line: 1601, column: 13, scope: !1289)
!1297 = !DILocation(line: 1598, column: 15, scope: !1200)
!1298 = !DILocation(line: 1603, column: 18, scope: !1198)
!1299 = !DILocation(line: 1603, column: 48, scope: !1198)
!1300 = !DILocalVariable(name: "__stream", arg: 1, scope: !1301, file: !1283, line: 128, type: !209)
!1301 = distinct !DISubprogram(name: "feof_unlocked", scope: !1283, file: !1283, line: 128, type: !1284, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1302)
!1302 = !{!1300}
!1303 = !DILocation(line: 0, scope: !1301, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 1603, column: 52, scope: !1198)
!1305 = distinct !{!1305, !1228, !1306, !981}
!1306 = !DILocation(line: 1624, column: 20, scope: !1180)
!1307 = !DILocation(line: 1605, column: 14, scope: !1198)
!1308 = !DILocation(line: 1605, column: 18, scope: !1198)
!1309 = !DILocation(line: 1607, column: 11, scope: !1206)
!1310 = !DILocation(line: 0, scope: !1206)
!1311 = !DILocation(line: 1607, column: 17, scope: !1206)
!1312 = !{!1293, !1293, i64 0}
!1313 = !DILocation(line: 1609, column: 18, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 1608, column: 15)
!1315 = !DILocation(line: 1613, column: 15, scope: !1209)
!1316 = !DILocation(line: 1609, column: 13, scope: !1314)
!1317 = !DILocation(line: 0, scope: !1301, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 1605, column: 21, scope: !1198)
!1319 = !DILocation(line: 130, column: 10, scope: !1301, inlinedAt: !1318)
!1320 = !DILocation(line: 1605, column: 7, scope: !1198)
!1321 = !DILocalVariable(name: "ctx", arg: 1, scope: !1322, file: !2, line: 414, type: !1221)
!1322 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !2, file: !2, line: 414, type: !1323, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1327)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!196, !1221, !1325, !808}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1327 = !{!1321, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1328 = !DILocalVariable(name: "out", arg: 2, scope: !1322, file: !2, line: 415, type: !1325)
!1329 = !DILocalVariable(name: "outlen", arg: 3, scope: !1322, file: !2, line: 415, type: !808)
!1330 = !DILocalVariable(name: "padbuf", scope: !1322, file: !2, line: 424, type: !299)
!1331 = !DILocalVariable(name: "pending_len", scope: !1322, file: !2, line: 425, type: !809)
!1332 = !DILocalVariable(name: "auto_padding", scope: !1322, file: !2, line: 426, type: !809)
!1333 = !DILocalVariable(name: "n", scope: !1322, file: !2, line: 427, type: !809)
!1334 = !DILocalVariable(name: "result", scope: !1322, file: !2, line: 428, type: !196)
!1335 = !DILocation(line: 0, scope: !1322, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 1611, column: 18, scope: !1314)
!1337 = !DILocalVariable(name: "ctx", arg: 1, scope: !1338, file: !2, line: 403, type: !1221)
!1338 = distinct !DISubprogram(name: "get_pending_length", scope: !2, file: !2, line: 403, type: !1339, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!87, !1221}
!1341 = !{!1337}
!1342 = !DILocation(line: 0, scope: !1338, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 417, column: 7, scope: !1344, inlinedAt: !1336)
!1344 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 417, column: 7)
!1345 = !DILocation(line: 405, column: 15, scope: !1338, inlinedAt: !1343)
!1346 = !DILocation(line: 417, column: 32, scope: !1344, inlinedAt: !1336)
!1347 = !DILocation(line: 417, column: 7, scope: !1322, inlinedAt: !1336)
!1348 = !DILocation(line: 424, column: 3, scope: !1322, inlinedAt: !1336)
!1349 = !DILocation(line: 424, column: 8, scope: !1322, inlinedAt: !1336)
!1350 = !DILocation(line: 0, scope: !1338, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 425, column: 23, scope: !1322, inlinedAt: !1336)
!1352 = !DILocation(line: 0, scope: !1251, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 426, column: 24, scope: !1322, inlinedAt: !1336)
!1354 = !DILocation(line: 211, column: 21, scope: !1251, inlinedAt: !1353)
!1355 = !DILocation(line: 212, column: 10, scope: !1251, inlinedAt: !1353)
!1356 = !DILocation(line: 427, column: 3, scope: !1322, inlinedAt: !1336)
!1357 = !DILocation(line: 427, column: 9, scope: !1322, inlinedAt: !1336)
!1358 = !DILocation(line: 430, column: 7, scope: !1359, inlinedAt: !1336)
!1359 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 430, column: 7)
!1360 = !DILocation(line: 430, column: 20, scope: !1359, inlinedAt: !1336)
!1361 = !DILocalVariable(name: "ctx", arg: 1, scope: !1362, file: !2, line: 397, type: !1221)
!1362 = distinct !DISubprogram(name: "has_padding", scope: !2, file: !2, line: 397, type: !1363, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!196, !1221}
!1365 = !{!1361}
!1366 = !DILocation(line: 0, scope: !1362, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 430, column: 25, scope: !1359, inlinedAt: !1336)
!1368 = !DILocation(line: 399, column: 36, scope: !1362, inlinedAt: !1367)
!1369 = !DILocation(line: 399, column: 20, scope: !1362, inlinedAt: !1367)
!1370 = !DILocation(line: 399, column: 41, scope: !1362, inlinedAt: !1367)
!1371 = !DILocation(line: 430, column: 7, scope: !1322, inlinedAt: !1336)
!1372 = !DILocation(line: 433, column: 16, scope: !1373, inlinedAt: !1336)
!1373 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 431, column: 5)
!1374 = !DILocation(line: 434, column: 5, scope: !1373, inlinedAt: !1336)
!1375 = !DILocation(line: 437, column: 16, scope: !1376, inlinedAt: !1336)
!1376 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 436, column: 5)
!1377 = !DILocation(line: 440, column: 13, scope: !1322, inlinedAt: !1336)
!1378 = !DILocation(line: 440, column: 11, scope: !1322, inlinedAt: !1336)
!1379 = !DILocation(line: 442, column: 1, scope: !1322, inlinedAt: !1336)
!1380 = !DILocation(line: 419, column: 15, scope: !1381, inlinedAt: !1336)
!1381 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 418, column: 5)
!1382 = !DILocation(line: 420, column: 7, scope: !1381, inlinedAt: !1336)
!1383 = !DILocation(line: 1613, column: 44, scope: !1209)
!1384 = !DILocation(line: 1613, column: 42, scope: !1209)
!1385 = !DILocation(line: 1613, column: 15, scope: !1206)
!1386 = !DILocation(line: 1616, column: 15, scope: !1206)
!1387 = !DILocation(line: 1622, column: 9, scope: !1198)
!1388 = !DILocation(line: 948, column: 21, scope: !1389, inlinedAt: !1392)
!1389 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !511, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1390)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "saved_errno", scope: !1389, file: !86, line: 948, type: !87)
!1392 = distinct !DILocation(line: 1614, column: 13, scope: !1209)
!1393 = !DILocation(line: 0, scope: !1389, inlinedAt: !1392)
!1394 = !DILocation(line: 949, column: 3, scope: !1389, inlinedAt: !1392)
!1395 = !DILocation(line: 950, column: 11, scope: !1389, inlinedAt: !1392)
!1396 = !DILocation(line: 950, column: 3, scope: !1389, inlinedAt: !1392)
!1397 = !DILocation(line: 951, column: 3, scope: !1389, inlinedAt: !1392)
!1398 = !DILocation(line: 952, column: 3, scope: !1389, inlinedAt: !1392)
!1399 = !DILocation(line: 1617, column: 13, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 1616, column: 15)
!1401 = !DILocation(line: 130, column: 10, scope: !1301, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 1624, column: 11, scope: !1180)
!1403 = !DILocation(line: 1624, column: 10, scope: !1180)
!1404 = !DILocation(line: 0, scope: !1301, inlinedAt: !1402)
!1405 = !DILocation(line: 1623, column: 5, scope: !1198)
!1406 = !DILocation(line: 1626, column: 3, scope: !1180)
!1407 = distinct !DISubprogram(name: "do_encode", scope: !2, file: !2, line: 1488, type: !1408, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !209, !136, !209, !809}
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1411 = !DILocalVariable(name: "in", arg: 1, scope: !1407, file: !2, line: 1488, type: !209)
!1412 = !DILocalVariable(name: "infile", arg: 2, scope: !1407, file: !2, line: 1488, type: !136)
!1413 = !DILocalVariable(name: "out", arg: 3, scope: !1407, file: !2, line: 1488, type: !209)
!1414 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1407, file: !2, line: 1488, type: !809)
!1415 = !DILocalVariable(name: "current_column", scope: !1407, file: !2, line: 1490, type: !809)
!1416 = !DILocalVariable(name: "inbuf", scope: !1407, file: !2, line: 1491, type: !130)
!1417 = !DILocalVariable(name: "outbuf", scope: !1407, file: !2, line: 1491, type: !130)
!1418 = !DILocalVariable(name: "sum", scope: !1407, file: !2, line: 1492, type: !809)
!1419 = !DILocalVariable(name: "n", scope: !1420, file: !2, line: 1507, type: !809)
!1420 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 1506, column: 5)
!1421 = !DILocation(line: 0, scope: !1407)
!1422 = !DILocation(line: 1494, column: 11, scope: !1407)
!1423 = !DILocation(line: 1495, column: 12, scope: !1407)
!1424 = !DILocation(line: 1505, column: 3, scope: !1407)
!1425 = !DILocation(line: 1490, column: 9, scope: !1407)
!1426 = !DILocation(line: 1510, column: 7, scope: !1420)
!1427 = !DILocation(line: 0, scope: !1420)
!1428 = !DILocation(line: 1512, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 1511, column: 9)
!1430 = !DILocation(line: 1513, column: 15, scope: !1429)
!1431 = !DILocation(line: 0, scope: !1301, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 1515, column: 15, scope: !1420)
!1433 = !DILocation(line: 130, column: 10, scope: !1301, inlinedAt: !1432)
!1434 = !DILocation(line: 1515, column: 15, scope: !1420)
!1435 = !DILocation(line: 1515, column: 25, scope: !1420)
!1436 = !DILocation(line: 0, scope: !1282, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 1515, column: 29, scope: !1420)
!1438 = !DILocation(line: 1515, column: 29, scope: !1420)
!1439 = !DILocation(line: 1515, column: 41, scope: !1420)
!1440 = distinct !{!1440, !1426, !1441, !981}
!1441 = !DILocation(line: 1515, column: 63, scope: !1420)
!1442 = !DILocation(line: 1517, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 1517, column: 11)
!1444 = !DILocation(line: 1517, column: 11, scope: !1420)
!1445 = !DILocation(line: 1532, column: 48, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 1529, column: 13)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 1518, column: 9)
!1448 = !DILocation(line: 1532, column: 15, scope: !1446)
!1449 = !DILocalVariable(name: "buffer", arg: 1, scope: !1450, file: !2, line: 1443, type: !136)
!1450 = distinct !DISubprogram(name: "wrap_write", scope: !2, file: !2, line: 1443, type: !1451, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !136, !809, !809, !808, !209}
!1453 = !{!1449, !1454, !1455, !1456, !1457, !1458, !1463, !1464, !1465, !1467, !1470, !1475, !1476}
!1454 = !DILocalVariable(name: "len", arg: 2, scope: !1450, file: !2, line: 1443, type: !809)
!1455 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1450, file: !2, line: 1444, type: !809)
!1456 = !DILocalVariable(name: "current_column", arg: 4, scope: !1450, file: !2, line: 1444, type: !808)
!1457 = !DILocalVariable(name: "out", arg: 5, scope: !1450, file: !2, line: 1444, type: !209)
!1458 = !DILocalVariable(name: "__ptr", scope: !1459, file: !2, line: 1449, type: !136)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !2, line: 1449, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 1449, column: 11)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 1447, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 1446, column: 7)
!1463 = !DILocalVariable(name: "__stream", scope: !1459, file: !2, line: 1449, type: !209)
!1464 = !DILocalVariable(name: "__cnt", scope: !1459, file: !2, line: 1449, type: !133)
!1465 = !DILocalVariable(name: "written", scope: !1466, file: !2, line: 1453, type: !809)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 1453, column: 5)
!1467 = !DILocalVariable(name: "to_write", scope: !1468, file: !2, line: 1455, type: !809)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 1454, column: 7)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 1453, column: 5)
!1470 = !DILocalVariable(name: "__ptr", scope: !1471, file: !2, line: 1465, type: !136)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 1465, column: 17)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 1465, column: 17)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 1464, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 1457, column: 13)
!1475 = !DILocalVariable(name: "__stream", scope: !1471, file: !2, line: 1465, type: !209)
!1476 = !DILocalVariable(name: "__cnt", scope: !1471, file: !2, line: 1465, type: !133)
!1477 = !DILocation(line: 0, scope: !1450, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 1534, column: 15, scope: !1446)
!1479 = !DILocation(line: 1446, column: 7, scope: !1450, inlinedAt: !1478)
!1480 = !DILocation(line: 1449, column: 11, scope: !1460, inlinedAt: !1478)
!1481 = !DILocation(line: 1449, column: 43, scope: !1460, inlinedAt: !1478)
!1482 = !DILocation(line: 1449, column: 11, scope: !1461, inlinedAt: !1478)
!1483 = !DILocation(line: 948, column: 21, scope: !1389, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 1450, column: 9, scope: !1460, inlinedAt: !1478)
!1485 = !DILocation(line: 0, scope: !1389, inlinedAt: !1484)
!1486 = !DILocation(line: 949, column: 3, scope: !1389, inlinedAt: !1484)
!1487 = !DILocation(line: 950, column: 11, scope: !1389, inlinedAt: !1484)
!1488 = !DILocation(line: 950, column: 3, scope: !1389, inlinedAt: !1484)
!1489 = !DILocation(line: 951, column: 3, scope: !1389, inlinedAt: !1484)
!1490 = !DILocation(line: 952, column: 3, scope: !1389, inlinedAt: !1484)
!1491 = !DILocation(line: 0, scope: !1466, inlinedAt: !1478)
!1492 = !DILocation(line: 1455, column: 26, scope: !1468, inlinedAt: !1478)
!1493 = !DILocation(line: 0, scope: !1468, inlinedAt: !1478)
!1494 = !DILocation(line: 1457, column: 22, scope: !1474, inlinedAt: !1478)
!1495 = !DILocation(line: 1457, column: 13, scope: !1468, inlinedAt: !1478)
!1496 = !DILocalVariable(name: "__c", arg: 1, scope: !1497, file: !1283, line: 91, type: !87)
!1497 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1283, file: !1283, line: 91, type: !1498, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!87, !87, !209}
!1500 = !{!1496, !1501}
!1501 = !DILocalVariable(name: "__stream", arg: 2, scope: !1497, file: !1283, line: 91, type: !209)
!1502 = !DILocation(line: 0, scope: !1497, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 1459, column: 17, scope: !1504, inlinedAt: !1478)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 1459, column: 17)
!1505 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 1458, column: 11)
!1506 = !DILocation(line: 93, column: 10, scope: !1497, inlinedAt: !1503)
!1507 = !{!1292, !865, i64 40}
!1508 = !{!1292, !865, i64 48}
!1509 = !{!"branch_weights", i32 2000, i32 1}
!1510 = !DILocation(line: 1459, column: 17, scope: !1505, inlinedAt: !1478)
!1511 = !DILocation(line: 1459, column: 35, scope: !1504, inlinedAt: !1478)
!1512 = !DILocation(line: 948, column: 21, scope: !1389, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 1460, column: 15, scope: !1504, inlinedAt: !1478)
!1514 = !DILocation(line: 0, scope: !1389, inlinedAt: !1513)
!1515 = !DILocation(line: 949, column: 3, scope: !1389, inlinedAt: !1513)
!1516 = !DILocation(line: 950, column: 11, scope: !1389, inlinedAt: !1513)
!1517 = !DILocation(line: 950, column: 3, scope: !1389, inlinedAt: !1513)
!1518 = !DILocation(line: 951, column: 3, scope: !1389, inlinedAt: !1513)
!1519 = !DILocation(line: 952, column: 3, scope: !1389, inlinedAt: !1513)
!1520 = !DILocation(line: 1465, column: 17, scope: !1472, inlinedAt: !1478)
!1521 = !DILocation(line: 1465, column: 64, scope: !1472, inlinedAt: !1478)
!1522 = !DILocation(line: 1465, column: 17, scope: !1473, inlinedAt: !1478)
!1523 = !DILocation(line: 948, column: 21, scope: !1389, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 1466, column: 15, scope: !1472, inlinedAt: !1478)
!1525 = !DILocation(line: 0, scope: !1389, inlinedAt: !1524)
!1526 = !DILocation(line: 949, column: 3, scope: !1389, inlinedAt: !1524)
!1527 = !DILocation(line: 950, column: 11, scope: !1389, inlinedAt: !1524)
!1528 = !DILocation(line: 950, column: 3, scope: !1389, inlinedAt: !1524)
!1529 = !DILocation(line: 951, column: 3, scope: !1389, inlinedAt: !1524)
!1530 = !DILocation(line: 952, column: 3, scope: !1389, inlinedAt: !1524)
!1531 = !DILocation(line: 1467, column: 29, scope: !1473, inlinedAt: !1478)
!1532 = !DILocation(line: 1468, column: 21, scope: !1473, inlinedAt: !1478)
!1533 = !DILocation(line: 0, scope: !1474, inlinedAt: !1478)
!1534 = !DILocation(line: 1453, column: 37, scope: !1469, inlinedAt: !1478)
!1535 = !DILocation(line: 1453, column: 5, scope: !1466, inlinedAt: !1478)
!1536 = distinct !{!1536, !1535, !1537, !981}
!1537 = !DILocation(line: 1470, column: 7, scope: !1466, inlinedAt: !1478)
!1538 = !DILocation(line: 0, scope: !1301, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 1539, column: 11, scope: !1407)
!1540 = !DILocation(line: 130, column: 10, scope: !1301, inlinedAt: !1539)
!1541 = !DILocation(line: 1539, column: 11, scope: !1407)
!1542 = !DILocation(line: 1539, column: 21, scope: !1407)
!1543 = !DILocation(line: 0, scope: !1282, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 1539, column: 25, scope: !1407)
!1545 = !DILocation(line: 1539, column: 25, scope: !1407)
!1546 = !DILocation(line: 1539, column: 37, scope: !1407)
!1547 = distinct !{!1547, !1424, !1548, !981}
!1548 = !DILocation(line: 1539, column: 60, scope: !1407)
!1549 = !DILocation(line: 1552, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 1552, column: 7)
!1551 = !DILocation(line: 1552, column: 19, scope: !1550)
!1552 = !DILocation(line: 0, scope: !1497, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 1552, column: 44, scope: !1550)
!1554 = !DILocation(line: 93, column: 10, scope: !1497, inlinedAt: !1553)
!1555 = !DILocation(line: 1552, column: 7, scope: !1407)
!1556 = !DILocation(line: 1552, column: 62, scope: !1550)
!1557 = !DILocation(line: 948, column: 21, scope: !1389, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 1553, column: 5, scope: !1550)
!1559 = !DILocation(line: 0, scope: !1389, inlinedAt: !1558)
!1560 = !DILocation(line: 949, column: 3, scope: !1389, inlinedAt: !1558)
!1561 = !DILocation(line: 950, column: 11, scope: !1389, inlinedAt: !1558)
!1562 = !DILocation(line: 950, column: 3, scope: !1389, inlinedAt: !1558)
!1563 = !DILocation(line: 951, column: 3, scope: !1389, inlinedAt: !1558)
!1564 = !DILocation(line: 952, column: 3, scope: !1389, inlinedAt: !1558)
!1565 = !DILocation(line: 0, scope: !1282, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 1555, column: 7, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 1555, column: 7)
!1568 = !DILocation(line: 137, column: 10, scope: !1282, inlinedAt: !1566)
!1569 = !DILocation(line: 1555, column: 7, scope: !1567)
!1570 = !DILocation(line: 1555, column: 7, scope: !1407)
!1571 = !DILocation(line: 1556, column: 5, scope: !1567)
!1572 = !DILocation(line: 1558, column: 3, scope: !1407)
!1573 = !DISubprogram(name: "fflush_unlocked", scope: !470, file: !470, line: 239, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1574 = !DISubprogram(name: "clearerr_unlocked", scope: !470, file: !470, line: 794, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !209}
!1577 = !DISubprogram(name: "__overflow", scope: !470, file: !470, line: 886, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!87, !209, !87}
!1580 = distinct !DISubprogram(name: "finish_and_exit", scope: !2, file: !2, line: 1474, type: !1581, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !209, !136}
!1583 = !{!1584, !1585}
!1584 = !DILocalVariable(name: "in", arg: 1, scope: !1580, file: !2, line: 1474, type: !209)
!1585 = !DILocalVariable(name: "infile", arg: 2, scope: !1580, file: !2, line: 1474, type: !136)
!1586 = !DILocation(line: 0, scope: !1580)
!1587 = !DILocation(line: 1476, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 1476, column: 7)
!1589 = !DILocation(line: 1476, column: 19, scope: !1588)
!1590 = !DILocation(line: 1476, column: 7, scope: !1580)
!1591 = !DILocation(line: 0, scope: !946, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 1478, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 1478, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 1477, column: 5)
!1595 = !DILocation(line: 1361, column: 11, scope: !946, inlinedAt: !1592)
!1596 = !DILocation(line: 1361, column: 10, scope: !946, inlinedAt: !1592)
!1597 = !DILocation(line: 0, scope: !1593)
!1598 = !DILocation(line: 1478, column: 11, scope: !1594)
!1599 = !DILocation(line: 1479, column: 9, scope: !1593)
!1600 = !DILocation(line: 1481, column: 9, scope: !1593)
!1601 = !DILocation(line: 1484, column: 3, scope: !1580)
!1602 = distinct !DISubprogram(name: "isubase64", scope: !1193, file: !1193, line: 56, type: !1241, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1603)
!1603 = !{!1604}
!1604 = !DILocalVariable(name: "ch", arg: 1, scope: !1602, file: !1193, line: 56, type: !138)
!1605 = !DILocation(line: 0, scope: !1602)
!1606 = !DILocation(line: 58, column: 10, scope: !1602)
!1607 = !DILocation(line: 58, column: 44, scope: !1602)
!1608 = !DILocation(line: 58, column: 41, scope: !1602)
!1609 = !DILocation(line: 58, column: 3, scope: !1602)
!1610 = distinct !DISubprogram(name: "isbase64", scope: !1193, file: !1193, line: 62, type: !1611, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!196, !4}
!1613 = !{!1614}
!1614 = !DILocalVariable(name: "ch", arg: 1, scope: !1610, file: !1193, line: 62, type: !4)
!1615 = !DILocation(line: 0, scope: !1610)
!1616 = !DILocation(line: 0, scope: !1602, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 64, column: 10, scope: !1610)
!1618 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1617)
!1619 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1617)
!1620 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1617)
!1621 = !DILocation(line: 64, column: 3, scope: !1610)
!1622 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !1193, file: !1193, line: 74, type: !1623, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1630)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1193, line: 47, size: 64, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1626, file: !1193, line: 49, baseType: !87, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1626, file: !1193, line: 50, baseType: !273, size: 32, offset: 32)
!1630 = !{!1631}
!1631 = !DILocalVariable(name: "ctx", arg: 1, scope: !1622, file: !1193, line: 74, type: !1625)
!1632 = !DILocation(line: 0, scope: !1622)
!1633 = !DILocation(line: 76, column: 10, scope: !1622)
!1634 = !DILocation(line: 77, column: 1, scope: !1622)
!1635 = distinct !DISubprogram(name: "base64_encode", scope: !429, file: !429, line: 88, type: !1636, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !925, !809, !1326, !809}
!1638 = !{!1639, !1640, !1641, !1642}
!1639 = !DILocalVariable(name: "in", arg: 1, scope: !1635, file: !429, line: 88, type: !925)
!1640 = !DILocalVariable(name: "inlen", arg: 2, scope: !1635, file: !429, line: 88, type: !809)
!1641 = !DILocalVariable(name: "out", arg: 3, scope: !1635, file: !429, line: 89, type: !1326)
!1642 = !DILocalVariable(name: "outlen", arg: 4, scope: !1635, file: !429, line: 89, type: !809)
!1643 = !DILocation(line: 0, scope: !1635)
!1644 = !DILocation(line: 98, column: 18, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1635, file: !429, line: 98, column: 7)
!1646 = !DILocation(line: 98, column: 23, scope: !1645)
!1647 = !DILocation(line: 98, column: 43, scope: !1645)
!1648 = !DILocation(line: 98, column: 49, scope: !1645)
!1649 = !DILocation(line: 98, column: 32, scope: !1645)
!1650 = !DILocation(line: 98, column: 7, scope: !1635)
!1651 = !{!1652}
!1652 = distinct !{!1652, !1653, !"base64_encode_fast: argument 0"}
!1653 = distinct !{!1653, !"base64_encode_fast"}
!1654 = !DILocation(line: 100, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1645, file: !429, line: 99, column: 5)
!1656 = !{!1657}
!1657 = distinct !{!1657, !1653, !"base64_encode_fast: argument 1"}
!1658 = !DILocalVariable(name: "in", arg: 1, scope: !1659, file: !429, line: 69, type: !925)
!1659 = distinct !DISubprogram(name: "base64_encode_fast", scope: !429, file: !429, line: 69, type: !1660, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !925, !809, !1326}
!1662 = !{!1658, !1663, !1664}
!1663 = !DILocalVariable(name: "inlen", arg: 2, scope: !1659, file: !429, line: 69, type: !809)
!1664 = !DILocalVariable(name: "out", arg: 3, scope: !1659, file: !429, line: 69, type: !1326)
!1665 = !DILocation(line: 0, scope: !1659, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 100, column: 7, scope: !1655)
!1667 = !DILocation(line: 71, column: 3, scope: !1659, inlinedAt: !1666)
!1668 = !DILocation(line: 73, column: 32, scope: !1669, inlinedAt: !1666)
!1669 = distinct !DILexicalBlock(scope: !1659, file: !429, line: 72, column: 5)
!1670 = !DILocation(line: 73, column: 16, scope: !1669, inlinedAt: !1666)
!1671 = !{!1652, !1657}
!1672 = !DILocation(line: 73, column: 11, scope: !1669, inlinedAt: !1666)
!1673 = !DILocation(line: 73, column: 14, scope: !1669, inlinedAt: !1666)
!1674 = !DILocation(line: 74, column: 23, scope: !1669, inlinedAt: !1666)
!1675 = !DILocation(line: 74, column: 40, scope: !1669, inlinedAt: !1666)
!1676 = !DILocation(line: 74, column: 59, scope: !1669, inlinedAt: !1666)
!1677 = !DILocation(line: 74, column: 73, scope: !1669, inlinedAt: !1666)
!1678 = !DILocation(line: 74, column: 16, scope: !1669, inlinedAt: !1666)
!1679 = !DILocation(line: 74, column: 11, scope: !1669, inlinedAt: !1666)
!1680 = !DILocation(line: 74, column: 14, scope: !1669, inlinedAt: !1666)
!1681 = !DILocation(line: 75, column: 23, scope: !1669, inlinedAt: !1666)
!1682 = !DILocation(line: 75, column: 40, scope: !1669, inlinedAt: !1666)
!1683 = !DILocation(line: 75, column: 59, scope: !1669, inlinedAt: !1666)
!1684 = !DILocation(line: 75, column: 73, scope: !1669, inlinedAt: !1666)
!1685 = !DILocation(line: 75, column: 16, scope: !1669, inlinedAt: !1666)
!1686 = !DILocation(line: 75, column: 11, scope: !1669, inlinedAt: !1666)
!1687 = !DILocation(line: 75, column: 14, scope: !1669, inlinedAt: !1666)
!1688 = !DILocation(line: 76, column: 38, scope: !1669, inlinedAt: !1666)
!1689 = !DILocation(line: 76, column: 16, scope: !1669, inlinedAt: !1666)
!1690 = !DILocation(line: 76, column: 11, scope: !1669, inlinedAt: !1666)
!1691 = !DILocation(line: 76, column: 14, scope: !1669, inlinedAt: !1666)
!1692 = !DILocation(line: 78, column: 13, scope: !1669, inlinedAt: !1666)
!1693 = !DILocation(line: 79, column: 10, scope: !1669, inlinedAt: !1666)
!1694 = distinct !{!1694, !1667, !1695, !981}
!1695 = !DILocation(line: 80, column: 5, scope: !1659, inlinedAt: !1666)
!1696 = !DILocation(line: 104, column: 10, scope: !1635)
!1697 = !DILocation(line: 104, column: 16, scope: !1635)
!1698 = !DILocation(line: 104, column: 3, scope: !1635)
!1699 = !DILocation(line: 106, column: 32, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1635, file: !429, line: 105, column: 5)
!1701 = !DILocation(line: 106, column: 16, scope: !1700)
!1702 = !DILocation(line: 106, column: 11, scope: !1700)
!1703 = !DILocation(line: 106, column: 14, scope: !1700)
!1704 = !DILocation(line: 107, column: 12, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !429, line: 107, column: 11)
!1706 = !DILocation(line: 107, column: 11, scope: !1700)
!1707 = !DILocation(line: 109, column: 23, scope: !1700)
!1708 = !DILocation(line: 109, column: 40, scope: !1700)
!1709 = !DILocation(line: 110, column: 27, scope: !1700)
!1710 = !DILocation(line: 111, column: 23, scope: !1700)
!1711 = !DILocation(line: 109, column: 16, scope: !1700)
!1712 = !DILocation(line: 109, column: 14, scope: !1700)
!1713 = !DILocation(line: 112, column: 12, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1700, file: !429, line: 112, column: 11)
!1715 = !DILocation(line: 112, column: 11, scope: !1700)
!1716 = !DILocation(line: 110, column: 47, scope: !1700)
!1717 = !DILocation(line: 109, column: 11, scope: !1700)
!1718 = !DILocation(line: 116, column: 19, scope: !1700)
!1719 = !DILocation(line: 116, column: 36, scope: !1700)
!1720 = !DILocation(line: 117, column: 23, scope: !1700)
!1721 = !DILocation(line: 118, column: 19, scope: !1700)
!1722 = !DILocation(line: 116, column: 12, scope: !1700)
!1723 = !DILocation(line: 114, column: 14, scope: !1700)
!1724 = !DILocation(line: 120, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1700, file: !429, line: 120, column: 11)
!1726 = !DILocation(line: 120, column: 11, scope: !1700)
!1727 = !DILocation(line: 117, column: 43, scope: !1700)
!1728 = !DILocation(line: 122, column: 39, scope: !1700)
!1729 = !DILocation(line: 122, column: 46, scope: !1700)
!1730 = !DILocation(line: 122, column: 24, scope: !1700)
!1731 = !DILocation(line: 122, column: 16, scope: !1700)
!1732 = !DILocation(line: 114, column: 11, scope: !1700)
!1733 = !DILocation(line: 122, column: 14, scope: !1700)
!1734 = !DILocation(line: 123, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1700, file: !429, line: 123, column: 11)
!1736 = !DILocation(line: 123, column: 11, scope: !1700)
!1737 = !DILocation(line: 122, column: 11, scope: !1700)
!1738 = !DILocation(line: 125, column: 11, scope: !1700)
!1739 = !DILocation(line: 127, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1700, file: !429, line: 127, column: 11)
!1741 = !DILocation(line: 127, column: 11, scope: !1700)
!1742 = distinct !{!1742, !1698, !1743, !981}
!1743 = !DILocation(line: 129, column: 5, scope: !1635)
!1744 = !DILocation(line: 131, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1635, file: !429, line: 131, column: 7)
!1746 = !DILocation(line: 131, column: 7, scope: !1635)
!1747 = !DILocation(line: 132, column: 10, scope: !1745)
!1748 = !DILocation(line: 132, column: 5, scope: !1745)
!1749 = !DILocation(line: 133, column: 1, scope: !1635)
!1750 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !429, file: !429, line: 145, type: !1751, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!809, !136, !809, !1084}
!1753 = !{!1754, !1755, !1756, !1757, !1758}
!1754 = !DILocalVariable(name: "in", arg: 1, scope: !1750, file: !429, line: 145, type: !136)
!1755 = !DILocalVariable(name: "inlen", arg: 2, scope: !1750, file: !429, line: 145, type: !809)
!1756 = !DILocalVariable(name: "out", arg: 3, scope: !1750, file: !429, line: 145, type: !1084)
!1757 = !DILocalVariable(name: "in_over_3", scope: !1750, file: !429, line: 150, type: !809)
!1758 = !DILocalVariable(name: "outlen", scope: !1750, file: !429, line: 150, type: !809)
!1759 = !DILocation(line: 0, scope: !1750)
!1760 = !DILocation(line: 150, column: 27, scope: !1750)
!1761 = !DILocation(line: 150, column: 44, scope: !1750)
!1762 = !DILocation(line: 150, column: 31, scope: !1750)
!1763 = !DILocation(line: 151, column: 7, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1750, file: !429, line: 151, column: 7)
!1765 = !DILocation(line: 151, column: 39, scope: !1764)
!1766 = !DILocation(line: 153, column: 12, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !429, line: 152, column: 5)
!1768 = !DILocation(line: 154, column: 7, scope: !1767)
!1769 = !DILocation(line: 156, column: 9, scope: !1750)
!1770 = !DILocalVariable(name: "s", arg: 1, scope: !1771, file: !1772, line: 55, type: !809)
!1771 = distinct !DISubprogram(name: "imalloc", scope: !1772, file: !1772, line: 55, type: !1773, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1775)
!1772 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!131, !809}
!1775 = !{!1770}
!1776 = !DILocation(line: 0, scope: !1771, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 158, column: 10, scope: !1750)
!1778 = !DILocation(line: 57, column: 26, scope: !1771, inlinedAt: !1777)
!1779 = !DILocation(line: 158, column: 8, scope: !1750)
!1780 = !DILocation(line: 159, column: 8, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1750, file: !429, line: 159, column: 7)
!1782 = !DILocation(line: 159, column: 7, scope: !1750)
!1783 = !DILocation(line: 162, column: 3, scope: !1750)
!1784 = !DILocation(line: 164, column: 3, scope: !1750)
!1785 = !DILocation(line: 165, column: 1, scope: !1750)
!1786 = !DISubprogram(name: "malloc", scope: !1055, file: !1055, line: 540, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!131, !133}
!1789 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !429, file: !429, line: 466, type: !1790, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!196, !1625, !925, !809, !1326, !808}
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1804, !1808}
!1793 = !DILocalVariable(name: "ctx", arg: 1, scope: !1789, file: !429, line: 466, type: !1625)
!1794 = !DILocalVariable(name: "in", arg: 2, scope: !1789, file: !429, line: 467, type: !925)
!1795 = !DILocalVariable(name: "inlen", arg: 3, scope: !1789, file: !429, line: 467, type: !809)
!1796 = !DILocalVariable(name: "out", arg: 4, scope: !1789, file: !429, line: 468, type: !1326)
!1797 = !DILocalVariable(name: "outlen", arg: 5, scope: !1789, file: !429, line: 468, type: !808)
!1798 = !DILocalVariable(name: "ignore_newlines", scope: !1789, file: !429, line: 470, type: !196)
!1799 = !DILocalVariable(name: "flush_ctx", scope: !1789, file: !429, line: 471, type: !196)
!1800 = !DILocalVariable(name: "ctx_i", scope: !1789, file: !429, line: 472, type: !78)
!1801 = !DILocalVariable(name: "outleft", scope: !1789, file: !429, line: 480, type: !809)
!1802 = !DILocalVariable(name: "outleft_save", scope: !1803, file: !429, line: 484, type: !809)
!1803 = distinct !DILexicalBlock(scope: !1789, file: !429, line: 483, column: 5)
!1804 = !DILocalVariable(name: "in_end", scope: !1805, file: !429, line: 517, type: !136)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !429, line: 516, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !429, line: 511, column: 9)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !429, line: 505, column: 11)
!1808 = !DILocalVariable(name: "non_nl", scope: !1805, file: !429, line: 519, type: !136)
!1809 = !DILocation(line: 0, scope: !1789)
!1810 = !DILocation(line: 470, column: 30, scope: !1789)
!1811 = !DILocation(line: 474, column: 7, scope: !1789)
!1812 = !DILocation(line: 476, column: 20, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !429, line: 475, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1789, file: !429, line: 474, column: 7)
!1815 = !DILocation(line: 477, column: 25, scope: !1813)
!1816 = !DILocation(line: 478, column: 5, scope: !1813)
!1817 = !DILocation(line: 480, column: 3, scope: !1789)
!1818 = !DILocation(line: 480, column: 19, scope: !1789)
!1819 = !DILocation(line: 480, column: 9, scope: !1789)
!1820 = !DILocation(line: 482, column: 3, scope: !1789)
!1821 = !DILocation(line: 484, column: 28, scope: !1803)
!1822 = !DILocation(line: 0, scope: !1803)
!1823 = !DILocation(line: 485, column: 22, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1803, file: !429, line: 485, column: 11)
!1825 = !DILocation(line: 492, column: 20, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !429, line: 492, column: 19)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !429, line: 488, column: 13)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !429, line: 486, column: 9)
!1829 = !DILocation(line: 492, column: 19, scope: !1827)
!1830 = !DILocation(line: 495, column: 18, scope: !1827)
!1831 = !DILocation(line: 496, column: 21, scope: !1827)
!1832 = !DILocation(line: 491, column: 30, scope: !1827)
!1833 = distinct !{!1833, !1834, !1835}
!1834 = !DILocation(line: 487, column: 11, scope: !1828)
!1835 = !DILocation(line: 497, column: 13, scope: !1828)
!1836 = !DILocation(line: 500, column: 17, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1803, file: !429, line: 500, column: 11)
!1838 = !DILocation(line: 500, column: 22, scope: !1837)
!1839 = !DILocation(line: 505, column: 17, scope: !1807)
!1840 = !DILocation(line: 505, column: 20, scope: !1807)
!1841 = !DILocation(line: 505, column: 24, scope: !1807)
!1842 = !DILocation(line: 505, column: 32, scope: !1807)
!1843 = !DILocation(line: 507, column: 11, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1807, file: !429, line: 506, column: 9)
!1845 = !DILocation(line: 508, column: 11, scope: !1844)
!1846 = !DILocation(line: 509, column: 9, scope: !1844)
!1847 = !DILocation(line: 513, column: 33, scope: !1806)
!1848 = !DILocation(line: 513, column: 31, scope: !1806)
!1849 = !DILocation(line: 513, column: 15, scope: !1806)
!1850 = !DILocation(line: 514, column: 19, scope: !1806)
!1851 = !DILocation(line: 517, column: 37, scope: !1805)
!1852 = !DILocation(line: 0, scope: !1805)
!1853 = !DILocation(line: 520, column: 17, scope: !1805)
!1854 = !DILocalVariable(name: "ctx", arg: 1, scope: !1855, file: !429, line: 318, type: !1625)
!1855 = distinct !DISubprogram(name: "get_4", scope: !429, file: !429, line: 318, type: !1856, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1859)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!130, !1625, !1858, !925, !808}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!1859 = !{!1854, !1860, !1861, !1862, !1863, !1866, !1868}
!1860 = !DILocalVariable(name: "in", arg: 2, scope: !1855, file: !429, line: 319, type: !1858)
!1861 = !DILocalVariable(name: "in_end", arg: 3, scope: !1855, file: !429, line: 319, type: !925)
!1862 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1855, file: !429, line: 320, type: !808)
!1863 = !DILocalVariable(name: "t", scope: !1864, file: !429, line: 327, type: !136)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !429, line: 326, column: 5)
!1865 = distinct !DILexicalBlock(scope: !1855, file: !429, line: 325, column: 7)
!1866 = !DILocalVariable(name: "p", scope: !1867, file: !429, line: 339, type: !136)
!1867 = distinct !DILexicalBlock(scope: !1855, file: !429, line: 337, column: 3)
!1868 = !DILocalVariable(name: "c", scope: !1869, file: !429, line: 342, type: !4)
!1869 = distinct !DILexicalBlock(scope: !1867, file: !429, line: 341, column: 7)
!1870 = !DILocation(line: 0, scope: !1855, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 521, column: 24, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1805, file: !429, line: 520, column: 17)
!1873 = !DILocation(line: 322, column: 12, scope: !1874, inlinedAt: !1871)
!1874 = distinct !DILexicalBlock(scope: !1855, file: !429, line: 322, column: 7)
!1875 = !{!1876}
!1876 = distinct !{!1876, !1877, !"get_4: argument 0"}
!1877 = distinct !{!1877, !"get_4"}
!1878 = !DILocation(line: 322, column: 7, scope: !1855, inlinedAt: !1871)
!1879 = !DILocation(line: 323, column: 12, scope: !1874, inlinedAt: !1871)
!1880 = !DILocation(line: 325, column: 7, scope: !1855, inlinedAt: !1871)
!1881 = !DILocation(line: 0, scope: !1864, inlinedAt: !1871)
!1882 = !DILocation(line: 328, column: 13, scope: !1883, inlinedAt: !1871)
!1883 = distinct !DILexicalBlock(scope: !1864, file: !429, line: 328, column: 11)
!1884 = !DILocation(line: 328, column: 29, scope: !1883, inlinedAt: !1871)
!1885 = !DILocation(line: 328, column: 32, scope: !1883, inlinedAt: !1871)
!1886 = !DILocation(line: 328, column: 52, scope: !1883, inlinedAt: !1871)
!1887 = !DILocation(line: 328, column: 11, scope: !1864, inlinedAt: !1871)
!1888 = !DILocation(line: 331, column: 15, scope: !1889, inlinedAt: !1871)
!1889 = distinct !DILexicalBlock(scope: !1883, file: !429, line: 329, column: 9)
!1890 = !DILocation(line: 528, column: 42, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1805, file: !429, line: 528, column: 17)
!1892 = !DILocation(line: 0, scope: !1867, inlinedAt: !1871)
!1893 = !DILocation(line: 340, column: 14, scope: !1867, inlinedAt: !1871)
!1894 = !DILocation(line: 340, column: 5, scope: !1867, inlinedAt: !1871)
!1895 = !DILocation(line: 343, column: 13, scope: !1869, inlinedAt: !1871)
!1896 = !DILocation(line: 342, column: 20, scope: !1869, inlinedAt: !1871)
!1897 = !DILocation(line: 342, column: 18, scope: !1869, inlinedAt: !1871)
!1898 = !DILocation(line: 0, scope: !1869, inlinedAt: !1871)
!1899 = !DILocation(line: 343, column: 15, scope: !1900, inlinedAt: !1871)
!1900 = distinct !DILexicalBlock(scope: !1869, file: !429, line: 343, column: 13)
!1901 = !DILocation(line: 345, column: 28, scope: !1902, inlinedAt: !1871)
!1902 = distinct !DILexicalBlock(scope: !1900, file: !429, line: 344, column: 11)
!1903 = !DILocation(line: 345, column: 13, scope: !1902, inlinedAt: !1871)
!1904 = !DILocation(line: 345, column: 32, scope: !1902, inlinedAt: !1871)
!1905 = !DILocation(line: 346, column: 22, scope: !1906, inlinedAt: !1871)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !429, line: 346, column: 17)
!1907 = !DILocation(line: 346, column: 24, scope: !1906, inlinedAt: !1871)
!1908 = !DILocation(line: 346, column: 17, scope: !1902, inlinedAt: !1871)
!1909 = !DILocation(line: 352, column: 27, scope: !1867, inlinedAt: !1871)
!1910 = !DILocation(line: 352, column: 22, scope: !1867, inlinedAt: !1871)
!1911 = !DILocation(line: 0, scope: !1872)
!1912 = !DILocation(line: 528, column: 23, scope: !1891)
!1913 = !DILocation(line: 528, column: 28, scope: !1891)
!1914 = !DILocation(line: 528, column: 38, scope: !1891)
!1915 = !DILocation(line: 533, column: 18, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1805, file: !429, line: 533, column: 17)
!1917 = !DILocation(line: 533, column: 17, scope: !1805)
!1918 = !DILocation(line: 536, column: 28, scope: !1805)
!1919 = !DILocation(line: 541, column: 14, scope: !1789)
!1920 = !DILocation(line: 541, column: 11, scope: !1789)
!1921 = !DILocation(line: 544, column: 1, scope: !1789)
!1922 = !DILocation(line: 543, column: 3, scope: !1789)
!1923 = distinct !DISubprogram(name: "decode_4", scope: !429, file: !429, line: 372, type: !1924, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!196, !925, !809, !1325, !808}
!1926 = !{!1927, !1928, !1929, !1930, !1931}
!1927 = !DILocalVariable(name: "in", arg: 1, scope: !1923, file: !429, line: 372, type: !925)
!1928 = !DILocalVariable(name: "inlen", arg: 2, scope: !1923, file: !429, line: 372, type: !809)
!1929 = !DILocalVariable(name: "outp", arg: 3, scope: !1923, file: !429, line: 373, type: !1325)
!1930 = !DILocalVariable(name: "outleft", arg: 4, scope: !1923, file: !429, line: 373, type: !808)
!1931 = !DILocalVariable(name: "out", scope: !1923, file: !429, line: 381, type: !130)
!1932 = !DILocation(line: 0, scope: !1923)
!1933 = !DILocation(line: 375, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1923, file: !429, line: 375, column: 7)
!1935 = !DILocation(line: 375, column: 7, scope: !1923)
!1936 = !DILocation(line: 378, column: 18, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1923, file: !429, line: 378, column: 7)
!1938 = !DILocation(line: 0, scope: !1610, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 378, column: 8, scope: !1937)
!1940 = !DILocation(line: 0, scope: !1602, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !1939)
!1942 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1941)
!1943 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1941)
!1944 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1941)
!1945 = !DILocation(line: 378, column: 25, scope: !1937)
!1946 = !DILocation(line: 378, column: 39, scope: !1937)
!1947 = !DILocation(line: 0, scope: !1610, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 378, column: 29, scope: !1937)
!1949 = !DILocation(line: 0, scope: !1602, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !1948)
!1951 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1950)
!1952 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1950)
!1953 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1950)
!1954 = !DILocation(line: 378, column: 7, scope: !1923)
!1955 = !DILocation(line: 381, column: 15, scope: !1923)
!1956 = !DILocation(line: 383, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1923, file: !429, line: 383, column: 7)
!1958 = !DILocation(line: 383, column: 7, scope: !1923)
!1959 = !DILocation(line: 385, column: 50, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !429, line: 384, column: 5)
!1961 = !DILocation(line: 386, column: 52, scope: !1960)
!1962 = !DILocation(line: 386, column: 17, scope: !1960)
!1963 = !DILocation(line: 385, column: 11, scope: !1960)
!1964 = !DILocation(line: 385, column: 14, scope: !1960)
!1965 = !DILocation(line: 387, column: 7, scope: !1960)
!1966 = !DILocation(line: 388, column: 5, scope: !1960)
!1967 = !DILocation(line: 390, column: 13, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1923, file: !429, line: 390, column: 7)
!1969 = !DILocation(line: 390, column: 7, scope: !1923)
!1970 = !DILocation(line: 393, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1923, file: !429, line: 393, column: 7)
!1972 = !DILocation(line: 393, column: 13, scope: !1971)
!1973 = !DILocation(line: 393, column: 7, scope: !1923)
!1974 = !DILocation(line: 395, column: 17, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !429, line: 395, column: 11)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !429, line: 394, column: 5)
!1977 = !DILocation(line: 395, column: 11, scope: !1976)
!1978 = !DILocation(line: 398, column: 11, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !429, line: 398, column: 11)
!1980 = !DILocation(line: 398, column: 17, scope: !1979)
!1981 = !DILocation(line: 398, column: 11, scope: !1976)
!1982 = !DILocation(line: 0, scope: !1610, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 407, column: 12, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !429, line: 407, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1971, file: !429, line: 406, column: 5)
!1986 = !DILocation(line: 0, scope: !1602, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !1983)
!1988 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1987)
!1989 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1987)
!1990 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1987)
!1991 = !DILocation(line: 407, column: 11, scope: !1985)
!1992 = !DILocation(line: 410, column: 11, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !429, line: 410, column: 11)
!1994 = !DILocation(line: 410, column: 11, scope: !1985)
!1995 = !DILocation(line: 412, column: 55, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !429, line: 411, column: 9)
!1997 = !DILocation(line: 413, column: 56, scope: !1996)
!1998 = !DILocation(line: 413, column: 21, scope: !1996)
!1999 = !DILocation(line: 412, column: 15, scope: !1996)
!2000 = !DILocation(line: 412, column: 18, scope: !1996)
!2001 = !DILocation(line: 414, column: 11, scope: !1996)
!2002 = !DILocation(line: 415, column: 9, scope: !1996)
!2003 = !DILocation(line: 417, column: 17, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1985, file: !429, line: 417, column: 11)
!2005 = !DILocation(line: 417, column: 11, scope: !1985)
!2006 = !DILocation(line: 420, column: 11, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1985, file: !429, line: 420, column: 11)
!2008 = !DILocation(line: 420, column: 17, scope: !2007)
!2009 = !DILocation(line: 420, column: 11, scope: !1985)
!2010 = !DILocation(line: 422, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !429, line: 422, column: 15)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !429, line: 421, column: 9)
!2013 = !DILocation(line: 422, column: 15, scope: !2012)
!2014 = !DILocation(line: 0, scope: !1610, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 431, column: 16, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !429, line: 431, column: 15)
!2017 = distinct !DILexicalBlock(scope: !2007, file: !429, line: 430, column: 9)
!2018 = !DILocation(line: 0, scope: !1602, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !2015)
!2020 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !2019)
!2021 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !2019)
!2022 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !2019)
!2023 = !DILocation(line: 431, column: 15, scope: !2017)
!2024 = !DILocation(line: 434, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !429, line: 434, column: 15)
!2026 = !DILocation(line: 434, column: 15, scope: !2017)
!2027 = !DILocation(line: 436, column: 59, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !429, line: 435, column: 13)
!2029 = !DILocation(line: 437, column: 25, scope: !2028)
!2030 = !DILocation(line: 436, column: 19, scope: !2028)
!2031 = !DILocation(line: 436, column: 22, scope: !2028)
!2032 = !DILocation(line: 438, column: 15, scope: !2028)
!2033 = !DILocation(line: 439, column: 13, scope: !2028)
!2034 = !DILocation(line: 444, column: 3, scope: !1923)
!2035 = !DILocation(line: 445, column: 1, scope: !1923)
!2036 = !DISubprogram(name: "memchr", scope: !1051, file: !1051, line: 107, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!131, !1079, !87, !133}
!2039 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !429, file: !429, line: 558, type: !2040, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!196, !1625, !136, !809, !1084, !808}
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048}
!2043 = !DILocalVariable(name: "ctx", arg: 1, scope: !2039, file: !429, line: 558, type: !1625)
!2044 = !DILocalVariable(name: "in", arg: 2, scope: !2039, file: !429, line: 559, type: !136)
!2045 = !DILocalVariable(name: "inlen", arg: 3, scope: !2039, file: !429, line: 559, type: !809)
!2046 = !DILocalVariable(name: "out", arg: 4, scope: !2039, file: !429, line: 559, type: !1084)
!2047 = !DILocalVariable(name: "outlen", arg: 5, scope: !2039, file: !429, line: 560, type: !808)
!2048 = !DILocalVariable(name: "needlen", scope: !2039, file: !429, line: 567, type: !809)
!2049 = !DILocation(line: 0, scope: !2039)
!2050 = !DILocation(line: 567, column: 3, scope: !2039)
!2051 = !DILocation(line: 567, column: 31, scope: !2039)
!2052 = !DILocation(line: 567, column: 21, scope: !2039)
!2053 = !DILocation(line: 567, column: 9, scope: !2039)
!2054 = !DILocation(line: 0, scope: !1771, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 569, column: 10, scope: !2039)
!2056 = !DILocation(line: 57, column: 26, scope: !1771, inlinedAt: !2055)
!2057 = !DILocation(line: 569, column: 8, scope: !2039)
!2058 = !DILocation(line: 570, column: 8, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2039, file: !429, line: 570, column: 7)
!2060 = !DILocation(line: 570, column: 7, scope: !2039)
!2061 = !DILocation(line: 573, column: 8, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2039, file: !429, line: 573, column: 7)
!2063 = !DILocation(line: 573, column: 7, scope: !2039)
!2064 = !DILocation(line: 575, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !429, line: 574, column: 5)
!2066 = !DILocation(line: 575, column: 7, scope: !2065)
!2067 = !DILocation(line: 576, column: 12, scope: !2065)
!2068 = !DILocation(line: 577, column: 7, scope: !2065)
!2069 = !DILocation(line: 580, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2039, file: !429, line: 580, column: 7)
!2071 = !DILocation(line: 580, column: 7, scope: !2039)
!2072 = !DILocation(line: 581, column: 15, scope: !2070)
!2073 = !DILocation(line: 581, column: 13, scope: !2070)
!2074 = !DILocation(line: 581, column: 5, scope: !2070)
!2075 = !DILocation(line: 584, column: 1, scope: !2039)
!2076 = !DISubprogram(name: "free", scope: !947, file: !947, line: 752, type: !2077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !131}
!2079 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !444, file: !444, line: 50, type: !886, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2080)
!2080 = !{!2081}
!2081 = !DILocalVariable(name: "file", arg: 1, scope: !2079, file: !444, line: 50, type: !136)
!2082 = !DILocation(line: 0, scope: !2079)
!2083 = !DILocation(line: 52, column: 13, scope: !2079)
!2084 = !DILocation(line: 53, column: 1, scope: !2079)
!2085 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !444, file: !444, line: 87, type: !2086, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !196}
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "ignore", arg: 1, scope: !2085, file: !444, line: 87, type: !196)
!2090 = !DILocation(line: 0, scope: !2085)
!2091 = !DILocation(line: 89, column: 16, scope: !2085)
!2092 = !{!2093, !2093, i64 0}
!2093 = !{!"_Bool", !866, i64 0}
!2094 = !DILocation(line: 90, column: 1, scope: !2085)
!2095 = distinct !DISubprogram(name: "close_stdout", scope: !444, file: !444, line: 116, type: !511, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "write_error", scope: !2098, file: !444, line: 121, type: !136)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !444, line: 120, column: 5)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !444, line: 118, column: 7)
!2100 = !DILocation(line: 118, column: 21, scope: !2099)
!2101 = !DILocation(line: 118, column: 7, scope: !2099)
!2102 = !DILocation(line: 118, column: 29, scope: !2099)
!2103 = !DILocation(line: 119, column: 7, scope: !2099)
!2104 = !DILocation(line: 119, column: 12, scope: !2099)
!2105 = !{i8 0, i8 2}
!2106 = !DILocation(line: 119, column: 25, scope: !2099)
!2107 = !DILocation(line: 119, column: 28, scope: !2099)
!2108 = !DILocation(line: 119, column: 34, scope: !2099)
!2109 = !DILocation(line: 118, column: 7, scope: !2095)
!2110 = !DILocation(line: 121, column: 33, scope: !2098)
!2111 = !DILocation(line: 0, scope: !2098)
!2112 = !DILocation(line: 122, column: 11, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2098, file: !444, line: 122, column: 11)
!2114 = !DILocation(line: 0, scope: !2113)
!2115 = !DILocation(line: 122, column: 11, scope: !2098)
!2116 = !DILocation(line: 123, column: 9, scope: !2113)
!2117 = !DILocation(line: 126, column: 9, scope: !2113)
!2118 = !DILocation(line: 128, column: 14, scope: !2098)
!2119 = !DILocation(line: 128, column: 7, scope: !2098)
!2120 = !DILocation(line: 133, column: 42, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2095, file: !444, line: 133, column: 7)
!2122 = !DILocation(line: 133, column: 28, scope: !2121)
!2123 = !DILocation(line: 133, column: 50, scope: !2121)
!2124 = !DILocation(line: 133, column: 7, scope: !2095)
!2125 = !DILocation(line: 134, column: 12, scope: !2121)
!2126 = !DILocation(line: 134, column: 5, scope: !2121)
!2127 = !DILocation(line: 135, column: 1, scope: !2095)
!2128 = !DISubprogram(name: "_exit", scope: !2129, file: !2129, line: 624, type: !854, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2129 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2130 = distinct !DISubprogram(name: "verror", scope: !459, file: !459, line: 251, type: !2131, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !87, !87, !136, !469}
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DILocalVariable(name: "status", arg: 1, scope: !2130, file: !459, line: 251, type: !87)
!2135 = !DILocalVariable(name: "errnum", arg: 2, scope: !2130, file: !459, line: 251, type: !87)
!2136 = !DILocalVariable(name: "message", arg: 3, scope: !2130, file: !459, line: 251, type: !136)
!2137 = !DILocalVariable(name: "args", arg: 4, scope: !2130, file: !459, line: 251, type: !469)
!2138 = !DILocation(line: 0, scope: !2130)
!2139 = !DILocation(line: 251, column: 1, scope: !2130)
!2140 = !DILocation(line: 261, column: 3, scope: !2130)
!2141 = !DILocation(line: 265, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2130, file: !459, line: 265, column: 7)
!2143 = !DILocation(line: 265, column: 7, scope: !2130)
!2144 = !DILocation(line: 266, column: 5, scope: !2142)
!2145 = !DILocation(line: 272, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !459, line: 268, column: 5)
!2147 = !DILocation(line: 276, column: 3, scope: !2130)
!2148 = !{i64 0, i64 8, !864, i64 8, i64 8, !864, i64 16, i64 8, !864, i64 24, i64 4, !934, i64 28, i64 4, !934}
!2149 = !DILocation(line: 282, column: 1, scope: !2130)
!2150 = distinct !DISubprogram(name: "flush_stdout", scope: !459, file: !459, line: 163, type: !511, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2151)
!2151 = !{!2152}
!2152 = !DILocalVariable(name: "stdout_fd", scope: !2150, file: !459, line: 166, type: !87)
!2153 = !DILocation(line: 0, scope: !2150)
!2154 = !DILocalVariable(name: "fd", arg: 1, scope: !2155, file: !459, line: 145, type: !87)
!2155 = distinct !DISubprogram(name: "is_open", scope: !459, file: !459, line: 145, type: !1252, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2156)
!2156 = !{!2154}
!2157 = !DILocation(line: 0, scope: !2155, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 182, column: 25, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !459, line: 182, column: 7)
!2160 = !DILocation(line: 157, column: 15, scope: !2155, inlinedAt: !2158)
!2161 = !DILocation(line: 157, column: 12, scope: !2155, inlinedAt: !2158)
!2162 = !DILocation(line: 182, column: 7, scope: !2150)
!2163 = !DILocation(line: 184, column: 5, scope: !2159)
!2164 = !DILocation(line: 185, column: 1, scope: !2150)
!2165 = distinct !DISubprogram(name: "error_tail", scope: !459, file: !459, line: 219, type: !2131, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2166)
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "status", arg: 1, scope: !2165, file: !459, line: 219, type: !87)
!2168 = !DILocalVariable(name: "errnum", arg: 2, scope: !2165, file: !459, line: 219, type: !87)
!2169 = !DILocalVariable(name: "message", arg: 3, scope: !2165, file: !459, line: 219, type: !136)
!2170 = !DILocalVariable(name: "args", arg: 4, scope: !2165, file: !459, line: 219, type: !469)
!2171 = !DILocation(line: 0, scope: !2165)
!2172 = !DILocation(line: 219, column: 1, scope: !2165)
!2173 = !DILocation(line: 229, column: 13, scope: !2165)
!2174 = !DILocation(line: 135, column: 10, scope: !2175, inlinedAt: !2217)
!2175 = distinct !DISubprogram(name: "vfprintf", scope: !921, file: !921, line: 132, type: !2176, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2213)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!87, !2178, !925, !471}
!2178 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2181, file: !213, line: 51, baseType: !87, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2181, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2181, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2181, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2181, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2181, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2181, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2181, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2181, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2181, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2181, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2181, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2181, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2181, file: !213, line: 70, baseType: !2197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2181, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2181, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2181, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2181, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2181, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2181, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2181, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2181, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2181, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2181, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2181, file: !213, line: 93, baseType: !2197, size: 64, offset: 1344)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2181, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2181, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2181, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2181, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "__stream", arg: 1, scope: !2175, file: !921, line: 132, type: !2178)
!2215 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2175, file: !921, line: 133, type: !925)
!2216 = !DILocalVariable(name: "__ap", arg: 3, scope: !2175, file: !921, line: 133, type: !471)
!2217 = distinct !DILocation(line: 229, column: 3, scope: !2165)
!2218 = !{!2219, !2221}
!2219 = distinct !{!2219, !2220, !"vfprintf.inline: argument 0"}
!2220 = distinct !{!2220, !"vfprintf.inline"}
!2221 = distinct !{!2221, !2220, !"vfprintf.inline: argument 1"}
!2222 = !DILocation(line: 229, column: 3, scope: !2165)
!2223 = !DILocation(line: 0, scope: !2175, inlinedAt: !2217)
!2224 = !DILocation(line: 133, column: 49, scope: !2175, inlinedAt: !2217)
!2225 = !DILocation(line: 232, column: 3, scope: !2165)
!2226 = !DILocation(line: 233, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2165, file: !459, line: 233, column: 7)
!2228 = !DILocation(line: 233, column: 7, scope: !2165)
!2229 = !DILocalVariable(name: "errnum", arg: 1, scope: !2230, file: !459, line: 188, type: !87)
!2230 = distinct !DISubprogram(name: "print_errno_message", scope: !459, file: !459, line: 188, type: !854, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2231)
!2231 = !{!2229, !2232, !2233}
!2232 = !DILocalVariable(name: "s", scope: !2230, file: !459, line: 190, type: !136)
!2233 = !DILocalVariable(name: "errbuf", scope: !2230, file: !459, line: 193, type: !2234)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2235)
!2235 = !{!2236}
!2236 = !DISubrange(count: 1024)
!2237 = !DILocation(line: 0, scope: !2230, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 234, column: 5, scope: !2227)
!2239 = !DILocation(line: 193, column: 3, scope: !2230, inlinedAt: !2238)
!2240 = !DILocation(line: 193, column: 8, scope: !2230, inlinedAt: !2238)
!2241 = !DILocation(line: 195, column: 7, scope: !2230, inlinedAt: !2238)
!2242 = !DILocation(line: 207, column: 9, scope: !2243, inlinedAt: !2238)
!2243 = distinct !DILexicalBlock(scope: !2230, file: !459, line: 207, column: 7)
!2244 = !DILocation(line: 207, column: 7, scope: !2230, inlinedAt: !2238)
!2245 = !DILocation(line: 208, column: 9, scope: !2243, inlinedAt: !2238)
!2246 = !DILocation(line: 208, column: 5, scope: !2243, inlinedAt: !2238)
!2247 = !DILocation(line: 214, column: 3, scope: !2230, inlinedAt: !2238)
!2248 = !DILocation(line: 216, column: 1, scope: !2230, inlinedAt: !2238)
!2249 = !DILocation(line: 234, column: 5, scope: !2227)
!2250 = !DILocation(line: 238, column: 3, scope: !2165)
!2251 = !DILocalVariable(name: "__c", arg: 1, scope: !2252, file: !1283, line: 101, type: !87)
!2252 = distinct !DISubprogram(name: "putc_unlocked", scope: !1283, file: !1283, line: 101, type: !2253, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!87, !87, !2179}
!2255 = !{!2251, !2256}
!2256 = !DILocalVariable(name: "__stream", arg: 2, scope: !2252, file: !1283, line: 101, type: !2179)
!2257 = !DILocation(line: 0, scope: !2252, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 238, column: 3, scope: !2165)
!2259 = !DILocation(line: 103, column: 10, scope: !2252, inlinedAt: !2258)
!2260 = !DILocation(line: 240, column: 3, scope: !2165)
!2261 = !DILocation(line: 241, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2165, file: !459, line: 241, column: 7)
!2263 = !DILocation(line: 241, column: 7, scope: !2165)
!2264 = !DILocation(line: 242, column: 5, scope: !2262)
!2265 = !DILocation(line: 243, column: 1, scope: !2165)
!2266 = !DISubprogram(name: "__vfprintf_chk", scope: !921, file: !921, line: 96, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!87, !2178, !87, !925, !471}
!2269 = !DISubprogram(name: "strerror_r", scope: !1051, file: !1051, line: 444, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!130, !87, !130, !133}
!2272 = !DISubprogram(name: "fcntl", scope: !2273, file: !2273, line: 149, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2273 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!87, !87, !87, null}
!2276 = distinct !DISubprogram(name: "error", scope: !459, file: !459, line: 285, type: !2277, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !87, !87, !136, null}
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DILocalVariable(name: "status", arg: 1, scope: !2276, file: !459, line: 285, type: !87)
!2281 = !DILocalVariable(name: "errnum", arg: 2, scope: !2276, file: !459, line: 285, type: !87)
!2282 = !DILocalVariable(name: "message", arg: 3, scope: !2276, file: !459, line: 285, type: !136)
!2283 = !DILocalVariable(name: "ap", scope: !2276, file: !459, line: 287, type: !469)
!2284 = !DILocation(line: 0, scope: !2276)
!2285 = !DILocation(line: 287, column: 3, scope: !2276)
!2286 = !DILocation(line: 287, column: 11, scope: !2276)
!2287 = !DILocation(line: 288, column: 3, scope: !2276)
!2288 = !DILocation(line: 289, column: 3, scope: !2276)
!2289 = !DILocation(line: 290, column: 3, scope: !2276)
!2290 = !DILocation(line: 291, column: 1, scope: !2276)
!2291 = !DILocation(line: 0, scope: !466)
!2292 = !DILocation(line: 298, column: 1, scope: !466)
!2293 = !DILocation(line: 302, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !466, file: !459, line: 302, column: 7)
!2295 = !DILocation(line: 302, column: 7, scope: !466)
!2296 = !DILocation(line: 307, column: 11, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !459, line: 307, column: 11)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !459, line: 303, column: 5)
!2299 = !DILocation(line: 307, column: 27, scope: !2297)
!2300 = !DILocation(line: 308, column: 11, scope: !2297)
!2301 = !DILocation(line: 308, column: 28, scope: !2297)
!2302 = !DILocation(line: 308, column: 25, scope: !2297)
!2303 = !DILocation(line: 309, column: 15, scope: !2297)
!2304 = !DILocation(line: 309, column: 33, scope: !2297)
!2305 = !DILocation(line: 310, column: 19, scope: !2297)
!2306 = !DILocation(line: 311, column: 22, scope: !2297)
!2307 = !DILocation(line: 311, column: 56, scope: !2297)
!2308 = !DILocation(line: 307, column: 11, scope: !2298)
!2309 = !DILocation(line: 316, column: 21, scope: !2298)
!2310 = !DILocation(line: 317, column: 23, scope: !2298)
!2311 = !DILocation(line: 318, column: 5, scope: !2298)
!2312 = !DILocation(line: 327, column: 3, scope: !466)
!2313 = !DILocation(line: 331, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !466, file: !459, line: 331, column: 7)
!2315 = !DILocation(line: 331, column: 7, scope: !466)
!2316 = !DILocation(line: 332, column: 5, scope: !2314)
!2317 = !DILocation(line: 338, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !459, line: 334, column: 5)
!2319 = !DILocation(line: 346, column: 3, scope: !466)
!2320 = !DILocation(line: 350, column: 3, scope: !466)
!2321 = !DILocation(line: 356, column: 1, scope: !466)
!2322 = distinct !DISubprogram(name: "error_at_line", scope: !459, file: !459, line: 359, type: !2323, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !87, !87, !136, !78, !136, null}
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331}
!2326 = !DILocalVariable(name: "status", arg: 1, scope: !2322, file: !459, line: 359, type: !87)
!2327 = !DILocalVariable(name: "errnum", arg: 2, scope: !2322, file: !459, line: 359, type: !87)
!2328 = !DILocalVariable(name: "file_name", arg: 3, scope: !2322, file: !459, line: 359, type: !136)
!2329 = !DILocalVariable(name: "line_number", arg: 4, scope: !2322, file: !459, line: 360, type: !78)
!2330 = !DILocalVariable(name: "message", arg: 5, scope: !2322, file: !459, line: 360, type: !136)
!2331 = !DILocalVariable(name: "ap", scope: !2322, file: !459, line: 362, type: !469)
!2332 = !DILocation(line: 0, scope: !2322)
!2333 = !DILocation(line: 362, column: 3, scope: !2322)
!2334 = !DILocation(line: 362, column: 11, scope: !2322)
!2335 = !DILocation(line: 363, column: 3, scope: !2322)
!2336 = !DILocation(line: 364, column: 3, scope: !2322)
!2337 = !DILocation(line: 366, column: 3, scope: !2322)
!2338 = !DILocation(line: 367, column: 1, scope: !2322)
!2339 = distinct !DISubprogram(name: "fdadvise", scope: !770, file: !770, line: 25, type: !2340, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2344)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !87, !2342, !2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !470, line: 63, baseType: !235)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !106, line: 51, baseType: !105)
!2344 = !{!2345, !2346, !2347, !2348}
!2345 = !DILocalVariable(name: "fd", arg: 1, scope: !2339, file: !770, line: 25, type: !87)
!2346 = !DILocalVariable(name: "offset", arg: 2, scope: !2339, file: !770, line: 25, type: !2342)
!2347 = !DILocalVariable(name: "len", arg: 3, scope: !2339, file: !770, line: 25, type: !2342)
!2348 = !DILocalVariable(name: "advice", arg: 4, scope: !2339, file: !770, line: 25, type: !2343)
!2349 = !DILocation(line: 0, scope: !2339)
!2350 = !DILocation(line: 28, column: 3, scope: !2339)
!2351 = !DILocation(line: 30, column: 1, scope: !2339)
!2352 = !DISubprogram(name: "posix_fadvise", scope: !2273, file: !2273, line: 273, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!87, !87, !2342, !2342, !87}
!2355 = distinct !DISubprogram(name: "fadvise", scope: !770, file: !770, line: 33, type: !2356, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2392)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2358, !2343}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2360, file: !213, line: 51, baseType: !87, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2360, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2360, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2360, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2360, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2360, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2360, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2360, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2360, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2360, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2360, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2360, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2360, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2360, file: !213, line: 70, baseType: !2376, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2360, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2360, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2360, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2360, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2360, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2360, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2360, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2360, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2360, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2360, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2360, file: !213, line: 93, baseType: !2376, size: 64, offset: 1344)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2360, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2360, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2360, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2360, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "fp", arg: 1, scope: !2355, file: !770, line: 33, type: !2358)
!2394 = !DILocalVariable(name: "advice", arg: 2, scope: !2355, file: !770, line: 33, type: !2343)
!2395 = !DILocation(line: 0, scope: !2355)
!2396 = !DILocation(line: 35, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2355, file: !770, line: 35, column: 7)
!2398 = !DILocation(line: 35, column: 7, scope: !2355)
!2399 = !DILocation(line: 36, column: 15, scope: !2397)
!2400 = !DILocation(line: 0, scope: !2339, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 36, column: 5, scope: !2397)
!2402 = !DILocation(line: 28, column: 3, scope: !2339, inlinedAt: !2401)
!2403 = !DILocation(line: 36, column: 5, scope: !2397)
!2404 = !DILocation(line: 37, column: 1, scope: !2355)
!2405 = !DISubprogram(name: "fileno", scope: !470, file: !470, line: 809, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!87, !2358}
!2408 = distinct !DISubprogram(name: "rpl_fclose", scope: !773, file: !773, line: 58, type: !2409, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !2445)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!87, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2413)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2413, file: !213, line: 51, baseType: !87, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2413, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2413, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2413, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2413, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2413, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2413, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2413, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2413, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2413, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2413, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2413, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2413, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2413, file: !213, line: 70, baseType: !2429, size: 64, offset: 832)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2413, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2413, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2413, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2413, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2413, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2413, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2413, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2413, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2413, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2413, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2413, file: !213, line: 93, baseType: !2429, size: 64, offset: 1344)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2413, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2413, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2413, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2413, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "fp", arg: 1, scope: !2408, file: !773, line: 58, type: !2411)
!2447 = !DILocalVariable(name: "saved_errno", scope: !2408, file: !773, line: 60, type: !87)
!2448 = !DILocalVariable(name: "fd", scope: !2408, file: !773, line: 63, type: !87)
!2449 = !DILocalVariable(name: "result", scope: !2408, file: !773, line: 74, type: !87)
!2450 = !DILocation(line: 0, scope: !2408)
!2451 = !DILocation(line: 63, column: 12, scope: !2408)
!2452 = !DILocation(line: 64, column: 10, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2408, file: !773, line: 64, column: 7)
!2454 = !DILocation(line: 64, column: 7, scope: !2408)
!2455 = !DILocation(line: 65, column: 12, scope: !2453)
!2456 = !DILocation(line: 65, column: 5, scope: !2453)
!2457 = !DILocation(line: 70, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2408, file: !773, line: 70, column: 7)
!2459 = !DILocation(line: 70, column: 23, scope: !2458)
!2460 = !DILocation(line: 70, column: 33, scope: !2458)
!2461 = !DILocation(line: 70, column: 26, scope: !2458)
!2462 = !DILocation(line: 70, column: 59, scope: !2458)
!2463 = !DILocation(line: 71, column: 7, scope: !2458)
!2464 = !DILocation(line: 71, column: 10, scope: !2458)
!2465 = !DILocation(line: 70, column: 7, scope: !2408)
!2466 = !DILocation(line: 100, column: 12, scope: !2408)
!2467 = !DILocation(line: 105, column: 7, scope: !2408)
!2468 = !DILocation(line: 72, column: 19, scope: !2458)
!2469 = !DILocation(line: 105, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2408, file: !773, line: 105, column: 7)
!2471 = !DILocation(line: 107, column: 13, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2470, file: !773, line: 106, column: 5)
!2473 = !DILocation(line: 109, column: 5, scope: !2472)
!2474 = !DILocation(line: 112, column: 1, scope: !2408)
!2475 = !DISubprogram(name: "fclose", scope: !470, file: !470, line: 178, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2476 = !DISubprogram(name: "__freading", scope: !2477, file: !2477, line: 51, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2477 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2478 = !DISubprogram(name: "lseek", scope: !2129, file: !2129, line: 339, type: !2479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!235, !87, !235, !87}
!2481 = distinct !DISubprogram(name: "rpl_fflush", scope: !775, file: !775, line: 130, type: !2482, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2518)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!87, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2486)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2486, file: !213, line: 51, baseType: !87, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2486, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2486, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2486, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2486, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2486, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2486, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2486, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2486, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2486, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2486, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2486, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2486, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2486, file: !213, line: 70, baseType: !2502, size: 64, offset: 832)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2486, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2486, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2486, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2486, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2486, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2486, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2486, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2486, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2486, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2486, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2486, file: !213, line: 93, baseType: !2502, size: 64, offset: 1344)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2486, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2486, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2486, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2486, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2518 = !{!2519}
!2519 = !DILocalVariable(name: "stream", arg: 1, scope: !2481, file: !775, line: 130, type: !2484)
!2520 = !DILocation(line: 0, scope: !2481)
!2521 = !DILocation(line: 151, column: 14, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2481, file: !775, line: 151, column: 7)
!2523 = !DILocation(line: 151, column: 22, scope: !2522)
!2524 = !DILocation(line: 151, column: 27, scope: !2522)
!2525 = !DILocation(line: 151, column: 7, scope: !2481)
!2526 = !DILocation(line: 152, column: 12, scope: !2522)
!2527 = !DILocation(line: 152, column: 5, scope: !2522)
!2528 = !DILocalVariable(name: "fp", arg: 1, scope: !2529, file: !775, line: 42, type: !2484)
!2529 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !775, file: !775, line: 42, type: !2530, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2484}
!2532 = !{!2528}
!2533 = !DILocation(line: 0, scope: !2529, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 157, column: 3, scope: !2481)
!2535 = !DILocation(line: 44, column: 12, scope: !2536, inlinedAt: !2534)
!2536 = distinct !DILexicalBlock(scope: !2529, file: !775, line: 44, column: 7)
!2537 = !DILocation(line: 44, column: 19, scope: !2536, inlinedAt: !2534)
!2538 = !DILocation(line: 44, column: 7, scope: !2529, inlinedAt: !2534)
!2539 = !DILocation(line: 46, column: 5, scope: !2536, inlinedAt: !2534)
!2540 = !DILocation(line: 159, column: 10, scope: !2481)
!2541 = !DILocation(line: 159, column: 3, scope: !2481)
!2542 = !DILocation(line: 236, column: 1, scope: !2481)
!2543 = !DISubprogram(name: "fflush", scope: !470, file: !470, line: 230, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2544 = distinct !DISubprogram(name: "fpurge", scope: !778, file: !778, line: 32, type: !2545, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !2581)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!87, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2549)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2549, file: !213, line: 51, baseType: !87, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2549, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2549, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2549, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2549, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2549, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2549, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2549, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2549, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2549, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2549, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2549, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2549, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2549, file: !213, line: 70, baseType: !2565, size: 64, offset: 832)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2549, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2549, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2549, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2549, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2549, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2549, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2549, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2549, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2549, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2549, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2549, file: !213, line: 93, baseType: !2565, size: 64, offset: 1344)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2549, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2549, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2549, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2549, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2581 = !{!2582}
!2582 = !DILocalVariable(name: "fp", arg: 1, scope: !2544, file: !778, line: 32, type: !2547)
!2583 = !DILocation(line: 0, scope: !2544)
!2584 = !DILocation(line: 36, column: 3, scope: !2544)
!2585 = !DILocation(line: 38, column: 3, scope: !2544)
!2586 = !DISubprogram(name: "__fpurge", scope: !2477, file: !2477, line: 72, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2547}
!2589 = distinct !DISubprogram(name: "rpl_fseeko", scope: !780, file: !780, line: 28, type: !2590, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2626)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!87, !2592, !2342, !87}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2594)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2594, file: !213, line: 51, baseType: !87, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2594, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2594, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2594, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2594, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2594, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2594, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2594, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2594, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2594, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2594, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2594, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2594, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2594, file: !213, line: 70, baseType: !2610, size: 64, offset: 832)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2594, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2594, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2594, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2594, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2594, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2594, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2594, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2594, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2594, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2594, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2594, file: !213, line: 93, baseType: !2610, size: 64, offset: 1344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2594, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2594, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2594, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2594, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2626 = !{!2627, !2628, !2629, !2630}
!2627 = !DILocalVariable(name: "fp", arg: 1, scope: !2589, file: !780, line: 28, type: !2592)
!2628 = !DILocalVariable(name: "offset", arg: 2, scope: !2589, file: !780, line: 28, type: !2342)
!2629 = !DILocalVariable(name: "whence", arg: 3, scope: !2589, file: !780, line: 28, type: !87)
!2630 = !DILocalVariable(name: "pos", scope: !2631, file: !780, line: 123, type: !2342)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !780, line: 119, column: 5)
!2632 = distinct !DILexicalBlock(scope: !2589, file: !780, line: 55, column: 7)
!2633 = !DILocation(line: 0, scope: !2589)
!2634 = !DILocation(line: 55, column: 12, scope: !2632)
!2635 = !{!1292, !865, i64 16}
!2636 = !DILocation(line: 55, column: 33, scope: !2632)
!2637 = !{!1292, !865, i64 8}
!2638 = !DILocation(line: 55, column: 25, scope: !2632)
!2639 = !DILocation(line: 56, column: 7, scope: !2632)
!2640 = !DILocation(line: 56, column: 15, scope: !2632)
!2641 = !DILocation(line: 56, column: 37, scope: !2632)
!2642 = !{!1292, !865, i64 32}
!2643 = !DILocation(line: 56, column: 29, scope: !2632)
!2644 = !DILocation(line: 57, column: 7, scope: !2632)
!2645 = !DILocation(line: 57, column: 15, scope: !2632)
!2646 = !{!1292, !865, i64 72}
!2647 = !DILocation(line: 57, column: 29, scope: !2632)
!2648 = !DILocation(line: 55, column: 7, scope: !2589)
!2649 = !DILocation(line: 123, column: 26, scope: !2631)
!2650 = !DILocation(line: 123, column: 19, scope: !2631)
!2651 = !DILocation(line: 0, scope: !2631)
!2652 = !DILocation(line: 124, column: 15, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2631, file: !780, line: 124, column: 11)
!2654 = !DILocation(line: 124, column: 11, scope: !2631)
!2655 = !DILocation(line: 135, column: 19, scope: !2631)
!2656 = !DILocation(line: 136, column: 12, scope: !2631)
!2657 = !DILocation(line: 136, column: 20, scope: !2631)
!2658 = !{!1292, !1293, i64 144}
!2659 = !DILocation(line: 167, column: 7, scope: !2631)
!2660 = !DILocation(line: 169, column: 10, scope: !2589)
!2661 = !DILocation(line: 169, column: 3, scope: !2589)
!2662 = !DILocation(line: 170, column: 1, scope: !2589)
!2663 = !DISubprogram(name: "fseeko", scope: !470, file: !470, line: 736, type: !2664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!87, !2592, !235, !87}
!2666 = distinct !DISubprogram(name: "getprogname", scope: !782, file: !782, line: 54, type: !2667, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !873)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!136}
!2669 = !DILocation(line: 58, column: 10, scope: !2666)
!2670 = !DILocation(line: 58, column: 3, scope: !2666)
!2671 = distinct !DISubprogram(name: "set_program_name", scope: !516, file: !516, line: 37, type: !886, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DILocalVariable(name: "argv0", arg: 1, scope: !2671, file: !516, line: 37, type: !136)
!2674 = !DILocalVariable(name: "slash", scope: !2671, file: !516, line: 44, type: !136)
!2675 = !DILocalVariable(name: "base", scope: !2671, file: !516, line: 45, type: !136)
!2676 = !DILocation(line: 0, scope: !2671)
!2677 = !DILocation(line: 44, column: 23, scope: !2671)
!2678 = !DILocation(line: 45, column: 22, scope: !2671)
!2679 = !DILocation(line: 46, column: 17, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2671, file: !516, line: 46, column: 7)
!2681 = !DILocation(line: 46, column: 9, scope: !2680)
!2682 = !DILocation(line: 46, column: 25, scope: !2680)
!2683 = !DILocation(line: 46, column: 40, scope: !2680)
!2684 = !DILocalVariable(name: "__s1", arg: 1, scope: !2685, file: !947, line: 974, type: !1079)
!2685 = distinct !DISubprogram(name: "memeq", scope: !947, file: !947, line: 974, type: !2686, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!196, !1079, !1079, !133}
!2688 = !{!2684, !2689, !2690}
!2689 = !DILocalVariable(name: "__s2", arg: 2, scope: !2685, file: !947, line: 974, type: !1079)
!2690 = !DILocalVariable(name: "__n", arg: 3, scope: !2685, file: !947, line: 974, type: !133)
!2691 = !DILocation(line: 0, scope: !2685, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 46, column: 28, scope: !2680)
!2693 = !DILocation(line: 976, column: 11, scope: !2685, inlinedAt: !2692)
!2694 = !DILocation(line: 976, column: 10, scope: !2685, inlinedAt: !2692)
!2695 = !DILocation(line: 46, column: 7, scope: !2671)
!2696 = !DILocation(line: 49, column: 11, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !516, line: 49, column: 11)
!2698 = distinct !DILexicalBlock(scope: !2680, file: !516, line: 47, column: 5)
!2699 = !DILocation(line: 49, column: 36, scope: !2697)
!2700 = !DILocation(line: 49, column: 11, scope: !2698)
!2701 = !DILocation(line: 65, column: 16, scope: !2671)
!2702 = !DILocation(line: 71, column: 27, scope: !2671)
!2703 = !DILocation(line: 74, column: 33, scope: !2671)
!2704 = !DILocation(line: 76, column: 1, scope: !2671)
!2705 = !DISubprogram(name: "strrchr", scope: !1051, file: !1051, line: 273, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2706 = !DILocation(line: 0, scope: !525)
!2707 = !DILocation(line: 40, column: 29, scope: !525)
!2708 = !DILocation(line: 41, column: 19, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !525, file: !526, line: 41, column: 7)
!2710 = !DILocation(line: 41, column: 7, scope: !525)
!2711 = !DILocation(line: 47, column: 3, scope: !525)
!2712 = !DILocation(line: 48, column: 3, scope: !525)
!2713 = !DILocation(line: 48, column: 13, scope: !525)
!2714 = !DILocalVariable(name: "ps", arg: 1, scope: !2715, file: !2716, line: 1135, type: !2719)
!2715 = distinct !DISubprogram(name: "mbszero", scope: !2716, file: !2716, line: 1135, type: !2717, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2720)
!2716 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2720 = !{!2714}
!2721 = !DILocation(line: 0, scope: !2715, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 48, column: 18, scope: !525)
!2723 = !DILocalVariable(name: "__dest", arg: 1, scope: !2724, file: !1266, line: 57, type: !131)
!2724 = distinct !DISubprogram(name: "memset", scope: !1266, file: !1266, line: 57, type: !2725, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!131, !131, !87, !133}
!2727 = !{!2723, !2728, !2729}
!2728 = !DILocalVariable(name: "__ch", arg: 2, scope: !2724, file: !1266, line: 57, type: !87)
!2729 = !DILocalVariable(name: "__len", arg: 3, scope: !2724, file: !1266, line: 57, type: !133)
!2730 = !DILocation(line: 0, scope: !2724, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1137, column: 3, scope: !2715, inlinedAt: !2722)
!2732 = !DILocation(line: 59, column: 10, scope: !2724, inlinedAt: !2731)
!2733 = !DILocation(line: 49, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !525, file: !526, line: 49, column: 7)
!2735 = !DILocation(line: 49, column: 39, scope: !2734)
!2736 = !DILocation(line: 49, column: 44, scope: !2734)
!2737 = !DILocation(line: 54, column: 1, scope: !525)
!2738 = !DISubprogram(name: "mbrtoc32", scope: !537, file: !537, line: 57, type: !2739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!133, !2741, !925, !133, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2719)
!2744 = distinct !DISubprogram(name: "clone_quoting_options", scope: !556, file: !556, line: 113, type: !2745, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2748)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!2747, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!2748 = !{!2749, !2750, !2751}
!2749 = !DILocalVariable(name: "o", arg: 1, scope: !2744, file: !556, line: 113, type: !2747)
!2750 = !DILocalVariable(name: "saved_errno", scope: !2744, file: !556, line: 115, type: !87)
!2751 = !DILocalVariable(name: "p", scope: !2744, file: !556, line: 116, type: !2747)
!2752 = !DILocation(line: 0, scope: !2744)
!2753 = !DILocation(line: 115, column: 21, scope: !2744)
!2754 = !DILocation(line: 116, column: 40, scope: !2744)
!2755 = !DILocation(line: 116, column: 31, scope: !2744)
!2756 = !DILocation(line: 118, column: 9, scope: !2744)
!2757 = !DILocation(line: 119, column: 3, scope: !2744)
!2758 = distinct !DISubprogram(name: "get_quoting_style", scope: !556, file: !556, line: 124, type: !2759, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2763)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!91, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!2763 = !{!2764}
!2764 = !DILocalVariable(name: "o", arg: 1, scope: !2758, file: !556, line: 124, type: !2761)
!2765 = !DILocation(line: 0, scope: !2758)
!2766 = !DILocation(line: 126, column: 11, scope: !2758)
!2767 = !DILocation(line: 126, column: 46, scope: !2758)
!2768 = !{!2769, !866, i64 0}
!2769 = !{!"quoting_options", !866, i64 0, !935, i64 4, !866, i64 8, !865, i64 40, !865, i64 48}
!2770 = !DILocation(line: 126, column: 3, scope: !2758)
!2771 = distinct !DISubprogram(name: "set_quoting_style", scope: !556, file: !556, line: 132, type: !2772, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2747, !91}
!2774 = !{!2775, !2776}
!2775 = !DILocalVariable(name: "o", arg: 1, scope: !2771, file: !556, line: 132, type: !2747)
!2776 = !DILocalVariable(name: "s", arg: 2, scope: !2771, file: !556, line: 132, type: !91)
!2777 = !DILocation(line: 0, scope: !2771)
!2778 = !DILocation(line: 134, column: 4, scope: !2771)
!2779 = !DILocation(line: 134, column: 45, scope: !2771)
!2780 = !DILocation(line: 135, column: 1, scope: !2771)
!2781 = distinct !DISubprogram(name: "set_char_quoting", scope: !556, file: !556, line: 143, type: !2782, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!87, !2747, !4, !87}
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2791, !2792}
!2785 = !DILocalVariable(name: "o", arg: 1, scope: !2781, file: !556, line: 143, type: !2747)
!2786 = !DILocalVariable(name: "c", arg: 2, scope: !2781, file: !556, line: 143, type: !4)
!2787 = !DILocalVariable(name: "i", arg: 3, scope: !2781, file: !556, line: 143, type: !87)
!2788 = !DILocalVariable(name: "uc", scope: !2781, file: !556, line: 145, type: !138)
!2789 = !DILocalVariable(name: "p", scope: !2781, file: !556, line: 146, type: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2791 = !DILocalVariable(name: "shift", scope: !2781, file: !556, line: 148, type: !87)
!2792 = !DILocalVariable(name: "r", scope: !2781, file: !556, line: 149, type: !78)
!2793 = !DILocation(line: 0, scope: !2781)
!2794 = !DILocation(line: 147, column: 6, scope: !2781)
!2795 = !DILocation(line: 147, column: 41, scope: !2781)
!2796 = !DILocation(line: 147, column: 62, scope: !2781)
!2797 = !DILocation(line: 147, column: 57, scope: !2781)
!2798 = !DILocation(line: 148, column: 15, scope: !2781)
!2799 = !DILocation(line: 149, column: 21, scope: !2781)
!2800 = !DILocation(line: 149, column: 24, scope: !2781)
!2801 = !DILocation(line: 149, column: 34, scope: !2781)
!2802 = !DILocation(line: 150, column: 19, scope: !2781)
!2803 = !DILocation(line: 150, column: 24, scope: !2781)
!2804 = !DILocation(line: 150, column: 6, scope: !2781)
!2805 = !DILocation(line: 151, column: 3, scope: !2781)
!2806 = distinct !DISubprogram(name: "set_quoting_flags", scope: !556, file: !556, line: 159, type: !2807, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!87, !2747, !87}
!2809 = !{!2810, !2811, !2812}
!2810 = !DILocalVariable(name: "o", arg: 1, scope: !2806, file: !556, line: 159, type: !2747)
!2811 = !DILocalVariable(name: "i", arg: 2, scope: !2806, file: !556, line: 159, type: !87)
!2812 = !DILocalVariable(name: "r", scope: !2806, file: !556, line: 163, type: !87)
!2813 = !DILocation(line: 0, scope: !2806)
!2814 = !DILocation(line: 161, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2806, file: !556, line: 161, column: 7)
!2816 = !DILocation(line: 161, column: 7, scope: !2806)
!2817 = !DILocation(line: 163, column: 14, scope: !2806)
!2818 = !{!2769, !935, i64 4}
!2819 = !DILocation(line: 164, column: 12, scope: !2806)
!2820 = !DILocation(line: 165, column: 3, scope: !2806)
!2821 = distinct !DISubprogram(name: "set_custom_quoting", scope: !556, file: !556, line: 169, type: !2822, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !2747, !136, !136}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "o", arg: 1, scope: !2821, file: !556, line: 169, type: !2747)
!2826 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2821, file: !556, line: 170, type: !136)
!2827 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2821, file: !556, line: 170, type: !136)
!2828 = !DILocation(line: 0, scope: !2821)
!2829 = !DILocation(line: 172, column: 8, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2821, file: !556, line: 172, column: 7)
!2831 = !DILocation(line: 172, column: 7, scope: !2821)
!2832 = !DILocation(line: 174, column: 12, scope: !2821)
!2833 = !DILocation(line: 175, column: 8, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2821, file: !556, line: 175, column: 7)
!2835 = !DILocation(line: 175, column: 19, scope: !2834)
!2836 = !DILocation(line: 176, column: 5, scope: !2834)
!2837 = !DILocation(line: 177, column: 6, scope: !2821)
!2838 = !DILocation(line: 177, column: 17, scope: !2821)
!2839 = !{!2769, !865, i64 40}
!2840 = !DILocation(line: 178, column: 6, scope: !2821)
!2841 = !DILocation(line: 178, column: 18, scope: !2821)
!2842 = !{!2769, !865, i64 48}
!2843 = !DILocation(line: 179, column: 1, scope: !2821)
!2844 = !DISubprogram(name: "abort", scope: !1055, file: !1055, line: 598, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2845 = distinct !DISubprogram(name: "quotearg_buffer", scope: !556, file: !556, line: 774, type: !2846, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!133, !130, !133, !136, !133, !2761}
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2849 = !DILocalVariable(name: "buffer", arg: 1, scope: !2845, file: !556, line: 774, type: !130)
!2850 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2845, file: !556, line: 774, type: !133)
!2851 = !DILocalVariable(name: "arg", arg: 3, scope: !2845, file: !556, line: 775, type: !136)
!2852 = !DILocalVariable(name: "argsize", arg: 4, scope: !2845, file: !556, line: 775, type: !133)
!2853 = !DILocalVariable(name: "o", arg: 5, scope: !2845, file: !556, line: 776, type: !2761)
!2854 = !DILocalVariable(name: "p", scope: !2845, file: !556, line: 778, type: !2761)
!2855 = !DILocalVariable(name: "saved_errno", scope: !2845, file: !556, line: 779, type: !87)
!2856 = !DILocalVariable(name: "r", scope: !2845, file: !556, line: 780, type: !133)
!2857 = !DILocation(line: 0, scope: !2845)
!2858 = !DILocation(line: 778, column: 37, scope: !2845)
!2859 = !DILocation(line: 779, column: 21, scope: !2845)
!2860 = !DILocation(line: 781, column: 43, scope: !2845)
!2861 = !DILocation(line: 781, column: 53, scope: !2845)
!2862 = !DILocation(line: 781, column: 63, scope: !2845)
!2863 = !DILocation(line: 782, column: 43, scope: !2845)
!2864 = !DILocation(line: 782, column: 58, scope: !2845)
!2865 = !DILocation(line: 780, column: 14, scope: !2845)
!2866 = !DILocation(line: 783, column: 9, scope: !2845)
!2867 = !DILocation(line: 784, column: 3, scope: !2845)
!2868 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !556, file: !556, line: 251, type: !2869, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2873)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!133, !130, !133, !136, !133, !91, !87, !2871, !136, !136}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2898, !2900, !2903, !2904, !2905, !2906, !2909, !2910, !2913, !2917, !2918, !2926, !2929, !2930, !2932, !2933, !2934, !2935}
!2874 = !DILocalVariable(name: "buffer", arg: 1, scope: !2868, file: !556, line: 251, type: !130)
!2875 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2868, file: !556, line: 251, type: !133)
!2876 = !DILocalVariable(name: "arg", arg: 3, scope: !2868, file: !556, line: 252, type: !136)
!2877 = !DILocalVariable(name: "argsize", arg: 4, scope: !2868, file: !556, line: 252, type: !133)
!2878 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2868, file: !556, line: 253, type: !91)
!2879 = !DILocalVariable(name: "flags", arg: 6, scope: !2868, file: !556, line: 253, type: !87)
!2880 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2868, file: !556, line: 254, type: !2871)
!2881 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2868, file: !556, line: 255, type: !136)
!2882 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2868, file: !556, line: 256, type: !136)
!2883 = !DILocalVariable(name: "unibyte_locale", scope: !2868, file: !556, line: 258, type: !196)
!2884 = !DILocalVariable(name: "len", scope: !2868, file: !556, line: 260, type: !133)
!2885 = !DILocalVariable(name: "orig_buffersize", scope: !2868, file: !556, line: 261, type: !133)
!2886 = !DILocalVariable(name: "quote_string", scope: !2868, file: !556, line: 262, type: !136)
!2887 = !DILocalVariable(name: "quote_string_len", scope: !2868, file: !556, line: 263, type: !133)
!2888 = !DILocalVariable(name: "backslash_escapes", scope: !2868, file: !556, line: 264, type: !196)
!2889 = !DILocalVariable(name: "elide_outer_quotes", scope: !2868, file: !556, line: 265, type: !196)
!2890 = !DILocalVariable(name: "encountered_single_quote", scope: !2868, file: !556, line: 266, type: !196)
!2891 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2868, file: !556, line: 267, type: !196)
!2892 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2868, file: !556, line: 309, type: !196)
!2893 = !DILocalVariable(name: "lq", scope: !2894, file: !556, line: 361, type: !136)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !556, line: 361, column: 11)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !556, line: 360, column: 13)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !556, line: 333, column: 7)
!2897 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 312, column: 5)
!2898 = !DILocalVariable(name: "i", scope: !2899, file: !556, line: 395, type: !133)
!2899 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 395, column: 3)
!2900 = !DILocalVariable(name: "is_right_quote", scope: !2901, file: !556, line: 397, type: !196)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !556, line: 396, column: 5)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !556, line: 395, column: 3)
!2903 = !DILocalVariable(name: "escaping", scope: !2901, file: !556, line: 398, type: !196)
!2904 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2901, file: !556, line: 399, type: !196)
!2905 = !DILocalVariable(name: "c", scope: !2901, file: !556, line: 417, type: !138)
!2906 = !DILocalVariable(name: "m", scope: !2907, file: !556, line: 598, type: !133)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 596, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2901, file: !556, line: 419, column: 9)
!2909 = !DILocalVariable(name: "printable", scope: !2907, file: !556, line: 600, type: !196)
!2910 = !DILocalVariable(name: "mbs", scope: !2911, file: !556, line: 609, type: !624)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !556, line: 608, column: 15)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !556, line: 602, column: 17)
!2913 = !DILocalVariable(name: "w", scope: !2914, file: !556, line: 618, type: !536)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !556, line: 617, column: 19)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !556, line: 616, column: 17)
!2916 = distinct !DILexicalBlock(scope: !2911, file: !556, line: 616, column: 17)
!2917 = !DILocalVariable(name: "bytes", scope: !2914, file: !556, line: 619, type: !133)
!2918 = !DILocalVariable(name: "j", scope: !2919, file: !556, line: 648, type: !133)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !556, line: 648, column: 29)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !556, line: 647, column: 27)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !556, line: 645, column: 29)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !556, line: 636, column: 23)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !556, line: 628, column: 30)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !556, line: 623, column: 30)
!2925 = distinct !DILexicalBlock(scope: !2914, file: !556, line: 621, column: 25)
!2926 = !DILocalVariable(name: "ilim", scope: !2927, file: !556, line: 674, type: !133)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !556, line: 671, column: 15)
!2928 = distinct !DILexicalBlock(scope: !2907, file: !556, line: 670, column: 17)
!2929 = !DILabel(scope: !2868, name: "process_input", file: !556, line: 308)
!2930 = !DILabel(scope: !2931, name: "c_and_shell_escape", file: !556, line: 502)
!2931 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 478, column: 9)
!2932 = !DILabel(scope: !2931, name: "c_escape", file: !556, line: 507)
!2933 = !DILabel(scope: !2901, name: "store_escape", file: !556, line: 709)
!2934 = !DILabel(scope: !2901, name: "store_c", file: !556, line: 712)
!2935 = !DILabel(scope: !2868, name: "force_outer_quoting_style", file: !556, line: 753)
!2936 = !DILocation(line: 0, scope: !2868)
!2937 = !DILocation(line: 258, column: 25, scope: !2868)
!2938 = !DILocation(line: 258, column: 36, scope: !2868)
!2939 = !DILocation(line: 267, column: 3, scope: !2868)
!2940 = !DILocation(line: 261, column: 10, scope: !2868)
!2941 = !DILocation(line: 262, column: 15, scope: !2868)
!2942 = !DILocation(line: 263, column: 10, scope: !2868)
!2943 = !DILocation(line: 308, column: 2, scope: !2868)
!2944 = !DILocation(line: 311, column: 3, scope: !2868)
!2945 = !DILocation(line: 318, column: 11, scope: !2897)
!2946 = !DILocation(line: 319, column: 9, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !556, line: 319, column: 9)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !556, line: 319, column: 9)
!2949 = distinct !DILexicalBlock(scope: !2897, file: !556, line: 318, column: 11)
!2950 = !DILocation(line: 319, column: 9, scope: !2948)
!2951 = !DILocation(line: 0, scope: !615, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 357, column: 26, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !556, line: 335, column: 11)
!2954 = distinct !DILexicalBlock(scope: !2896, file: !556, line: 334, column: 13)
!2955 = !DILocation(line: 199, column: 29, scope: !615, inlinedAt: !2952)
!2956 = !DILocation(line: 201, column: 19, scope: !2957, inlinedAt: !2952)
!2957 = distinct !DILexicalBlock(scope: !615, file: !556, line: 201, column: 7)
!2958 = !DILocation(line: 201, column: 7, scope: !615, inlinedAt: !2952)
!2959 = !DILocation(line: 229, column: 3, scope: !615, inlinedAt: !2952)
!2960 = !DILocation(line: 230, column: 3, scope: !615, inlinedAt: !2952)
!2961 = !DILocation(line: 230, column: 13, scope: !615, inlinedAt: !2952)
!2962 = !DILocalVariable(name: "ps", arg: 1, scope: !2963, file: !2716, line: 1135, type: !2966)
!2963 = distinct !DISubprogram(name: "mbszero", scope: !2716, file: !2716, line: 1135, type: !2964, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2967)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!2967 = !{!2962}
!2968 = !DILocation(line: 0, scope: !2963, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 230, column: 18, scope: !615, inlinedAt: !2952)
!2970 = !DILocalVariable(name: "__dest", arg: 1, scope: !2971, file: !1266, line: 57, type: !131)
!2971 = distinct !DISubprogram(name: "memset", scope: !1266, file: !1266, line: 57, type: !2725, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2972)
!2972 = !{!2970, !2973, !2974}
!2973 = !DILocalVariable(name: "__ch", arg: 2, scope: !2971, file: !1266, line: 57, type: !87)
!2974 = !DILocalVariable(name: "__len", arg: 3, scope: !2971, file: !1266, line: 57, type: !133)
!2975 = !DILocation(line: 0, scope: !2971, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 1137, column: 3, scope: !2963, inlinedAt: !2969)
!2977 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !2976)
!2978 = !DILocation(line: 231, column: 7, scope: !2979, inlinedAt: !2952)
!2979 = distinct !DILexicalBlock(scope: !615, file: !556, line: 231, column: 7)
!2980 = !DILocation(line: 231, column: 40, scope: !2979, inlinedAt: !2952)
!2981 = !DILocation(line: 231, column: 45, scope: !2979, inlinedAt: !2952)
!2982 = !DILocation(line: 235, column: 1, scope: !615, inlinedAt: !2952)
!2983 = !DILocation(line: 0, scope: !615, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 358, column: 27, scope: !2953)
!2985 = !DILocation(line: 199, column: 29, scope: !615, inlinedAt: !2984)
!2986 = !DILocation(line: 201, column: 19, scope: !2957, inlinedAt: !2984)
!2987 = !DILocation(line: 201, column: 7, scope: !615, inlinedAt: !2984)
!2988 = !DILocation(line: 229, column: 3, scope: !615, inlinedAt: !2984)
!2989 = !DILocation(line: 230, column: 3, scope: !615, inlinedAt: !2984)
!2990 = !DILocation(line: 230, column: 13, scope: !615, inlinedAt: !2984)
!2991 = !DILocation(line: 0, scope: !2963, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 230, column: 18, scope: !615, inlinedAt: !2984)
!2993 = !DILocation(line: 0, scope: !2971, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1137, column: 3, scope: !2963, inlinedAt: !2992)
!2995 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !2994)
!2996 = !DILocation(line: 231, column: 7, scope: !2979, inlinedAt: !2984)
!2997 = !DILocation(line: 231, column: 40, scope: !2979, inlinedAt: !2984)
!2998 = !DILocation(line: 231, column: 45, scope: !2979, inlinedAt: !2984)
!2999 = !DILocation(line: 235, column: 1, scope: !615, inlinedAt: !2984)
!3000 = !DILocation(line: 360, column: 13, scope: !2896)
!3001 = !DILocation(line: 0, scope: !2894)
!3002 = !DILocation(line: 361, column: 45, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2894, file: !556, line: 361, column: 11)
!3004 = !DILocation(line: 361, column: 11, scope: !2894)
!3005 = !DILocation(line: 362, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !556, line: 362, column: 13)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !556, line: 362, column: 13)
!3008 = !DILocation(line: 362, column: 13, scope: !3007)
!3009 = !DILocation(line: 361, column: 52, scope: !3003)
!3010 = distinct !{!3010, !3004, !3011, !981}
!3011 = !DILocation(line: 362, column: 13, scope: !2894)
!3012 = !DILocation(line: 260, column: 10, scope: !2868)
!3013 = !DILocation(line: 365, column: 28, scope: !2896)
!3014 = !DILocation(line: 367, column: 7, scope: !2897)
!3015 = !DILocation(line: 370, column: 7, scope: !2897)
!3016 = !DILocation(line: 376, column: 11, scope: !2897)
!3017 = !DILocation(line: 381, column: 11, scope: !2897)
!3018 = !DILocation(line: 382, column: 9, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !556, line: 382, column: 9)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !556, line: 382, column: 9)
!3021 = distinct !DILexicalBlock(scope: !2897, file: !556, line: 381, column: 11)
!3022 = !DILocation(line: 382, column: 9, scope: !3020)
!3023 = !DILocation(line: 389, column: 7, scope: !2897)
!3024 = !DILocation(line: 392, column: 7, scope: !2897)
!3025 = !DILocation(line: 0, scope: !2899)
!3026 = !DILocation(line: 395, column: 8, scope: !2899)
!3027 = !DILocation(line: 395, scope: !2899)
!3028 = !DILocation(line: 395, column: 34, scope: !2902)
!3029 = !DILocation(line: 395, column: 26, scope: !2902)
!3030 = !DILocation(line: 395, column: 48, scope: !2902)
!3031 = !DILocation(line: 395, column: 55, scope: !2902)
!3032 = !DILocation(line: 395, column: 3, scope: !2899)
!3033 = !DILocation(line: 395, column: 67, scope: !2902)
!3034 = !DILocation(line: 0, scope: !2901)
!3035 = !DILocation(line: 402, column: 11, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2901, file: !556, line: 401, column: 11)
!3037 = !DILocation(line: 404, column: 17, scope: !3036)
!3038 = !DILocation(line: 405, column: 39, scope: !3036)
!3039 = !DILocation(line: 409, column: 32, scope: !3036)
!3040 = !DILocation(line: 405, column: 19, scope: !3036)
!3041 = !DILocation(line: 405, column: 15, scope: !3036)
!3042 = !DILocation(line: 410, column: 11, scope: !3036)
!3043 = !DILocation(line: 410, column: 25, scope: !3036)
!3044 = !DILocalVariable(name: "__s1", arg: 1, scope: !3045, file: !947, line: 974, type: !1079)
!3045 = distinct !DISubprogram(name: "memeq", scope: !947, file: !947, line: 974, type: !2686, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3046)
!3046 = !{!3044, !3047, !3048}
!3047 = !DILocalVariable(name: "__s2", arg: 2, scope: !3045, file: !947, line: 974, type: !1079)
!3048 = !DILocalVariable(name: "__n", arg: 3, scope: !3045, file: !947, line: 974, type: !133)
!3049 = !DILocation(line: 0, scope: !3045, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 410, column: 14, scope: !3036)
!3051 = !DILocation(line: 976, column: 11, scope: !3045, inlinedAt: !3050)
!3052 = !DILocation(line: 976, column: 10, scope: !3045, inlinedAt: !3050)
!3053 = !DILocation(line: 401, column: 11, scope: !2901)
!3054 = !DILocation(line: 417, column: 25, scope: !2901)
!3055 = !DILocation(line: 418, column: 7, scope: !2901)
!3056 = !DILocation(line: 421, column: 15, scope: !2908)
!3057 = !DILocation(line: 423, column: 15, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !556, line: 423, column: 15)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !556, line: 422, column: 13)
!3060 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 421, column: 15)
!3061 = !DILocation(line: 423, column: 15, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !556, line: 423, column: 15)
!3063 = !DILocation(line: 423, column: 15, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !556, line: 423, column: 15)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !556, line: 423, column: 15)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !556, line: 423, column: 15)
!3067 = !DILocation(line: 423, column: 15, scope: !3065)
!3068 = !DILocation(line: 423, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !556, line: 423, column: 15)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !556, line: 423, column: 15)
!3071 = !DILocation(line: 423, column: 15, scope: !3070)
!3072 = !DILocation(line: 423, column: 15, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !556, line: 423, column: 15)
!3074 = distinct !DILexicalBlock(scope: !3066, file: !556, line: 423, column: 15)
!3075 = !DILocation(line: 423, column: 15, scope: !3074)
!3076 = !DILocation(line: 423, column: 15, scope: !3066)
!3077 = !DILocation(line: 423, column: 15, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !556, line: 423, column: 15)
!3079 = distinct !DILexicalBlock(scope: !3058, file: !556, line: 423, column: 15)
!3080 = !DILocation(line: 423, column: 15, scope: !3079)
!3081 = !DILocation(line: 431, column: 19, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3059, file: !556, line: 430, column: 19)
!3083 = !DILocation(line: 431, column: 24, scope: !3082)
!3084 = !DILocation(line: 431, column: 28, scope: !3082)
!3085 = !DILocation(line: 431, column: 38, scope: !3082)
!3086 = !DILocation(line: 431, column: 48, scope: !3082)
!3087 = !DILocation(line: 431, column: 59, scope: !3082)
!3088 = !DILocation(line: 433, column: 19, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !556, line: 433, column: 19)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !556, line: 433, column: 19)
!3091 = distinct !DILexicalBlock(scope: !3082, file: !556, line: 432, column: 17)
!3092 = !DILocation(line: 433, column: 19, scope: !3090)
!3093 = !DILocation(line: 434, column: 19, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !556, line: 434, column: 19)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !556, line: 434, column: 19)
!3096 = !DILocation(line: 434, column: 19, scope: !3095)
!3097 = !DILocation(line: 435, column: 17, scope: !3091)
!3098 = !DILocation(line: 442, column: 20, scope: !3060)
!3099 = !DILocation(line: 447, column: 11, scope: !2908)
!3100 = !DILocation(line: 450, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 448, column: 13)
!3102 = !DILocation(line: 456, column: 19, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3101, file: !556, line: 455, column: 19)
!3104 = !DILocation(line: 456, column: 24, scope: !3103)
!3105 = !DILocation(line: 456, column: 28, scope: !3103)
!3106 = !DILocation(line: 456, column: 38, scope: !3103)
!3107 = !DILocation(line: 456, column: 47, scope: !3103)
!3108 = !DILocation(line: 456, column: 41, scope: !3103)
!3109 = !DILocation(line: 456, column: 52, scope: !3103)
!3110 = !DILocation(line: 455, column: 19, scope: !3101)
!3111 = !DILocation(line: 457, column: 25, scope: !3103)
!3112 = !DILocation(line: 457, column: 17, scope: !3103)
!3113 = !DILocation(line: 464, column: 25, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3103, file: !556, line: 458, column: 19)
!3115 = !DILocation(line: 468, column: 21, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !556, line: 468, column: 21)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !556, line: 468, column: 21)
!3118 = !DILocation(line: 468, column: 21, scope: !3117)
!3119 = !DILocation(line: 469, column: 21, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !556, line: 469, column: 21)
!3121 = distinct !DILexicalBlock(scope: !3114, file: !556, line: 469, column: 21)
!3122 = !DILocation(line: 469, column: 21, scope: !3121)
!3123 = !DILocation(line: 470, column: 21, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !556, line: 470, column: 21)
!3125 = distinct !DILexicalBlock(scope: !3114, file: !556, line: 470, column: 21)
!3126 = !DILocation(line: 470, column: 21, scope: !3125)
!3127 = !DILocation(line: 471, column: 21, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !556, line: 471, column: 21)
!3129 = distinct !DILexicalBlock(scope: !3114, file: !556, line: 471, column: 21)
!3130 = !DILocation(line: 471, column: 21, scope: !3129)
!3131 = !DILocation(line: 472, column: 21, scope: !3114)
!3132 = !DILocation(line: 482, column: 33, scope: !2931)
!3133 = !DILocation(line: 483, column: 33, scope: !2931)
!3134 = !DILocation(line: 485, column: 33, scope: !2931)
!3135 = !DILocation(line: 486, column: 33, scope: !2931)
!3136 = !DILocation(line: 487, column: 33, scope: !2931)
!3137 = !DILocation(line: 490, column: 17, scope: !2931)
!3138 = !DILocation(line: 492, column: 21, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !556, line: 491, column: 15)
!3140 = distinct !DILexicalBlock(scope: !2931, file: !556, line: 490, column: 17)
!3141 = !DILocation(line: 499, column: 35, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !2931, file: !556, line: 499, column: 17)
!3143 = !DILocation(line: 0, scope: !2931)
!3144 = !DILocation(line: 502, column: 11, scope: !2931)
!3145 = !DILocation(line: 504, column: 17, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !2931, file: !556, line: 503, column: 17)
!3147 = !DILocation(line: 507, column: 11, scope: !2931)
!3148 = !DILocation(line: 508, column: 17, scope: !2931)
!3149 = !DILocation(line: 517, column: 15, scope: !2908)
!3150 = !DILocation(line: 517, column: 40, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 517, column: 15)
!3152 = !DILocation(line: 517, column: 47, scope: !3151)
!3153 = !DILocation(line: 517, column: 18, scope: !3151)
!3154 = !DILocation(line: 521, column: 17, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 521, column: 15)
!3156 = !DILocation(line: 521, column: 15, scope: !2908)
!3157 = !DILocation(line: 525, column: 11, scope: !2908)
!3158 = !DILocation(line: 537, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 536, column: 15)
!3160 = !DILocation(line: 536, column: 15, scope: !2908)
!3161 = !DILocation(line: 544, column: 15, scope: !2908)
!3162 = !DILocation(line: 546, column: 19, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !556, line: 545, column: 13)
!3164 = distinct !DILexicalBlock(scope: !2908, file: !556, line: 544, column: 15)
!3165 = !DILocation(line: 549, column: 19, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !556, line: 549, column: 19)
!3167 = !DILocation(line: 549, column: 30, scope: !3166)
!3168 = !DILocation(line: 558, column: 15, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !556, line: 558, column: 15)
!3170 = distinct !DILexicalBlock(scope: !3163, file: !556, line: 558, column: 15)
!3171 = !DILocation(line: 558, column: 15, scope: !3170)
!3172 = !DILocation(line: 559, column: 15, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !556, line: 559, column: 15)
!3174 = distinct !DILexicalBlock(scope: !3163, file: !556, line: 559, column: 15)
!3175 = !DILocation(line: 559, column: 15, scope: !3174)
!3176 = !DILocation(line: 560, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !556, line: 560, column: 15)
!3178 = distinct !DILexicalBlock(scope: !3163, file: !556, line: 560, column: 15)
!3179 = !DILocation(line: 560, column: 15, scope: !3178)
!3180 = !DILocation(line: 562, column: 13, scope: !3163)
!3181 = !DILocation(line: 602, column: 17, scope: !2907)
!3182 = !DILocation(line: 0, scope: !2907)
!3183 = !DILocation(line: 605, column: 29, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !2912, file: !556, line: 603, column: 15)
!3185 = !DILocation(line: 605, column: 41, scope: !3184)
!3186 = !DILocation(line: 606, column: 15, scope: !3184)
!3187 = !DILocation(line: 609, column: 17, scope: !2911)
!3188 = !DILocation(line: 609, column: 27, scope: !2911)
!3189 = !DILocation(line: 0, scope: !2963, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 609, column: 32, scope: !2911)
!3191 = !DILocation(line: 0, scope: !2971, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1137, column: 3, scope: !2963, inlinedAt: !3190)
!3193 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !3192)
!3194 = !DILocation(line: 613, column: 29, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !2911, file: !556, line: 613, column: 21)
!3196 = !DILocation(line: 613, column: 21, scope: !2911)
!3197 = !DILocation(line: 614, column: 29, scope: !3195)
!3198 = !DILocation(line: 614, column: 19, scope: !3195)
!3199 = !DILocation(line: 618, column: 21, scope: !2914)
!3200 = !DILocation(line: 620, column: 54, scope: !2914)
!3201 = !DILocation(line: 0, scope: !2914)
!3202 = !DILocation(line: 619, column: 36, scope: !2914)
!3203 = !DILocation(line: 621, column: 25, scope: !2914)
!3204 = !DILocation(line: 631, column: 38, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !2923, file: !556, line: 629, column: 23)
!3206 = !DILocation(line: 631, column: 48, scope: !3205)
!3207 = !DILocation(line: 626, column: 25, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !2924, file: !556, line: 624, column: 23)
!3209 = !DILocation(line: 631, column: 51, scope: !3205)
!3210 = !DILocation(line: 631, column: 25, scope: !3205)
!3211 = !DILocation(line: 632, column: 28, scope: !3205)
!3212 = !DILocation(line: 631, column: 34, scope: !3205)
!3213 = distinct !{!3213, !3210, !3211, !981}
!3214 = !DILocation(line: 646, column: 29, scope: !2921)
!3215 = !DILocation(line: 0, scope: !2919)
!3216 = !DILocation(line: 649, column: 49, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !2919, file: !556, line: 648, column: 29)
!3218 = !DILocation(line: 649, column: 39, scope: !3217)
!3219 = !DILocation(line: 649, column: 31, scope: !3217)
!3220 = !DILocation(line: 648, column: 60, scope: !3217)
!3221 = !DILocation(line: 648, column: 50, scope: !3217)
!3222 = !DILocation(line: 648, column: 29, scope: !2919)
!3223 = distinct !{!3223, !3222, !3224, !981}
!3224 = !DILocation(line: 654, column: 33, scope: !2919)
!3225 = !DILocation(line: 657, column: 43, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2922, file: !556, line: 657, column: 29)
!3227 = !DILocalVariable(name: "wc", arg: 1, scope: !3228, file: !3229, line: 865, type: !3232)
!3228 = distinct !DISubprogram(name: "c32isprint", scope: !3229, file: !3229, line: 865, type: !3230, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3234)
!3229 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!87, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3233, line: 20, baseType: !78)
!3233 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3234 = !{!3227}
!3235 = !DILocation(line: 0, scope: !3228, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 657, column: 31, scope: !3226)
!3237 = !DILocation(line: 871, column: 10, scope: !3228, inlinedAt: !3236)
!3238 = !DILocation(line: 657, column: 31, scope: !3226)
!3239 = !DILocation(line: 664, column: 23, scope: !2914)
!3240 = !DILocation(line: 665, column: 19, scope: !2915)
!3241 = !DILocation(line: 666, column: 15, scope: !2912)
!3242 = !DILocation(line: 753, column: 2, scope: !2868)
!3243 = !DILocation(line: 756, column: 51, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 756, column: 7)
!3245 = !DILocation(line: 0, scope: !2912)
!3246 = !DILocation(line: 670, column: 19, scope: !2928)
!3247 = !DILocation(line: 670, column: 23, scope: !2928)
!3248 = !DILocation(line: 674, column: 33, scope: !2927)
!3249 = !DILocation(line: 0, scope: !2927)
!3250 = !DILocation(line: 676, column: 17, scope: !2927)
!3251 = !DILocation(line: 398, column: 12, scope: !2901)
!3252 = !DILocation(line: 678, column: 43, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !556, line: 678, column: 25)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !556, line: 677, column: 19)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !556, line: 676, column: 17)
!3256 = distinct !DILexicalBlock(scope: !2927, file: !556, line: 676, column: 17)
!3257 = !DILocation(line: 680, column: 25, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !556, line: 680, column: 25)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !556, line: 679, column: 23)
!3260 = !DILocation(line: 680, column: 25, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !556, line: 680, column: 25)
!3262 = !DILocation(line: 680, column: 25, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !556, line: 680, column: 25)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !556, line: 680, column: 25)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !556, line: 680, column: 25)
!3266 = !DILocation(line: 680, column: 25, scope: !3264)
!3267 = !DILocation(line: 680, column: 25, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !556, line: 680, column: 25)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !556, line: 680, column: 25)
!3270 = !DILocation(line: 680, column: 25, scope: !3269)
!3271 = !DILocation(line: 680, column: 25, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !556, line: 680, column: 25)
!3273 = distinct !DILexicalBlock(scope: !3265, file: !556, line: 680, column: 25)
!3274 = !DILocation(line: 680, column: 25, scope: !3273)
!3275 = !DILocation(line: 680, column: 25, scope: !3265)
!3276 = !DILocation(line: 680, column: 25, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !556, line: 680, column: 25)
!3278 = distinct !DILexicalBlock(scope: !3258, file: !556, line: 680, column: 25)
!3279 = !DILocation(line: 680, column: 25, scope: !3278)
!3280 = !DILocation(line: 681, column: 25, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !556, line: 681, column: 25)
!3282 = distinct !DILexicalBlock(scope: !3259, file: !556, line: 681, column: 25)
!3283 = !DILocation(line: 681, column: 25, scope: !3282)
!3284 = !DILocation(line: 682, column: 25, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !556, line: 682, column: 25)
!3286 = distinct !DILexicalBlock(scope: !3259, file: !556, line: 682, column: 25)
!3287 = !DILocation(line: 682, column: 25, scope: !3286)
!3288 = !DILocation(line: 683, column: 38, scope: !3259)
!3289 = !DILocation(line: 683, column: 33, scope: !3259)
!3290 = !DILocation(line: 684, column: 23, scope: !3259)
!3291 = !DILocation(line: 685, column: 30, scope: !3253)
!3292 = !DILocation(line: 687, column: 25, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !556, line: 687, column: 25)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !556, line: 687, column: 25)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !556, line: 686, column: 23)
!3296 = distinct !DILexicalBlock(scope: !3253, file: !556, line: 685, column: 30)
!3297 = !DILocation(line: 687, column: 25, scope: !3294)
!3298 = !DILocation(line: 689, column: 23, scope: !3295)
!3299 = !DILocation(line: 690, column: 35, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3254, file: !556, line: 690, column: 25)
!3301 = !DILocation(line: 690, column: 30, scope: !3300)
!3302 = !DILocation(line: 690, column: 25, scope: !3254)
!3303 = !DILocation(line: 692, column: 21, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !556, line: 692, column: 21)
!3305 = distinct !DILexicalBlock(scope: !3254, file: !556, line: 692, column: 21)
!3306 = !DILocation(line: 692, column: 21, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !556, line: 692, column: 21)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !556, line: 692, column: 21)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !556, line: 692, column: 21)
!3310 = !DILocation(line: 692, column: 21, scope: !3308)
!3311 = !DILocation(line: 692, column: 21, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !556, line: 692, column: 21)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !556, line: 692, column: 21)
!3314 = !DILocation(line: 692, column: 21, scope: !3313)
!3315 = !DILocation(line: 692, column: 21, scope: !3309)
!3316 = !DILocation(line: 0, scope: !3254)
!3317 = !DILocation(line: 693, column: 21, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !556, line: 693, column: 21)
!3319 = distinct !DILexicalBlock(scope: !3254, file: !556, line: 693, column: 21)
!3320 = !DILocation(line: 693, column: 21, scope: !3319)
!3321 = !DILocation(line: 694, column: 25, scope: !3254)
!3322 = !DILocation(line: 676, column: 17, scope: !3255)
!3323 = distinct !{!3323, !3324, !3325}
!3324 = !DILocation(line: 676, column: 17, scope: !3256)
!3325 = !DILocation(line: 695, column: 19, scope: !3256)
!3326 = !DILocation(line: 409, column: 30, scope: !3036)
!3327 = !DILocation(line: 702, column: 34, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !2901, file: !556, line: 702, column: 11)
!3329 = !DILocation(line: 704, column: 14, scope: !3328)
!3330 = !DILocation(line: 705, column: 14, scope: !3328)
!3331 = !DILocation(line: 705, column: 35, scope: !3328)
!3332 = !DILocation(line: 705, column: 17, scope: !3328)
!3333 = !DILocation(line: 705, column: 47, scope: !3328)
!3334 = !DILocation(line: 705, column: 65, scope: !3328)
!3335 = !DILocation(line: 706, column: 11, scope: !3328)
!3336 = !DILocation(line: 702, column: 11, scope: !2901)
!3337 = !DILocation(line: 395, column: 15, scope: !2899)
!3338 = !DILocation(line: 709, column: 5, scope: !2901)
!3339 = !DILocation(line: 710, column: 7, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !2901, file: !556, line: 710, column: 7)
!3341 = !DILocation(line: 710, column: 7, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3340, file: !556, line: 710, column: 7)
!3343 = !DILocation(line: 710, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !556, line: 710, column: 7)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !556, line: 710, column: 7)
!3346 = distinct !DILexicalBlock(scope: !3342, file: !556, line: 710, column: 7)
!3347 = !DILocation(line: 710, column: 7, scope: !3345)
!3348 = !DILocation(line: 710, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !556, line: 710, column: 7)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !556, line: 710, column: 7)
!3351 = !DILocation(line: 710, column: 7, scope: !3350)
!3352 = !DILocation(line: 710, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !556, line: 710, column: 7)
!3354 = distinct !DILexicalBlock(scope: !3346, file: !556, line: 710, column: 7)
!3355 = !DILocation(line: 710, column: 7, scope: !3354)
!3356 = !DILocation(line: 710, column: 7, scope: !3346)
!3357 = !DILocation(line: 710, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !556, line: 710, column: 7)
!3359 = distinct !DILexicalBlock(scope: !3340, file: !556, line: 710, column: 7)
!3360 = !DILocation(line: 710, column: 7, scope: !3359)
!3361 = !DILocation(line: 712, column: 5, scope: !2901)
!3362 = !DILocation(line: 713, column: 7, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !556, line: 713, column: 7)
!3364 = distinct !DILexicalBlock(scope: !2901, file: !556, line: 713, column: 7)
!3365 = !DILocation(line: 417, column: 21, scope: !2901)
!3366 = !DILocation(line: 713, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !556, line: 713, column: 7)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !556, line: 713, column: 7)
!3369 = distinct !DILexicalBlock(scope: !3363, file: !556, line: 713, column: 7)
!3370 = !DILocation(line: 713, column: 7, scope: !3368)
!3371 = !DILocation(line: 713, column: 7, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !556, line: 713, column: 7)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !556, line: 713, column: 7)
!3374 = !DILocation(line: 713, column: 7, scope: !3373)
!3375 = !DILocation(line: 713, column: 7, scope: !3369)
!3376 = !DILocation(line: 714, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !556, line: 714, column: 7)
!3378 = distinct !DILexicalBlock(scope: !2901, file: !556, line: 714, column: 7)
!3379 = !DILocation(line: 714, column: 7, scope: !3378)
!3380 = !DILocation(line: 716, column: 11, scope: !2901)
!3381 = !DILocation(line: 718, column: 5, scope: !2902)
!3382 = !DILocation(line: 395, column: 82, scope: !2902)
!3383 = !DILocation(line: 395, column: 3, scope: !2902)
!3384 = distinct !{!3384, !3032, !3385, !981}
!3385 = !DILocation(line: 718, column: 5, scope: !2899)
!3386 = !DILocation(line: 720, column: 11, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 720, column: 7)
!3388 = !DILocation(line: 720, column: 16, scope: !3387)
!3389 = !DILocation(line: 728, column: 51, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 728, column: 7)
!3391 = !DILocation(line: 731, column: 11, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3390, file: !556, line: 730, column: 5)
!3393 = !DILocation(line: 732, column: 16, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3392, file: !556, line: 731, column: 11)
!3395 = !DILocation(line: 732, column: 9, scope: !3394)
!3396 = !DILocation(line: 736, column: 18, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !556, line: 736, column: 16)
!3398 = !DILocation(line: 736, column: 29, scope: !3397)
!3399 = !DILocation(line: 745, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 745, column: 7)
!3401 = !DILocation(line: 745, column: 20, scope: !3400)
!3402 = !DILocation(line: 746, column: 12, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !556, line: 746, column: 5)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !556, line: 746, column: 5)
!3405 = !DILocation(line: 746, column: 5, scope: !3404)
!3406 = !DILocation(line: 747, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !556, line: 747, column: 7)
!3408 = distinct !DILexicalBlock(scope: !3403, file: !556, line: 747, column: 7)
!3409 = !DILocation(line: 747, column: 7, scope: !3408)
!3410 = !DILocation(line: 746, column: 39, scope: !3403)
!3411 = distinct !{!3411, !3405, !3412, !981}
!3412 = !DILocation(line: 747, column: 7, scope: !3404)
!3413 = !DILocation(line: 749, column: 11, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !2868, file: !556, line: 749, column: 7)
!3415 = !DILocation(line: 749, column: 7, scope: !2868)
!3416 = !DILocation(line: 750, column: 5, scope: !3414)
!3417 = !DILocation(line: 750, column: 17, scope: !3414)
!3418 = !DILocation(line: 756, column: 21, scope: !3244)
!3419 = !DILocation(line: 760, column: 42, scope: !2868)
!3420 = !DILocation(line: 758, column: 10, scope: !2868)
!3421 = !DILocation(line: 758, column: 3, scope: !2868)
!3422 = !DILocation(line: 762, column: 1, scope: !2868)
!3423 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1055, file: !1055, line: 98, type: !3424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!133}
!3426 = !DISubprogram(name: "strlen", scope: !1051, file: !1051, line: 407, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!135, !136}
!3429 = !DISubprogram(name: "iswprint", scope: !3430, file: !3430, line: 120, type: !3230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3430 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3431 = distinct !DISubprogram(name: "quotearg_alloc", scope: !556, file: !556, line: 788, type: !3432, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!130, !136, !133, !2761}
!3434 = !{!3435, !3436, !3437}
!3435 = !DILocalVariable(name: "arg", arg: 1, scope: !3431, file: !556, line: 788, type: !136)
!3436 = !DILocalVariable(name: "argsize", arg: 2, scope: !3431, file: !556, line: 788, type: !133)
!3437 = !DILocalVariable(name: "o", arg: 3, scope: !3431, file: !556, line: 789, type: !2761)
!3438 = !DILocation(line: 0, scope: !3431)
!3439 = !DILocalVariable(name: "arg", arg: 1, scope: !3440, file: !556, line: 801, type: !136)
!3440 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !556, file: !556, line: 801, type: !3441, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!130, !136, !133, !796, !2761}
!3443 = !{!3439, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3444 = !DILocalVariable(name: "argsize", arg: 2, scope: !3440, file: !556, line: 801, type: !133)
!3445 = !DILocalVariable(name: "size", arg: 3, scope: !3440, file: !556, line: 801, type: !796)
!3446 = !DILocalVariable(name: "o", arg: 4, scope: !3440, file: !556, line: 802, type: !2761)
!3447 = !DILocalVariable(name: "p", scope: !3440, file: !556, line: 804, type: !2761)
!3448 = !DILocalVariable(name: "saved_errno", scope: !3440, file: !556, line: 805, type: !87)
!3449 = !DILocalVariable(name: "flags", scope: !3440, file: !556, line: 807, type: !87)
!3450 = !DILocalVariable(name: "bufsize", scope: !3440, file: !556, line: 808, type: !133)
!3451 = !DILocalVariable(name: "buf", scope: !3440, file: !556, line: 812, type: !130)
!3452 = !DILocation(line: 0, scope: !3440, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 791, column: 10, scope: !3431)
!3454 = !DILocation(line: 804, column: 37, scope: !3440, inlinedAt: !3453)
!3455 = !DILocation(line: 805, column: 21, scope: !3440, inlinedAt: !3453)
!3456 = !DILocation(line: 807, column: 18, scope: !3440, inlinedAt: !3453)
!3457 = !DILocation(line: 807, column: 24, scope: !3440, inlinedAt: !3453)
!3458 = !DILocation(line: 808, column: 72, scope: !3440, inlinedAt: !3453)
!3459 = !DILocation(line: 809, column: 56, scope: !3440, inlinedAt: !3453)
!3460 = !DILocation(line: 810, column: 49, scope: !3440, inlinedAt: !3453)
!3461 = !DILocation(line: 811, column: 49, scope: !3440, inlinedAt: !3453)
!3462 = !DILocation(line: 808, column: 20, scope: !3440, inlinedAt: !3453)
!3463 = !DILocation(line: 811, column: 62, scope: !3440, inlinedAt: !3453)
!3464 = !DILocation(line: 812, column: 15, scope: !3440, inlinedAt: !3453)
!3465 = !DILocation(line: 813, column: 60, scope: !3440, inlinedAt: !3453)
!3466 = !DILocation(line: 815, column: 32, scope: !3440, inlinedAt: !3453)
!3467 = !DILocation(line: 815, column: 47, scope: !3440, inlinedAt: !3453)
!3468 = !DILocation(line: 813, column: 3, scope: !3440, inlinedAt: !3453)
!3469 = !DILocation(line: 816, column: 9, scope: !3440, inlinedAt: !3453)
!3470 = !DILocation(line: 791, column: 3, scope: !3431)
!3471 = !DILocation(line: 0, scope: !3440)
!3472 = !DILocation(line: 804, column: 37, scope: !3440)
!3473 = !DILocation(line: 805, column: 21, scope: !3440)
!3474 = !DILocation(line: 807, column: 18, scope: !3440)
!3475 = !DILocation(line: 807, column: 27, scope: !3440)
!3476 = !DILocation(line: 807, column: 24, scope: !3440)
!3477 = !DILocation(line: 808, column: 72, scope: !3440)
!3478 = !DILocation(line: 809, column: 56, scope: !3440)
!3479 = !DILocation(line: 810, column: 49, scope: !3440)
!3480 = !DILocation(line: 811, column: 49, scope: !3440)
!3481 = !DILocation(line: 808, column: 20, scope: !3440)
!3482 = !DILocation(line: 811, column: 62, scope: !3440)
!3483 = !DILocation(line: 812, column: 15, scope: !3440)
!3484 = !DILocation(line: 813, column: 60, scope: !3440)
!3485 = !DILocation(line: 815, column: 32, scope: !3440)
!3486 = !DILocation(line: 815, column: 47, scope: !3440)
!3487 = !DILocation(line: 813, column: 3, scope: !3440)
!3488 = !DILocation(line: 816, column: 9, scope: !3440)
!3489 = !DILocation(line: 817, column: 7, scope: !3440)
!3490 = !DILocation(line: 818, column: 11, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3440, file: !556, line: 817, column: 7)
!3492 = !DILocation(line: 818, column: 5, scope: !3491)
!3493 = !DILocation(line: 819, column: 3, scope: !3440)
!3494 = distinct !DISubprogram(name: "quotearg_free", scope: !556, file: !556, line: 837, type: !511, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3495)
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "sv", scope: !3494, file: !556, line: 839, type: !638)
!3497 = !DILocalVariable(name: "i", scope: !3498, file: !556, line: 840, type: !87)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !556, line: 840, column: 3)
!3499 = !DILocation(line: 839, column: 24, scope: !3494)
!3500 = !DILocation(line: 0, scope: !3494)
!3501 = !DILocation(line: 0, scope: !3498)
!3502 = !DILocation(line: 840, column: 21, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3498, file: !556, line: 840, column: 3)
!3504 = !DILocation(line: 840, column: 3, scope: !3498)
!3505 = !DILocation(line: 842, column: 13, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3494, file: !556, line: 842, column: 7)
!3507 = !{!3508, !865, i64 8}
!3508 = !{!"slotvec", !1293, i64 0, !865, i64 8}
!3509 = !DILocation(line: 842, column: 17, scope: !3506)
!3510 = !DILocation(line: 842, column: 7, scope: !3494)
!3511 = !DILocation(line: 841, column: 17, scope: !3503)
!3512 = !DILocation(line: 841, column: 5, scope: !3503)
!3513 = !DILocation(line: 840, column: 32, scope: !3503)
!3514 = distinct !{!3514, !3504, !3515, !981}
!3515 = !DILocation(line: 841, column: 20, scope: !3498)
!3516 = !DILocation(line: 844, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3506, file: !556, line: 843, column: 5)
!3518 = !DILocation(line: 845, column: 21, scope: !3517)
!3519 = !{!3508, !1293, i64 0}
!3520 = !DILocation(line: 846, column: 20, scope: !3517)
!3521 = !DILocation(line: 847, column: 5, scope: !3517)
!3522 = !DILocation(line: 848, column: 10, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3494, file: !556, line: 848, column: 7)
!3524 = !DILocation(line: 848, column: 7, scope: !3494)
!3525 = !DILocation(line: 850, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !556, line: 849, column: 5)
!3527 = !DILocation(line: 851, column: 15, scope: !3526)
!3528 = !DILocation(line: 852, column: 5, scope: !3526)
!3529 = !DILocation(line: 853, column: 10, scope: !3494)
!3530 = !DILocation(line: 854, column: 1, scope: !3494)
!3531 = distinct !DISubprogram(name: "quotearg_n", scope: !556, file: !556, line: 919, type: !1048, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3532)
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "n", arg: 1, scope: !3531, file: !556, line: 919, type: !87)
!3534 = !DILocalVariable(name: "arg", arg: 2, scope: !3531, file: !556, line: 919, type: !136)
!3535 = !DILocation(line: 0, scope: !3531)
!3536 = !DILocation(line: 921, column: 10, scope: !3531)
!3537 = !DILocation(line: 921, column: 3, scope: !3531)
!3538 = distinct !DISubprogram(name: "quotearg_n_options", scope: !556, file: !556, line: 866, type: !3539, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!130, !87, !136, !133, !2761}
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3552, !3553, !3555, !3556, !3557}
!3542 = !DILocalVariable(name: "n", arg: 1, scope: !3538, file: !556, line: 866, type: !87)
!3543 = !DILocalVariable(name: "arg", arg: 2, scope: !3538, file: !556, line: 866, type: !136)
!3544 = !DILocalVariable(name: "argsize", arg: 3, scope: !3538, file: !556, line: 866, type: !133)
!3545 = !DILocalVariable(name: "options", arg: 4, scope: !3538, file: !556, line: 867, type: !2761)
!3546 = !DILocalVariable(name: "saved_errno", scope: !3538, file: !556, line: 869, type: !87)
!3547 = !DILocalVariable(name: "sv", scope: !3538, file: !556, line: 871, type: !638)
!3548 = !DILocalVariable(name: "nslots_max", scope: !3538, file: !556, line: 873, type: !87)
!3549 = !DILocalVariable(name: "preallocated", scope: !3550, file: !556, line: 879, type: !196)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !556, line: 878, column: 5)
!3551 = distinct !DILexicalBlock(scope: !3538, file: !556, line: 877, column: 7)
!3552 = !DILocalVariable(name: "new_nslots", scope: !3550, file: !556, line: 880, type: !809)
!3553 = !DILocalVariable(name: "size", scope: !3554, file: !556, line: 891, type: !133)
!3554 = distinct !DILexicalBlock(scope: !3538, file: !556, line: 890, column: 3)
!3555 = !DILocalVariable(name: "val", scope: !3554, file: !556, line: 892, type: !130)
!3556 = !DILocalVariable(name: "flags", scope: !3554, file: !556, line: 894, type: !87)
!3557 = !DILocalVariable(name: "qsize", scope: !3554, file: !556, line: 895, type: !133)
!3558 = !DILocation(line: 0, scope: !3538)
!3559 = !DILocation(line: 869, column: 21, scope: !3538)
!3560 = !DILocation(line: 871, column: 24, scope: !3538)
!3561 = !DILocation(line: 874, column: 17, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3538, file: !556, line: 874, column: 7)
!3563 = !DILocation(line: 875, column: 5, scope: !3562)
!3564 = !DILocation(line: 877, column: 7, scope: !3551)
!3565 = !DILocation(line: 877, column: 14, scope: !3551)
!3566 = !DILocation(line: 877, column: 7, scope: !3538)
!3567 = !DILocation(line: 879, column: 31, scope: !3550)
!3568 = !DILocation(line: 0, scope: !3550)
!3569 = !DILocation(line: 880, column: 7, scope: !3550)
!3570 = !DILocation(line: 880, column: 26, scope: !3550)
!3571 = !DILocation(line: 880, column: 13, scope: !3550)
!3572 = !DILocation(line: 882, column: 31, scope: !3550)
!3573 = !DILocation(line: 883, column: 33, scope: !3550)
!3574 = !DILocation(line: 883, column: 42, scope: !3550)
!3575 = !DILocation(line: 883, column: 31, scope: !3550)
!3576 = !DILocation(line: 882, column: 22, scope: !3550)
!3577 = !DILocation(line: 882, column: 15, scope: !3550)
!3578 = !DILocation(line: 884, column: 11, scope: !3550)
!3579 = !DILocation(line: 885, column: 15, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3550, file: !556, line: 884, column: 11)
!3581 = !{i64 0, i64 8, !1312, i64 8, i64 8, !864}
!3582 = !DILocation(line: 885, column: 9, scope: !3580)
!3583 = !DILocation(line: 886, column: 20, scope: !3550)
!3584 = !DILocation(line: 886, column: 18, scope: !3550)
!3585 = !DILocation(line: 886, column: 32, scope: !3550)
!3586 = !DILocation(line: 886, column: 43, scope: !3550)
!3587 = !DILocation(line: 886, column: 53, scope: !3550)
!3588 = !DILocation(line: 0, scope: !2971, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 886, column: 7, scope: !3550)
!3590 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !3589)
!3591 = !DILocation(line: 887, column: 16, scope: !3550)
!3592 = !DILocation(line: 887, column: 14, scope: !3550)
!3593 = !DILocation(line: 888, column: 5, scope: !3551)
!3594 = !DILocation(line: 888, column: 5, scope: !3550)
!3595 = !DILocation(line: 891, column: 19, scope: !3554)
!3596 = !DILocation(line: 891, column: 25, scope: !3554)
!3597 = !DILocation(line: 0, scope: !3554)
!3598 = !DILocation(line: 892, column: 23, scope: !3554)
!3599 = !DILocation(line: 894, column: 26, scope: !3554)
!3600 = !DILocation(line: 894, column: 32, scope: !3554)
!3601 = !DILocation(line: 896, column: 55, scope: !3554)
!3602 = !DILocation(line: 897, column: 55, scope: !3554)
!3603 = !DILocation(line: 898, column: 55, scope: !3554)
!3604 = !DILocation(line: 899, column: 55, scope: !3554)
!3605 = !DILocation(line: 895, column: 20, scope: !3554)
!3606 = !DILocation(line: 901, column: 14, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3554, file: !556, line: 901, column: 9)
!3608 = !DILocation(line: 901, column: 9, scope: !3554)
!3609 = !DILocation(line: 903, column: 35, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3607, file: !556, line: 902, column: 7)
!3611 = !DILocation(line: 903, column: 20, scope: !3610)
!3612 = !DILocation(line: 904, column: 17, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !556, line: 904, column: 13)
!3614 = !DILocation(line: 904, column: 13, scope: !3610)
!3615 = !DILocation(line: 905, column: 11, scope: !3613)
!3616 = !DILocation(line: 906, column: 27, scope: !3610)
!3617 = !DILocation(line: 906, column: 19, scope: !3610)
!3618 = !DILocation(line: 907, column: 69, scope: !3610)
!3619 = !DILocation(line: 909, column: 44, scope: !3610)
!3620 = !DILocation(line: 910, column: 44, scope: !3610)
!3621 = !DILocation(line: 907, column: 9, scope: !3610)
!3622 = !DILocation(line: 911, column: 7, scope: !3610)
!3623 = !DILocation(line: 913, column: 11, scope: !3554)
!3624 = !DILocation(line: 914, column: 5, scope: !3554)
!3625 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !556, file: !556, line: 925, type: !3626, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!130, !87, !136, !133}
!3628 = !{!3629, !3630, !3631}
!3629 = !DILocalVariable(name: "n", arg: 1, scope: !3625, file: !556, line: 925, type: !87)
!3630 = !DILocalVariable(name: "arg", arg: 2, scope: !3625, file: !556, line: 925, type: !136)
!3631 = !DILocalVariable(name: "argsize", arg: 3, scope: !3625, file: !556, line: 925, type: !133)
!3632 = !DILocation(line: 0, scope: !3625)
!3633 = !DILocation(line: 927, column: 10, scope: !3625)
!3634 = !DILocation(line: 927, column: 3, scope: !3625)
!3635 = distinct !DISubprogram(name: "quotearg", scope: !556, file: !556, line: 931, type: !1057, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3636)
!3636 = !{!3637}
!3637 = !DILocalVariable(name: "arg", arg: 1, scope: !3635, file: !556, line: 931, type: !136)
!3638 = !DILocation(line: 0, scope: !3635)
!3639 = !DILocation(line: 0, scope: !3531, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 933, column: 10, scope: !3635)
!3641 = !DILocation(line: 921, column: 10, scope: !3531, inlinedAt: !3640)
!3642 = !DILocation(line: 933, column: 3, scope: !3635)
!3643 = distinct !DISubprogram(name: "quotearg_mem", scope: !556, file: !556, line: 937, type: !3644, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!130, !136, !133}
!3646 = !{!3647, !3648}
!3647 = !DILocalVariable(name: "arg", arg: 1, scope: !3643, file: !556, line: 937, type: !136)
!3648 = !DILocalVariable(name: "argsize", arg: 2, scope: !3643, file: !556, line: 937, type: !133)
!3649 = !DILocation(line: 0, scope: !3643)
!3650 = !DILocation(line: 0, scope: !3625, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 939, column: 10, scope: !3643)
!3652 = !DILocation(line: 927, column: 10, scope: !3625, inlinedAt: !3651)
!3653 = !DILocation(line: 939, column: 3, scope: !3643)
!3654 = distinct !DISubprogram(name: "quotearg_n_style", scope: !556, file: !556, line: 943, type: !3655, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!130, !87, !91, !136}
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3654, file: !556, line: 943, type: !87)
!3659 = !DILocalVariable(name: "s", arg: 2, scope: !3654, file: !556, line: 943, type: !91)
!3660 = !DILocalVariable(name: "arg", arg: 3, scope: !3654, file: !556, line: 943, type: !136)
!3661 = !DILocalVariable(name: "o", scope: !3654, file: !556, line: 945, type: !2762)
!3662 = !DILocation(line: 0, scope: !3654)
!3663 = !DILocation(line: 945, column: 3, scope: !3654)
!3664 = !DILocation(line: 945, column: 32, scope: !3654)
!3665 = !{!3666}
!3666 = distinct !{!3666, !3667, !"quoting_options_from_style: argument 0"}
!3667 = distinct !{!3667, !"quoting_options_from_style"}
!3668 = !DILocation(line: 945, column: 36, scope: !3654)
!3669 = !DILocalVariable(name: "style", arg: 1, scope: !3670, file: !556, line: 183, type: !91)
!3670 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !556, file: !556, line: 183, type: !3671, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!592, !91}
!3673 = !{!3669, !3674}
!3674 = !DILocalVariable(name: "o", scope: !3670, file: !556, line: 185, type: !592)
!3675 = !DILocation(line: 0, scope: !3670, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 945, column: 36, scope: !3654)
!3677 = !DILocation(line: 185, column: 26, scope: !3670, inlinedAt: !3676)
!3678 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3676)
!3679 = distinct !DILexicalBlock(scope: !3670, file: !556, line: 186, column: 7)
!3680 = !DILocation(line: 186, column: 7, scope: !3670, inlinedAt: !3676)
!3681 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3676)
!3682 = !DILocation(line: 188, column: 11, scope: !3670, inlinedAt: !3676)
!3683 = !DILocation(line: 946, column: 10, scope: !3654)
!3684 = !DILocation(line: 947, column: 1, scope: !3654)
!3685 = !DILocation(line: 946, column: 3, scope: !3654)
!3686 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !556, file: !556, line: 950, type: !3687, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!130, !87, !91, !136, !133}
!3689 = !{!3690, !3691, !3692, !3693, !3694}
!3690 = !DILocalVariable(name: "n", arg: 1, scope: !3686, file: !556, line: 950, type: !87)
!3691 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !556, line: 950, type: !91)
!3692 = !DILocalVariable(name: "arg", arg: 3, scope: !3686, file: !556, line: 951, type: !136)
!3693 = !DILocalVariable(name: "argsize", arg: 4, scope: !3686, file: !556, line: 951, type: !133)
!3694 = !DILocalVariable(name: "o", scope: !3686, file: !556, line: 953, type: !2762)
!3695 = !DILocation(line: 0, scope: !3686)
!3696 = !DILocation(line: 953, column: 3, scope: !3686)
!3697 = !DILocation(line: 953, column: 32, scope: !3686)
!3698 = !{!3699}
!3699 = distinct !{!3699, !3700, !"quoting_options_from_style: argument 0"}
!3700 = distinct !{!3700, !"quoting_options_from_style"}
!3701 = !DILocation(line: 953, column: 36, scope: !3686)
!3702 = !DILocation(line: 0, scope: !3670, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 953, column: 36, scope: !3686)
!3704 = !DILocation(line: 185, column: 26, scope: !3670, inlinedAt: !3703)
!3705 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3703)
!3706 = !DILocation(line: 186, column: 7, scope: !3670, inlinedAt: !3703)
!3707 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3703)
!3708 = !DILocation(line: 188, column: 11, scope: !3670, inlinedAt: !3703)
!3709 = !DILocation(line: 954, column: 10, scope: !3686)
!3710 = !DILocation(line: 955, column: 1, scope: !3686)
!3711 = !DILocation(line: 954, column: 3, scope: !3686)
!3712 = distinct !DISubprogram(name: "quotearg_style", scope: !556, file: !556, line: 958, type: !3713, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!130, !91, !136}
!3715 = !{!3716, !3717}
!3716 = !DILocalVariable(name: "s", arg: 1, scope: !3712, file: !556, line: 958, type: !91)
!3717 = !DILocalVariable(name: "arg", arg: 2, scope: !3712, file: !556, line: 958, type: !136)
!3718 = !DILocation(line: 0, scope: !3712)
!3719 = !DILocation(line: 0, scope: !3654, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 960, column: 10, scope: !3712)
!3721 = !DILocation(line: 945, column: 3, scope: !3654, inlinedAt: !3720)
!3722 = !DILocation(line: 945, column: 32, scope: !3654, inlinedAt: !3720)
!3723 = !{!3724}
!3724 = distinct !{!3724, !3725, !"quoting_options_from_style: argument 0"}
!3725 = distinct !{!3725, !"quoting_options_from_style"}
!3726 = !DILocation(line: 945, column: 36, scope: !3654, inlinedAt: !3720)
!3727 = !DILocation(line: 0, scope: !3670, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 945, column: 36, scope: !3654, inlinedAt: !3720)
!3729 = !DILocation(line: 185, column: 26, scope: !3670, inlinedAt: !3728)
!3730 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3728)
!3731 = !DILocation(line: 186, column: 7, scope: !3670, inlinedAt: !3728)
!3732 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3728)
!3733 = !DILocation(line: 188, column: 11, scope: !3670, inlinedAt: !3728)
!3734 = !DILocation(line: 946, column: 10, scope: !3654, inlinedAt: !3720)
!3735 = !DILocation(line: 947, column: 1, scope: !3654, inlinedAt: !3720)
!3736 = !DILocation(line: 960, column: 3, scope: !3712)
!3737 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !556, file: !556, line: 964, type: !3738, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!130, !91, !136, !133}
!3740 = !{!3741, !3742, !3743}
!3741 = !DILocalVariable(name: "s", arg: 1, scope: !3737, file: !556, line: 964, type: !91)
!3742 = !DILocalVariable(name: "arg", arg: 2, scope: !3737, file: !556, line: 964, type: !136)
!3743 = !DILocalVariable(name: "argsize", arg: 3, scope: !3737, file: !556, line: 964, type: !133)
!3744 = !DILocation(line: 0, scope: !3737)
!3745 = !DILocation(line: 0, scope: !3686, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 966, column: 10, scope: !3737)
!3747 = !DILocation(line: 953, column: 3, scope: !3686, inlinedAt: !3746)
!3748 = !DILocation(line: 953, column: 32, scope: !3686, inlinedAt: !3746)
!3749 = !{!3750}
!3750 = distinct !{!3750, !3751, !"quoting_options_from_style: argument 0"}
!3751 = distinct !{!3751, !"quoting_options_from_style"}
!3752 = !DILocation(line: 953, column: 36, scope: !3686, inlinedAt: !3746)
!3753 = !DILocation(line: 0, scope: !3670, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 953, column: 36, scope: !3686, inlinedAt: !3746)
!3755 = !DILocation(line: 185, column: 26, scope: !3670, inlinedAt: !3754)
!3756 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3754)
!3757 = !DILocation(line: 186, column: 7, scope: !3670, inlinedAt: !3754)
!3758 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3754)
!3759 = !DILocation(line: 188, column: 11, scope: !3670, inlinedAt: !3754)
!3760 = !DILocation(line: 954, column: 10, scope: !3686, inlinedAt: !3746)
!3761 = !DILocation(line: 955, column: 1, scope: !3686, inlinedAt: !3746)
!3762 = !DILocation(line: 966, column: 3, scope: !3737)
!3763 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !556, file: !556, line: 970, type: !3764, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!130, !136, !133, !4}
!3766 = !{!3767, !3768, !3769, !3770}
!3767 = !DILocalVariable(name: "arg", arg: 1, scope: !3763, file: !556, line: 970, type: !136)
!3768 = !DILocalVariable(name: "argsize", arg: 2, scope: !3763, file: !556, line: 970, type: !133)
!3769 = !DILocalVariable(name: "ch", arg: 3, scope: !3763, file: !556, line: 970, type: !4)
!3770 = !DILocalVariable(name: "options", scope: !3763, file: !556, line: 972, type: !592)
!3771 = !DILocation(line: 0, scope: !3763)
!3772 = !DILocation(line: 972, column: 3, scope: !3763)
!3773 = !DILocation(line: 972, column: 26, scope: !3763)
!3774 = !DILocation(line: 973, column: 13, scope: !3763)
!3775 = !{i64 0, i64 4, !943, i64 4, i64 4, !934, i64 8, i64 32, !943, i64 40, i64 8, !864, i64 48, i64 8, !864}
!3776 = !DILocation(line: 0, scope: !2781, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 974, column: 3, scope: !3763)
!3778 = !DILocation(line: 147, column: 41, scope: !2781, inlinedAt: !3777)
!3779 = !DILocation(line: 147, column: 62, scope: !2781, inlinedAt: !3777)
!3780 = !DILocation(line: 147, column: 57, scope: !2781, inlinedAt: !3777)
!3781 = !DILocation(line: 148, column: 15, scope: !2781, inlinedAt: !3777)
!3782 = !DILocation(line: 149, column: 21, scope: !2781, inlinedAt: !3777)
!3783 = !DILocation(line: 149, column: 24, scope: !2781, inlinedAt: !3777)
!3784 = !DILocation(line: 150, column: 19, scope: !2781, inlinedAt: !3777)
!3785 = !DILocation(line: 150, column: 24, scope: !2781, inlinedAt: !3777)
!3786 = !DILocation(line: 150, column: 6, scope: !2781, inlinedAt: !3777)
!3787 = !DILocation(line: 975, column: 10, scope: !3763)
!3788 = !DILocation(line: 976, column: 1, scope: !3763)
!3789 = !DILocation(line: 975, column: 3, scope: !3763)
!3790 = distinct !DISubprogram(name: "quotearg_char", scope: !556, file: !556, line: 979, type: !3791, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!130, !136, !4}
!3793 = !{!3794, !3795}
!3794 = !DILocalVariable(name: "arg", arg: 1, scope: !3790, file: !556, line: 979, type: !136)
!3795 = !DILocalVariable(name: "ch", arg: 2, scope: !3790, file: !556, line: 979, type: !4)
!3796 = !DILocation(line: 0, scope: !3790)
!3797 = !DILocation(line: 0, scope: !3763, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 981, column: 10, scope: !3790)
!3799 = !DILocation(line: 972, column: 3, scope: !3763, inlinedAt: !3798)
!3800 = !DILocation(line: 972, column: 26, scope: !3763, inlinedAt: !3798)
!3801 = !DILocation(line: 973, column: 13, scope: !3763, inlinedAt: !3798)
!3802 = !DILocation(line: 0, scope: !2781, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 974, column: 3, scope: !3763, inlinedAt: !3798)
!3804 = !DILocation(line: 147, column: 41, scope: !2781, inlinedAt: !3803)
!3805 = !DILocation(line: 147, column: 62, scope: !2781, inlinedAt: !3803)
!3806 = !DILocation(line: 147, column: 57, scope: !2781, inlinedAt: !3803)
!3807 = !DILocation(line: 148, column: 15, scope: !2781, inlinedAt: !3803)
!3808 = !DILocation(line: 149, column: 21, scope: !2781, inlinedAt: !3803)
!3809 = !DILocation(line: 149, column: 24, scope: !2781, inlinedAt: !3803)
!3810 = !DILocation(line: 150, column: 19, scope: !2781, inlinedAt: !3803)
!3811 = !DILocation(line: 150, column: 24, scope: !2781, inlinedAt: !3803)
!3812 = !DILocation(line: 150, column: 6, scope: !2781, inlinedAt: !3803)
!3813 = !DILocation(line: 975, column: 10, scope: !3763, inlinedAt: !3798)
!3814 = !DILocation(line: 976, column: 1, scope: !3763, inlinedAt: !3798)
!3815 = !DILocation(line: 981, column: 3, scope: !3790)
!3816 = distinct !DISubprogram(name: "quotearg_colon", scope: !556, file: !556, line: 985, type: !1057, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3817)
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "arg", arg: 1, scope: !3816, file: !556, line: 985, type: !136)
!3819 = !DILocation(line: 0, scope: !3816)
!3820 = !DILocation(line: 0, scope: !3790, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 987, column: 10, scope: !3816)
!3822 = !DILocation(line: 0, scope: !3763, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 981, column: 10, scope: !3790, inlinedAt: !3821)
!3824 = !DILocation(line: 972, column: 3, scope: !3763, inlinedAt: !3823)
!3825 = !DILocation(line: 972, column: 26, scope: !3763, inlinedAt: !3823)
!3826 = !DILocation(line: 973, column: 13, scope: !3763, inlinedAt: !3823)
!3827 = !DILocation(line: 0, scope: !2781, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 974, column: 3, scope: !3763, inlinedAt: !3823)
!3829 = !DILocation(line: 147, column: 57, scope: !2781, inlinedAt: !3828)
!3830 = !DILocation(line: 149, column: 21, scope: !2781, inlinedAt: !3828)
!3831 = !DILocation(line: 150, column: 6, scope: !2781, inlinedAt: !3828)
!3832 = !DILocation(line: 975, column: 10, scope: !3763, inlinedAt: !3823)
!3833 = !DILocation(line: 976, column: 1, scope: !3763, inlinedAt: !3823)
!3834 = !DILocation(line: 987, column: 3, scope: !3816)
!3835 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !556, file: !556, line: 991, type: !3644, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3836)
!3836 = !{!3837, !3838}
!3837 = !DILocalVariable(name: "arg", arg: 1, scope: !3835, file: !556, line: 991, type: !136)
!3838 = !DILocalVariable(name: "argsize", arg: 2, scope: !3835, file: !556, line: 991, type: !133)
!3839 = !DILocation(line: 0, scope: !3835)
!3840 = !DILocation(line: 0, scope: !3763, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 993, column: 10, scope: !3835)
!3842 = !DILocation(line: 972, column: 3, scope: !3763, inlinedAt: !3841)
!3843 = !DILocation(line: 972, column: 26, scope: !3763, inlinedAt: !3841)
!3844 = !DILocation(line: 973, column: 13, scope: !3763, inlinedAt: !3841)
!3845 = !DILocation(line: 0, scope: !2781, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 974, column: 3, scope: !3763, inlinedAt: !3841)
!3847 = !DILocation(line: 147, column: 57, scope: !2781, inlinedAt: !3846)
!3848 = !DILocation(line: 149, column: 21, scope: !2781, inlinedAt: !3846)
!3849 = !DILocation(line: 150, column: 6, scope: !2781, inlinedAt: !3846)
!3850 = !DILocation(line: 975, column: 10, scope: !3763, inlinedAt: !3841)
!3851 = !DILocation(line: 976, column: 1, scope: !3763, inlinedAt: !3841)
!3852 = !DILocation(line: 993, column: 3, scope: !3835)
!3853 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !556, file: !556, line: 997, type: !3655, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3854)
!3854 = !{!3855, !3856, !3857, !3858}
!3855 = !DILocalVariable(name: "n", arg: 1, scope: !3853, file: !556, line: 997, type: !87)
!3856 = !DILocalVariable(name: "s", arg: 2, scope: !3853, file: !556, line: 997, type: !91)
!3857 = !DILocalVariable(name: "arg", arg: 3, scope: !3853, file: !556, line: 997, type: !136)
!3858 = !DILocalVariable(name: "options", scope: !3853, file: !556, line: 999, type: !592)
!3859 = !DILocation(line: 185, column: 26, scope: !3670, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 1000, column: 13, scope: !3853)
!3861 = !DILocation(line: 0, scope: !3853)
!3862 = !DILocation(line: 999, column: 3, scope: !3853)
!3863 = !DILocation(line: 999, column: 26, scope: !3853)
!3864 = !DILocation(line: 0, scope: !3670, inlinedAt: !3860)
!3865 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3860)
!3866 = !DILocation(line: 186, column: 7, scope: !3670, inlinedAt: !3860)
!3867 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3860)
!3868 = !{!3869}
!3869 = distinct !{!3869, !3870, !"quoting_options_from_style: argument 0"}
!3870 = distinct !{!3870, !"quoting_options_from_style"}
!3871 = !DILocation(line: 1000, column: 13, scope: !3853)
!3872 = !DILocation(line: 0, scope: !2781, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 1001, column: 3, scope: !3853)
!3874 = !DILocation(line: 147, column: 57, scope: !2781, inlinedAt: !3873)
!3875 = !DILocation(line: 149, column: 21, scope: !2781, inlinedAt: !3873)
!3876 = !DILocation(line: 150, column: 6, scope: !2781, inlinedAt: !3873)
!3877 = !DILocation(line: 1002, column: 10, scope: !3853)
!3878 = !DILocation(line: 1003, column: 1, scope: !3853)
!3879 = !DILocation(line: 1002, column: 3, scope: !3853)
!3880 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !556, file: !556, line: 1006, type: !3881, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!130, !87, !136, !136, !136}
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !556, line: 1006, type: !87)
!3885 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3880, file: !556, line: 1006, type: !136)
!3886 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3880, file: !556, line: 1007, type: !136)
!3887 = !DILocalVariable(name: "arg", arg: 4, scope: !3880, file: !556, line: 1007, type: !136)
!3888 = !DILocation(line: 0, scope: !3880)
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !556, line: 1014, type: !87)
!3890 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !556, file: !556, line: 1014, type: !3891, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!130, !87, !136, !136, !136, !133}
!3893 = !{!3889, !3894, !3895, !3896, !3897, !3898}
!3894 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3890, file: !556, line: 1014, type: !136)
!3895 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3890, file: !556, line: 1015, type: !136)
!3896 = !DILocalVariable(name: "arg", arg: 4, scope: !3890, file: !556, line: 1016, type: !136)
!3897 = !DILocalVariable(name: "argsize", arg: 5, scope: !3890, file: !556, line: 1016, type: !133)
!3898 = !DILocalVariable(name: "o", scope: !3890, file: !556, line: 1018, type: !592)
!3899 = !DILocation(line: 0, scope: !3890, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 1009, column: 10, scope: !3880)
!3901 = !DILocation(line: 1018, column: 3, scope: !3890, inlinedAt: !3900)
!3902 = !DILocation(line: 1018, column: 26, scope: !3890, inlinedAt: !3900)
!3903 = !DILocation(line: 1018, column: 30, scope: !3890, inlinedAt: !3900)
!3904 = !DILocation(line: 0, scope: !2821, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 1019, column: 3, scope: !3890, inlinedAt: !3900)
!3906 = !DILocation(line: 174, column: 12, scope: !2821, inlinedAt: !3905)
!3907 = !DILocation(line: 175, column: 8, scope: !2834, inlinedAt: !3905)
!3908 = !DILocation(line: 175, column: 19, scope: !2834, inlinedAt: !3905)
!3909 = !DILocation(line: 176, column: 5, scope: !2834, inlinedAt: !3905)
!3910 = !DILocation(line: 177, column: 6, scope: !2821, inlinedAt: !3905)
!3911 = !DILocation(line: 177, column: 17, scope: !2821, inlinedAt: !3905)
!3912 = !DILocation(line: 178, column: 6, scope: !2821, inlinedAt: !3905)
!3913 = !DILocation(line: 178, column: 18, scope: !2821, inlinedAt: !3905)
!3914 = !DILocation(line: 1020, column: 10, scope: !3890, inlinedAt: !3900)
!3915 = !DILocation(line: 1021, column: 1, scope: !3890, inlinedAt: !3900)
!3916 = !DILocation(line: 1009, column: 3, scope: !3880)
!3917 = !DILocation(line: 0, scope: !3890)
!3918 = !DILocation(line: 1018, column: 3, scope: !3890)
!3919 = !DILocation(line: 1018, column: 26, scope: !3890)
!3920 = !DILocation(line: 1018, column: 30, scope: !3890)
!3921 = !DILocation(line: 0, scope: !2821, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1019, column: 3, scope: !3890)
!3923 = !DILocation(line: 174, column: 12, scope: !2821, inlinedAt: !3922)
!3924 = !DILocation(line: 175, column: 8, scope: !2834, inlinedAt: !3922)
!3925 = !DILocation(line: 175, column: 19, scope: !2834, inlinedAt: !3922)
!3926 = !DILocation(line: 176, column: 5, scope: !2834, inlinedAt: !3922)
!3927 = !DILocation(line: 177, column: 6, scope: !2821, inlinedAt: !3922)
!3928 = !DILocation(line: 177, column: 17, scope: !2821, inlinedAt: !3922)
!3929 = !DILocation(line: 178, column: 6, scope: !2821, inlinedAt: !3922)
!3930 = !DILocation(line: 178, column: 18, scope: !2821, inlinedAt: !3922)
!3931 = !DILocation(line: 1020, column: 10, scope: !3890)
!3932 = !DILocation(line: 1021, column: 1, scope: !3890)
!3933 = !DILocation(line: 1020, column: 3, scope: !3890)
!3934 = distinct !DISubprogram(name: "quotearg_custom", scope: !556, file: !556, line: 1024, type: !3935, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!130, !136, !136, !136}
!3937 = !{!3938, !3939, !3940}
!3938 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3934, file: !556, line: 1024, type: !136)
!3939 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3934, file: !556, line: 1024, type: !136)
!3940 = !DILocalVariable(name: "arg", arg: 3, scope: !3934, file: !556, line: 1025, type: !136)
!3941 = !DILocation(line: 0, scope: !3934)
!3942 = !DILocation(line: 0, scope: !3880, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 1027, column: 10, scope: !3934)
!3944 = !DILocation(line: 0, scope: !3890, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 1009, column: 10, scope: !3880, inlinedAt: !3943)
!3946 = !DILocation(line: 1018, column: 3, scope: !3890, inlinedAt: !3945)
!3947 = !DILocation(line: 1018, column: 26, scope: !3890, inlinedAt: !3945)
!3948 = !DILocation(line: 1018, column: 30, scope: !3890, inlinedAt: !3945)
!3949 = !DILocation(line: 0, scope: !2821, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 1019, column: 3, scope: !3890, inlinedAt: !3945)
!3951 = !DILocation(line: 174, column: 12, scope: !2821, inlinedAt: !3950)
!3952 = !DILocation(line: 175, column: 8, scope: !2834, inlinedAt: !3950)
!3953 = !DILocation(line: 175, column: 19, scope: !2834, inlinedAt: !3950)
!3954 = !DILocation(line: 176, column: 5, scope: !2834, inlinedAt: !3950)
!3955 = !DILocation(line: 177, column: 6, scope: !2821, inlinedAt: !3950)
!3956 = !DILocation(line: 177, column: 17, scope: !2821, inlinedAt: !3950)
!3957 = !DILocation(line: 178, column: 6, scope: !2821, inlinedAt: !3950)
!3958 = !DILocation(line: 178, column: 18, scope: !2821, inlinedAt: !3950)
!3959 = !DILocation(line: 1020, column: 10, scope: !3890, inlinedAt: !3945)
!3960 = !DILocation(line: 1021, column: 1, scope: !3890, inlinedAt: !3945)
!3961 = !DILocation(line: 1027, column: 3, scope: !3934)
!3962 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !556, file: !556, line: 1031, type: !3963, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!130, !136, !136, !136, !133}
!3965 = !{!3966, !3967, !3968, !3969}
!3966 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3962, file: !556, line: 1031, type: !136)
!3967 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3962, file: !556, line: 1031, type: !136)
!3968 = !DILocalVariable(name: "arg", arg: 3, scope: !3962, file: !556, line: 1032, type: !136)
!3969 = !DILocalVariable(name: "argsize", arg: 4, scope: !3962, file: !556, line: 1032, type: !133)
!3970 = !DILocation(line: 0, scope: !3962)
!3971 = !DILocation(line: 0, scope: !3890, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 1034, column: 10, scope: !3962)
!3973 = !DILocation(line: 1018, column: 3, scope: !3890, inlinedAt: !3972)
!3974 = !DILocation(line: 1018, column: 26, scope: !3890, inlinedAt: !3972)
!3975 = !DILocation(line: 1018, column: 30, scope: !3890, inlinedAt: !3972)
!3976 = !DILocation(line: 0, scope: !2821, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 1019, column: 3, scope: !3890, inlinedAt: !3972)
!3978 = !DILocation(line: 174, column: 12, scope: !2821, inlinedAt: !3977)
!3979 = !DILocation(line: 175, column: 8, scope: !2834, inlinedAt: !3977)
!3980 = !DILocation(line: 175, column: 19, scope: !2834, inlinedAt: !3977)
!3981 = !DILocation(line: 176, column: 5, scope: !2834, inlinedAt: !3977)
!3982 = !DILocation(line: 177, column: 6, scope: !2821, inlinedAt: !3977)
!3983 = !DILocation(line: 177, column: 17, scope: !2821, inlinedAt: !3977)
!3984 = !DILocation(line: 178, column: 6, scope: !2821, inlinedAt: !3977)
!3985 = !DILocation(line: 178, column: 18, scope: !2821, inlinedAt: !3977)
!3986 = !DILocation(line: 1020, column: 10, scope: !3890, inlinedAt: !3972)
!3987 = !DILocation(line: 1021, column: 1, scope: !3890, inlinedAt: !3972)
!3988 = !DILocation(line: 1034, column: 3, scope: !3962)
!3989 = distinct !DISubprogram(name: "quote_n_mem", scope: !556, file: !556, line: 1049, type: !3990, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!136, !87, !136, !133}
!3992 = !{!3993, !3994, !3995}
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3989, file: !556, line: 1049, type: !87)
!3994 = !DILocalVariable(name: "arg", arg: 2, scope: !3989, file: !556, line: 1049, type: !136)
!3995 = !DILocalVariable(name: "argsize", arg: 3, scope: !3989, file: !556, line: 1049, type: !133)
!3996 = !DILocation(line: 0, scope: !3989)
!3997 = !DILocation(line: 1051, column: 10, scope: !3989)
!3998 = !DILocation(line: 1051, column: 3, scope: !3989)
!3999 = distinct !DISubprogram(name: "quote_mem", scope: !556, file: !556, line: 1055, type: !4000, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!136, !136, !133}
!4002 = !{!4003, !4004}
!4003 = !DILocalVariable(name: "arg", arg: 1, scope: !3999, file: !556, line: 1055, type: !136)
!4004 = !DILocalVariable(name: "argsize", arg: 2, scope: !3999, file: !556, line: 1055, type: !133)
!4005 = !DILocation(line: 0, scope: !3999)
!4006 = !DILocation(line: 0, scope: !3989, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 1057, column: 10, scope: !3999)
!4008 = !DILocation(line: 1051, column: 10, scope: !3989, inlinedAt: !4007)
!4009 = !DILocation(line: 1057, column: 3, scope: !3999)
!4010 = distinct !DISubprogram(name: "quote_n", scope: !556, file: !556, line: 1061, type: !4011, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!136, !87, !136}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "n", arg: 1, scope: !4010, file: !556, line: 1061, type: !87)
!4015 = !DILocalVariable(name: "arg", arg: 2, scope: !4010, file: !556, line: 1061, type: !136)
!4016 = !DILocation(line: 0, scope: !4010)
!4017 = !DILocation(line: 0, scope: !3989, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 1063, column: 10, scope: !4010)
!4019 = !DILocation(line: 1051, column: 10, scope: !3989, inlinedAt: !4018)
!4020 = !DILocation(line: 1063, column: 3, scope: !4010)
!4021 = distinct !DISubprogram(name: "quote", scope: !556, file: !556, line: 1067, type: !4022, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!136, !136}
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "arg", arg: 1, scope: !4021, file: !556, line: 1067, type: !136)
!4026 = !DILocation(line: 0, scope: !4021)
!4027 = !DILocation(line: 0, scope: !4010, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 1069, column: 10, scope: !4021)
!4029 = !DILocation(line: 0, scope: !3989, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 1063, column: 10, scope: !4010, inlinedAt: !4028)
!4031 = !DILocation(line: 1051, column: 10, scope: !3989, inlinedAt: !4030)
!4032 = !DILocation(line: 1069, column: 3, scope: !4021)
!4033 = distinct !DISubprogram(name: "version_etc_arn", scope: !651, file: !651, line: 61, type: !4034, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4071)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{null, !4036, !136, !136, !136, !4070, !133}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4038)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4038, file: !213, line: 51, baseType: !87, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4038, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4038, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4038, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4038, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4038, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4038, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4038, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4038, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4038, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4038, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4038, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4038, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4038, file: !213, line: 70, baseType: !4054, size: 64, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4038, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4038, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4038, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4038, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4038, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4038, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4038, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4038, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4038, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4038, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4038, file: !213, line: 93, baseType: !4054, size: 64, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4038, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4038, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4038, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4038, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077}
!4072 = !DILocalVariable(name: "stream", arg: 1, scope: !4033, file: !651, line: 61, type: !4036)
!4073 = !DILocalVariable(name: "command_name", arg: 2, scope: !4033, file: !651, line: 62, type: !136)
!4074 = !DILocalVariable(name: "package", arg: 3, scope: !4033, file: !651, line: 62, type: !136)
!4075 = !DILocalVariable(name: "version", arg: 4, scope: !4033, file: !651, line: 63, type: !136)
!4076 = !DILocalVariable(name: "authors", arg: 5, scope: !4033, file: !651, line: 64, type: !4070)
!4077 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4033, file: !651, line: 64, type: !133)
!4078 = !DILocation(line: 0, scope: !4033)
!4079 = !DILocation(line: 66, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4033, file: !651, line: 66, column: 7)
!4081 = !DILocation(line: 66, column: 7, scope: !4033)
!4082 = !DILocation(line: 67, column: 5, scope: !4080)
!4083 = !DILocation(line: 69, column: 5, scope: !4080)
!4084 = !DILocation(line: 83, column: 3, scope: !4033)
!4085 = !DILocation(line: 85, column: 3, scope: !4033)
!4086 = !DILocation(line: 88, column: 3, scope: !4033)
!4087 = !DILocation(line: 95, column: 3, scope: !4033)
!4088 = !DILocation(line: 97, column: 3, scope: !4033)
!4089 = !DILocation(line: 105, column: 7, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4033, file: !651, line: 98, column: 5)
!4091 = !DILocation(line: 106, column: 7, scope: !4090)
!4092 = !DILocation(line: 109, column: 7, scope: !4090)
!4093 = !DILocation(line: 110, column: 7, scope: !4090)
!4094 = !DILocation(line: 113, column: 7, scope: !4090)
!4095 = !DILocation(line: 115, column: 7, scope: !4090)
!4096 = !DILocation(line: 120, column: 7, scope: !4090)
!4097 = !DILocation(line: 122, column: 7, scope: !4090)
!4098 = !DILocation(line: 127, column: 7, scope: !4090)
!4099 = !DILocation(line: 129, column: 7, scope: !4090)
!4100 = !DILocation(line: 134, column: 7, scope: !4090)
!4101 = !DILocation(line: 137, column: 7, scope: !4090)
!4102 = !DILocation(line: 142, column: 7, scope: !4090)
!4103 = !DILocation(line: 145, column: 7, scope: !4090)
!4104 = !DILocation(line: 150, column: 7, scope: !4090)
!4105 = !DILocation(line: 154, column: 7, scope: !4090)
!4106 = !DILocation(line: 159, column: 7, scope: !4090)
!4107 = !DILocation(line: 163, column: 7, scope: !4090)
!4108 = !DILocation(line: 170, column: 7, scope: !4090)
!4109 = !DILocation(line: 174, column: 7, scope: !4090)
!4110 = !DILocation(line: 176, column: 1, scope: !4033)
!4111 = distinct !DISubprogram(name: "version_etc_ar", scope: !651, file: !651, line: 183, type: !4112, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !4036, !136, !136, !136, !4070}
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120}
!4115 = !DILocalVariable(name: "stream", arg: 1, scope: !4111, file: !651, line: 183, type: !4036)
!4116 = !DILocalVariable(name: "command_name", arg: 2, scope: !4111, file: !651, line: 184, type: !136)
!4117 = !DILocalVariable(name: "package", arg: 3, scope: !4111, file: !651, line: 184, type: !136)
!4118 = !DILocalVariable(name: "version", arg: 4, scope: !4111, file: !651, line: 185, type: !136)
!4119 = !DILocalVariable(name: "authors", arg: 5, scope: !4111, file: !651, line: 185, type: !4070)
!4120 = !DILocalVariable(name: "n_authors", scope: !4111, file: !651, line: 187, type: !133)
!4121 = !DILocation(line: 0, scope: !4111)
!4122 = !DILocation(line: 189, column: 8, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4111, file: !651, line: 189, column: 3)
!4124 = !DILocation(line: 189, scope: !4123)
!4125 = !DILocation(line: 189, column: 23, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4123, file: !651, line: 189, column: 3)
!4127 = !DILocation(line: 189, column: 3, scope: !4123)
!4128 = !DILocation(line: 189, column: 52, scope: !4126)
!4129 = distinct !{!4129, !4127, !4130, !981}
!4130 = !DILocation(line: 190, column: 5, scope: !4123)
!4131 = !DILocation(line: 191, column: 3, scope: !4111)
!4132 = !DILocation(line: 192, column: 1, scope: !4111)
!4133 = distinct !DISubprogram(name: "version_etc_va", scope: !651, file: !651, line: 199, type: !4134, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4147)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !4036, !136, !136, !136, !4136}
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !470, line: 52, baseType: !4137)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !472, line: 14, baseType: !4138)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4139, baseType: !4140)
!4139 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4140, file: !4139, line: 192, baseType: !131, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4140, file: !4139, line: 192, baseType: !131, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4140, file: !4139, line: 192, baseType: !131, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4140, file: !4139, line: 192, baseType: !87, size: 32, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4140, file: !4139, line: 192, baseType: !87, size: 32, offset: 224)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154}
!4148 = !DILocalVariable(name: "stream", arg: 1, scope: !4133, file: !651, line: 199, type: !4036)
!4149 = !DILocalVariable(name: "command_name", arg: 2, scope: !4133, file: !651, line: 200, type: !136)
!4150 = !DILocalVariable(name: "package", arg: 3, scope: !4133, file: !651, line: 200, type: !136)
!4151 = !DILocalVariable(name: "version", arg: 4, scope: !4133, file: !651, line: 201, type: !136)
!4152 = !DILocalVariable(name: "authors", arg: 5, scope: !4133, file: !651, line: 201, type: !4136)
!4153 = !DILocalVariable(name: "n_authors", scope: !4133, file: !651, line: 203, type: !133)
!4154 = !DILocalVariable(name: "authtab", scope: !4133, file: !651, line: 204, type: !4155)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4156 = !DILocation(line: 0, scope: !4133)
!4157 = !DILocation(line: 201, column: 46, scope: !4133)
!4158 = !DILocation(line: 204, column: 3, scope: !4133)
!4159 = !DILocation(line: 204, column: 15, scope: !4133)
!4160 = !DILocation(line: 208, column: 35, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !651, line: 206, column: 3)
!4162 = distinct !DILexicalBlock(scope: !4133, file: !651, line: 206, column: 3)
!4163 = !DILocation(line: 208, column: 33, scope: !4161)
!4164 = !DILocation(line: 208, column: 67, scope: !4161)
!4165 = !DILocation(line: 206, column: 3, scope: !4162)
!4166 = !DILocation(line: 208, column: 14, scope: !4161)
!4167 = !DILocation(line: 0, scope: !4162)
!4168 = !DILocation(line: 211, column: 3, scope: !4133)
!4169 = !DILocation(line: 213, column: 1, scope: !4133)
!4170 = distinct !DISubprogram(name: "version_etc", scope: !651, file: !651, line: 230, type: !4171, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4036, !136, !136, !136, null}
!4173 = !{!4174, !4175, !4176, !4177, !4178}
!4174 = !DILocalVariable(name: "stream", arg: 1, scope: !4170, file: !651, line: 230, type: !4036)
!4175 = !DILocalVariable(name: "command_name", arg: 2, scope: !4170, file: !651, line: 231, type: !136)
!4176 = !DILocalVariable(name: "package", arg: 3, scope: !4170, file: !651, line: 231, type: !136)
!4177 = !DILocalVariable(name: "version", arg: 4, scope: !4170, file: !651, line: 232, type: !136)
!4178 = !DILocalVariable(name: "authors", scope: !4170, file: !651, line: 234, type: !4136)
!4179 = !DILocation(line: 0, scope: !4170)
!4180 = !DILocation(line: 234, column: 3, scope: !4170)
!4181 = !DILocation(line: 234, column: 11, scope: !4170)
!4182 = !DILocation(line: 235, column: 3, scope: !4170)
!4183 = !DILocation(line: 236, column: 3, scope: !4170)
!4184 = !DILocation(line: 237, column: 3, scope: !4170)
!4185 = !DILocation(line: 238, column: 1, scope: !4170)
!4186 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !651, file: !651, line: 241, type: !511, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !873)
!4187 = !DILocation(line: 243, column: 3, scope: !4186)
!4188 = !DILocation(line: 248, column: 3, scope: !4186)
!4189 = !DILocation(line: 254, column: 3, scope: !4186)
!4190 = !DILocation(line: 259, column: 3, scope: !4186)
!4191 = !DILocation(line: 261, column: 1, scope: !4186)
!4192 = distinct !DISubprogram(name: "xnrealloc", scope: !4193, file: !4193, line: 147, type: !4194, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4196)
!4193 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!131, !131, !133, !133}
!4196 = !{!4197, !4198, !4199}
!4197 = !DILocalVariable(name: "p", arg: 1, scope: !4192, file: !4193, line: 147, type: !131)
!4198 = !DILocalVariable(name: "n", arg: 2, scope: !4192, file: !4193, line: 147, type: !133)
!4199 = !DILocalVariable(name: "s", arg: 3, scope: !4192, file: !4193, line: 147, type: !133)
!4200 = !DILocation(line: 0, scope: !4192)
!4201 = !DILocalVariable(name: "p", arg: 1, scope: !4202, file: !790, line: 83, type: !131)
!4202 = distinct !DISubprogram(name: "xreallocarray", scope: !790, file: !790, line: 83, type: !4194, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4203)
!4203 = !{!4201, !4204, !4205}
!4204 = !DILocalVariable(name: "n", arg: 2, scope: !4202, file: !790, line: 83, type: !133)
!4205 = !DILocalVariable(name: "s", arg: 3, scope: !4202, file: !790, line: 83, type: !133)
!4206 = !DILocation(line: 0, scope: !4202, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 149, column: 10, scope: !4192)
!4208 = !DILocation(line: 85, column: 25, scope: !4202, inlinedAt: !4207)
!4209 = !DILocalVariable(name: "p", arg: 1, scope: !4210, file: !790, line: 37, type: !131)
!4210 = distinct !DISubprogram(name: "check_nonnull", scope: !790, file: !790, line: 37, type: !4211, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!131, !131}
!4213 = !{!4209}
!4214 = !DILocation(line: 0, scope: !4210, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 85, column: 10, scope: !4202, inlinedAt: !4207)
!4216 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4215)
!4217 = distinct !DILexicalBlock(scope: !4210, file: !790, line: 39, column: 7)
!4218 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4215)
!4219 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4215)
!4220 = !DILocation(line: 149, column: 3, scope: !4192)
!4221 = !DILocation(line: 0, scope: !4202)
!4222 = !DILocation(line: 85, column: 25, scope: !4202)
!4223 = !DILocation(line: 0, scope: !4210, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 85, column: 10, scope: !4202)
!4225 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4224)
!4226 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4224)
!4227 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4224)
!4228 = !DILocation(line: 85, column: 3, scope: !4202)
!4229 = distinct !DISubprogram(name: "xmalloc", scope: !790, file: !790, line: 47, type: !1787, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4230)
!4230 = !{!4231}
!4231 = !DILocalVariable(name: "s", arg: 1, scope: !4229, file: !790, line: 47, type: !133)
!4232 = !DILocation(line: 0, scope: !4229)
!4233 = !DILocation(line: 49, column: 25, scope: !4229)
!4234 = !DILocation(line: 0, scope: !4210, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 49, column: 10, scope: !4229)
!4236 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4235)
!4239 = !DILocation(line: 49, column: 3, scope: !4229)
!4240 = distinct !DISubprogram(name: "ximalloc", scope: !790, file: !790, line: 53, type: !1773, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4241)
!4241 = !{!4242}
!4242 = !DILocalVariable(name: "s", arg: 1, scope: !4240, file: !790, line: 53, type: !809)
!4243 = !DILocation(line: 0, scope: !4240)
!4244 = !DILocalVariable(name: "s", arg: 1, scope: !4245, file: !1772, line: 55, type: !809)
!4245 = distinct !DISubprogram(name: "imalloc", scope: !1772, file: !1772, line: 55, type: !1773, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4246)
!4246 = !{!4244}
!4247 = !DILocation(line: 0, scope: !4245, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 55, column: 25, scope: !4240)
!4249 = !DILocation(line: 57, column: 26, scope: !4245, inlinedAt: !4248)
!4250 = !DILocation(line: 0, scope: !4210, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 55, column: 10, scope: !4240)
!4252 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4251)
!4254 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4251)
!4255 = !DILocation(line: 55, column: 3, scope: !4240)
!4256 = distinct !DISubprogram(name: "xcharalloc", scope: !790, file: !790, line: 59, type: !4257, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!130, !133}
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "n", arg: 1, scope: !4256, file: !790, line: 59, type: !133)
!4261 = !DILocation(line: 0, scope: !4256)
!4262 = !DILocation(line: 0, scope: !4229, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 61, column: 10, scope: !4256)
!4264 = !DILocation(line: 49, column: 25, scope: !4229, inlinedAt: !4263)
!4265 = !DILocation(line: 0, scope: !4210, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 49, column: 10, scope: !4229, inlinedAt: !4263)
!4267 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4266)
!4268 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4266)
!4269 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4266)
!4270 = !DILocation(line: 61, column: 3, scope: !4256)
!4271 = distinct !DISubprogram(name: "xrealloc", scope: !790, file: !790, line: 68, type: !4272, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!131, !131, !133}
!4274 = !{!4275, !4276}
!4275 = !DILocalVariable(name: "p", arg: 1, scope: !4271, file: !790, line: 68, type: !131)
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4271, file: !790, line: 68, type: !133)
!4277 = !DILocation(line: 0, scope: !4271)
!4278 = !DILocalVariable(name: "ptr", arg: 1, scope: !4279, file: !4280, line: 2057, type: !131)
!4279 = distinct !DISubprogram(name: "rpl_realloc", scope: !4280, file: !4280, line: 2057, type: !4272, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4281)
!4280 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4281 = !{!4278, !4282}
!4282 = !DILocalVariable(name: "size", arg: 2, scope: !4279, file: !4280, line: 2057, type: !133)
!4283 = !DILocation(line: 0, scope: !4279, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 70, column: 25, scope: !4271)
!4285 = !DILocation(line: 2059, column: 24, scope: !4279, inlinedAt: !4284)
!4286 = !DILocation(line: 2059, column: 10, scope: !4279, inlinedAt: !4284)
!4287 = !DILocation(line: 0, scope: !4210, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 70, column: 10, scope: !4271)
!4289 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4288)
!4290 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4288)
!4291 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4288)
!4292 = !DILocation(line: 70, column: 3, scope: !4271)
!4293 = !DISubprogram(name: "realloc", scope: !1055, file: !1055, line: 551, type: !4272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4294 = distinct !DISubprogram(name: "xirealloc", scope: !790, file: !790, line: 74, type: !4295, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!131, !131, !809}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !790, line: 74, type: !131)
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !790, line: 74, type: !809)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocalVariable(name: "p", arg: 1, scope: !4302, file: !1772, line: 66, type: !131)
!4302 = distinct !DISubprogram(name: "irealloc", scope: !1772, file: !1772, line: 66, type: !4295, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4303)
!4303 = !{!4301, !4304}
!4304 = !DILocalVariable(name: "s", arg: 2, scope: !4302, file: !1772, line: 66, type: !809)
!4305 = !DILocation(line: 0, scope: !4302, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 76, column: 25, scope: !4294)
!4307 = !DILocation(line: 0, scope: !4279, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 68, column: 26, scope: !4302, inlinedAt: !4306)
!4309 = !DILocation(line: 2059, column: 24, scope: !4279, inlinedAt: !4308)
!4310 = !DILocation(line: 2059, column: 10, scope: !4279, inlinedAt: !4308)
!4311 = !DILocation(line: 0, scope: !4210, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 76, column: 10, scope: !4294)
!4313 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4312)
!4314 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4312)
!4315 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4312)
!4316 = !DILocation(line: 76, column: 3, scope: !4294)
!4317 = distinct !DISubprogram(name: "xireallocarray", scope: !790, file: !790, line: 89, type: !4318, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4320)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!131, !131, !809, !809}
!4320 = !{!4321, !4322, !4323}
!4321 = !DILocalVariable(name: "p", arg: 1, scope: !4317, file: !790, line: 89, type: !131)
!4322 = !DILocalVariable(name: "n", arg: 2, scope: !4317, file: !790, line: 89, type: !809)
!4323 = !DILocalVariable(name: "s", arg: 3, scope: !4317, file: !790, line: 89, type: !809)
!4324 = !DILocation(line: 0, scope: !4317)
!4325 = !DILocalVariable(name: "p", arg: 1, scope: !4326, file: !1772, line: 98, type: !131)
!4326 = distinct !DISubprogram(name: "ireallocarray", scope: !1772, file: !1772, line: 98, type: !4318, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4327)
!4327 = !{!4325, !4328, !4329}
!4328 = !DILocalVariable(name: "n", arg: 2, scope: !4326, file: !1772, line: 98, type: !809)
!4329 = !DILocalVariable(name: "s", arg: 3, scope: !4326, file: !1772, line: 98, type: !809)
!4330 = !DILocation(line: 0, scope: !4326, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 91, column: 25, scope: !4317)
!4332 = !DILocation(line: 101, column: 13, scope: !4326, inlinedAt: !4331)
!4333 = !DILocation(line: 0, scope: !4210, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 91, column: 10, scope: !4317)
!4335 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4334)
!4336 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4334)
!4337 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4334)
!4338 = !DILocation(line: 91, column: 3, scope: !4317)
!4339 = distinct !DISubprogram(name: "xnmalloc", scope: !790, file: !790, line: 98, type: !4340, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!131, !133, !133}
!4342 = !{!4343, !4344}
!4343 = !DILocalVariable(name: "n", arg: 1, scope: !4339, file: !790, line: 98, type: !133)
!4344 = !DILocalVariable(name: "s", arg: 2, scope: !4339, file: !790, line: 98, type: !133)
!4345 = !DILocation(line: 0, scope: !4339)
!4346 = !DILocation(line: 0, scope: !4202, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 100, column: 10, scope: !4339)
!4348 = !DILocation(line: 85, column: 25, scope: !4202, inlinedAt: !4347)
!4349 = !DILocation(line: 0, scope: !4210, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 85, column: 10, scope: !4202, inlinedAt: !4347)
!4351 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4350)
!4352 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4350)
!4353 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4350)
!4354 = !DILocation(line: 100, column: 3, scope: !4339)
!4355 = distinct !DISubprogram(name: "xinmalloc", scope: !790, file: !790, line: 104, type: !4356, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!131, !809, !809}
!4358 = !{!4359, !4360}
!4359 = !DILocalVariable(name: "n", arg: 1, scope: !4355, file: !790, line: 104, type: !809)
!4360 = !DILocalVariable(name: "s", arg: 2, scope: !4355, file: !790, line: 104, type: !809)
!4361 = !DILocation(line: 0, scope: !4355)
!4362 = !DILocation(line: 0, scope: !4317, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 106, column: 10, scope: !4355)
!4364 = !DILocation(line: 0, scope: !4326, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 91, column: 25, scope: !4317, inlinedAt: !4363)
!4366 = !DILocation(line: 101, column: 13, scope: !4326, inlinedAt: !4365)
!4367 = !DILocation(line: 0, scope: !4210, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 91, column: 10, scope: !4317, inlinedAt: !4363)
!4369 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4368)
!4370 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4368)
!4371 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4368)
!4372 = !DILocation(line: 106, column: 3, scope: !4355)
!4373 = distinct !DISubprogram(name: "x2realloc", scope: !790, file: !790, line: 116, type: !4374, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4376)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!131, !131, !796}
!4376 = !{!4377, !4378}
!4377 = !DILocalVariable(name: "p", arg: 1, scope: !4373, file: !790, line: 116, type: !131)
!4378 = !DILocalVariable(name: "ps", arg: 2, scope: !4373, file: !790, line: 116, type: !796)
!4379 = !DILocation(line: 0, scope: !4373)
!4380 = !DILocation(line: 0, scope: !793, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 118, column: 10, scope: !4373)
!4382 = !DILocation(line: 178, column: 14, scope: !793, inlinedAt: !4381)
!4383 = !DILocation(line: 180, column: 9, scope: !4384, inlinedAt: !4381)
!4384 = distinct !DILexicalBlock(scope: !793, file: !790, line: 180, column: 7)
!4385 = !DILocation(line: 180, column: 7, scope: !793, inlinedAt: !4381)
!4386 = !DILocation(line: 182, column: 13, scope: !4387, inlinedAt: !4381)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !790, line: 182, column: 11)
!4388 = distinct !DILexicalBlock(scope: !4384, file: !790, line: 181, column: 5)
!4389 = !DILocation(line: 182, column: 11, scope: !4388, inlinedAt: !4381)
!4390 = !DILocation(line: 197, column: 11, scope: !4391, inlinedAt: !4381)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !790, line: 197, column: 11)
!4392 = distinct !DILexicalBlock(scope: !4384, file: !790, line: 195, column: 5)
!4393 = !DILocation(line: 197, column: 11, scope: !4392, inlinedAt: !4381)
!4394 = !DILocation(line: 198, column: 9, scope: !4391, inlinedAt: !4381)
!4395 = !DILocation(line: 0, scope: !4202, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 201, column: 7, scope: !793, inlinedAt: !4381)
!4397 = !DILocation(line: 85, column: 25, scope: !4202, inlinedAt: !4396)
!4398 = !DILocation(line: 0, scope: !4210, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 85, column: 10, scope: !4202, inlinedAt: !4396)
!4400 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4399)
!4401 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4399)
!4402 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4399)
!4403 = !DILocation(line: 202, column: 7, scope: !793, inlinedAt: !4381)
!4404 = !DILocation(line: 118, column: 3, scope: !4373)
!4405 = !DILocation(line: 0, scope: !793)
!4406 = !DILocation(line: 178, column: 14, scope: !793)
!4407 = !DILocation(line: 180, column: 9, scope: !4384)
!4408 = !DILocation(line: 180, column: 7, scope: !793)
!4409 = !DILocation(line: 182, column: 13, scope: !4387)
!4410 = !DILocation(line: 182, column: 11, scope: !4388)
!4411 = !DILocation(line: 190, column: 30, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4387, file: !790, line: 183, column: 9)
!4413 = !DILocation(line: 191, column: 16, scope: !4412)
!4414 = !DILocation(line: 191, column: 13, scope: !4412)
!4415 = !DILocation(line: 192, column: 9, scope: !4412)
!4416 = !DILocation(line: 197, column: 11, scope: !4391)
!4417 = !DILocation(line: 197, column: 11, scope: !4392)
!4418 = !DILocation(line: 198, column: 9, scope: !4391)
!4419 = !DILocation(line: 0, scope: !4202, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 201, column: 7, scope: !793)
!4421 = !DILocation(line: 85, column: 25, scope: !4202, inlinedAt: !4420)
!4422 = !DILocation(line: 0, scope: !4210, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 85, column: 10, scope: !4202, inlinedAt: !4420)
!4424 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4423)
!4425 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4423)
!4426 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4423)
!4427 = !DILocation(line: 202, column: 7, scope: !793)
!4428 = !DILocation(line: 203, column: 3, scope: !793)
!4429 = !DILocation(line: 0, scope: !805)
!4430 = !DILocation(line: 230, column: 14, scope: !805)
!4431 = !DILocation(line: 238, column: 7, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !805, file: !790, line: 238, column: 7)
!4433 = !DILocation(line: 238, column: 7, scope: !805)
!4434 = !DILocation(line: 240, column: 9, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !805, file: !790, line: 240, column: 7)
!4436 = !DILocation(line: 240, column: 18, scope: !4435)
!4437 = !DILocation(line: 253, column: 8, scope: !805)
!4438 = !DILocation(line: 258, column: 27, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !790, line: 257, column: 5)
!4440 = distinct !DILexicalBlock(scope: !805, file: !790, line: 256, column: 7)
!4441 = !DILocation(line: 259, column: 32, scope: !4439)
!4442 = !DILocation(line: 260, column: 5, scope: !4439)
!4443 = !DILocation(line: 262, column: 9, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !805, file: !790, line: 262, column: 7)
!4445 = !DILocation(line: 262, column: 7, scope: !805)
!4446 = !DILocation(line: 263, column: 9, scope: !4444)
!4447 = !DILocation(line: 263, column: 5, scope: !4444)
!4448 = !DILocation(line: 264, column: 9, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !805, file: !790, line: 264, column: 7)
!4450 = !DILocation(line: 264, column: 14, scope: !4449)
!4451 = !DILocation(line: 265, column: 7, scope: !4449)
!4452 = !DILocation(line: 265, column: 11, scope: !4449)
!4453 = !DILocation(line: 266, column: 11, scope: !4449)
!4454 = !DILocation(line: 267, column: 14, scope: !4449)
!4455 = !DILocation(line: 264, column: 7, scope: !805)
!4456 = !DILocation(line: 268, column: 5, scope: !4449)
!4457 = !DILocation(line: 0, scope: !4271, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 269, column: 8, scope: !805)
!4459 = !DILocation(line: 0, scope: !4279, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 70, column: 25, scope: !4271, inlinedAt: !4458)
!4461 = !DILocation(line: 2059, column: 24, scope: !4279, inlinedAt: !4460)
!4462 = !DILocation(line: 2059, column: 10, scope: !4279, inlinedAt: !4460)
!4463 = !DILocation(line: 0, scope: !4210, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 70, column: 10, scope: !4271, inlinedAt: !4458)
!4465 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4464)
!4466 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4464)
!4467 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4464)
!4468 = !DILocation(line: 270, column: 7, scope: !805)
!4469 = !DILocation(line: 271, column: 3, scope: !805)
!4470 = distinct !DISubprogram(name: "xzalloc", scope: !790, file: !790, line: 279, type: !1787, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4471)
!4471 = !{!4472}
!4472 = !DILocalVariable(name: "s", arg: 1, scope: !4470, file: !790, line: 279, type: !133)
!4473 = !DILocation(line: 0, scope: !4470)
!4474 = !DILocalVariable(name: "n", arg: 1, scope: !4475, file: !790, line: 294, type: !133)
!4475 = distinct !DISubprogram(name: "xcalloc", scope: !790, file: !790, line: 294, type: !4340, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4476)
!4476 = !{!4474, !4477}
!4477 = !DILocalVariable(name: "s", arg: 2, scope: !4475, file: !790, line: 294, type: !133)
!4478 = !DILocation(line: 0, scope: !4475, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 281, column: 10, scope: !4470)
!4480 = !DILocation(line: 296, column: 25, scope: !4475, inlinedAt: !4479)
!4481 = !DILocation(line: 0, scope: !4210, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 296, column: 10, scope: !4475, inlinedAt: !4479)
!4483 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4482)
!4484 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4482)
!4485 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4482)
!4486 = !DILocation(line: 281, column: 3, scope: !4470)
!4487 = !DISubprogram(name: "calloc", scope: !1055, file: !1055, line: 543, type: !4340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4488 = !DILocation(line: 0, scope: !4475)
!4489 = !DILocation(line: 296, column: 25, scope: !4475)
!4490 = !DILocation(line: 0, scope: !4210, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 296, column: 10, scope: !4475)
!4492 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4491)
!4493 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4491)
!4494 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4491)
!4495 = !DILocation(line: 296, column: 3, scope: !4475)
!4496 = distinct !DISubprogram(name: "xizalloc", scope: !790, file: !790, line: 285, type: !1773, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4497)
!4497 = !{!4498}
!4498 = !DILocalVariable(name: "s", arg: 1, scope: !4496, file: !790, line: 285, type: !809)
!4499 = !DILocation(line: 0, scope: !4496)
!4500 = !DILocalVariable(name: "n", arg: 1, scope: !4501, file: !790, line: 300, type: !809)
!4501 = distinct !DISubprogram(name: "xicalloc", scope: !790, file: !790, line: 300, type: !4356, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4502)
!4502 = !{!4500, !4503}
!4503 = !DILocalVariable(name: "s", arg: 2, scope: !4501, file: !790, line: 300, type: !809)
!4504 = !DILocation(line: 0, scope: !4501, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 287, column: 10, scope: !4496)
!4506 = !DILocalVariable(name: "n", arg: 1, scope: !4507, file: !1772, line: 77, type: !809)
!4507 = distinct !DISubprogram(name: "icalloc", scope: !1772, file: !1772, line: 77, type: !4356, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4508)
!4508 = !{!4506, !4509}
!4509 = !DILocalVariable(name: "s", arg: 2, scope: !4507, file: !1772, line: 77, type: !809)
!4510 = !DILocation(line: 0, scope: !4507, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 302, column: 25, scope: !4501, inlinedAt: !4505)
!4512 = !DILocation(line: 91, column: 10, scope: !4507, inlinedAt: !4511)
!4513 = !DILocation(line: 0, scope: !4210, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 302, column: 10, scope: !4501, inlinedAt: !4505)
!4515 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4514)
!4516 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4514)
!4517 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4514)
!4518 = !DILocation(line: 287, column: 3, scope: !4496)
!4519 = !DILocation(line: 0, scope: !4501)
!4520 = !DILocation(line: 0, scope: !4507, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 302, column: 25, scope: !4501)
!4522 = !DILocation(line: 91, column: 10, scope: !4507, inlinedAt: !4521)
!4523 = !DILocation(line: 0, scope: !4210, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 302, column: 10, scope: !4501)
!4525 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4524)
!4526 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4524)
!4527 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4524)
!4528 = !DILocation(line: 302, column: 3, scope: !4501)
!4529 = distinct !DISubprogram(name: "xmemdup", scope: !790, file: !790, line: 310, type: !4530, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!131, !1079, !133}
!4532 = !{!4533, !4534}
!4533 = !DILocalVariable(name: "p", arg: 1, scope: !4529, file: !790, line: 310, type: !1079)
!4534 = !DILocalVariable(name: "s", arg: 2, scope: !4529, file: !790, line: 310, type: !133)
!4535 = !DILocation(line: 0, scope: !4529)
!4536 = !DILocation(line: 0, scope: !4229, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 312, column: 18, scope: !4529)
!4538 = !DILocation(line: 49, column: 25, scope: !4229, inlinedAt: !4537)
!4539 = !DILocation(line: 0, scope: !4210, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 49, column: 10, scope: !4229, inlinedAt: !4537)
!4541 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4540)
!4542 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4540)
!4543 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4540)
!4544 = !DILocalVariable(name: "__dest", arg: 1, scope: !4545, file: !1266, line: 26, type: !4548)
!4545 = distinct !DISubprogram(name: "memcpy", scope: !1266, file: !1266, line: 26, type: !4546, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4549)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!131, !4548, !1078, !133}
!4548 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4549 = !{!4544, !4550, !4551}
!4550 = !DILocalVariable(name: "__src", arg: 2, scope: !4545, file: !1266, line: 26, type: !1078)
!4551 = !DILocalVariable(name: "__len", arg: 3, scope: !4545, file: !1266, line: 26, type: !133)
!4552 = !DILocation(line: 0, scope: !4545, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 312, column: 10, scope: !4529)
!4554 = !DILocation(line: 29, column: 10, scope: !4545, inlinedAt: !4553)
!4555 = !DILocation(line: 312, column: 3, scope: !4529)
!4556 = distinct !DISubprogram(name: "ximemdup", scope: !790, file: !790, line: 316, type: !4557, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4559)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!131, !1079, !809}
!4559 = !{!4560, !4561}
!4560 = !DILocalVariable(name: "p", arg: 1, scope: !4556, file: !790, line: 316, type: !1079)
!4561 = !DILocalVariable(name: "s", arg: 2, scope: !4556, file: !790, line: 316, type: !809)
!4562 = !DILocation(line: 0, scope: !4556)
!4563 = !DILocation(line: 0, scope: !4240, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 318, column: 18, scope: !4556)
!4565 = !DILocation(line: 0, scope: !4245, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 55, column: 25, scope: !4240, inlinedAt: !4564)
!4567 = !DILocation(line: 57, column: 26, scope: !4245, inlinedAt: !4566)
!4568 = !DILocation(line: 0, scope: !4210, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 55, column: 10, scope: !4240, inlinedAt: !4564)
!4570 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4569)
!4571 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4569)
!4572 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4569)
!4573 = !DILocation(line: 0, scope: !4545, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 318, column: 10, scope: !4556)
!4575 = !DILocation(line: 29, column: 10, scope: !4545, inlinedAt: !4574)
!4576 = !DILocation(line: 318, column: 3, scope: !4556)
!4577 = distinct !DISubprogram(name: "ximemdup0", scope: !790, file: !790, line: 325, type: !4578, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4580)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!130, !1079, !809}
!4580 = !{!4581, !4582, !4583}
!4581 = !DILocalVariable(name: "p", arg: 1, scope: !4577, file: !790, line: 325, type: !1079)
!4582 = !DILocalVariable(name: "s", arg: 2, scope: !4577, file: !790, line: 325, type: !809)
!4583 = !DILocalVariable(name: "result", scope: !4577, file: !790, line: 327, type: !130)
!4584 = !DILocation(line: 0, scope: !4577)
!4585 = !DILocation(line: 327, column: 30, scope: !4577)
!4586 = !DILocation(line: 0, scope: !4240, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 327, column: 18, scope: !4577)
!4588 = !DILocation(line: 0, scope: !4245, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 55, column: 25, scope: !4240, inlinedAt: !4587)
!4590 = !DILocation(line: 57, column: 26, scope: !4245, inlinedAt: !4589)
!4591 = !DILocation(line: 0, scope: !4210, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 55, column: 10, scope: !4240, inlinedAt: !4587)
!4593 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4592)
!4594 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4592)
!4595 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4592)
!4596 = !DILocation(line: 328, column: 3, scope: !4577)
!4597 = !DILocation(line: 328, column: 13, scope: !4577)
!4598 = !DILocation(line: 0, scope: !4545, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 329, column: 10, scope: !4577)
!4600 = !DILocation(line: 29, column: 10, scope: !4545, inlinedAt: !4599)
!4601 = !DILocation(line: 329, column: 3, scope: !4577)
!4602 = distinct !DISubprogram(name: "xstrdup", scope: !790, file: !790, line: 335, type: !1057, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4603)
!4603 = !{!4604}
!4604 = !DILocalVariable(name: "string", arg: 1, scope: !4602, file: !790, line: 335, type: !136)
!4605 = !DILocation(line: 0, scope: !4602)
!4606 = !DILocation(line: 337, column: 27, scope: !4602)
!4607 = !DILocation(line: 337, column: 43, scope: !4602)
!4608 = !DILocation(line: 0, scope: !4529, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 337, column: 10, scope: !4602)
!4610 = !DILocation(line: 0, scope: !4229, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 312, column: 18, scope: !4529, inlinedAt: !4609)
!4612 = !DILocation(line: 49, column: 25, scope: !4229, inlinedAt: !4611)
!4613 = !DILocation(line: 0, scope: !4210, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 49, column: 10, scope: !4229, inlinedAt: !4611)
!4615 = !DILocation(line: 39, column: 8, scope: !4217, inlinedAt: !4614)
!4616 = !DILocation(line: 39, column: 7, scope: !4210, inlinedAt: !4614)
!4617 = !DILocation(line: 40, column: 5, scope: !4217, inlinedAt: !4614)
!4618 = !DILocation(line: 0, scope: !4545, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 312, column: 10, scope: !4529, inlinedAt: !4609)
!4620 = !DILocation(line: 29, column: 10, scope: !4545, inlinedAt: !4619)
!4621 = !DILocation(line: 337, column: 3, scope: !4602)
!4622 = distinct !DISubprogram(name: "xalloc_die", scope: !741, file: !741, line: 32, type: !511, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4623)
!4623 = !{!4624}
!4624 = !DILocalVariable(name: "__errstatus", scope: !4625, file: !741, line: 34, type: !4626)
!4625 = distinct !DILexicalBlock(scope: !4622, file: !741, line: 34, column: 3)
!4626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4627 = !DILocation(line: 34, column: 3, scope: !4625)
!4628 = !DILocation(line: 0, scope: !4625)
!4629 = !DILocation(line: 40, column: 3, scope: !4622)
!4630 = distinct !DISubprogram(name: "xstrtoimax", scope: !4631, file: !4631, line: 71, type: !4632, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4635)
!4631 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!1098, !136, !1084, !87, !4634, !136}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!4635 = !{!4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4648, !4649}
!4636 = !DILocalVariable(name: "nptr", arg: 1, scope: !4630, file: !4631, line: 71, type: !136)
!4637 = !DILocalVariable(name: "endptr", arg: 2, scope: !4630, file: !4631, line: 71, type: !1084)
!4638 = !DILocalVariable(name: "base", arg: 3, scope: !4630, file: !4631, line: 71, type: !87)
!4639 = !DILocalVariable(name: "val", arg: 4, scope: !4630, file: !4631, line: 72, type: !4634)
!4640 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4630, file: !4631, line: 72, type: !136)
!4641 = !DILocalVariable(name: "t_ptr", scope: !4630, file: !4631, line: 74, type: !130)
!4642 = !DILocalVariable(name: "p", scope: !4630, file: !4631, line: 75, type: !1084)
!4643 = !DILocalVariable(name: "tmp", scope: !4630, file: !4631, line: 91, type: !829)
!4644 = !DILocalVariable(name: "err", scope: !4630, file: !4631, line: 92, type: !1098)
!4645 = !DILocalVariable(name: "xbase", scope: !4646, file: !4631, line: 126, type: !87)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !4631, line: 119, column: 5)
!4647 = distinct !DILexicalBlock(scope: !4630, file: !4631, line: 118, column: 7)
!4648 = !DILocalVariable(name: "suffixes", scope: !4646, file: !4631, line: 127, type: !87)
!4649 = !DILocalVariable(name: "overflow", scope: !4646, file: !4631, line: 156, type: !1098)
!4650 = !DILocation(line: 0, scope: !4630)
!4651 = !DILocation(line: 74, column: 3, scope: !4630)
!4652 = !DILocation(line: 75, column: 14, scope: !4630)
!4653 = !DILocation(line: 90, column: 3, scope: !4630)
!4654 = !DILocation(line: 90, column: 9, scope: !4630)
!4655 = !DILocation(line: 91, column: 20, scope: !4630)
!4656 = !DILocation(line: 94, column: 7, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4630, file: !4631, line: 94, column: 7)
!4658 = !DILocation(line: 94, column: 10, scope: !4657)
!4659 = !DILocation(line: 94, column: 7, scope: !4630)
!4660 = !DILocation(line: 98, column: 14, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !4631, line: 98, column: 11)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !4631, line: 95, column: 5)
!4663 = !DILocation(line: 98, column: 29, scope: !4661)
!4664 = !DILocation(line: 98, column: 32, scope: !4661)
!4665 = !DILocation(line: 98, column: 38, scope: !4661)
!4666 = !DILocation(line: 98, column: 41, scope: !4661)
!4667 = !DILocation(line: 98, column: 11, scope: !4662)
!4668 = !DILocation(line: 102, column: 12, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4657, file: !4631, line: 102, column: 12)
!4670 = !DILocation(line: 102, column: 12, scope: !4657)
!4671 = !DILocation(line: 107, column: 5, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4669, file: !4631, line: 103, column: 5)
!4673 = !DILocation(line: 112, column: 8, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4630, file: !4631, line: 112, column: 7)
!4675 = !DILocation(line: 112, column: 7, scope: !4630)
!4676 = !DILocation(line: 114, column: 12, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4674, file: !4631, line: 113, column: 5)
!4678 = !DILocation(line: 115, column: 7, scope: !4677)
!4679 = !DILocation(line: 118, column: 7, scope: !4647)
!4680 = !DILocation(line: 118, column: 11, scope: !4647)
!4681 = !DILocation(line: 118, column: 7, scope: !4630)
!4682 = !DILocation(line: 120, column: 12, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4646, file: !4631, line: 120, column: 11)
!4684 = !DILocation(line: 120, column: 11, scope: !4646)
!4685 = !DILocation(line: 122, column: 16, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4683, file: !4631, line: 121, column: 9)
!4687 = !DILocation(line: 123, column: 22, scope: !4686)
!4688 = !DILocation(line: 123, column: 11, scope: !4686)
!4689 = !DILocation(line: 0, scope: !4646)
!4690 = !DILocation(line: 128, column: 7, scope: !4646)
!4691 = !DILocation(line: 140, column: 15, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !4631, line: 140, column: 15)
!4693 = distinct !DILexicalBlock(scope: !4646, file: !4631, line: 129, column: 9)
!4694 = !DILocation(line: 140, column: 15, scope: !4693)
!4695 = !DILocation(line: 141, column: 21, scope: !4692)
!4696 = !DILocation(line: 141, column: 13, scope: !4692)
!4697 = !DILocation(line: 144, column: 21, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !4631, line: 144, column: 21)
!4699 = distinct !DILexicalBlock(scope: !4692, file: !4631, line: 142, column: 15)
!4700 = !DILocation(line: 144, column: 29, scope: !4698)
!4701 = !DILocation(line: 144, column: 21, scope: !4699)
!4702 = !DILocation(line: 152, column: 17, scope: !4699)
!4703 = !DILocation(line: 157, column: 7, scope: !4646)
!4704 = !DILocalVariable(name: "err", scope: !4705, file: !4631, line: 64, type: !1098)
!4705 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4631, file: !4631, line: 62, type: !4706, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4708)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!1098, !4634, !87, !87}
!4708 = !{!4709, !4710, !4711, !4704}
!4709 = !DILocalVariable(name: "x", arg: 1, scope: !4705, file: !4631, line: 62, type: !4634)
!4710 = !DILocalVariable(name: "base", arg: 2, scope: !4705, file: !4631, line: 62, type: !87)
!4711 = !DILocalVariable(name: "power", arg: 3, scope: !4705, file: !4631, line: 62, type: !87)
!4712 = !DILocation(line: 0, scope: !4705, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 219, column: 22, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4646, file: !4631, line: 158, column: 9)
!4715 = !DILocalVariable(name: "x", arg: 1, scope: !4716, file: !4631, line: 47, type: !4634)
!4716 = distinct !DISubprogram(name: "bkm_scale", scope: !4631, file: !4631, line: 47, type: !4717, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!1098, !4634, !87}
!4719 = !{!4715, !4720, !4721}
!4720 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4716, file: !4631, line: 47, type: !87)
!4721 = !DILocalVariable(name: "scaled", scope: !4716, file: !4631, line: 49, type: !829)
!4722 = !DILocation(line: 0, scope: !4716, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4713)
!4724 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4723)
!4725 = distinct !DILexicalBlock(scope: !4716, file: !4631, line: 50, column: 7)
!4726 = !DILocation(line: 0, scope: !4705, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 215, column: 22, scope: !4714)
!4728 = !DILocation(line: 0, scope: !4716, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4727)
!4730 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4729)
!4731 = !DILocation(line: 0, scope: !4705, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 202, column: 22, scope: !4714)
!4733 = !DILocation(line: 0, scope: !4716, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4732)
!4735 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4734)
!4736 = !DILocation(line: 0, scope: !4705, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 198, column: 22, scope: !4714)
!4738 = !DILocation(line: 0, scope: !4716, inlinedAt: !4739)
!4739 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4737)
!4740 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4739)
!4741 = !DILocation(line: 0, scope: !4705, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 194, column: 22, scope: !4714)
!4743 = !DILocation(line: 0, scope: !4716, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4742)
!4745 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4744)
!4746 = !DILocation(line: 0, scope: !4705, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 175, column: 22, scope: !4714)
!4748 = !DILocation(line: 0, scope: !4716, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4747)
!4750 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4749)
!4751 = !DILocation(line: 0, scope: !4716, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 160, column: 22, scope: !4714)
!4753 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4752)
!4754 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4752)
!4755 = !DILocation(line: 0, scope: !4716, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 167, column: 22, scope: !4714)
!4757 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4756)
!4758 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4756)
!4759 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4749)
!4760 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4747)
!4761 = !DILocation(line: 227, column: 11, scope: !4646)
!4762 = !DILocation(line: 0, scope: !4705, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 180, column: 22, scope: !4714)
!4764 = !DILocation(line: 0, scope: !4716, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4763)
!4766 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4765)
!4767 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4765)
!4768 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4763)
!4769 = !DILocation(line: 0, scope: !4705, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 185, column: 22, scope: !4714)
!4771 = !DILocation(line: 0, scope: !4716, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4770)
!4773 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4772)
!4774 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4772)
!4775 = !DILocation(line: 0, scope: !4705, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 190, column: 22, scope: !4714)
!4777 = !DILocation(line: 0, scope: !4716, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4776)
!4779 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4778)
!4780 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4778)
!4781 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4776)
!4782 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4744)
!4783 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4742)
!4784 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4739)
!4785 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4737)
!4786 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4734)
!4787 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4732)
!4788 = !DILocation(line: 0, scope: !4705, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 207, column: 22, scope: !4714)
!4790 = !DILocation(line: 0, scope: !4716, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 66, column: 12, scope: !4705, inlinedAt: !4789)
!4792 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4791)
!4793 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4791)
!4794 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4789)
!4795 = !DILocation(line: 0, scope: !4716, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 211, column: 22, scope: !4714)
!4797 = !DILocation(line: 50, column: 7, scope: !4725, inlinedAt: !4796)
!4798 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4796)
!4799 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4729)
!4800 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4727)
!4801 = !DILocation(line: 50, column: 7, scope: !4716, inlinedAt: !4723)
!4802 = !DILocation(line: 66, column: 9, scope: !4705, inlinedAt: !4713)
!4803 = !DILocation(line: 0, scope: !4714)
!4804 = !DILocation(line: 228, column: 10, scope: !4646)
!4805 = !DILocation(line: 229, column: 11, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4646, file: !4631, line: 229, column: 11)
!4807 = !DILocation(line: 229, column: 11, scope: !4646)
!4808 = !DILocation(line: 223, column: 16, scope: !4714)
!4809 = !DILocation(line: 224, column: 22, scope: !4714)
!4810 = !DILocation(line: 100, column: 11, scope: !4662)
!4811 = !DILocation(line: 92, column: 16, scope: !4630)
!4812 = !DILocation(line: 233, column: 8, scope: !4630)
!4813 = !DILocation(line: 234, column: 3, scope: !4630)
!4814 = !DILocation(line: 235, column: 1, scope: !4630)
!4815 = !DISubprogram(name: "strtoimax", scope: !4816, file: !4816, line: 297, type: !4817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4816 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!829, !925, !4819, !87}
!4819 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1084)
!4820 = distinct !DISubprogram(name: "rpl_fopen", scope: !833, file: !833, line: 46, type: !4821, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4857)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!4823, !136, !136}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4825)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4825, file: !213, line: 51, baseType: !87, size: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4825, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4825, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4825, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4825, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4825, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4825, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4825, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4825, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4825, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4825, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4825, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4825, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4825, file: !213, line: 70, baseType: !4841, size: 64, offset: 832)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4825, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4825, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4825, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4825, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4825, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4825, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4825, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4825, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4825, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4825, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4825, file: !213, line: 93, baseType: !4841, size: 64, offset: 1344)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4825, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4825, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4825, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4825, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4857 = !{!4858, !4859, !4860, !4861, !4862, !4863, !4867, !4869, !4870, !4875, !4878, !4879}
!4858 = !DILocalVariable(name: "filename", arg: 1, scope: !4820, file: !833, line: 46, type: !136)
!4859 = !DILocalVariable(name: "mode", arg: 2, scope: !4820, file: !833, line: 46, type: !136)
!4860 = !DILocalVariable(name: "open_direction", scope: !4820, file: !833, line: 54, type: !87)
!4861 = !DILocalVariable(name: "open_flags", scope: !4820, file: !833, line: 55, type: !87)
!4862 = !DILocalVariable(name: "open_flags_gnu", scope: !4820, file: !833, line: 57, type: !196)
!4863 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4820, file: !833, line: 59, type: !4864)
!4864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4865)
!4865 = !{!4866}
!4866 = !DISubrange(count: 81)
!4867 = !DILocalVariable(name: "p", scope: !4868, file: !833, line: 62, type: !136)
!4868 = distinct !DILexicalBlock(scope: !4820, file: !833, line: 61, column: 3)
!4869 = !DILocalVariable(name: "q", scope: !4868, file: !833, line: 64, type: !130)
!4870 = !DILocalVariable(name: "len", scope: !4871, file: !833, line: 128, type: !133)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !833, line: 127, column: 9)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !833, line: 68, column: 7)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !833, line: 67, column: 5)
!4874 = distinct !DILexicalBlock(scope: !4868, file: !833, line: 67, column: 5)
!4875 = !DILocalVariable(name: "fd", scope: !4876, file: !833, line: 199, type: !87)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !833, line: 198, column: 5)
!4877 = distinct !DILexicalBlock(scope: !4820, file: !833, line: 197, column: 7)
!4878 = !DILocalVariable(name: "fp", scope: !4876, file: !833, line: 204, type: !4823)
!4879 = !DILocalVariable(name: "saved_errno", scope: !4880, file: !833, line: 207, type: !87)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !833, line: 206, column: 9)
!4881 = distinct !DILexicalBlock(scope: !4876, file: !833, line: 205, column: 11)
!4882 = !DILocation(line: 0, scope: !4820)
!4883 = !DILocation(line: 59, column: 3, scope: !4820)
!4884 = !DILocation(line: 59, column: 8, scope: !4820)
!4885 = !DILocation(line: 0, scope: !4868)
!4886 = !DILocation(line: 67, column: 5, scope: !4868)
!4887 = !DILocation(line: 54, column: 7, scope: !4820)
!4888 = !DILocation(line: 67, column: 12, scope: !4873)
!4889 = !DILocation(line: 67, column: 5, scope: !4874)
!4890 = !DILocation(line: 74, column: 19, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !833, line: 74, column: 17)
!4892 = distinct !DILexicalBlock(scope: !4872, file: !833, line: 70, column: 11)
!4893 = !DILocation(line: 74, column: 17, scope: !4892)
!4894 = !DILocation(line: 75, column: 17, scope: !4891)
!4895 = !DILocation(line: 75, column: 20, scope: !4891)
!4896 = !DILocation(line: 75, column: 15, scope: !4891)
!4897 = !DILocation(line: 80, column: 24, scope: !4892)
!4898 = !DILocation(line: 82, column: 19, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4892, file: !833, line: 82, column: 17)
!4900 = !DILocation(line: 82, column: 17, scope: !4892)
!4901 = !DILocation(line: 83, column: 17, scope: !4899)
!4902 = !DILocation(line: 83, column: 20, scope: !4899)
!4903 = !DILocation(line: 83, column: 15, scope: !4899)
!4904 = !DILocation(line: 88, column: 24, scope: !4892)
!4905 = !DILocation(line: 90, column: 19, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4892, file: !833, line: 90, column: 17)
!4907 = !DILocation(line: 90, column: 17, scope: !4892)
!4908 = !DILocation(line: 91, column: 17, scope: !4906)
!4909 = !DILocation(line: 91, column: 20, scope: !4906)
!4910 = !DILocation(line: 91, column: 15, scope: !4906)
!4911 = !DILocation(line: 100, column: 19, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4892, file: !833, line: 100, column: 17)
!4913 = !DILocation(line: 100, column: 17, scope: !4892)
!4914 = !DILocation(line: 101, column: 17, scope: !4912)
!4915 = !DILocation(line: 101, column: 20, scope: !4912)
!4916 = !DILocation(line: 101, column: 15, scope: !4912)
!4917 = !DILocation(line: 107, column: 19, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4892, file: !833, line: 107, column: 17)
!4919 = !DILocation(line: 107, column: 17, scope: !4892)
!4920 = !DILocation(line: 108, column: 17, scope: !4918)
!4921 = !DILocation(line: 108, column: 20, scope: !4918)
!4922 = !DILocation(line: 108, column: 15, scope: !4918)
!4923 = !DILocation(line: 113, column: 24, scope: !4892)
!4924 = !DILocation(line: 115, column: 13, scope: !4892)
!4925 = !DILocation(line: 117, column: 24, scope: !4892)
!4926 = !DILocation(line: 119, column: 13, scope: !4892)
!4927 = !DILocation(line: 128, column: 24, scope: !4871)
!4928 = !DILocation(line: 0, scope: !4871)
!4929 = !DILocation(line: 129, column: 48, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4871, file: !833, line: 129, column: 15)
!4931 = !DILocation(line: 129, column: 15, scope: !4871)
!4932 = !DILocalVariable(name: "__dest", arg: 1, scope: !4933, file: !1266, line: 26, type: !4548)
!4933 = distinct !DISubprogram(name: "memcpy", scope: !1266, file: !1266, line: 26, type: !4546, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4934)
!4934 = !{!4932, !4935, !4936}
!4935 = !DILocalVariable(name: "__src", arg: 2, scope: !4933, file: !1266, line: 26, type: !1078)
!4936 = !DILocalVariable(name: "__len", arg: 3, scope: !4933, file: !1266, line: 26, type: !133)
!4937 = !DILocation(line: 0, scope: !4933, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 131, column: 11, scope: !4871)
!4939 = !DILocation(line: 29, column: 10, scope: !4933, inlinedAt: !4938)
!4940 = !DILocation(line: 132, column: 13, scope: !4871)
!4941 = !DILocation(line: 135, column: 9, scope: !4872)
!4942 = !DILocation(line: 67, column: 25, scope: !4873)
!4943 = !DILocation(line: 67, column: 5, scope: !4873)
!4944 = distinct !{!4944, !4889, !4945, !981}
!4945 = !DILocation(line: 136, column: 7, scope: !4874)
!4946 = !DILocation(line: 138, column: 8, scope: !4868)
!4947 = !DILocation(line: 197, column: 7, scope: !4820)
!4948 = !DILocation(line: 199, column: 47, scope: !4876)
!4949 = !DILocation(line: 199, column: 16, scope: !4876)
!4950 = !DILocation(line: 0, scope: !4876)
!4951 = !DILocation(line: 201, column: 14, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4876, file: !833, line: 201, column: 11)
!4953 = !DILocation(line: 201, column: 11, scope: !4876)
!4954 = !DILocation(line: 204, column: 18, scope: !4876)
!4955 = !DILocation(line: 205, column: 14, scope: !4881)
!4956 = !DILocation(line: 205, column: 11, scope: !4876)
!4957 = !DILocation(line: 207, column: 29, scope: !4880)
!4958 = !DILocation(line: 0, scope: !4880)
!4959 = !DILocation(line: 208, column: 11, scope: !4880)
!4960 = !DILocation(line: 209, column: 17, scope: !4880)
!4961 = !DILocation(line: 210, column: 9, scope: !4880)
!4962 = !DILocalVariable(name: "filename", arg: 1, scope: !4963, file: !833, line: 30, type: !136)
!4963 = distinct !DISubprogram(name: "orig_fopen", scope: !833, file: !833, line: 30, type: !4821, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4964)
!4964 = !{!4962, !4965}
!4965 = !DILocalVariable(name: "mode", arg: 2, scope: !4963, file: !833, line: 30, type: !136)
!4966 = !DILocation(line: 0, scope: !4963, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 219, column: 10, scope: !4820)
!4968 = !DILocation(line: 32, column: 10, scope: !4963, inlinedAt: !4967)
!4969 = !DILocation(line: 219, column: 3, scope: !4820)
!4970 = !DILocation(line: 220, column: 1, scope: !4820)
!4971 = !DISubprogram(name: "open", scope: !2273, file: !2273, line: 181, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!87, !136, !87, null}
!4974 = !DISubprogram(name: "fdopen", scope: !470, file: !470, line: 293, type: !4975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!4823, !87, !136}
!4977 = !DISubprogram(name: "close", scope: !2129, file: !2129, line: 358, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4978 = !DISubprogram(name: "fopen", scope: !470, file: !470, line: 258, type: !4979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!4823, !925, !925}
!4981 = distinct !DISubprogram(name: "close_stream", scope: !835, file: !835, line: 55, type: !4982, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !5018)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!87, !4984}
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4986)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4987)
!4987 = !{!4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4986, file: !213, line: 51, baseType: !87, size: 32)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4986, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4986, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4986, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4986, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4986, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4986, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4986, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4986, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4986, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4986, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4986, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4986, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4986, file: !213, line: 70, baseType: !5002, size: 64, offset: 832)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4986, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4986, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4986, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4986, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4986, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4986, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4986, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4986, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4986, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4986, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4986, file: !213, line: 93, baseType: !5002, size: 64, offset: 1344)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4986, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4986, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4986, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4986, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5018 = !{!5019, !5020, !5022, !5023}
!5019 = !DILocalVariable(name: "stream", arg: 1, scope: !4981, file: !835, line: 55, type: !4984)
!5020 = !DILocalVariable(name: "some_pending", scope: !4981, file: !835, line: 57, type: !5021)
!5021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5022 = !DILocalVariable(name: "prev_fail", scope: !4981, file: !835, line: 58, type: !5021)
!5023 = !DILocalVariable(name: "fclose_fail", scope: !4981, file: !835, line: 59, type: !5021)
!5024 = !DILocation(line: 0, scope: !4981)
!5025 = !DILocation(line: 57, column: 30, scope: !4981)
!5026 = !DILocalVariable(name: "__stream", arg: 1, scope: !5027, file: !1283, line: 135, type: !4984)
!5027 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1283, file: !1283, line: 135, type: !4982, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !5028)
!5028 = !{!5026}
!5029 = !DILocation(line: 0, scope: !5027, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 58, column: 27, scope: !4981)
!5031 = !DILocation(line: 137, column: 10, scope: !5027, inlinedAt: !5030)
!5032 = !DILocation(line: 58, column: 43, scope: !4981)
!5033 = !DILocation(line: 59, column: 29, scope: !4981)
!5034 = !DILocation(line: 59, column: 45, scope: !4981)
!5035 = !DILocation(line: 69, column: 17, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !4981, file: !835, line: 69, column: 7)
!5037 = !DILocation(line: 57, column: 50, scope: !4981)
!5038 = !DILocation(line: 69, column: 33, scope: !5036)
!5039 = !DILocation(line: 69, column: 53, scope: !5036)
!5040 = !DILocation(line: 69, column: 59, scope: !5036)
!5041 = !DILocation(line: 69, column: 7, scope: !4981)
!5042 = !DILocation(line: 71, column: 11, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5036, file: !835, line: 70, column: 5)
!5044 = !DILocation(line: 72, column: 9, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5043, file: !835, line: 71, column: 11)
!5046 = !DILocation(line: 72, column: 15, scope: !5045)
!5047 = !DILocation(line: 77, column: 1, scope: !4981)
!5048 = !DISubprogram(name: "__fpending", scope: !2477, file: !2477, line: 75, type: !5049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!133, !4984}
!5051 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !748, file: !748, line: 100, type: !5052, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !5055)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!133, !2742, !136, !133, !5054}
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!5055 = !{!5056, !5057, !5058, !5059, !5060}
!5056 = !DILocalVariable(name: "pwc", arg: 1, scope: !5051, file: !748, line: 100, type: !2742)
!5057 = !DILocalVariable(name: "s", arg: 2, scope: !5051, file: !748, line: 100, type: !136)
!5058 = !DILocalVariable(name: "n", arg: 3, scope: !5051, file: !748, line: 100, type: !133)
!5059 = !DILocalVariable(name: "ps", arg: 4, scope: !5051, file: !748, line: 100, type: !5054)
!5060 = !DILocalVariable(name: "ret", scope: !5051, file: !748, line: 130, type: !133)
!5061 = !DILocation(line: 0, scope: !5051)
!5062 = !DILocation(line: 105, column: 9, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5051, file: !748, line: 105, column: 7)
!5064 = !DILocation(line: 105, column: 7, scope: !5051)
!5065 = !DILocation(line: 117, column: 10, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5051, file: !748, line: 117, column: 7)
!5067 = !DILocation(line: 117, column: 7, scope: !5051)
!5068 = !DILocation(line: 130, column: 16, scope: !5051)
!5069 = !DILocation(line: 135, column: 11, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5051, file: !748, line: 135, column: 7)
!5071 = !DILocation(line: 135, column: 25, scope: !5070)
!5072 = !DILocation(line: 135, column: 30, scope: !5070)
!5073 = !DILocation(line: 135, column: 7, scope: !5051)
!5074 = !DILocalVariable(name: "ps", arg: 1, scope: !5075, file: !2716, line: 1135, type: !5054)
!5075 = distinct !DISubprogram(name: "mbszero", scope: !2716, file: !2716, line: 1135, type: !5076, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !5078)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !5054}
!5078 = !{!5074}
!5079 = !DILocation(line: 0, scope: !5075, inlinedAt: !5080)
!5080 = distinct !DILocation(line: 137, column: 5, scope: !5070)
!5081 = !DILocalVariable(name: "__dest", arg: 1, scope: !5082, file: !1266, line: 57, type: !131)
!5082 = distinct !DISubprogram(name: "memset", scope: !1266, file: !1266, line: 57, type: !2725, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !5083)
!5083 = !{!5081, !5084, !5085}
!5084 = !DILocalVariable(name: "__ch", arg: 2, scope: !5082, file: !1266, line: 57, type: !87)
!5085 = !DILocalVariable(name: "__len", arg: 3, scope: !5082, file: !1266, line: 57, type: !133)
!5086 = !DILocation(line: 0, scope: !5082, inlinedAt: !5087)
!5087 = distinct !DILocation(line: 1137, column: 3, scope: !5075, inlinedAt: !5080)
!5088 = !DILocation(line: 59, column: 10, scope: !5082, inlinedAt: !5087)
!5089 = !DILocation(line: 137, column: 5, scope: !5070)
!5090 = !DILocation(line: 138, column: 11, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5051, file: !748, line: 138, column: 7)
!5092 = !DILocation(line: 138, column: 7, scope: !5051)
!5093 = !DILocation(line: 139, column: 5, scope: !5091)
!5094 = !DILocation(line: 143, column: 26, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5051, file: !748, line: 143, column: 7)
!5096 = !DILocation(line: 143, column: 41, scope: !5095)
!5097 = !DILocation(line: 143, column: 7, scope: !5051)
!5098 = !DILocation(line: 145, column: 15, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !748, line: 145, column: 11)
!5100 = distinct !DILexicalBlock(scope: !5095, file: !748, line: 144, column: 5)
!5101 = !DILocation(line: 145, column: 11, scope: !5100)
!5102 = !DILocation(line: 146, column: 32, scope: !5099)
!5103 = !DILocation(line: 146, column: 16, scope: !5099)
!5104 = !DILocation(line: 146, column: 14, scope: !5099)
!5105 = !DILocation(line: 146, column: 9, scope: !5099)
!5106 = !DILocation(line: 286, column: 1, scope: !5051)
!5107 = !DISubprogram(name: "mbsinit", scope: !5108, file: !5108, line: 293, type: !5109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!5108 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!87, !5111}
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!5113 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !837, file: !837, line: 27, type: !4194, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !5114)
!5114 = !{!5115, !5116, !5117, !5118}
!5115 = !DILocalVariable(name: "ptr", arg: 1, scope: !5113, file: !837, line: 27, type: !131)
!5116 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5113, file: !837, line: 27, type: !133)
!5117 = !DILocalVariable(name: "size", arg: 3, scope: !5113, file: !837, line: 27, type: !133)
!5118 = !DILocalVariable(name: "nbytes", scope: !5113, file: !837, line: 29, type: !133)
!5119 = !DILocation(line: 0, scope: !5113)
!5120 = !DILocation(line: 30, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5113, file: !837, line: 30, column: 7)
!5122 = !DILocalVariable(name: "ptr", arg: 1, scope: !5123, file: !4280, line: 2057, type: !131)
!5123 = distinct !DISubprogram(name: "rpl_realloc", scope: !4280, file: !4280, line: 2057, type: !4272, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !5124)
!5124 = !{!5122, !5125}
!5125 = !DILocalVariable(name: "size", arg: 2, scope: !5123, file: !4280, line: 2057, type: !133)
!5126 = !DILocation(line: 0, scope: !5123, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 37, column: 10, scope: !5113)
!5128 = !DILocation(line: 2059, column: 24, scope: !5123, inlinedAt: !5127)
!5129 = !DILocation(line: 2059, column: 10, scope: !5123, inlinedAt: !5127)
!5130 = !DILocation(line: 37, column: 3, scope: !5113)
!5131 = !DILocation(line: 32, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5121, file: !837, line: 31, column: 5)
!5133 = !DILocation(line: 32, column: 13, scope: !5132)
!5134 = !DILocation(line: 33, column: 7, scope: !5132)
!5135 = !DILocation(line: 38, column: 1, scope: !5113)
!5136 = distinct !DISubprogram(name: "hard_locale", scope: !766, file: !766, line: 28, type: !5137, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !5139)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!196, !87}
!5139 = !{!5140, !5141}
!5140 = !DILocalVariable(name: "category", arg: 1, scope: !5136, file: !766, line: 28, type: !87)
!5141 = !DILocalVariable(name: "locale", scope: !5136, file: !766, line: 30, type: !5142)
!5142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5143)
!5143 = !{!5144}
!5144 = !DISubrange(count: 257)
!5145 = !DILocation(line: 0, scope: !5136)
!5146 = !DILocation(line: 30, column: 3, scope: !5136)
!5147 = !DILocation(line: 30, column: 8, scope: !5136)
!5148 = !DILocation(line: 32, column: 7, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5136, file: !766, line: 32, column: 7)
!5150 = !DILocation(line: 32, column: 7, scope: !5136)
!5151 = !DILocalVariable(name: "__s1", arg: 1, scope: !5152, file: !947, line: 1359, type: !136)
!5152 = distinct !DISubprogram(name: "streq", scope: !947, file: !947, line: 1359, type: !948, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !5153)
!5153 = !{!5151, !5154}
!5154 = !DILocalVariable(name: "__s2", arg: 2, scope: !5152, file: !947, line: 1359, type: !136)
!5155 = !DILocation(line: 0, scope: !5152, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 35, column: 9, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5136, file: !766, line: 35, column: 7)
!5158 = !DILocation(line: 1361, column: 11, scope: !5152, inlinedAt: !5156)
!5159 = !DILocation(line: 1361, column: 10, scope: !5152, inlinedAt: !5156)
!5160 = !DILocation(line: 35, column: 29, scope: !5157)
!5161 = !DILocation(line: 0, scope: !5152, inlinedAt: !5162)
!5162 = distinct !DILocation(line: 35, column: 32, scope: !5157)
!5163 = !DILocation(line: 1361, column: 11, scope: !5152, inlinedAt: !5162)
!5164 = !DILocation(line: 1361, column: 10, scope: !5152, inlinedAt: !5162)
!5165 = !DILocation(line: 35, column: 7, scope: !5136)
!5166 = !DILocation(line: 46, column: 3, scope: !5136)
!5167 = !DILocation(line: 47, column: 1, scope: !5136)
!5168 = distinct !DISubprogram(name: "setlocale_null_r", scope: !842, file: !842, line: 154, type: !5169, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!87, !87, !130, !133}
!5171 = !{!5172, !5173, !5174}
!5172 = !DILocalVariable(name: "category", arg: 1, scope: !5168, file: !842, line: 154, type: !87)
!5173 = !DILocalVariable(name: "buf", arg: 2, scope: !5168, file: !842, line: 154, type: !130)
!5174 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5168, file: !842, line: 154, type: !133)
!5175 = !DILocation(line: 0, scope: !5168)
!5176 = !DILocation(line: 159, column: 10, scope: !5168)
!5177 = !DILocation(line: 159, column: 3, scope: !5168)
!5178 = distinct !DISubprogram(name: "setlocale_null", scope: !842, file: !842, line: 186, type: !5179, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !5181)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!136, !87}
!5181 = !{!5182}
!5182 = !DILocalVariable(name: "category", arg: 1, scope: !5178, file: !842, line: 186, type: !87)
!5183 = !DILocation(line: 0, scope: !5178)
!5184 = !DILocation(line: 189, column: 10, scope: !5178)
!5185 = !DILocation(line: 189, column: 3, scope: !5178)
!5186 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !844, file: !844, line: 35, type: !5179, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !5187)
!5187 = !{!5188, !5189}
!5188 = !DILocalVariable(name: "category", arg: 1, scope: !5186, file: !844, line: 35, type: !87)
!5189 = !DILocalVariable(name: "result", scope: !5186, file: !844, line: 37, type: !136)
!5190 = !DILocation(line: 0, scope: !5186)
!5191 = !DILocation(line: 37, column: 24, scope: !5186)
!5192 = !DILocation(line: 62, column: 3, scope: !5186)
!5193 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !844, file: !844, line: 66, type: !5169, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !5194)
!5194 = !{!5195, !5196, !5197, !5198, !5199}
!5195 = !DILocalVariable(name: "category", arg: 1, scope: !5193, file: !844, line: 66, type: !87)
!5196 = !DILocalVariable(name: "buf", arg: 2, scope: !5193, file: !844, line: 66, type: !130)
!5197 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5193, file: !844, line: 66, type: !133)
!5198 = !DILocalVariable(name: "result", scope: !5193, file: !844, line: 111, type: !136)
!5199 = !DILocalVariable(name: "length", scope: !5200, file: !844, line: 125, type: !133)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !844, line: 124, column: 5)
!5201 = distinct !DILexicalBlock(scope: !5193, file: !844, line: 113, column: 7)
!5202 = !DILocation(line: 0, scope: !5193)
!5203 = !DILocation(line: 0, scope: !5186, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 111, column: 24, scope: !5193)
!5205 = !DILocation(line: 37, column: 24, scope: !5186, inlinedAt: !5204)
!5206 = !DILocation(line: 113, column: 14, scope: !5201)
!5207 = !DILocation(line: 113, column: 7, scope: !5193)
!5208 = !DILocation(line: 116, column: 19, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !844, line: 116, column: 11)
!5210 = distinct !DILexicalBlock(scope: !5201, file: !844, line: 114, column: 5)
!5211 = !DILocation(line: 116, column: 11, scope: !5210)
!5212 = !DILocation(line: 120, column: 16, scope: !5209)
!5213 = !DILocation(line: 120, column: 9, scope: !5209)
!5214 = !DILocation(line: 125, column: 23, scope: !5200)
!5215 = !DILocation(line: 0, scope: !5200)
!5216 = !DILocation(line: 126, column: 18, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5200, file: !844, line: 126, column: 11)
!5218 = !DILocation(line: 126, column: 11, scope: !5200)
!5219 = !DILocation(line: 128, column: 39, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5217, file: !844, line: 127, column: 9)
!5221 = !DILocalVariable(name: "__dest", arg: 1, scope: !5222, file: !1266, line: 26, type: !4548)
!5222 = distinct !DISubprogram(name: "memcpy", scope: !1266, file: !1266, line: 26, type: !4546, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !5223)
!5223 = !{!5221, !5224, !5225}
!5224 = !DILocalVariable(name: "__src", arg: 2, scope: !5222, file: !1266, line: 26, type: !1078)
!5225 = !DILocalVariable(name: "__len", arg: 3, scope: !5222, file: !1266, line: 26, type: !133)
!5226 = !DILocation(line: 0, scope: !5222, inlinedAt: !5227)
!5227 = distinct !DILocation(line: 128, column: 11, scope: !5220)
!5228 = !DILocation(line: 29, column: 10, scope: !5222, inlinedAt: !5227)
!5229 = !DILocation(line: 129, column: 11, scope: !5220)
!5230 = !DILocation(line: 133, column: 23, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5232, file: !844, line: 133, column: 15)
!5232 = distinct !DILexicalBlock(scope: !5217, file: !844, line: 132, column: 9)
!5233 = !DILocation(line: 133, column: 15, scope: !5232)
!5234 = !DILocation(line: 138, column: 44, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5231, file: !844, line: 134, column: 13)
!5236 = !DILocation(line: 0, scope: !5222, inlinedAt: !5237)
!5237 = distinct !DILocation(line: 138, column: 15, scope: !5235)
!5238 = !DILocation(line: 29, column: 10, scope: !5222, inlinedAt: !5237)
!5239 = !DILocation(line: 139, column: 15, scope: !5235)
!5240 = !DILocation(line: 139, column: 32, scope: !5235)
!5241 = !DILocation(line: 140, column: 13, scope: !5235)
!5242 = !DILocation(line: 0, scope: !5201)
!5243 = !DILocation(line: 145, column: 1, scope: !5193)
