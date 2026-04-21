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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !498
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !464
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !488
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !490
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !492
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !494
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !496
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !500
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !502
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !507
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !512
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !517
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !519
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !521
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !552
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !555
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !557
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !559
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !561
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !563
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !565
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !567
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !569
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !571
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 8, !dbg !573
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
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !858 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !862, metadata !DIExpression()), !dbg !863
  %2 = icmp eq i32 %0, 0, !dbg !864
  br i1 %2, label %8, label %3, !dbg !866

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !867, !tbaa !869
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #44, !dbg !867
  %6 = load ptr, ptr @program_name, align 8, !dbg !867, !tbaa !869
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #44, !dbg !867
  br label %41, !dbg !867

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #44, !dbg !873
  %10 = load ptr, ptr @program_name, align 8, !dbg !873, !tbaa !869
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #44, !dbg !873
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #44, !dbg !875
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 64) #44, !dbg !875
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #44, !dbg !876
  %15 = load ptr, ptr @stdout, align 8, !dbg !876, !tbaa !869
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !876
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #44, !dbg !879
  %18 = load ptr, ptr @stdout, align 8, !dbg !879, !tbaa !869
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !879
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #44, !dbg !882
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !882
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #44, !dbg !883
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !883
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #44, !dbg !884
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !884
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #44, !dbg !885
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !885
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #44, !dbg !886
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !886
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #44, !dbg !887
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #44, !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !907, metadata !901, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr poison, metadata !900, metadata !DIExpression()), !dbg !905
  tail call void @emit_bug_reporting_address() #44, !dbg !908
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #44, !dbg !909
  call void @llvm.dbg.value(metadata ptr %27, metadata !903, metadata !DIExpression()), !dbg !905
  %28 = icmp eq ptr %27, null, !dbg !910
  br i1 %28, label %36, label %29, !dbg !912

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #45, !dbg !913
  %31 = icmp eq i32 %30, 0, !dbg !913
  br i1 %31, label %36, label %32, !dbg !914

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #44, !dbg !915
  %34 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !869
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !915
  br label %36, !dbg !917

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !904, metadata !DIExpression()), !dbg !905
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #44, !dbg !918
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #44, !dbg !918
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #44, !dbg !919
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #44, !dbg !919
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #46, !dbg !920
  unreachable, !dbg !920
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !921 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !925 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !931 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !934 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !937
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !938, !tbaa !939
  %3 = icmp eq i32 %2, -1, !dbg !941
  br i1 %3, label %4, label %16, !dbg !942

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #44, !dbg !943
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !944
  %6 = icmp eq ptr %5, null, !dbg !945
  br i1 %6, label %14, label %7, !dbg !946

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !947, !tbaa !948
  %9 = icmp eq i8 %8, 0, !dbg !947
  br i1 %9, label %14, label %10, !dbg !949

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !950, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !956, metadata !DIExpression()), !dbg !957
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #45, !dbg !959
  %12 = icmp eq i32 %11, 0, !dbg !960
  %13 = zext i1 %12 to i32, !dbg !949
  br label %14, !dbg !949

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !961, !tbaa !939
  br label %16, !dbg !962

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !963
  %18 = icmp eq i32 %17, 0, !dbg !963
  br i1 %18, label %22, label %19, !dbg !965

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !869
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !966
  br label %121, !dbg !968

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !937
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #45, !dbg !969
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !970
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !937
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #45, !dbg !971
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !937
  %26 = icmp eq ptr %25, null, !dbg !972
  br i1 %26, label %53, label %27, !dbg !973

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !974
  br i1 %28, label %53, label %29, !dbg !975

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !976
  %30 = icmp ult ptr %24, %25, !dbg !977
  br i1 %30, label %31, label %53, !dbg !978

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #47, !dbg !937
  %33 = load ptr, ptr %32, align 8, !tbaa !869
  br label %34, !dbg !978

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !976
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !979
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !976
  %38 = load i8, ptr %35, align 1, !dbg !979, !tbaa !948
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !979
  %41 = load i16, ptr %40, align 2, !dbg !979, !tbaa !980
  %42 = freeze i16 %41, !dbg !982
  %43 = lshr i16 %42, 13, !dbg !982
  %44 = and i16 %43, 1, !dbg !982
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !983
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !976
  %47 = icmp ult ptr %37, %25, !dbg !977
  %48 = icmp ult i64 %46, 2, !dbg !984
  %49 = select i1 %47, i1 %48, i1 false, !dbg !984
  br i1 %49, label %34, label %50, !dbg !978, !llvm.loop !985

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !983
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !987
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !989
  br label %53, !dbg !989

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !937
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !198, metadata !DIExpression()), !dbg !937
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.27) #45, !dbg !990
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !204, metadata !DIExpression()), !dbg !937
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !991
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !205, metadata !DIExpression()), !dbg !937
  br label %58, !dbg !992

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !937
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !205, metadata !DIExpression()), !dbg !937
  %61 = load i8, ptr %59, align 1, !dbg !993, !tbaa !948
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !994

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !995
  %64 = load i8, ptr %63, align 1, !dbg !998, !tbaa !948
  %65 = icmp ne i8 %64, 45, !dbg !999
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1000
  br label %67, !dbg !1000

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !937
  %69 = tail call ptr @__ctype_b_loc() #47, !dbg !1001
  %70 = load ptr, ptr %69, align 8, !dbg !1001, !tbaa !869
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1001
  %73 = load i16, ptr %72, align 2, !dbg !1001, !tbaa !980
  %74 = and i16 %73, 8192, !dbg !1001
  %75 = icmp eq i16 %74, 0, !dbg !1001
  br i1 %75, label %89, label %76, !dbg !1003

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1004
  br i1 %77, label %91, label %78, !dbg !1007

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1008
  %80 = load i8, ptr %79, align 1, !dbg !1008, !tbaa !948
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1008
  %83 = load i16, ptr %82, align 2, !dbg !1008, !tbaa !980
  %84 = and i16 %83, 8192, !dbg !1008
  %85 = icmp eq i16 %84, 0, !dbg !1008
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1009
  br i1 %88, label %89, label %91, !dbg !1009

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !205, metadata !DIExpression()), !dbg !937
  br label %58, !dbg !992, !llvm.loop !1011

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !937
  %92 = ptrtoint ptr %24 to i64, !dbg !1013
  %93 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !869
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1013
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !950, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata !907, metadata !956, metadata !DIExpression()), !dbg !1032
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !937
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #45, !dbg !1034
  %96 = icmp eq i32 %95, 0, !dbg !1034
  br i1 %96, label %100, label %97, !dbg !1036

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #45, !dbg !1037
  %99 = icmp eq i32 %98, 0, !dbg !1037
  br i1 %99, label %100, label %103, !dbg !1038

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1039
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #44, !dbg !1039
  br label %106, !dbg !1041

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1042
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #44, !dbg !1042
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !869
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %107), !dbg !1044
  %109 = load ptr, ptr @stdout, align 8, !dbg !1045, !tbaa !869
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %109), !dbg !1045
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1046
  %112 = sub i64 %111, %92, !dbg !1046
  %113 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !869
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1046
  %115 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !869
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %115), !dbg !1047
  %117 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !869
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %117), !dbg !1048
  %119 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !869
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1049
  br label %121, !dbg !1050

121:                                              ; preds = %106, %19
  ret void, !dbg !1050
}

; Function Attrs: nounwind
declare !dbg !1051 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1055 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1059 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1061 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1064 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1067 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1070 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1073 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1079 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1080 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1086 {
  %3 = alloca i64, align 8, !DIAssignID !1106
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1101, metadata !DIExpression(), metadata !1106, metadata ptr %3, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1091, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1092, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1097, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 76, metadata !1098, metadata !DIExpression()), !dbg !1108
  %4 = load ptr, ptr %1, align 8, !dbg !1109, !tbaa !869
  tail call void @set_program_name(ptr noundef %4) #44, !dbg !1110
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #44, !dbg !1111
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #44, !dbg !1112
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #44, !dbg !1113
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #44, !dbg !1114
  br label %9, !dbg !1115

.loopexit:                                        ; preds = %16
  %.lcssa8 = phi i1 [ %14, %16 ]
  %.lcssa2 = phi i64 [ %17, %16 ], !dbg !1116
  br label %9, !dbg !1115, !llvm.loop !1117

9:                                                ; preds = %.loopexit, %2
  %10 = phi i1 [ false, %2 ], [ true, %.loopexit ]
  %11 = phi i1 [ false, %2 ], [ %.lcssa8, %.loopexit ]
  %12 = phi i64 [ 76, %2 ], [ %.lcssa2, %.loopexit ]
  br label %13, !dbg !1115

13:                                               ; preds = %9, %33
  %14 = phi i1 [ %11, %9 ], [ true, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %.lcssa3, %33 ]
  br label %16, !dbg !1115

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1116
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1098, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1097, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1096, metadata !DIExpression()), !dbg !1108
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #44, !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1093, metadata !DIExpression()), !dbg !1108
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %.loopexit
    i32 119, label %19
    i32 105, label %33
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !1115

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44, !dbg !1120
  %20 = load ptr, ptr @optarg, align 8, !dbg !1121, !tbaa !869
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #44, !dbg !1122
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1104, metadata !DIExpression()), !dbg !1107
  %22 = icmp ugt i32 %21, 1, !dbg !1123
  %23 = load i64, ptr %3, align 8
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1125
  br i1 %25, label %26, label %30, !dbg !1125

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #44, !dbg !1126
  %28 = load ptr, ptr @optarg, align 8, !dbg !1126, !tbaa !869
  %29 = call ptr @quote(ptr noundef %28) #44, !dbg !1126
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #44, !dbg !1126
  unreachable, !dbg !1126

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1127
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1128
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1098, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44, !dbg !1129
  br label %16, !dbg !1130, !llvm.loop !1117

33:                                               ; preds = %16
  %.lcssa3 = phi i64 [ %17, %16 ], !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1097, metadata !DIExpression()), !dbg !1108
  br label %13, !dbg !1131, !llvm.loop !1117

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #48, !dbg !1132
  unreachable, !dbg !1132

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !869
  %37 = load ptr, ptr @Version, align 8, !dbg !1133, !tbaa !869
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #44, !dbg !1133
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #44, !dbg !1133
  call void @exit(i32 noundef 0) #46, !dbg !1133
  unreachable, !dbg !1133

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #48, !dbg !1134
  unreachable, !dbg !1134

40:                                               ; preds = %16
  %.lcssa12 = phi i1 [ %10, %16 ]
  %.lcssa7 = phi i1 [ %14, %16 ]
  %.lcssa1 = phi i64 [ %17, %16 ], !dbg !1116
  %41 = load i32, ptr @optind, align 4, !dbg !1135, !tbaa !939
  %42 = sub nsw i32 %0, %41, !dbg !1137
  %43 = icmp sgt i32 %42, 1, !dbg !1138
  br i1 %43, label %44, label %52, !dbg !1139

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #44, !dbg !1140
  %46 = load i32, ptr @optind, align 4, !dbg !1140, !tbaa !939
  %47 = sext i32 %46 to i64, !dbg !1140
  %48 = getelementptr ptr, ptr %1, i64 %47, !dbg !1140
  %49 = getelementptr ptr, ptr %48, i64 1, !dbg !1140
  %50 = load ptr, ptr %49, align 8, !dbg !1140, !tbaa !869
  %51 = call ptr @quote(ptr noundef %50) #44, !dbg !1140
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #44, !dbg !1140
  call void @usage(i32 noundef 1) #48, !dbg !1142
  unreachable, !dbg !1142

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1143
  br i1 %53, label %54, label %58, !dbg !1145

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1146
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1146
  %57 = load ptr, ptr %56, align 8, !dbg !1146, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !1095, metadata !DIExpression()), !dbg !1108
  br label %58, !dbg !1147

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1148
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1095, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %59, metadata !950, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !956, metadata !DIExpression()), !dbg !1149
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #45, !dbg !1152
  %61 = icmp eq i32 %60, 0, !dbg !1153
  br i1 %61, label %62, label %64, !dbg !1154

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1155, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !1094, metadata !DIExpression()), !dbg !1108
  br label %71, !dbg !1157

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #44, !dbg !1158
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !1094, metadata !DIExpression()), !dbg !1108
  %66 = icmp eq ptr %65, null, !dbg !1160
  br i1 %66, label %67, label %71, !dbg !1162

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #47, !dbg !1163
  %69 = load i32, ptr %68, align 4, !dbg !1163, !tbaa !939
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #44, !dbg !1163
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #44, !dbg !1163
  unreachable, !dbg !1163

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1164
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1094, metadata !DIExpression()), !dbg !1108
  call void @fadvise(ptr noundef %72, i32 noundef 2) #44, !dbg !1165
  %73 = load ptr, ptr @stdout, align 8, !dbg !1166, !tbaa !869
  br i1 %.lcssa12, label %74, label %75, !dbg !1168

74:                                               ; preds = %71
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef %.lcssa7) #48, !dbg !1169
  unreachable, !dbg !1169

75:                                               ; preds = %71
  call fastcc void @do_encode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i64 noundef %.lcssa1) #48, !dbg !1170
  unreachable, !dbg !1170
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1171 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1174 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1175 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1178 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1184 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef %3) unnamed_addr #0 !dbg !1188 {
  %5 = alloca [8 x i8], align 8, !DIAssignID !1220
  %6 = alloca i64, align 8, !DIAssignID !1221
  %7 = alloca %struct.base64_decode_context, align 4, !DIAssignID !1222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1199, metadata !DIExpression(), metadata !1222, metadata ptr %7, metadata !DIExpression()), !dbg !1223
  %8 = alloca i64, align 8, !DIAssignID !1224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1213, metadata !DIExpression(), metadata !1224, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1192, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1193, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1194, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata i1 %3, metadata !1195, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #44, !dbg !1226
  %9 = tail call noalias nonnull dereferenceable(4096) ptr @xmalloc(i64 noundef 4096) #49, !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1196, metadata !DIExpression()), !dbg !1223
  %10 = tail call noalias nonnull dereferenceable(3072) ptr @xmalloc(i64 noundef 3072) #49, !dbg !1228
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1197, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1229, metadata !DIExpression()), !dbg !1235
  store i32 0, ptr %7, align 4, !dbg !1237, !tbaa !1238, !DIAssignID !1240
  call void @llvm.dbg.assign(metadata i32 0, metadata !1199, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1240, metadata ptr %7, metadata !DIExpression()), !dbg !1223
  br label %11, !dbg !1241

11:                                               ; preds = %56, %4
  %12 = phi i64 [ 0, %4 ], [ %57, %56 ], !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1198, metadata !DIExpression()), !dbg !1223
  %13 = getelementptr inbounds i8, ptr %9, i64 %12, !dbg !1243
  %14 = sub nsw i64 4096, %12, !dbg !1243
  %15 = call i64 @fread_unlocked(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %14, ptr noundef %0), !dbg !1243
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1207, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1209, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1207, metadata !DIExpression()), !dbg !1244
  %16 = icmp sgt i64 %15, 0
  %17 = and i1 %16, %3, !dbg !1246
  br i1 %17, label %.preheader, label %41, !dbg !1246

.preheader:                                       ; preds = %11
  br label %18, !dbg !1247

18:                                               ; preds = %.preheader, %35
  %19 = phi i64 [ %37, %35 ], [ 0, %.preheader ]
  %20 = phi i64 [ %36, %35 ], [ %15, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !1209, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1207, metadata !DIExpression()), !dbg !1244
  %21 = getelementptr i8, ptr %13, i64 %19, !dbg !1248
  %22 = load i8, ptr %21, align 1, !dbg !1248, !tbaa !948
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !1252, metadata !DIExpression()), !dbg !1257
  %23 = zext i8 %22 to i64, !dbg !1259
  %24 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %23, !dbg !1260
  %25 = load i8, ptr %24, align 1, !dbg !1260, !tbaa !948
  %26 = icmp sgt i8 %25, -1, !dbg !1261
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1267, metadata !DIExpression()), !dbg !1268
  %27 = icmp eq i8 %22, 61
  %28 = or i1 %27, %26, !dbg !1270
  br i1 %28, label %29, label %31, !dbg !1270

29:                                               ; preds = %18
  %30 = add nsw i64 %19, 1, !dbg !1271
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1209, metadata !DIExpression()), !dbg !1245
  br label %35, !dbg !1272

31:                                               ; preds = %18
  %32 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !1273
  %33 = add nsw i64 %20, -1, !dbg !1274
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1207, metadata !DIExpression()), !dbg !1244
  %34 = sub nsw i64 %33, %19, !dbg !1275
  call void @llvm.dbg.value(metadata ptr %21, metadata !1276, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %32, metadata !1282, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %34, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %32, i64 noundef %34, i1 noundef false) #44, !dbg !1286
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %20, %29 ], [ %33, %31 ], !dbg !1244
  %37 = phi i64 [ %30, %29 ], [ %19, %31 ], !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1209, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1207, metadata !DIExpression()), !dbg !1244
  %38 = icmp sgt i64 %36, 0, !dbg !1287
  %39 = icmp slt i64 %37, %36, !dbg !1288
  %40 = select i1 %38, i1 %39, i1 false, !dbg !1288
  br i1 %40, label %18, label %.loopexit, !dbg !1247, !llvm.loop !1289

.loopexit:                                        ; preds = %35
  %.lcssa = phi i64 [ %36, %35 ], !dbg !1244
  br label %41, !dbg !1291

41:                                               ; preds = %.loopexit, %11
  %42 = phi i64 [ %15, %11 ], [ %.lcssa, %.loopexit ], !dbg !1300
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1207, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %42, i64 %12), metadata !1198, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1223
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1297, metadata !DIExpression()), !dbg !1301
  %43 = load i32, ptr %0, align 8, !dbg !1291, !tbaa !1302
  %44 = and i32 %43, 32, !dbg !1305
  %45 = icmp eq i32 %44, 0, !dbg !1305
  br i1 %45, label %50, label %46, !dbg !1306

46:                                               ; preds = %41
  %47 = tail call ptr @__errno_location() #47, !dbg !1307
  %48 = load i32, ptr %47, align 4, !dbg !1307, !tbaa !939
  %49 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #44, !dbg !1307
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %48, ptr noundef %49) #44, !dbg !1307
  unreachable, !dbg !1307

50:                                               ; preds = %41
  %51 = add nsw i64 %42, %12, !dbg !1308
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1198, metadata !DIExpression()), !dbg !1223
  %52 = icmp slt i64 %51, 4096, !dbg !1309
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1310, metadata !DIExpression()), !dbg !1313
  %53 = and i32 %43, 16
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %52, %54, !dbg !1315
  br i1 %55, label %56, label %58, !dbg !1315

56:                                               ; preds = %50, %149
  %57 = phi i64 [ %51, %50 ], [ 0, %149 ]
  br label %11, !dbg !1223, !llvm.loop !1316

58:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1198, metadata !DIExpression()), !dbg !1223
  %59 = icmp eq i64 %51, 0, !dbg !1318
  br i1 %59, label %63, label %60, !dbg !1319

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1320
  store i64 3072, ptr %8, align 8, !dbg !1321, !tbaa !1322, !DIAssignID !1323
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1213, metadata !DIExpression(), metadata !1323, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  %61 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %51, ptr noundef nonnull %10, ptr noundef nonnull %8) #44, !dbg !1324
  tail call void @llvm.dbg.value(metadata i1 %61, metadata !1205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1242
  %62 = load i64, ptr %8, align 8, !dbg !1326
  br label %91, !dbg !1327

63:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1310, metadata !DIExpression()), !dbg !1328
  %64 = load i32, ptr %0, align 8, !dbg !1330, !tbaa !1302
  %65 = and i32 %64, 16, !dbg !1319
  %66 = icmp eq i32 %65, 0, !dbg !1319
  br i1 %66, label %149, label %67, !dbg !1331

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1320
  store i64 3072, ptr %8, align 8, !dbg !1321, !tbaa !1322, !DIAssignID !1323
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1213, metadata !DIExpression(), metadata !1323, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1332, metadata !DIExpression(), metadata !1220, metadata ptr %5, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1345, metadata !DIExpression(), metadata !1221, metadata ptr %6, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %7, metadata !1340, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr undef, metadata !1341, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %8, metadata !1342, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %7, metadata !1349, metadata !DIExpression()), !dbg !1354
  %68 = load i32, ptr %7, align 4, !dbg !1357, !tbaa !1238
  %69 = icmp eq i32 %68, 0, !dbg !1358
  br i1 %69, label %90, label %70, !dbg !1359

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !1360
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1361, !DIAssignID !1362
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1332, metadata !DIExpression(), metadata !1362, metadata ptr %5, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %7, metadata !1349, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i32 %68, metadata !1343, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %68, metadata !1262, metadata !DIExpression()), !dbg !1365
  %71 = srem i32 %68, 4, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %71, metadata !1267, metadata !DIExpression()), !dbg !1365
  %72 = icmp eq i32 %71, 0, !dbg !1368
  %73 = sub nsw i32 4, %71, !dbg !1368
  %74 = select i1 %72, i32 0, i32 %73, !dbg !1368
  %75 = zext nneg i32 %74 to i64
  call void @llvm.dbg.value(metadata i64 %75, metadata !1344, metadata !DIExpression()), !dbg !1347
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !1369
  store i64 3072, ptr %6, align 8, !dbg !1370, !tbaa !1322, !DIAssignID !1371
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1345, metadata !DIExpression(), metadata !1371, metadata ptr %6, metadata !DIExpression()), !dbg !1347
  %76 = icmp eq i32 %74, 0, !dbg !1372
  br i1 %76, label %85, label %77, !dbg !1374

77:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %7, metadata !1375, metadata !DIExpression()), !dbg !1380
  %78 = add nsw i32 %68, -1, !dbg !1382
  %79 = sext i32 %78 to i64, !dbg !1383
  %80 = getelementptr inbounds %struct.base64_decode_context, ptr %7, i64 0, i32 1, i64 %79, !dbg !1383
  %81 = load i8, ptr %80, align 1, !dbg !1383, !tbaa !948
  %82 = icmp eq i8 %81, 61, !dbg !1384
  br i1 %82, label %85, label %83, !dbg !1385

83:                                               ; preds = %77
  %84 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %75, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1386
  call void @llvm.dbg.value(metadata i1 %84, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %87, !dbg !1388

85:                                               ; preds = %77, %70
  %86 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1389
  call void @llvm.dbg.value(metadata i1 %86, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i1 [ %86, %85 ], [ %84, %83 ]
  call void @llvm.dbg.value(metadata i1 %88, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  %89 = load i64, ptr %6, align 8, !dbg !1391, !tbaa !1322
  store i64 %89, ptr %8, align 8, !dbg !1392, !tbaa !1322, !DIAssignID !1393
  call void @llvm.dbg.assign(metadata i64 %89, metadata !1213, metadata !DIExpression(), metadata !1393, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !1394
  br label %91

90:                                               ; preds = %67
  store i64 0, ptr %8, align 8, !dbg !1395, !tbaa !1322, !DIAssignID !1397
  call void @llvm.dbg.assign(metadata i64 0, metadata !1213, metadata !DIExpression(), metadata !1397, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  br label %91, !dbg !1398

91:                                               ; preds = %90, %87, %60
  %92 = phi i64 [ %62, %60 ], [ 0, %90 ], [ %89, %87 ], !dbg !1326
  %93 = phi i1 [ %61, %60 ], [ true, %90 ], [ %88, %87 ]
  tail call void @llvm.dbg.value(metadata i1 %93, metadata !1205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1242
  %94 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %92, ptr noundef %2), !dbg !1326
  %95 = load i64, ptr %8, align 8, !dbg !1399, !tbaa !1322
  %96 = icmp ult i64 %94, %95, !dbg !1400
  br i1 %96, label %133, label %97, !dbg !1401

97:                                               ; preds = %91
  br i1 %93, label %98, label %143, !dbg !1402

98:                                               ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1198, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #44, !dbg !1403
  br i1 %59, label %146, label %99

99:                                               ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1198, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1310, metadata !DIExpression()), !dbg !1328
  %100 = load i32, ptr %0, align 8, !dbg !1330, !tbaa !1302
  %101 = and i32 %100, 16, !dbg !1319
  %102 = icmp eq i32 %101, 0, !dbg !1319
  br i1 %102, label %149, label %103, !dbg !1331

103:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1320
  store i64 3072, ptr %8, align 8, !dbg !1321, !tbaa !1322, !DIAssignID !1323
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1213, metadata !DIExpression(), metadata !1323, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1332, metadata !DIExpression(), metadata !1220, metadata ptr %5, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1345, metadata !DIExpression(), metadata !1221, metadata ptr %6, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %7, metadata !1340, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr undef, metadata !1341, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %8, metadata !1342, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %7, metadata !1349, metadata !DIExpression()), !dbg !1354
  %104 = load i32, ptr %7, align 4, !dbg !1357, !tbaa !1238
  %105 = icmp eq i32 %104, 0, !dbg !1358
  br i1 %105, label %106, label %107, !dbg !1359

106:                                              ; preds = %103
  store i64 0, ptr %8, align 8, !dbg !1395, !tbaa !1322, !DIAssignID !1397
  call void @llvm.dbg.assign(metadata i64 0, metadata !1213, metadata !DIExpression(), metadata !1397, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  br label %127, !dbg !1398

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !1360
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1361, !DIAssignID !1362
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1332, metadata !DIExpression(), metadata !1362, metadata ptr %5, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %7, metadata !1349, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i32 %104, metadata !1343, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %104, metadata !1262, metadata !DIExpression()), !dbg !1365
  %108 = srem i32 %104, 4, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %108, metadata !1267, metadata !DIExpression()), !dbg !1365
  %109 = icmp eq i32 %108, 0, !dbg !1368
  %110 = sub nsw i32 4, %108, !dbg !1368
  %111 = select i1 %109, i32 0, i32 %110, !dbg !1368
  %112 = zext nneg i32 %111 to i64
  call void @llvm.dbg.value(metadata i64 %112, metadata !1344, metadata !DIExpression()), !dbg !1347
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !1369
  store i64 3072, ptr %6, align 8, !dbg !1370, !tbaa !1322, !DIAssignID !1371
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1345, metadata !DIExpression(), metadata !1371, metadata ptr %6, metadata !DIExpression()), !dbg !1347
  %113 = icmp eq i32 %111, 0, !dbg !1372
  br i1 %113, label %122, label %114, !dbg !1374

114:                                              ; preds = %107
  call void @llvm.dbg.value(metadata ptr %7, metadata !1375, metadata !DIExpression()), !dbg !1380
  %115 = add nsw i32 %104, -1, !dbg !1382
  %116 = sext i32 %115 to i64, !dbg !1383
  %117 = getelementptr inbounds %struct.base64_decode_context, ptr %7, i64 0, i32 1, i64 %116, !dbg !1383
  %118 = load i8, ptr %117, align 1, !dbg !1383, !tbaa !948
  %119 = icmp eq i8 %118, 61, !dbg !1384
  br i1 %119, label %122, label %120, !dbg !1385

120:                                              ; preds = %114
  %121 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %112, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1386
  call void @llvm.dbg.value(metadata i1 %121, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %124, !dbg !1388

122:                                              ; preds = %114, %107
  %123 = call i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1389
  call void @llvm.dbg.value(metadata i1 %123, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i1 [ %123, %122 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i1 %125, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  %126 = load i64, ptr %6, align 8, !dbg !1391, !tbaa !1322
  store i64 %126, ptr %8, align 8, !dbg !1392, !tbaa !1322, !DIAssignID !1393
  call void @llvm.dbg.assign(metadata i64 %126, metadata !1213, metadata !DIExpression(), metadata !1393, metadata ptr %8, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !1394
  br label %127

127:                                              ; preds = %124, %106
  %128 = phi i64 [ 0, %106 ], [ %126, %124 ], !dbg !1326
  %129 = phi i1 [ true, %106 ], [ %125, %124 ]
  tail call void @llvm.dbg.value(metadata i1 %129, metadata !1205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1242
  %130 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %128, ptr noundef %2), !dbg !1326
  %131 = load i64, ptr %8, align 8, !dbg !1399, !tbaa !1322
  %132 = icmp ult i64 %130, %131, !dbg !1400
  br i1 %132, label %133, label %142, !dbg !1401

133:                                              ; preds = %91, %127
  %134 = tail call ptr @__errno_location() #47, !dbg !1404
  %135 = load i32, ptr %134, align 4, !dbg !1404, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %135, metadata !1407, metadata !DIExpression()), !dbg !1409
  %136 = load ptr, ptr @stdout, align 8, !dbg !1410, !tbaa !869
  %137 = call i32 @fflush_unlocked(ptr noundef %136) #44, !dbg !1410
  %138 = load ptr, ptr @stdout, align 8, !dbg !1411, !tbaa !869
  %139 = call i32 @fpurge(ptr noundef %138) #44, !dbg !1412
  %140 = load ptr, ptr @stdout, align 8, !dbg !1413, !tbaa !869
  call void @clearerr_unlocked(ptr noundef %140) #44, !dbg !1413
  %141 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1414
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %141) #44, !dbg !1414
  unreachable, !dbg !1414

142:                                              ; preds = %127
  br i1 %129, label %145, label %143, !dbg !1402

143:                                              ; preds = %97, %142
  %144 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #44, !dbg !1415
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %144) #44, !dbg !1415
  unreachable, !dbg !1415

145:                                              ; preds = %142
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1198, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #44, !dbg !1403
  br label %146, !dbg !1417

146:                                              ; preds = %145, %98
  %147 = load i32, ptr %0, align 8, !dbg !1417, !tbaa !1302
  %148 = and i32 %147, 16, !dbg !1419
  br label %149

149:                                              ; preds = %63, %99, %146
  %150 = phi i32 [ %148, %146 ], [ 0, %99 ], [ 0, %63 ], !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1310, metadata !DIExpression()), !dbg !1420
  %151 = icmp eq i32 %150, 0, !dbg !1419
  br i1 %151, label %56, label %152, !dbg !1421

152:                                              ; preds = %149
  call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #48, !dbg !1422
  unreachable, !dbg !1422
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1423 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1427, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1428, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1429, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1430, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1431, metadata !DIExpression()), !dbg !1437
  %5 = tail call noalias nonnull dereferenceable(30720) ptr @xmalloc(i64 noundef 30720) #49, !dbg !1438
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1432, metadata !DIExpression()), !dbg !1437
  %6 = tail call noalias nonnull dereferenceable(40960) ptr @xmalloc(i64 noundef 40960) #49, !dbg !1439
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1433, metadata !DIExpression()), !dbg !1437
  %7 = icmp eq i64 %3, 0
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  br label %10, !dbg !1440

10:                                               ; preds = %96, %4
  %11 = phi i64 [ 0, %4 ], [ %92, %96 ], !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1431, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1437
  br label %12, !dbg !1442

12:                                               ; preds = %21, %10
  %13 = phi i64 [ 0, %10 ], [ %17, %21 ], !dbg !1443
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1434, metadata !DIExpression()), !dbg !1437
  %14 = getelementptr inbounds i8, ptr %5, i64 %13, !dbg !1444
  %15 = sub nsw i64 30720, %13, !dbg !1444
  %16 = tail call i64 @fread_unlocked(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %15, ptr noundef %0), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1435, metadata !DIExpression()), !dbg !1443
  %17 = add nsw i64 %16, %13, !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1434, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1310, metadata !DIExpression()), !dbg !1447
  %18 = load i32, ptr %0, align 8, !dbg !1449, !tbaa !1302
  %19 = and i32 %18, 16, !dbg !1450
  %20 = icmp eq i32 %19, 0, !dbg !1450
  br i1 %20, label %21, label %26, !dbg !1451

21:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1297, metadata !DIExpression()), !dbg !1452
  %22 = and i32 %18, 32, !dbg !1454
  %23 = icmp eq i32 %22, 0, !dbg !1454
  %24 = icmp slt i64 %17, 30720
  %25 = select i1 %23, i1 %24, i1 false, !dbg !1455
  br i1 %25, label %12, label %26, !dbg !1455, !llvm.loop !1456

26:                                               ; preds = %21, %12
  %.lcssa = phi i64 [ %17, %21 ], [ %17, %12 ], !dbg !1446
  %27 = icmp sgt i64 %.lcssa, 0, !dbg !1458
  br i1 %27, label %28, label %91, !dbg !1460

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %.lcssa, 2, !dbg !1461
  %30 = udiv i64 %29, 3, !dbg !1461
  %31 = shl nuw nsw i64 %30, 2, !dbg !1461
  tail call void @base64_encode(ptr noundef nonnull %5, i64 noundef %.lcssa, ptr noundef nonnull %6, i64 noundef %31) #44, !dbg !1464
  call void @llvm.dbg.value(metadata ptr %6, metadata !1465, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %31, metadata !1470, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %3, metadata !1471, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata ptr undef, metadata !1472, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata ptr %2, metadata !1473, metadata !DIExpression()), !dbg !1493
  br i1 %7, label %32, label %.preheader, !dbg !1495

.preheader:                                       ; preds = %28
  br label %45, !dbg !1496

32:                                               ; preds = %28
  %33 = load ptr, ptr @stdout, align 8, !dbg !1497, !tbaa !869
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1497
  %35 = icmp ult i64 %34, %31, !dbg !1498
  br i1 %35, label %36, label %91, !dbg !1499

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #47, !dbg !1500
  %38 = load i32, ptr %37, align 4, !dbg !1500, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %38, metadata !1407, metadata !DIExpression()), !dbg !1502
  %39 = load ptr, ptr @stdout, align 8, !dbg !1503, !tbaa !869
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #44, !dbg !1503
  %41 = load ptr, ptr @stdout, align 8, !dbg !1504, !tbaa !869
  %42 = tail call i32 @fpurge(ptr noundef %41) #44, !dbg !1505
  %43 = load ptr, ptr @stdout, align 8, !dbg !1506, !tbaa !869
  tail call void @clearerr_unlocked(ptr noundef %43) #44, !dbg !1506
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1507
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %44) #44, !dbg !1507
  unreachable, !dbg !1507

45:                                               ; preds = %.preheader, %87
  %46 = phi i64 [ %88, %87 ], [ %11, %.preheader ], !dbg !1437
  %47 = phi i64 [ %89, %87 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1431, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %47, metadata !1481, metadata !DIExpression()), !dbg !1508
  %48 = sub nsw i64 %3, %46, !dbg !1509
  %49 = sub nsw i64 %31, %47, !dbg !1509
  %50 = tail call i64 @llvm.smin.i64(i64 %48, i64 %49), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %50, metadata !1483, metadata !DIExpression()), !dbg !1510
  %51 = icmp eq i64 %50, 0, !dbg !1511
  br i1 %51, label %52, label %70, !dbg !1512

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 10, metadata !1513, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %2, metadata !1518, metadata !DIExpression()), !dbg !1519
  %53 = load ptr, ptr %8, align 8, !dbg !1523, !tbaa !1524
  %54 = load ptr, ptr %9, align 8, !dbg !1523, !tbaa !1525
  %55 = icmp ult ptr %53, %54, !dbg !1523
  br i1 %55, label %56, label %58, !dbg !1523, !prof !1526

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1523
  store ptr %57, ptr %8, align 8, !dbg !1523, !tbaa !1524
  store i8 10, ptr %53, align 1, !dbg !1523, !tbaa !948
  br label %87, !dbg !1527

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #44, !dbg !1523
  %60 = icmp eq i32 %59, -1, !dbg !1528
  br i1 %60, label %61, label %87, !dbg !1527

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #47, !dbg !1529
  %63 = load i32, ptr %62, align 4, !dbg !1529, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %63, metadata !1407, metadata !DIExpression()), !dbg !1531
  %64 = load ptr, ptr @stdout, align 8, !dbg !1532, !tbaa !869
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #44, !dbg !1532
  %66 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !869
  %67 = tail call i32 @fpurge(ptr noundef %66) #44, !dbg !1534
  %68 = load ptr, ptr @stdout, align 8, !dbg !1535, !tbaa !869
  tail call void @clearerr_unlocked(ptr noundef %68) #44, !dbg !1535
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1536
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #44, !dbg !1536
  unreachable, !dbg !1536

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1537, !tbaa !869
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1537
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1537
  %74 = icmp ult i64 %73, %50, !dbg !1538
  br i1 %74, label %75, label %84, !dbg !1539

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #47, !dbg !1540
  %77 = load i32, ptr %76, align 4, !dbg !1540, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %77, metadata !1407, metadata !DIExpression()), !dbg !1542
  %78 = load ptr, ptr @stdout, align 8, !dbg !1543, !tbaa !869
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #44, !dbg !1543
  %80 = load ptr, ptr @stdout, align 8, !dbg !1544, !tbaa !869
  %81 = tail call i32 @fpurge(ptr noundef %80) #44, !dbg !1545
  %82 = load ptr, ptr @stdout, align 8, !dbg !1546, !tbaa !869
  tail call void @clearerr_unlocked(ptr noundef %82) #44, !dbg !1546
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1547
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #44, !dbg !1547
  unreachable, !dbg !1547

84:                                               ; preds = %70
  %85 = add nsw i64 %50, %46, !dbg !1548
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1431, metadata !DIExpression()), !dbg !1437
  %86 = add nsw i64 %50, %47, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %86, metadata !1481, metadata !DIExpression()), !dbg !1508
  br label %87

87:                                               ; preds = %56, %58, %84
  %88 = phi i64 [ %85, %84 ], [ 0, %58 ], [ 0, %56 ], !dbg !1550
  %89 = phi i64 [ %86, %84 ], [ %47, %58 ], [ %47, %56 ], !dbg !1508
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1431, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %89, metadata !1481, metadata !DIExpression()), !dbg !1508
  %90 = icmp slt i64 %89, %31, !dbg !1551
  br i1 %90, label %45, label %.loopexit, !dbg !1496, !llvm.loop !1552

.loopexit:                                        ; preds = %87
  %.lcssa1 = phi i64 [ %88, %87 ], !dbg !1550
  br label %91, !dbg !1554

91:                                               ; preds = %.loopexit, %32, %26
  %92 = phi i64 [ %11, %26 ], [ %11, %32 ], [ %.lcssa1, %.loopexit ], !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1431, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1310, metadata !DIExpression()), !dbg !1556
  %93 = load i32, ptr %0, align 8, !dbg !1554, !tbaa !1302
  %94 = and i32 %93, 16, !dbg !1557
  %95 = icmp eq i32 %94, 0, !dbg !1557
  br i1 %95, label %96, label %101, !dbg !1558

96:                                               ; preds = %91
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1297, metadata !DIExpression()), !dbg !1559
  %97 = and i32 %93, 32, !dbg !1561
  %98 = icmp eq i32 %97, 0, !dbg !1561
  %99 = icmp eq i64 %.lcssa, 30720
  %100 = select i1 %98, i1 %99, i1 false, !dbg !1562
  br i1 %100, label %10, label %101, !dbg !1562, !llvm.loop !1563

101:                                              ; preds = %96, %91
  %.lcssa2 = phi i64 [ %92, %96 ], [ %92, %91 ], !dbg !1441
  %102 = icmp ne i64 %3, 0, !dbg !1565
  %103 = icmp sgt i64 %.lcssa2, 0
  %104 = select i1 %102, i1 %103, i1 false, !dbg !1567
  br i1 %104, label %105, label %123, !dbg !1567

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 10, metadata !1513, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %2, metadata !1518, metadata !DIExpression()), !dbg !1568
  %106 = load ptr, ptr %8, align 8, !dbg !1570, !tbaa !1524
  %107 = load ptr, ptr %9, align 8, !dbg !1570, !tbaa !1525
  %108 = icmp ult ptr %106, %107, !dbg !1570
  br i1 %108, label %109, label %111, !dbg !1570, !prof !1526

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !1570
  store ptr %110, ptr %8, align 8, !dbg !1570, !tbaa !1524
  store i8 10, ptr %106, align 1, !dbg !1570, !tbaa !948
  br label %123, !dbg !1571

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #44, !dbg !1570
  %113 = icmp eq i32 %112, -1, !dbg !1572
  br i1 %113, label %114, label %123, !dbg !1571

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #47, !dbg !1573
  %116 = load i32, ptr %115, align 4, !dbg !1573, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %116, metadata !1407, metadata !DIExpression()), !dbg !1575
  %117 = load ptr, ptr @stdout, align 8, !dbg !1576, !tbaa !869
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #44, !dbg !1576
  %119 = load ptr, ptr @stdout, align 8, !dbg !1577, !tbaa !869
  %120 = tail call i32 @fpurge(ptr noundef %119) #44, !dbg !1578
  %121 = load ptr, ptr @stdout, align 8, !dbg !1579, !tbaa !869
  tail call void @clearerr_unlocked(ptr noundef %121) #44, !dbg !1579
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1580
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #44, !dbg !1580
  unreachable, !dbg !1580

123:                                              ; preds = %109, %111, %101
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1297, metadata !DIExpression()), !dbg !1581
  %124 = load i32, ptr %0, align 8, !dbg !1584, !tbaa !1302
  %125 = and i32 %124, 32, !dbg !1585
  %126 = icmp eq i32 %125, 0, !dbg !1585
  br i1 %126, label %131, label %127, !dbg !1586

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #47, !dbg !1587
  %129 = load i32, ptr %128, align 4, !dbg !1587, !tbaa !939
  %130 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #44, !dbg !1587
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %130) #44, !dbg !1587
  unreachable, !dbg !1587

131:                                              ; preds = %123
  tail call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #48, !dbg !1588
  unreachable, !dbg !1588
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1589 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1590 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1593 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !dbg !1596 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1600, metadata !DIExpression()), !dbg !1602
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1601, metadata !DIExpression()), !dbg !1602
  %3 = tail call i32 @rpl_fclose(ptr noundef %0) #44, !dbg !1603
  %4 = icmp eq i32 %3, 0, !dbg !1605
  br i1 %4, label %14, label %5, !dbg !1606

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %1, metadata !950, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !956, metadata !DIExpression()), !dbg !1607
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #45, !dbg !1611
  %7 = icmp eq i32 %6, 0, !dbg !1612
  %8 = tail call ptr @__errno_location() #47, !dbg !1613
  %9 = load i32, ptr %8, align 4, !dbg !1613, !tbaa !939
  br i1 %7, label %10, label %12, !dbg !1614

10:                                               ; preds = %5
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #44, !dbg !1615
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %11) #44, !dbg !1615
  unreachable, !dbg !1615

12:                                               ; preds = %5
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #44, !dbg !1616
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef nonnull @.str.21, ptr noundef %13) #44, !dbg !1616
  unreachable, !dbg !1616

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #46, !dbg !1617
  unreachable, !dbg !1617
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @isubase64(i8 noundef %0) local_unnamed_addr #12 !dbg !1618 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1621, metadata !DIExpression()), !dbg !1622
  %2 = zext i8 %0 to i64, !dbg !1623
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1624
  %4 = load i8, ptr %3, align 1, !dbg !1624, !tbaa !948
  %5 = icmp sgt i8 %4, -1, !dbg !1625
  ret i1 %5, !dbg !1626
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @isbase64(i8 noundef %0) local_unnamed_addr #12 !dbg !1627 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1631, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1621, metadata !DIExpression()), !dbg !1633
  %2 = zext i8 %0 to i64, !dbg !1635
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1636
  %4 = load i8, ptr %3, align 1, !dbg !1636, !tbaa !948
  %5 = icmp sgt i8 %4, -1, !dbg !1637
  ret i1 %5, !dbg !1638
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @base64_decode_ctx_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1639 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i32 0, ptr %0, align 4, !dbg !1650, !tbaa !1238
  ret void, !dbg !1651
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @base64_encode(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !1652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1659, metadata !DIExpression()), !dbg !1660
  %5 = and i64 %3, 3, !dbg !1661
  %6 = icmp eq i64 %5, 0, !dbg !1661
  br i1 %6, label %7, label %53, !dbg !1663

7:                                                ; preds = %4
  %8 = ashr exact i64 %3, 2, !dbg !1664
  %9 = mul nsw i64 %8, 3, !dbg !1665
  %10 = icmp eq i64 %9, %1, !dbg !1666
  br i1 %10, label %11, label %53, !dbg !1667

11:                                               ; preds = %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668), !dbg !1671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673), !dbg !1671
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1675, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1680, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1681, metadata !DIExpression()), !dbg !1682
  %12 = icmp eq i64 %1, 0, !dbg !1684
  br i1 %12, label %137, label %.preheader, !dbg !1684

.preheader:                                       ; preds = %11
  br label %13, !dbg !1684

13:                                               ; preds = %.preheader, %13
  %14 = phi ptr [ %49, %13 ], [ %2, %.preheader ]
  %15 = phi i64 [ %50, %13 ], [ %1, %.preheader ]
  %16 = phi ptr [ %51, %13 ], [ %0, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1681, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1680, metadata !DIExpression()), !dbg !1682
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1675, metadata !DIExpression()), !dbg !1682
  %17 = load i8, ptr %16, align 1, !dbg !1685, !tbaa !948, !alias.scope !1668, !noalias !1673
  %18 = lshr i8 %17, 2
  %19 = zext nneg i8 %18 to i64
  %20 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %19, !dbg !1687
  %21 = load i8, ptr %20, align 1, !dbg !1687, !tbaa !948, !noalias !1688
  %22 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1689
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i8 %21, ptr %14, align 1, !dbg !1690, !tbaa !948, !alias.scope !1673, !noalias !1668
  %23 = zext i8 %17 to i64, !dbg !1691
  %24 = shl nuw nsw i64 %23, 4, !dbg !1692
  %25 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1693
  %26 = load i8, ptr %25, align 1, !dbg !1693, !tbaa !948, !alias.scope !1668, !noalias !1673
  %27 = lshr i8 %26, 4
  %28 = zext nneg i8 %27 to i64
  %29 = and i64 %24, 48, !dbg !1694
  %30 = or disjoint i64 %29, %28, !dbg !1694
  %31 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %30, !dbg !1695
  %32 = load i8, ptr %31, align 1, !dbg !1695, !tbaa !948, !noalias !1688
  %33 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !1696
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i8 %32, ptr %22, align 1, !dbg !1697, !tbaa !948, !alias.scope !1673, !noalias !1668
  %34 = zext i8 %26 to i64, !dbg !1698
  %35 = shl nuw nsw i64 %34, 2, !dbg !1699
  %36 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1700
  %37 = load i8, ptr %36, align 1, !dbg !1700, !tbaa !948, !alias.scope !1668, !noalias !1673
  %38 = lshr i8 %37, 6
  %39 = zext nneg i8 %38 to i64
  %40 = and i64 %35, 60, !dbg !1701
  %41 = or disjoint i64 %40, %39, !dbg !1701
  %42 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %41, !dbg !1702
  %43 = load i8, ptr %42, align 1, !dbg !1702, !tbaa !948, !noalias !1688
  %44 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1703
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i8 %43, ptr %33, align 1, !dbg !1704, !tbaa !948, !alias.scope !1673, !noalias !1668
  %45 = and i8 %37, 63, !dbg !1705
  %46 = zext nneg i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %46, !dbg !1706
  %48 = load i8, ptr %47, align 1, !dbg !1706, !tbaa !948, !noalias !1688
  %49 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i8 %48, ptr %44, align 1, !dbg !1708, !tbaa !948, !alias.scope !1673, !noalias !1668
  %50 = add nsw i64 %15, -3, !dbg !1709
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1680, metadata !DIExpression()), !dbg !1682
  %51 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !1675, metadata !DIExpression()), !dbg !1682
  %52 = icmp eq i64 %50, 0, !dbg !1684
  br i1 %52, label %.loopexit, label %13, !dbg !1684, !llvm.loop !1711

53:                                               ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1659, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1660
  %54 = icmp ne i64 %1, 0, !dbg !1713
  %55 = icmp ne i64 %3, 0, !dbg !1714
  %56 = and i1 %54, %55, !dbg !1714
  br i1 %56, label %.preheader1, label %133, !dbg !1715

.preheader1:                                      ; preds = %53
  br label %57, !dbg !1715

57:                                               ; preds = %.preheader1, %126
  %58 = phi i64 [ %124, %126 ], [ %3, %.preheader1 ]
  %59 = phi ptr [ %127, %126 ], [ %2, %.preheader1 ]
  %60 = phi i64 [ %129, %126 ], [ %1, %.preheader1 ]
  %61 = phi ptr [ %132, %126 ], [ %0, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1658, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1656, metadata !DIExpression()), !dbg !1660
  %62 = load i8, ptr %61, align 1, !dbg !1716, !tbaa !948
  %63 = lshr i8 %62, 2
  %64 = zext nneg i8 %63 to i64
  %65 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %64, !dbg !1718
  %66 = load i8, ptr %65, align 1, !dbg !1718, !tbaa !948
  %67 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1719
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !1658, metadata !DIExpression()), !dbg !1660
  store i8 %66, ptr %59, align 1, !dbg !1720, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %68 = icmp eq i64 %58, 1, !dbg !1721
  br i1 %68, label %.loopexit2, label %69, !dbg !1723

69:                                               ; preds = %57
  %70 = zext i8 %62 to i64, !dbg !1724
  %71 = shl nuw nsw i64 %70, 4, !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !1657, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %72 = icmp eq i64 %60, 1, !dbg !1726
  br i1 %72, label %73, label %78, !dbg !1726

73:                                               ; preds = %69
  %74 = and i64 %71, 48, !dbg !1727
  %75 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %74, !dbg !1728
  %76 = load i8, ptr %75, align 1, !dbg !1728, !tbaa !948
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1658, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1660
  store i8 %76, ptr %67, align 1, !dbg !1729, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %77 = icmp eq i64 %58, 2, !dbg !1730
  br i1 %77, label %.loopexit2, label %109, !dbg !1732

78:                                               ; preds = %69
  %79 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1733
  %80 = load i8, ptr %79, align 1, !dbg !1733, !tbaa !948
  %81 = lshr i8 %80, 4
  %82 = zext nneg i8 %81 to i64
  %83 = and i64 %71, 48, !dbg !1727
  %84 = or disjoint i64 %83, %82, !dbg !1727
  %85 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %84, !dbg !1728
  %86 = load i8, ptr %85, align 1, !dbg !1728, !tbaa !948
  %87 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1734
  tail call void @llvm.dbg.value(metadata ptr %87, metadata !1658, metadata !DIExpression()), !dbg !1660
  store i8 %86, ptr %67, align 1, !dbg !1729, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %88 = icmp eq i64 %58, 2, !dbg !1730
  br i1 %88, label %.loopexit2, label %89, !dbg !1732

89:                                               ; preds = %78
  %90 = zext i8 %80 to i64, !dbg !1735
  %91 = shl nuw nsw i64 %90, 2, !dbg !1736
  %92 = add nsw i64 %60, -2, !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1657, metadata !DIExpression()), !dbg !1660
  %93 = icmp eq i64 %92, 0, !dbg !1737
  br i1 %93, label %94, label %99, !dbg !1737

94:                                               ; preds = %89
  %95 = and i64 %91, 60, !dbg !1738
  %96 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %95, !dbg !1739
  %97 = load i8, ptr %96, align 1, !dbg !1739, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1658, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1660
  store i8 %97, ptr %87, align 1, !dbg !1740, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %98 = icmp eq i64 %58, 3, !dbg !1741
  br i1 %98, label %.loopexit2, label %119, !dbg !1743

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1744
  %101 = load i8, ptr %100, align 1, !dbg !1744, !tbaa !948
  %102 = lshr i8 %101, 6
  %103 = zext nneg i8 %102 to i64
  %104 = and i64 %91, 60, !dbg !1738
  %105 = or disjoint i64 %104, %103, !dbg !1738
  %106 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %105, !dbg !1739
  %107 = load i8, ptr %106, align 1, !dbg !1739, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1658, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1660
  store i8 %107, ptr %87, align 1, !dbg !1740, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %108 = icmp eq i64 %58, 3, !dbg !1741
  br i1 %108, label %.loopexit2, label %112, !dbg !1743

109:                                              ; preds = %73
  %110 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1734
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1658, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1660
  store i8 61, ptr %110, align 1, !dbg !1740, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1659, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1660
  %111 = icmp eq i64 %58, 3, !dbg !1741
  br i1 %111, label %.loopexit2, label %119, !dbg !1743

112:                                              ; preds = %99
  %113 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1745
  %114 = load i8, ptr %113, align 1, !dbg !1745, !tbaa !948
  %115 = and i8 %114, 63, !dbg !1746
  %116 = zext nneg i8 %115 to i64
  %117 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %116, !dbg !1747
  %118 = load i8, ptr %117, align 1, !dbg !1747, !tbaa !948
  br label %119, !dbg !1748

119:                                              ; preds = %94, %109, %112
  %120 = phi i1 [ false, %112 ], [ true, %109 ], [ true, %94 ]
  %121 = phi i64 [ %92, %112 ], [ 0, %109 ], [ 0, %94 ]
  %122 = phi i8 [ %118, %112 ], [ 61, %109 ], [ 61, %94 ], !dbg !1748
  %123 = getelementptr inbounds i8, ptr %59, i64 3, !dbg !1749
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1658, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1660
  store i8 %122, ptr %123, align 1, !dbg !1750, !tbaa !948
  %124 = add nsw i64 %58, -4, !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1659, metadata !DIExpression()), !dbg !1660
  %125 = icmp eq i64 %124, 0, !dbg !1751
  br i1 %125, label %.loopexit2, label %126, !dbg !1753

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, ptr %59, i64 4, !dbg !1754
  tail call void @llvm.dbg.value(metadata ptr %127, metadata !1658, metadata !DIExpression()), !dbg !1660
  %128 = add nsw i64 %121, -1
  %129 = select i1 %120, i64 0, i64 %128, !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1657, metadata !DIExpression()), !dbg !1660
  %130 = icmp eq i64 %129, 0, !dbg !1756
  %131 = select i1 %130, i64 0, i64 3, !dbg !1758
  %132 = getelementptr inbounds i8, ptr %61, i64 %131, !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1659, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %132, metadata !1656, metadata !DIExpression()), !dbg !1660
  br i1 %130, label %.loopexit3, label %57, !dbg !1715, !llvm.loop !1759

133:                                              ; preds = %53
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1659, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !1660
  %134 = icmp eq i64 %3, 0, !dbg !1761
  br i1 %134, label %137, label %135, !dbg !1763

.loopexit3:                                       ; preds = %126
  %.lcssa = phi ptr [ %127, %126 ], !dbg !1754
  br label %135, !dbg !1764

135:                                              ; preds = %.loopexit3, %133
  %136 = phi ptr [ %2, %133 ], [ %.lcssa, %.loopexit3 ]
  store i8 0, ptr %136, align 1, !dbg !1764, !tbaa !948
  br label %137, !dbg !1765

.loopexit:                                        ; preds = %13
  br label %137, !dbg !1766

.loopexit2:                                       ; preds = %99, %119, %94, %73, %57, %78, %109
  br label %137, !dbg !1766

137:                                              ; preds = %.loopexit2, %.loopexit, %11, %135, %133
  ret void, !dbg !1766
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base64_encode_alloc(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !dbg !1767 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1771, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1772, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1773, metadata !DIExpression()), !dbg !1776
  %4 = sdiv i64 %1, 3, !dbg !1777
  %5 = mul i64 %4, 3
  %6 = sub i64 %1, %5
  %7 = icmp ne i64 %6, 0, !dbg !1778
  %8 = zext i1 %7 to i64
  %9 = add nsw i64 %4, %8, !dbg !1779
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1774, metadata !DIExpression()), !dbg !1776
  %10 = add nsw i64 %9, -2305843009213693952, !dbg !1780
  %11 = icmp ult i64 %10, -4611686018427387904, !dbg !1780
  %12 = shl i64 %9, 2, !dbg !1780
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1775, metadata !DIExpression()), !dbg !1776
  %13 = icmp slt i64 %1, 0
  %14 = or i1 %13, %11, !dbg !1782
  br i1 %14, label %15, label %16, !dbg !1782

15:                                               ; preds = %3
  store ptr null, ptr %2, align 8, !dbg !1783, !tbaa !869
  br label %21, !dbg !1785

16:                                               ; preds = %3
  %17 = or disjoint i64 %12, 1, !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1775, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %17, metadata !1787, metadata !DIExpression()), !dbg !1793
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #49, !dbg !1795
  store ptr %18, ptr %2, align 8, !dbg !1796, !tbaa !869
  %19 = icmp eq ptr %18, null, !dbg !1797
  br i1 %19, label %21, label %20, !dbg !1799

20:                                               ; preds = %16
  tail call void @base64_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %18, i64 noundef %17), !dbg !1800
  br label %21, !dbg !1801

21:                                               ; preds = %16, %20, %15
  %22 = phi i64 [ 0, %15 ], [ %12, %20 ], [ %17, %16 ], !dbg !1776
  ret i64 %22, !dbg !1802
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1803 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i1 @base64_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #18 !dbg !1806 {
  %6 = alloca ptr, align 8, !DIAssignID !1826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1813, metadata !DIExpression(), metadata !1826, metadata ptr %6, metadata !DIExpression()), !dbg !1827
  %7 = alloca i64, align 8, !DIAssignID !1828
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1818, metadata !DIExpression(), metadata !1828, metadata ptr %7, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1812, metadata !DIExpression()), !dbg !1827
  store ptr %3, ptr %6, align 8, !tbaa !869, !DIAssignID !1829
  call void @llvm.dbg.assign(metadata ptr %3, metadata !1813, metadata !DIExpression(), metadata !1829, metadata ptr %6, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1814, metadata !DIExpression()), !dbg !1827
  %8 = icmp eq ptr %0, null, !dbg !1830
  tail call void @llvm.dbg.value(metadata i1 %8, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1817, metadata !DIExpression()), !dbg !1827
  br i1 %8, label %13, label %9, !dbg !1831

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1832, !tbaa !1238
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1817, metadata !DIExpression()), !dbg !1827
  %11 = icmp eq i64 %2, 0, !dbg !1835
  tail call void @llvm.dbg.value(metadata i1 %11, metadata !1816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  %12 = icmp ne i32 %10, 0, !dbg !1836
  br label %13, !dbg !1838

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ], !dbg !1827
  %15 = phi i1 [ %11, %9 ], [ false, %5 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i1 %14, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #44, !dbg !1839
  %16 = load i64, ptr %4, align 8, !dbg !1840, !tbaa !1322
  store i64 %16, ptr %7, align 8, !dbg !1841, !tbaa !1322, !DIAssignID !1842
  call void @llvm.dbg.assign(metadata i64 %16, metadata !1818, metadata !DIExpression(), metadata !1842, metadata ptr %7, metadata !DIExpression()), !dbg !1827
  %17 = or i1 %14, %15
  %18 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1
  br label %19, !dbg !1843

19:                                               ; preds = %107, %13
  %20 = phi i64 [ %16, %13 ], [ %110, %107 ], !dbg !1844
  %21 = phi ptr [ %1, %13 ], [ %108, %107 ]
  %22 = phi i64 [ %2, %13 ], [ %109, %107 ]
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1819, metadata !DIExpression()), !dbg !1845
  br i1 %17, label %32, label %23, !dbg !1846

23:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1819, metadata !DIExpression()), !dbg !1845
  %24 = call fastcc i1 @decode_4(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1847
  br i1 %24, label %.preheader, label %32, !dbg !1851

.preheader:                                       ; preds = %23
  br label %25, !dbg !1852

25:                                               ; preds = %.preheader, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %.preheader ]
  %27 = phi ptr [ %28, %25 ], [ %21, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1811, metadata !DIExpression()), !dbg !1827
  %28 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1811, metadata !DIExpression()), !dbg !1827
  %29 = add nsw i64 %26, -4, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1812, metadata !DIExpression()), !dbg !1827
  %30 = load i64, ptr %7, align 8, !dbg !1855, !tbaa !1322
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1819, metadata !DIExpression()), !dbg !1845
  %31 = call fastcc i1 @decode_4(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1847
  br i1 %31, label %25, label %.loopexit2, !dbg !1851, !llvm.loop !1856

.loopexit2:                                       ; preds = %25
  %.lcssa4 = phi ptr [ %28, %25 ], !dbg !1853
  %.lcssa3 = phi i64 [ %29, %25 ], !dbg !1854
  %.lcssa = phi i64 [ %30, %25 ], !dbg !1855
  br label %32, !dbg !1858

32:                                               ; preds = %.loopexit2, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %.lcssa4, %.loopexit2 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %.lcssa3, %.loopexit2 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %.lcssa, %.loopexit2 ], !dbg !1845
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1819, metadata !DIExpression()), !dbg !1845
  %36 = icmp ne i64 %34, 0, !dbg !1858
  %37 = or i1 %15, %36, !dbg !1860
  br i1 %37, label %38, label %111, !dbg !1860

38:                                               ; preds = %32
  br i1 %36, label %39, label %46, !dbg !1861

39:                                               ; preds = %38
  %40 = load i8, ptr %33, align 1, !dbg !1862, !tbaa !948
  %41 = icmp ne i8 %40, 10, !dbg !1863
  %42 = or i1 %8, %41, !dbg !1864
  br i1 %42, label %46, label %43, !dbg !1864

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1865
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1811, metadata !DIExpression()), !dbg !1827
  %45 = add nsw i64 %34, -1, !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !1812, metadata !DIExpression()), !dbg !1827
  br label %107, !dbg !1868

46:                                               ; preds = %39, %38
  %47 = load i64, ptr %7, align 8, !dbg !1869, !tbaa !1322
  %48 = sub i64 %47, %35, !dbg !1870
  %49 = load ptr, ptr %6, align 8, !dbg !1871, !tbaa !869
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1871
  store ptr %50, ptr %6, align 8, !dbg !1871, !tbaa !869, !DIAssignID !1872
  call void @llvm.dbg.assign(metadata ptr %50, metadata !1813, metadata !DIExpression(), metadata !1872, metadata ptr %6, metadata !DIExpression()), !dbg !1827
  store i64 %35, ptr %7, align 8, !dbg !1873, !tbaa !1322, !DIAssignID !1874
  call void @llvm.dbg.assign(metadata i64 %35, metadata !1818, metadata !DIExpression(), metadata !1874, metadata ptr %7, metadata !DIExpression()), !dbg !1827
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1875
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !1821, metadata !DIExpression()), !dbg !1876
  br i1 %8, label %89, label %52, !dbg !1877

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1878, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr undef, metadata !1884, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr %51, metadata !1885, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr undef, metadata !1886, metadata !DIExpression()), !dbg !1894
  %53 = load i32, ptr %0, align 4, !dbg !1897, !tbaa !1238, !noalias !1899
  switch i32 %53, label %62 [
    i32 4, label %54
    i32 0, label %55
  ], !dbg !1902

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1903, !tbaa !1238, !noalias !1899
  br label %55, !dbg !1904

55:                                               ; preds = %54, %52
  call void @llvm.dbg.value(metadata ptr %33, metadata !1887, metadata !DIExpression()), !dbg !1905
  %56 = icmp sgt i64 %34, 3, !dbg !1906
  br i1 %56, label %57, label %62, !dbg !1908

57:                                               ; preds = %55
  %58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 10, i64 noundef 4) #45, !dbg !1909
  %59 = icmp eq ptr %58, null, !dbg !1910
  br i1 %59, label %60, label %65, !dbg !1911

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %33, i64 4, !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1825, metadata !DIExpression()), !dbg !1876
  br label %98, !dbg !1914

62:                                               ; preds = %52, %55
  %63 = phi i32 [ 0, %55 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1890, metadata !DIExpression()), !dbg !1916
  %64 = icmp sgt i64 %34, 0, !dbg !1917
  br i1 %64, label %65, label %85, !dbg !1918

65:                                               ; preds = %57, %62
  %66 = phi i32 [ 0, %57 ], [ %63, %62 ]
  br label %67, !dbg !1919

67:                                               ; preds = %65, %75
  %68 = phi i32 [ %66, %65 ], [ %79, %75 ]
  %69 = phi ptr [ %33, %65 ], [ %.lcssa7, %75 ]
  br label %70, !dbg !1919

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1890, metadata !DIExpression()), !dbg !1916
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %72, metadata !1890, metadata !DIExpression()), !dbg !1916
  %73 = load i8, ptr %71, align 1, !dbg !1921, !tbaa !948
  call void @llvm.dbg.value(metadata i8 %73, metadata !1892, metadata !DIExpression()), !dbg !1922
  %74 = icmp eq i8 %73, 10, !dbg !1923
  br i1 %74, label %83, label %75, !dbg !1919

75:                                               ; preds = %70
  %.lcssa7 = phi ptr [ %72, %70 ], !dbg !1920
  %.lcssa5 = phi i8 [ %73, %70 ], !dbg !1921
  %76 = add nsw i32 %68, 1, !dbg !1925
  store i32 %76, ptr %0, align 4, !dbg !1925, !tbaa !1238, !noalias !1899
  %77 = sext i32 %68 to i64, !dbg !1927
  %78 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1927
  store i8 %.lcssa5, ptr %78, align 1, !dbg !1928, !tbaa !948, !noalias !1899
  %79 = load i32, ptr %0, align 4, !dbg !1929, !tbaa !1238, !noalias !1899
  %80 = icmp ne i32 %79, 4, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %.lcssa7, metadata !1890, metadata !DIExpression()), !dbg !1916
  %81 = icmp ult ptr %.lcssa7, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1932
  br i1 %82, label %67, label %.loopexit1, !dbg !1932

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1890, metadata !DIExpression()), !dbg !1916
  %84 = icmp ult ptr %72, %51, !dbg !1917
  br i1 %84, label %70, label %.loopexit, !dbg !1918

.loopexit:                                        ; preds = %83
  %.lcssa11 = phi i32 [ %68, %83 ]
  %.lcssa8 = phi ptr [ %72, %83 ], !dbg !1920
  br label %85, !dbg !1933

.loopexit1:                                       ; preds = %75
  %.lcssa9 = phi i32 [ %79, %75 ], !dbg !1929
  %.lcssa7.lcssa = phi ptr [ %.lcssa7, %75 ], !dbg !1920
  br label %85, !dbg !1933

85:                                               ; preds = %.loopexit1, %.loopexit, %62
  %86 = phi i32 [ %63, %62 ], [ %.lcssa11, %.loopexit ], [ %.lcssa9, %.loopexit1 ], !dbg !1934
  %87 = phi ptr [ %33, %62 ], [ %.lcssa8, %.loopexit ], [ %.lcssa7.lcssa, %.loopexit1 ], !dbg !1916
  call void @llvm.dbg.value(metadata ptr %87, metadata !1890, metadata !DIExpression()), !dbg !1916
  tail call void @llvm.dbg.value(metadata ptr %87, metadata !1811, metadata !DIExpression()), !dbg !1827
  %88 = sext i32 %86 to i64, !dbg !1933
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1812, metadata !DIExpression()), !dbg !1827
  br label %89

89:                                               ; preds = %85, %46
  %90 = phi ptr [ %33, %46 ], [ %87, %85 ]
  %91 = phi i64 [ %34, %46 ], [ %88, %85 ]
  %92 = phi ptr [ %33, %46 ], [ %18, %85 ], !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !1825, metadata !DIExpression()), !dbg !1876
  %93 = icmp eq i64 %91, 0, !dbg !1936
  br i1 %93, label %111, label %94, !dbg !1937

94:                                               ; preds = %89
  %95 = icmp sgt i64 %91, 3, !dbg !1938
  %96 = or i1 %15, %95, !dbg !1914
  %97 = or i1 %8, %96, !dbg !1914
  br i1 %97, label %98, label %111, !dbg !1914

98:                                               ; preds = %60, %94
  %99 = phi ptr [ %61, %60 ], [ %90, %94 ]
  %100 = phi i64 [ 4, %60 ], [ %91, %94 ]
  %101 = phi ptr [ %33, %60 ], [ %92, %94 ]
  %102 = call fastcc i1 @decode_4(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1939
  br i1 %102, label %103, label %111, !dbg !1941

103:                                              ; preds = %98
  %104 = ptrtoint ptr %51 to i64, !dbg !1942
  %105 = ptrtoint ptr %99 to i64, !dbg !1942
  %106 = sub i64 %104, %105, !dbg !1942
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !1812, metadata !DIExpression()), !dbg !1827
  br label %107

107:                                              ; preds = %43, %103
  %108 = phi ptr [ %99, %103 ], [ %44, %43 ]
  %109 = phi i64 [ %106, %103 ], [ %45, %43 ]
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %108, metadata !1811, metadata !DIExpression()), !dbg !1827
  %110 = load i64, ptr %7, align 8, !dbg !1844, !tbaa !1322
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %32 ], [ true, %89 ], [ true, %94 ], [ false, %98 ]
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1811, metadata !DIExpression()), !dbg !1827
  %113 = load i64, ptr %7, align 8, !dbg !1943, !tbaa !1322
  %114 = load i64, ptr %4, align 8, !dbg !1944, !tbaa !1322
  %115 = sub nsw i64 %114, %113, !dbg !1944
  store i64 %115, ptr %4, align 8, !dbg !1944, !tbaa !1322
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #44, !dbg !1945
  ret i1 %112, !dbg !1946
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i1 @decode_4(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #19 !dbg !1947 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1951, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1952, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1953, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1954, metadata !DIExpression()), !dbg !1956
  %5 = icmp slt i64 %1, 2, !dbg !1957
  br i1 %5, label %92, label %6, !dbg !1959

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1960, !tbaa !948
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1631, metadata !DIExpression()), !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1621, metadata !DIExpression()), !dbg !1964
  %8 = zext i8 %7 to i64, !dbg !1966
  %9 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %8, !dbg !1967
  %10 = load i8, ptr %9, align 1, !dbg !1967, !tbaa !948
  %11 = icmp sgt i8 %10, -1, !dbg !1968
  br i1 %11, label %12, label %92, !dbg !1969

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1970
  %14 = load i8, ptr %13, align 1, !dbg !1970, !tbaa !948
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1631, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1621, metadata !DIExpression()), !dbg !1973
  %15 = zext i8 %14 to i64, !dbg !1975
  %16 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %15, !dbg !1976
  %17 = load i8, ptr %16, align 1, !dbg !1976, !tbaa !948
  %18 = icmp sgt i8 %17, -1, !dbg !1977
  br i1 %18, label %19, label %92, !dbg !1978

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1979, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1955, metadata !DIExpression()), !dbg !1956
  %21 = load i64, ptr %3, align 8, !dbg !1980, !tbaa !1322
  %22 = icmp eq i64 %21, 0, !dbg !1980
  br i1 %22, label %31, label %23, !dbg !1982

23:                                               ; preds = %19
  %24 = shl i8 %10, 2, !dbg !1983
  %25 = lshr i8 %17, 4, !dbg !1985
  %26 = or i8 %25, %24, !dbg !1986
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1987
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i8 %26, ptr %20, align 1, !dbg !1988, !tbaa !948
  %28 = load i64, ptr %3, align 8, !dbg !1989, !tbaa !1322
  %29 = add nsw i64 %28, -1, !dbg !1989
  store i64 %29, ptr %3, align 8, !dbg !1989, !tbaa !1322
  %30 = icmp eq i64 %29, 0, !dbg !1990
  br label %31, !dbg !1994

31:                                               ; preds = %23, %19
  %32 = phi i1 [ %30, %23 ], [ true, %19 ]
  %33 = phi ptr [ %27, %23 ], [ %20, %19 ], !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1955, metadata !DIExpression()), !dbg !1956
  %34 = icmp eq i64 %1, 2, !dbg !1995
  br i1 %34, label %89, label %35, !dbg !1997

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1998
  %37 = load i8, ptr %36, align 1, !dbg !1998, !tbaa !948
  %38 = icmp eq i8 %37, 61, !dbg !1999
  br i1 %38, label %39, label %48, !dbg !2000

39:                                               ; preds = %35
  %40 = icmp eq i64 %1, 4, !dbg !2001
  br i1 %40, label %41, label %89, !dbg !2004

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2005
  %43 = load i8, ptr %42, align 1, !dbg !2005, !tbaa !948
  %44 = icmp eq i8 %43, 61, !dbg !2007
  %45 = and i8 %17, 15
  %46 = icmp eq i8 %45, 0
  %47 = and i1 %44, %46, !dbg !2008
  br i1 %47, label %87, label %89, !dbg !2008

48:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1631, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1621, metadata !DIExpression()), !dbg !2012
  %49 = zext i8 %37 to i64, !dbg !2014
  %50 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %49, !dbg !2015
  %51 = load i8, ptr %50, align 1, !dbg !2015, !tbaa !948
  %52 = icmp sgt i8 %51, -1, !dbg !2016
  br i1 %52, label %53, label %89, !dbg !2017

53:                                               ; preds = %48
  br i1 %32, label %62, label %54, !dbg !2018

54:                                               ; preds = %53
  %55 = shl i8 %17, 4, !dbg !2019
  %56 = lshr i8 %51, 2, !dbg !2021
  %57 = or i8 %56, %55, !dbg !2022
  %58 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !2023
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i8 %57, ptr %33, align 1, !dbg !2024, !tbaa !948
  %59 = load i64, ptr %3, align 8, !dbg !2025, !tbaa !1322
  %60 = add nsw i64 %59, -1, !dbg !2025
  store i64 %60, ptr %3, align 8, !dbg !2025, !tbaa !1322
  %61 = icmp eq i64 %60, 0, !dbg !2026
  br label %62, !dbg !2030

62:                                               ; preds = %54, %53
  %63 = phi i1 [ %61, %54 ], [ true, %53 ]
  %64 = phi ptr [ %58, %54 ], [ %33, %53 ], !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %64, metadata !1955, metadata !DIExpression()), !dbg !1956
  %65 = icmp eq i64 %1, 3, !dbg !2031
  br i1 %65, label %89, label %66, !dbg !2033

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2034
  %68 = load i8, ptr %67, align 1, !dbg !2034, !tbaa !948
  %69 = icmp eq i8 %68, 61, !dbg !2035
  br i1 %69, label %70, label %75, !dbg !2036

70:                                               ; preds = %66
  %71 = icmp eq i64 %1, 4, !dbg !2037
  %72 = and i8 %51, 3
  %73 = icmp eq i8 %72, 0
  %74 = and i1 %71, %73, !dbg !2040
  br i1 %74, label %87, label %89, !dbg !2040

75:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i8 %68, metadata !1631, metadata !DIExpression()), !dbg !2041
  tail call void @llvm.dbg.value(metadata i8 %68, metadata !1621, metadata !DIExpression()), !dbg !2044
  %76 = zext i8 %68 to i64, !dbg !2046
  %77 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %76, !dbg !2047
  %78 = load i8, ptr %77, align 1, !dbg !2047, !tbaa !948
  %79 = icmp sgt i8 %78, -1, !dbg !2048
  br i1 %79, label %80, label %89, !dbg !2049

80:                                               ; preds = %75
  br i1 %63, label %87, label %81, !dbg !2050

81:                                               ; preds = %80
  %82 = shl i8 %51, 6, !dbg !2051
  %83 = or i8 %78, %82, !dbg !2053
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata ptr %84, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i8 %83, ptr %64, align 1, !dbg !2055, !tbaa !948
  %85 = load i64, ptr %3, align 8, !dbg !2056, !tbaa !1322
  %86 = add nsw i64 %85, -1, !dbg !2056
  store i64 %86, ptr %3, align 8, !dbg !2056, !tbaa !1322
  br label %87, !dbg !2057

87:                                               ; preds = %70, %41, %81, %80
  %88 = phi ptr [ %84, %81 ], [ %64, %80 ], [ %33, %41 ], [ %64, %70 ], !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %88, metadata !1955, metadata !DIExpression()), !dbg !1956
  br label %89, !dbg !2058

89:                                               ; preds = %75, %70, %62, %48, %41, %39, %31, %87
  %90 = phi ptr [ %88, %87 ], [ %33, %31 ], [ %33, %39 ], [ %33, %41 ], [ %33, %48 ], [ %64, %62 ], [ %64, %70 ], [ %64, %75 ]
  %91 = phi i1 [ true, %87 ], [ false, %31 ], [ false, %39 ], [ false, %41 ], [ false, %48 ], [ false, %62 ], [ false, %70 ], [ false, %75 ]
  store ptr %90, ptr %2, align 8, !dbg !1956, !tbaa !869
  br label %92, !dbg !2059

92:                                               ; preds = %89, %6, %12, %4
  %93 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %91, %89 ], !dbg !1956
  ret i1 %93, !dbg !2059
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2060 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @base64_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #20 !dbg !2063 {
  %6 = alloca i64, align 8, !DIAssignID !2073
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2072, metadata !DIExpression(), metadata !2073, metadata ptr %6, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2067, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2068, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2069, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2070, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2071, metadata !DIExpression()), !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !2075
  %7 = ashr i64 %2, 2, !dbg !2076
  %8 = mul nsw i64 %7, 3, !dbg !2077
  %9 = add nsw i64 %8, 3, !dbg !2077
  store i64 %9, ptr %6, align 8, !dbg !2078, !tbaa !1322, !DIAssignID !2079
  call void @llvm.dbg.assign(metadata i64 %9, metadata !2072, metadata !DIExpression(), metadata !2079, metadata ptr %6, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %9, metadata !1787, metadata !DIExpression()), !dbg !2080
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #49, !dbg !2082
  store ptr %10, ptr %3, align 8, !dbg !2083, !tbaa !869
  %11 = icmp eq ptr %10, null, !dbg !2084
  br i1 %11, label %20, label %12, !dbg !2086

12:                                               ; preds = %5
  %13 = call i1 @base64_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2087
  br i1 %13, label %16, label %14, !dbg !2089

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2090, !tbaa !869
  tail call void @free(ptr noundef %15) #44, !dbg !2092
  store ptr null, ptr %3, align 8, !dbg !2093, !tbaa !869
  br label %20, !dbg !2094

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2095
  br i1 %17, label %20, label %18, !dbg !2097

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2098, !tbaa !1322
  store i64 %19, ptr %4, align 8, !dbg !2099, !tbaa !1322
  br label %20, !dbg !2100

20:                                               ; preds = %16, %18, %5, %14
  %21 = phi i1 [ false, %14 ], [ true, %5 ], [ true, %18 ], [ true, %16 ], !dbg !2074
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !2101
  ret i1 %21, !dbg !2101
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2102 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #22 !dbg !2105 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2107, metadata !DIExpression()), !dbg !2108
  store ptr %0, ptr @file_name, align 8, !dbg !2109, !tbaa !869
  ret void, !dbg !2110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #22 !dbg !2111 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2115, metadata !DIExpression()), !dbg !2116
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2117, !tbaa !2118
  ret void, !dbg !2120
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #20 !dbg !2121 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2126, !tbaa !869
  %2 = tail call i32 @close_stream(ptr noundef %1) #44, !dbg !2127
  %3 = icmp eq i32 %2, 0, !dbg !2128
  br i1 %3, label %22, label %4, !dbg !2129

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2130, !tbaa !2118, !range !2131, !noundef !907
  %6 = icmp eq i8 %5, 0, !dbg !2130
  br i1 %6, label %11, label %7, !dbg !2132

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #47, !dbg !2133
  %9 = load i32, ptr %8, align 4, !dbg !2133, !tbaa !939
  %10 = icmp eq i32 %9, 32, !dbg !2134
  br i1 %10, label %22, label %11, !dbg !2135

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #44, !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2123, metadata !DIExpression()), !dbg !2137
  %13 = load ptr, ptr @file_name, align 8, !dbg !2138, !tbaa !869
  %14 = icmp eq ptr %13, null, !dbg !2138
  %15 = tail call ptr @__errno_location() #47, !dbg !2140
  %16 = load i32, ptr %15, align 4, !dbg !2140, !tbaa !939
  br i1 %14, label %19, label %17, !dbg !2141

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #44, !dbg !2142
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #44, !dbg !2142
  br label %20, !dbg !2142

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #44, !dbg !2143
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2144, !tbaa !939
  tail call void @_exit(i32 noundef %21) #46, !dbg !2145
  unreachable, !dbg !2145

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2146, !tbaa !869
  %24 = tail call i32 @close_stream(ptr noundef %23) #44, !dbg !2148
  %25 = icmp eq i32 %24, 0, !dbg !2149
  br i1 %25, label %28, label %26, !dbg !2150

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2151, !tbaa !939
  tail call void @_exit(i32 noundef %27) #46, !dbg !2152
  unreachable, !dbg !2152

28:                                               ; preds = %22
  ret void, !dbg !2153
}

; Function Attrs: noreturn
declare !dbg !2154 void @_exit(i32 noundef) local_unnamed_addr #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #24 !dbg !2156 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2160, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2161, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2162, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2163, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  tail call fastcc void @flush_stdout(), !dbg !2165
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2166, !tbaa !869
  %7 = icmp eq ptr %6, null, !dbg !2166
  br i1 %7, label %9, label %8, !dbg !2168

8:                                                ; preds = %4
  tail call void %6() #44, !dbg !2169
  br label %13, !dbg !2169

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2170, !tbaa !869
  %11 = tail call ptr @getprogname() #45, !dbg !2170
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %11) #44, !dbg !2170
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #44, !dbg !2172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2172, !tbaa.struct !2173
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2172
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #44, !dbg !2172
  ret void, !dbg !2174
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #20 !dbg !2175 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2177, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 1, metadata !2179, metadata !DIExpression()), !dbg !2182
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #44, !dbg !2185
  %2 = icmp slt i32 %1, 0, !dbg !2186
  br i1 %2, label %6, label %3, !dbg !2187

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2188, !tbaa !869
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #44, !dbg !2188
  br label %6, !dbg !2188

6:                                                ; preds = %3, %0
  ret void, !dbg !2189
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #20 !dbg !2190 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2196
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2192, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2193, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2194, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2195, metadata !DIExpression(DW_OP_deref)), !dbg !2197
  %7 = load ptr, ptr @stderr, align 8, !dbg !2198, !tbaa !869
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #44, !dbg !2199, !noalias !2243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %7, metadata !2239, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata ptr %2, metadata !2240, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata ptr poison, metadata !2241, metadata !DIExpression(DW_OP_deref)), !dbg !2248
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #44, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #44, !dbg !2199, !noalias !2243
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2249, !tbaa !939
  %10 = add i32 %9, 1, !dbg !2249
  store i32 %10, ptr @error_message_count, align 4, !dbg !2249, !tbaa !939
  %11 = icmp eq i32 %1, 0, !dbg !2250
  br i1 %11, label %21, label %12, !dbg !2252

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2253, metadata !DIExpression(), metadata !2196, metadata ptr %5, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %1, metadata !2256, metadata !DIExpression()), !dbg !2261
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #44, !dbg !2263
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #44, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %13, metadata !2257, metadata !DIExpression()), !dbg !2261
  %14 = icmp eq ptr %13, null, !dbg !2265
  br i1 %14, label %15, label %17, !dbg !2267

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #44, !dbg !2268
  call void @llvm.dbg.value(metadata ptr %16, metadata !2257, metadata !DIExpression()), !dbg !2261
  br label %17, !dbg !2269

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2261
  call void @llvm.dbg.value(metadata ptr %18, metadata !2257, metadata !DIExpression()), !dbg !2261
  %19 = load ptr, ptr @stderr, align 8, !dbg !2270, !tbaa !869
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %18) #44, !dbg !2270
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #44, !dbg !2271
  br label %21, !dbg !2272

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2273, !tbaa !869
  call void @llvm.dbg.value(metadata i32 10, metadata !2274, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata ptr %22, metadata !2279, metadata !DIExpression()), !dbg !2280
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2282
  %24 = load ptr, ptr %23, align 8, !dbg !2282, !tbaa !1524
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2282
  %26 = load ptr, ptr %25, align 8, !dbg !2282, !tbaa !1525
  %27 = icmp ult ptr %24, %26, !dbg !2282
  br i1 %27, label %30, label %28, !dbg !2282, !prof !1526

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #44, !dbg !2282
  br label %32, !dbg !2282

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2282
  store ptr %31, ptr %23, align 8, !dbg !2282, !tbaa !1524
  store i8 10, ptr %24, align 1, !dbg !2282, !tbaa !948
  br label %32, !dbg !2282

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2283, !tbaa !869
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #44, !dbg !2283
  %35 = icmp eq i32 %0, 0, !dbg !2284
  br i1 %35, label %37, label %36, !dbg !2286

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #46, !dbg !2287
  unreachable, !dbg !2287

37:                                               ; preds = %32
  ret void, !dbg !2288
}

declare !dbg !2289 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2292 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2295 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #20 !dbg !2299 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2307
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2306, metadata !DIExpression(), metadata !2307, metadata ptr %4, metadata !DIExpression()), !dbg !2308
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2304, metadata !DIExpression()), !dbg !2308
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #44, !dbg !2309
  call void @llvm.va_start(ptr nonnull %4), !dbg !2310
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #44, !dbg !2311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2311, !tbaa.struct !2173
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #50, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #44, !dbg !2311
  call void @llvm.va_end(ptr nonnull %4), !dbg !2312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #44, !dbg !2313
  ret void, !dbg !2313
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #25

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #24 !dbg !466 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !482, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !483, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !484, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !485, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !486, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !2314
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2315, !tbaa !939
  %9 = icmp eq i32 %8, 0, !dbg !2315
  br i1 %9, label %24, label %10, !dbg !2317

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2318, !tbaa !939
  %12 = icmp eq i32 %11, %3, !dbg !2321
  br i1 %12, label %13, label %23, !dbg !2322

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2323, !tbaa !869
  %15 = icmp eq ptr %14, %2, !dbg !2324
  br i1 %15, label %37, label %16, !dbg !2325

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2326
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2327
  br i1 %19, label %20, label %23, !dbg !2327

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !2328
  %22 = icmp eq i32 %21, 0, !dbg !2329
  br i1 %22, label %37, label %23, !dbg !2330

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2331, !tbaa !869
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2332, !tbaa !939
  br label %24, !dbg !2333

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2334
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2335, !tbaa !869
  %26 = icmp eq ptr %25, null, !dbg !2335
  br i1 %26, label %28, label %27, !dbg !2337

27:                                               ; preds = %24
  tail call void %25() #44, !dbg !2338
  br label %32, !dbg !2338

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2339, !tbaa !869
  %30 = tail call ptr @getprogname() #45, !dbg !2339
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %30) #44, !dbg !2339
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2341, !tbaa !869
  %34 = icmp eq ptr %2, null, !dbg !2341
  %35 = select i1 %34, ptr @.str.3.58, ptr @.str.2.59, !dbg !2341
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #44, !dbg !2341
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #44, !dbg !2342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2342, !tbaa.struct !2173
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2342
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #44, !dbg !2342
  br label %37, !dbg !2343

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2343
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #20 !dbg !2344 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2353, metadata !DIExpression(), metadata !2354, metadata ptr %6, metadata !DIExpression()), !dbg !2355
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2349, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2350, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2351, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #44, !dbg !2356
  call void @llvm.va_start(ptr nonnull %6), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #44, !dbg !2358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2358, !tbaa.struct !2173
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #50, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #44, !dbg !2358
  call void @llvm.va_end(ptr nonnull %6), !dbg !2359
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #44, !dbg !2360
  ret void, !dbg !2360
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 !dbg !2361 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2368, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2369, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2370, metadata !DIExpression()), !dbg !2371
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #44, !dbg !2372
  ret void, !dbg !2373
}

; Function Attrs: nounwind
declare !dbg !2374 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !2377 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2415, metadata !DIExpression()), !dbg !2417
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2416, metadata !DIExpression()), !dbg !2417
  %3 = icmp eq ptr %0, null, !dbg !2418
  br i1 %3, label %7, label %4, !dbg !2420

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %5, metadata !2367, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 0, metadata !2368, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 0, metadata !2369, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %1, metadata !2370, metadata !DIExpression()), !dbg !2422
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #44, !dbg !2424
  br label %7, !dbg !2425

7:                                                ; preds = %4, %2
  ret void, !dbg !2426
}

; Function Attrs: nofree nounwind
declare !dbg !2427 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2430 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2468, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression()), !dbg !2472
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2470, metadata !DIExpression()), !dbg !2472
  %3 = icmp slt i32 %2, 0, !dbg !2474
  br i1 %3, label %4, label %6, !dbg !2476

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2477
  br label %24, !dbg !2478

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #44, !dbg !2479
  %8 = icmp eq i32 %7, 0, !dbg !2479
  br i1 %8, label %13, label %9, !dbg !2481

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2482
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #44, !dbg !2483
  %12 = icmp eq i64 %11, -1, !dbg !2484
  br i1 %12, label %16, label %13, !dbg !2485

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #44, !dbg !2486
  %15 = icmp eq i32 %14, 0, !dbg !2486
  br i1 %15, label %16, label %18, !dbg !2487

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2471, metadata !DIExpression()), !dbg !2472
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2488
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2471, metadata !DIExpression()), !dbg !2472
  br label %24, !dbg !2489

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #47, !dbg !2490
  %20 = load i32, ptr %19, align 4, !dbg !2490, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2469, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2471, metadata !DIExpression()), !dbg !2472
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2488
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2471, metadata !DIExpression()), !dbg !2472
  %22 = icmp eq i32 %20, 0, !dbg !2491
  br i1 %22, label %24, label %23, !dbg !2489

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2493, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2471, metadata !DIExpression()), !dbg !2472
  br label %24, !dbg !2495

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2472
  ret i32 %25, !dbg !2496
}

; Function Attrs: nofree nounwind
declare !dbg !2497 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2498 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2500 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #20 !dbg !2503 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2542
  %2 = icmp eq ptr %0, null, !dbg !2543
  br i1 %2, label %6, label %3, !dbg !2545

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #44, !dbg !2546
  %5 = icmp eq i32 %4, 0, !dbg !2546
  br i1 %5, label %6, label %8, !dbg !2547

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2548
  br label %16, !dbg !2549

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2550, metadata !DIExpression()), !dbg !2555
  %9 = load i32, ptr %0, align 8, !dbg !2557, !tbaa !1302
  %10 = and i32 %9, 256, !dbg !2559
  %11 = icmp eq i32 %10, 0, !dbg !2559
  br i1 %11, label %14, label %12, !dbg !2560

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #44, !dbg !2561
  br label %14, !dbg !2561

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2562
  br label %16, !dbg !2563

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2542
  ret i32 %17, !dbg !2564
}

; Function Attrs: nofree nounwind
declare !dbg !2565 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2566 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !2605
  tail call void @__fpurge(ptr noundef nonnull %0) #44, !dbg !2606
  ret i32 0, !dbg !2607
}

; Function Attrs: nounwind
declare !dbg !2608 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !2611 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2650, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2651, metadata !DIExpression()), !dbg !2655
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2656
  %5 = load ptr, ptr %4, align 8, !dbg !2656, !tbaa !2657
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2658
  %7 = load ptr, ptr %6, align 8, !dbg !2658, !tbaa !2659
  %8 = icmp eq ptr %5, %7, !dbg !2660
  br i1 %8, label %9, label %27, !dbg !2661

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2662
  %11 = load ptr, ptr %10, align 8, !dbg !2662, !tbaa !1524
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2663
  %13 = load ptr, ptr %12, align 8, !dbg !2663, !tbaa !2664
  %14 = icmp eq ptr %11, %13, !dbg !2665
  br i1 %14, label %15, label %27, !dbg !2666

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2667
  %17 = load ptr, ptr %16, align 8, !dbg !2667, !tbaa !2668
  %18 = icmp eq ptr %17, null, !dbg !2669
  br i1 %18, label %19, label %27, !dbg !2670

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2671
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #44, !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2652, metadata !DIExpression()), !dbg !2673
  %22 = icmp eq i64 %21, -1, !dbg !2674
  br i1 %22, label %29, label %23, !dbg !2676

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2677, !tbaa !1302
  %25 = and i32 %24, -17, !dbg !2677
  store i32 %25, ptr %0, align 8, !dbg !2677, !tbaa !1302
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2678
  store i64 %21, ptr %26, align 8, !dbg !2679, !tbaa !2680
  br label %29, !dbg !2681

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2682
  br label %29, !dbg !2683

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2655
  ret i32 %30, !dbg !2684
}

; Function Attrs: nofree nounwind
declare !dbg !2685 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #26 !dbg !2688 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2691, !tbaa !869
  ret ptr %1, !dbg !2692
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #27 !dbg !2693 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2695, metadata !DIExpression()), !dbg !2698
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #45, !dbg !2699
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2696, metadata !DIExpression()), !dbg !2698
  %3 = icmp eq ptr %2, null, !dbg !2700
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2700
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2697, metadata !DIExpression()), !dbg !2698
  %6 = ptrtoint ptr %5 to i64, !dbg !2701
  %7 = ptrtoint ptr %0 to i64, !dbg !2701
  %8 = sub i64 %6, %7, !dbg !2701
  %9 = icmp sgt i64 %8, 6, !dbg !2703
  br i1 %9, label %10, label %19, !dbg !2704

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2705
  call void @llvm.dbg.value(metadata ptr %11, metadata !2706, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2711, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 7, metadata !2712, metadata !DIExpression()), !dbg !2713
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2715
  %13 = icmp eq i32 %12, 0, !dbg !2716
  br i1 %13, label %14, label %19, !dbg !2717

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2695, metadata !DIExpression()), !dbg !2698
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #45, !dbg !2718
  %16 = icmp eq i32 %15, 0, !dbg !2721
  %17 = select i1 %16, i64 3, i64 0, !dbg !2722
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2722
  br label %19, !dbg !2722

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2698
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2697, metadata !DIExpression()), !dbg !2698
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2695, metadata !DIExpression()), !dbg !2698
  store ptr %20, ptr @program_name, align 8, !dbg !2723, !tbaa !869
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2724, !tbaa !869
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2725, !tbaa !869
  ret void, !dbg !2726
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2727 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #28

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #20 !dbg !523 {
  %3 = alloca i32, align 4, !DIAssignID !2728
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !2728, metadata ptr %3, metadata !DIExpression()), !dbg !2729
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !2730, metadata ptr %4, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !530, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !531, metadata !DIExpression()), !dbg !2729
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #44, !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !532, metadata !DIExpression()), !dbg !2729
  %6 = icmp eq ptr %5, %0, !dbg !2732
  br i1 %6, label %7, label %14, !dbg !2734

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #44, !dbg !2735
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #44, !dbg !2736
  call void @llvm.dbg.value(metadata ptr %4, metadata !2737, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %4, metadata !2746, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 8, metadata !2752, metadata !DIExpression()), !dbg !2753
  store i64 0, ptr %4, align 8, !dbg !2755
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #44, !dbg !2756
  %9 = icmp eq i64 %8, 2, !dbg !2758
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2759
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2729
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #44, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #44, !dbg !2760
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2729
  ret ptr %15, !dbg !2760
}

; Function Attrs: nounwind
declare !dbg !2761 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #20 !dbg !2767 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2772, metadata !DIExpression()), !dbg !2775
  %2 = tail call ptr @__errno_location() #47, !dbg !2776
  %3 = load i32, ptr %2, align 4, !dbg !2776, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2773, metadata !DIExpression()), !dbg !2775
  %4 = icmp eq ptr %0, null, !dbg !2777
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2777
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #51, !dbg !2778
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2774, metadata !DIExpression()), !dbg !2775
  store i32 %3, ptr %2, align 4, !dbg !2779, !tbaa !939
  ret ptr %6, !dbg !2780
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #29 !dbg !2781 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2787, metadata !DIExpression()), !dbg !2788
  %2 = icmp eq ptr %0, null, !dbg !2789
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2789
  %4 = load i32, ptr %3, align 8, !dbg !2790, !tbaa !2791
  ret i32 %4, !dbg !2793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #30 !dbg !2794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2798, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()), !dbg !2800
  %3 = icmp eq ptr %0, null, !dbg !2801
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2801
  store i32 %1, ptr %4, align 8, !dbg !2802, !tbaa !2791
  ret void, !dbg !2803
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #31 !dbg !2804 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2808, metadata !DIExpression()), !dbg !2816
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2809, metadata !DIExpression()), !dbg !2816
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2810, metadata !DIExpression()), !dbg !2816
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2811, metadata !DIExpression()), !dbg !2816
  %4 = icmp eq ptr %0, null, !dbg !2817
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2817
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2818
  %7 = lshr i8 %1, 5, !dbg !2819
  %8 = zext nneg i8 %7 to i64, !dbg !2819
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2820
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2812, metadata !DIExpression()), !dbg !2816
  %10 = and i8 %1, 31, !dbg !2821
  %11 = zext nneg i8 %10 to i32, !dbg !2821
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2814, metadata !DIExpression()), !dbg !2816
  %12 = load i32, ptr %9, align 4, !dbg !2822, !tbaa !939
  %13 = lshr i32 %12, %11, !dbg !2823
  %14 = and i32 %13, 1, !dbg !2824
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2815, metadata !DIExpression()), !dbg !2816
  %15 = xor i32 %13, %2, !dbg !2825
  %16 = and i32 %15, 1, !dbg !2825
  %17 = shl nuw i32 %16, %11, !dbg !2826
  %18 = xor i32 %17, %12, !dbg !2827
  store i32 %18, ptr %9, align 4, !dbg !2827, !tbaa !939
  ret i32 %14, !dbg !2828
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #31 !dbg !2829 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2833, metadata !DIExpression()), !dbg !2836
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2834, metadata !DIExpression()), !dbg !2836
  %3 = icmp eq ptr %0, null, !dbg !2837
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2839
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2833, metadata !DIExpression()), !dbg !2836
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2840
  %6 = load i32, ptr %5, align 4, !dbg !2840, !tbaa !2841
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2835, metadata !DIExpression()), !dbg !2836
  store i32 %1, ptr %5, align 4, !dbg !2842, !tbaa !2841
  ret i32 %6, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !2844 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2848, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2849, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !2851
  %4 = icmp eq ptr %0, null, !dbg !2852
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2854
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !2851
  store i32 10, ptr %5, align 8, !dbg !2855, !tbaa !2791
  %6 = icmp ne ptr %1, null, !dbg !2856
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2858
  br i1 %8, label %10, label %9, !dbg !2858

9:                                                ; preds = %3
  tail call void @abort() #46, !dbg !2859
  unreachable, !dbg !2859

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2860
  store ptr %1, ptr %11, align 8, !dbg !2861, !tbaa !2862
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2863
  store ptr %2, ptr %12, align 8, !dbg !2864, !tbaa !2865
  ret void, !dbg !2866
}

; Function Attrs: noreturn nounwind
declare !dbg !2867 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #20 !dbg !2868 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2874, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2875, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2876, metadata !DIExpression()), !dbg !2880
  %6 = icmp eq ptr %4, null, !dbg !2881
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2877, metadata !DIExpression()), !dbg !2880
  %8 = tail call ptr @__errno_location() #47, !dbg !2882
  %9 = load i32, ptr %8, align 4, !dbg !2882, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2878, metadata !DIExpression()), !dbg !2880
  %10 = load i32, ptr %7, align 8, !dbg !2883, !tbaa !2791
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2884
  %12 = load i32, ptr %11, align 4, !dbg !2884, !tbaa !2841
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2885
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2886
  %15 = load ptr, ptr %14, align 8, !dbg !2886, !tbaa !2862
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2887
  %17 = load ptr, ptr %16, align 8, !dbg !2887, !tbaa !2865
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2879, metadata !DIExpression()), !dbg !2880
  store i32 %9, ptr %8, align 4, !dbg !2889, !tbaa !939
  ret i64 %18, !dbg !2890
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #20 !dbg !2891 {
  %10 = alloca i32, align 4, !DIAssignID !2959
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2960
  %12 = alloca i32, align 4, !DIAssignID !2961
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2962
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2963
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2937, metadata !DIExpression(), metadata !2963, metadata ptr %14, metadata !DIExpression()), !dbg !2964
  %15 = alloca i32, align 4, !DIAssignID !2965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2965, metadata ptr %15, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2899, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2900, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2901, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2902, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2903, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2904, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2905, metadata !DIExpression()), !dbg !2967
  %16 = tail call i64 @__ctype_get_mb_cur_max() #44, !dbg !2968
  %17 = icmp eq i64 %16, 1, !dbg !2969
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2906, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2909, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2910, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2912, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2914, metadata !DIExpression()), !dbg !2967
  %18 = and i32 %5, 2, !dbg !2970
  %19 = icmp ne i32 %18, 0, !dbg !2970
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2970

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2971
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2972
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2973
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2914, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2910, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2909, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2900, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2905, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2904, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2901, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.label(metadata !2915), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2967
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
  ], !dbg !2975

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2901, metadata !DIExpression()), !dbg !2967
  br label %101, !dbg !2976

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2901, metadata !DIExpression()), !dbg !2967
  br i1 %36, label %101, label %42, !dbg !2976

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2977
  br i1 %43, label %101, label %44, !dbg !2981

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2977, !tbaa !948
  br label %101, !dbg !2977

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !622, metadata !DIExpression(), metadata !2961, metadata ptr %12, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.assign(metadata i1 undef, metadata !623, metadata !DIExpression(), metadata !2962, metadata ptr %13, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !619, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %28, metadata !620, metadata !DIExpression()), !dbg !2982
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #44, !dbg !2986
  call void @llvm.dbg.value(metadata ptr %46, metadata !621, metadata !DIExpression()), !dbg !2982
  %47 = icmp eq ptr %46, @.str.11.92, !dbg !2987
  br i1 %47, label %48, label %57, !dbg !2989

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #44, !dbg !2990
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #44, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %13, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %13, metadata !3000, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 8, metadata !3004, metadata !DIExpression()), !dbg !3005
  store i64 0, ptr %13, align 8, !dbg !3007
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #44, !dbg !3008
  %50 = icmp eq i64 %49, 3, !dbg !3010
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3011
  %54 = icmp eq i32 %28, 9, !dbg !3011
  %55 = select i1 %54, ptr @.str.10.94, ptr @.str.12.95, !dbg !3011
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #44, !dbg !3012
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #44, !dbg !3012
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2982
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2904, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.assign(metadata i1 undef, metadata !622, metadata !DIExpression(), metadata !2959, metadata ptr %10, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.assign(metadata i1 undef, metadata !623, metadata !DIExpression(), metadata !2960, metadata ptr %11, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !619, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %28, metadata !620, metadata !DIExpression()), !dbg !3013
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #44, !dbg !3015
  call void @llvm.dbg.value(metadata ptr %59, metadata !621, metadata !DIExpression()), !dbg !3013
  %60 = icmp eq ptr %59, @.str.12.95, !dbg !3016
  br i1 %60, label %61, label %70, !dbg !3017

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #44, !dbg !3018
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #44, !dbg !3019
  call void @llvm.dbg.value(metadata ptr %11, metadata !2992, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %11, metadata !3000, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 8, metadata !3004, metadata !DIExpression()), !dbg !3022
  store i64 0, ptr %11, align 8, !dbg !3024
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #44, !dbg !3025
  %63 = icmp eq i64 %62, 3, !dbg !3026
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3027
  %67 = icmp eq i32 %28, 9, !dbg !3027
  %68 = select i1 %67, ptr @.str.10.94, ptr @.str.12.95, !dbg !3027
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3027
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #44, !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #44, !dbg !3028
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2905, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2904, metadata !DIExpression()), !dbg !2967
  br i1 %36, label %88, label %73, !dbg !3029

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2917, metadata !DIExpression()), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2907, metadata !DIExpression()), !dbg !2967
  %74 = load i8, ptr %71, align 1, !dbg !3031, !tbaa !948
  %75 = icmp eq i8 %74, 0, !dbg !3033
  br i1 %75, label %88, label %.preheader11, !dbg !3033

.preheader11:                                     ; preds = %73
  br label %76, !dbg !3033

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2917, metadata !DIExpression()), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2907, metadata !DIExpression()), !dbg !2967
  %80 = icmp ult i64 %79, %39, !dbg !3034
  br i1 %80, label %81, label %83, !dbg !3037

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3034
  store i8 %77, ptr %82, align 1, !dbg !3034, !tbaa !948
  br label %83, !dbg !3034

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2907, metadata !DIExpression()), !dbg !2967
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3038
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2917, metadata !DIExpression()), !dbg !3030
  %86 = load i8, ptr %85, align 1, !dbg !3031, !tbaa !948
  %87 = icmp eq i8 %86, 0, !dbg !3033
  br i1 %87, label %.loopexit12, label %76, !dbg !3033, !llvm.loop !3039

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !3037
  br label %88, !dbg !3041

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2909, metadata !DIExpression()), !dbg !2967
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #45, !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2910, metadata !DIExpression()), !dbg !2967
  br label %101, !dbg !3043

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2967
  br label %101, !dbg !3044

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2901, metadata !DIExpression()), !dbg !2967
  br label %101, !dbg !3045

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2911, metadata !DIExpression()), !dbg !2967
  br i1 %36, label %101, label %95, !dbg !3046

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2901, metadata !DIExpression()), !dbg !2967
  br i1 %36, label %101, label %95, !dbg !3045

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3047
  br i1 %97, label %101, label %98, !dbg !3051

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3047, !tbaa !948
  br label %101, !dbg !3047

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2967
  br label %101, !dbg !3052

100:                                              ; preds = %27
  call void @abort() #46, !dbg !3053
  unreachable, !dbg !3053

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !3042
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.94, %42 ], [ @.str.10.94, %44 ], [ @.str.10.94, %41 ], [ %33, %27 ], [ @.str.12.95, %95 ], [ @.str.12.95, %98 ], [ @.str.12.95, %94 ], [ @.str.10.94, %40 ], [ @.str.12.95, %91 ], [ @.str.12.95, %92 ], [ @.str.12.95, %93 ], !dbg !2967
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2967
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2912, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2911, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2910, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2909, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2905, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2904, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2901, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2922, metadata !DIExpression()), !dbg !3054
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
  br label %121, !dbg !3055

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !3042
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2971
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3056
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2914, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2900, metadata !DIExpression()), !dbg !2967
  %130 = icmp eq i64 %122, -1, !dbg !3057
  br i1 %130, label %131, label %135, !dbg !3058

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3059
  %133 = load i8, ptr %132, align 1, !dbg !3059, !tbaa !948
  %134 = icmp eq i8 %133, 0, !dbg !3060
  br i1 %134, label %573, label %137, !dbg !3061

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3062
  br i1 %136, label %573, label %137, !dbg !3061

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2928, metadata !DIExpression()), !dbg !3063
  br i1 %113, label %138, label %151, !dbg !3064

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3066
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3067
  br i1 %140, label %141, label %143, !dbg !3067

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2900, metadata !DIExpression()), !dbg !2967
  br label %143, !dbg !3069

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2900, metadata !DIExpression()), !dbg !2967
  %145 = icmp ugt i64 %139, %144, !dbg !3070
  br i1 %145, label %151, label %146, !dbg !3071

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3072
  call void @llvm.dbg.value(metadata ptr %147, metadata !3073, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %106, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %107, metadata !3077, metadata !DIExpression()), !dbg !3078
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3080
  %149 = icmp eq i32 %148, 0, !dbg !3081
  %150 = and i1 %149, %109, !dbg !3082
  br i1 %150, label %.loopexit7, label %151, !dbg !3082

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2924, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2900, metadata !DIExpression()), !dbg !2967
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3083
  %155 = load i8, ptr %154, align 1, !dbg !3083, !tbaa !948
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2929, metadata !DIExpression()), !dbg !3063
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
  ], !dbg !3084

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3085

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3086

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2927, metadata !DIExpression()), !dbg !3063
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3090
  br i1 %159, label %176, label %160, !dbg !3090

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3092
  br i1 %161, label %162, label %164, !dbg !3096

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3092
  store i8 39, ptr %163, align 1, !dbg !3092, !tbaa !948
  br label %164, !dbg !3092

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2907, metadata !DIExpression()), !dbg !2967
  %166 = icmp ult i64 %165, %129, !dbg !3097
  br i1 %166, label %167, label %169, !dbg !3100

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3097
  store i8 36, ptr %168, align 1, !dbg !3097, !tbaa !948
  br label %169, !dbg !3097

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2907, metadata !DIExpression()), !dbg !2967
  %171 = icmp ult i64 %170, %129, !dbg !3101
  br i1 %171, label %172, label %174, !dbg !3104

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3101
  store i8 39, ptr %173, align 1, !dbg !3101, !tbaa !948
  br label %174, !dbg !3101

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2916, metadata !DIExpression()), !dbg !2967
  br label %176, !dbg !3105

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2967
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2907, metadata !DIExpression()), !dbg !2967
  %179 = icmp ult i64 %177, %129, !dbg !3106
  br i1 %179, label %180, label %182, !dbg !3109

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3106
  store i8 92, ptr %181, align 1, !dbg !3106, !tbaa !948
  br label %182, !dbg !3106

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2907, metadata !DIExpression()), !dbg !2967
  br i1 %110, label %184, label %476, !dbg !3110

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3112
  %186 = icmp ult i64 %185, %152, !dbg !3113
  br i1 %186, label %187, label %433, !dbg !3114

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3115
  %189 = load i8, ptr %188, align 1, !dbg !3115, !tbaa !948
  %190 = add i8 %189, -48, !dbg !3116
  %191 = icmp ult i8 %190, 10, !dbg !3116
  br i1 %191, label %192, label %433, !dbg !3116

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3117
  br i1 %193, label %194, label %196, !dbg !3121

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3117
  store i8 48, ptr %195, align 1, !dbg !3117, !tbaa !948
  br label %196, !dbg !3117

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2907, metadata !DIExpression()), !dbg !2967
  %198 = icmp ult i64 %197, %129, !dbg !3122
  br i1 %198, label %199, label %201, !dbg !3125

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3122
  store i8 48, ptr %200, align 1, !dbg !3122, !tbaa !948
  br label %201, !dbg !3122

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2907, metadata !DIExpression()), !dbg !2967
  br label %433, !dbg !3126

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3127

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3128

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3129

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3131

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3133
  %209 = icmp ult i64 %208, %152, !dbg !3134
  br i1 %209, label %210, label %433, !dbg !3135

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3136
  %212 = load i8, ptr %211, align 1, !dbg !3136, !tbaa !948
  %213 = icmp eq i8 %212, 63, !dbg !3137
  br i1 %213, label %214, label %433, !dbg !3138

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3139
  %216 = load i8, ptr %215, align 1, !dbg !3139, !tbaa !948
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
  ], !dbg !3140

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3141

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2922, metadata !DIExpression()), !dbg !3054
  %219 = icmp ult i64 %123, %129, !dbg !3143
  br i1 %219, label %220, label %222, !dbg !3146

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3143
  store i8 63, ptr %221, align 1, !dbg !3143, !tbaa !948
  br label %222, !dbg !3143

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2907, metadata !DIExpression()), !dbg !2967
  %224 = icmp ult i64 %223, %129, !dbg !3147
  br i1 %224, label %225, label %227, !dbg !3150

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3147
  store i8 34, ptr %226, align 1, !dbg !3147, !tbaa !948
  br label %227, !dbg !3147

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3150
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2907, metadata !DIExpression()), !dbg !2967
  %229 = icmp ult i64 %228, %129, !dbg !3151
  br i1 %229, label %230, label %232, !dbg !3154

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3151
  store i8 34, ptr %231, align 1, !dbg !3151, !tbaa !948
  br label %232, !dbg !3151

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2907, metadata !DIExpression()), !dbg !2967
  %234 = icmp ult i64 %233, %129, !dbg !3155
  br i1 %234, label %235, label %237, !dbg !3158

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3155
  store i8 63, ptr %236, align 1, !dbg !3155, !tbaa !948
  br label %237, !dbg !3155

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2907, metadata !DIExpression()), !dbg !2967
  br label %433, !dbg !3159

239:                                              ; preds = %151
  br label %249, !dbg !3160

240:                                              ; preds = %151
  br label %249, !dbg !3161

241:                                              ; preds = %151
  br label %247, !dbg !3162

242:                                              ; preds = %151
  br label %247, !dbg !3163

243:                                              ; preds = %151
  br label %249, !dbg !3164

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3165

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3166

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3169

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3171
  call void @llvm.dbg.label(metadata !2930), !dbg !3172
  br i1 %118, label %.loopexit8, label %249, !dbg !3173

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3171
  call void @llvm.dbg.label(metadata !2933), !dbg !3175
  br i1 %108, label %487, label %444, !dbg !3176

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3177

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3178, !tbaa !948
  %254 = icmp eq i8 %253, 0, !dbg !3180
  br i1 %254, label %255, label %433, !dbg !3181

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3182
  br i1 %256, label %257, label %433, !dbg !3184

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2928, metadata !DIExpression()), !dbg !3063
  br label %258, !dbg !3185

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2928, metadata !DIExpression()), !dbg !3063
  br i1 %115, label %260, label %433, !dbg !3186

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3188

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2928, metadata !DIExpression()), !dbg !3063
  br i1 %115, label %262, label %433, !dbg !3189

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3190

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3193
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3195
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3195
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2908, metadata !DIExpression()), !dbg !2967
  %269 = icmp ult i64 %123, %268, !dbg !3196
  br i1 %269, label %270, label %272, !dbg !3199

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3196
  store i8 39, ptr %271, align 1, !dbg !3196, !tbaa !948
  br label %272, !dbg !3196

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2907, metadata !DIExpression()), !dbg !2967
  %274 = icmp ult i64 %273, %268, !dbg !3200
  br i1 %274, label %275, label %277, !dbg !3203

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3200
  store i8 92, ptr %276, align 1, !dbg !3200, !tbaa !948
  br label %277, !dbg !3200

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2907, metadata !DIExpression()), !dbg !2967
  %279 = icmp ult i64 %278, %268, !dbg !3204
  br i1 %279, label %280, label %282, !dbg !3207

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3204
  store i8 39, ptr %281, align 1, !dbg !3204, !tbaa !948
  br label %282, !dbg !3204

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2967
  br label %433, !dbg !3208

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3209

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2934, metadata !DIExpression()), !dbg !3210
  %286 = tail call ptr @__ctype_b_loc() #47, !dbg !3211
  %287 = load ptr, ptr %286, align 8, !dbg !3211, !tbaa !869
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3211
  %290 = load i16, ptr %289, align 2, !dbg !3211, !tbaa !980
  %291 = and i16 %290, 16384, !dbg !3211
  %292 = icmp ne i16 %291, 0, !dbg !3213
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3210
  br label %334, !dbg !3214

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #44, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %14, metadata !2992, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %14, metadata !3000, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 8, metadata !3004, metadata !DIExpression()), !dbg !3218
  store i64 0, ptr %14, align 8, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2936, metadata !DIExpression()), !dbg !3210
  %294 = icmp eq i64 %152, -1, !dbg !3221
  br i1 %294, label %295, label %297, !dbg !3223

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2900, metadata !DIExpression()), !dbg !2967
  br label %297, !dbg !3225

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2900, metadata !DIExpression()), !dbg !2967
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #44, !dbg !3226
  %299 = sub i64 %298, %128, !dbg !3227
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #44, !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2944, metadata !DIExpression()), !dbg !2966
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3229

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !3210
  %302 = icmp ult i64 %128, %298, !dbg !3230
  br i1 %302, label %.preheader5, label %329, !dbg !3232

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3233

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2936, metadata !DIExpression()), !dbg !3210
  br label %329, !dbg !3234

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2934, metadata !DIExpression()), !dbg !3210
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3236
  %308 = load i8, ptr %307, align 1, !dbg !3236, !tbaa !948
  %309 = icmp eq i8 %308, 0, !dbg !3232
  br i1 %309, label %.loopexit6, label %310, !dbg !3233

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2934, metadata !DIExpression()), !dbg !3210
  %312 = add i64 %311, %128, !dbg !3238
  %313 = icmp eq i64 %311, %299, !dbg !3230
  br i1 %313, label %.loopexit6, label %304, !dbg !3232, !llvm.loop !3239

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2945, metadata !DIExpression()), !dbg !3240
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3241
  %317 = and i1 %316, %109, !dbg !3241
  br i1 %317, label %.preheader3, label %325, !dbg !3241

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3242

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2945, metadata !DIExpression()), !dbg !3240
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3243
  %321 = load i8, ptr %320, align 1, !dbg !3243, !tbaa !948
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3245

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3246
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2945, metadata !DIExpression()), !dbg !3240
  %324 = icmp eq i64 %323, %300, !dbg !3247
  br i1 %324, label %.loopexit4, label %318, !dbg !3242, !llvm.loop !3248

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3250

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3250, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %326, metadata !3252, metadata !DIExpression()), !dbg !3260
  %327 = call i32 @iswprint(i32 noundef %326) #44, !dbg !3262
  %328 = icmp ne i32 %327, 0, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2936, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2934, metadata !DIExpression()), !dbg !3210
  br label %329, !dbg !3264

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3265

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2936, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2934, metadata !DIExpression()), !dbg !3210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #44, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #44, !dbg !3266
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2936, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !3210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #44, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #44, !dbg !3266
  call void @llvm.dbg.label(metadata !2958), !dbg !3267
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3268
  br label %624, !dbg !3268

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3063
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3270
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2936, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2934, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2900, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3063
  %338 = icmp ult i64 %336, 2, !dbg !3271
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3272
  br i1 %340, label %433, label %341, !dbg !3272

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2953, metadata !DIExpression()), !dbg !3274
  br label %343, !dbg !3275

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2967
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3054
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2927, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2924, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2907, metadata !DIExpression()), !dbg !2967
  br i1 %339, label %394, label %350, !dbg !3276

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3281

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2927, metadata !DIExpression()), !dbg !3063
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3284
  br i1 %352, label %369, label %353, !dbg !3284

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3286
  br i1 %354, label %355, label %357, !dbg !3290

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3286
  store i8 39, ptr %356, align 1, !dbg !3286, !tbaa !948
  br label %357, !dbg !3286

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2907, metadata !DIExpression()), !dbg !2967
  %359 = icmp ult i64 %358, %129, !dbg !3291
  br i1 %359, label %360, label %362, !dbg !3294

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3291
  store i8 36, ptr %361, align 1, !dbg !3291, !tbaa !948
  br label %362, !dbg !3291

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2907, metadata !DIExpression()), !dbg !2967
  %364 = icmp ult i64 %363, %129, !dbg !3295
  br i1 %364, label %365, label %367, !dbg !3298

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3295
  store i8 39, ptr %366, align 1, !dbg !3295, !tbaa !948
  br label %367, !dbg !3295

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2916, metadata !DIExpression()), !dbg !2967
  br label %369, !dbg !3299

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2967
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2907, metadata !DIExpression()), !dbg !2967
  %372 = icmp ult i64 %370, %129, !dbg !3300
  br i1 %372, label %373, label %375, !dbg !3303

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3300
  store i8 92, ptr %374, align 1, !dbg !3300, !tbaa !948
  br label %375, !dbg !3300

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3303
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2907, metadata !DIExpression()), !dbg !2967
  %377 = icmp ult i64 %376, %129, !dbg !3304
  br i1 %377, label %378, label %382, !dbg !3307

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3304
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3304
  store i8 %380, ptr %381, align 1, !dbg !3304, !tbaa !948
  br label %382, !dbg !3304

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2907, metadata !DIExpression()), !dbg !2967
  %384 = icmp ult i64 %383, %129, !dbg !3308
  br i1 %384, label %385, label %390, !dbg !3311

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3308
  %388 = or disjoint i8 %387, 48, !dbg !3308
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3308
  store i8 %388, ptr %389, align 1, !dbg !3308, !tbaa !948
  br label %390, !dbg !3308

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2907, metadata !DIExpression()), !dbg !2967
  %392 = and i8 %349, 7, !dbg !3312
  %393 = or disjoint i8 %392, 48, !dbg !3313
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2929, metadata !DIExpression()), !dbg !3063
  br label %401, !dbg !3314

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3315

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3316
  br i1 %396, label %397, label %399, !dbg !3321

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3316
  store i8 92, ptr %398, align 1, !dbg !3316, !tbaa !948
  br label %399, !dbg !3316

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !3063
  br label %401, !dbg !3322

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2967
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2927, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2924, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2907, metadata !DIExpression()), !dbg !2967
  %407 = add i64 %346, 1, !dbg !3323
  %408 = icmp ugt i64 %342, %407, !dbg !3325
  br i1 %408, label %409, label %.loopexit2, !dbg !3326

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3327
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3327
  br i1 %411, label %423, label %412, !dbg !3327

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3330
  br i1 %413, label %414, label %416, !dbg !3334

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3330
  store i8 39, ptr %415, align 1, !dbg !3330, !tbaa !948
  br label %416, !dbg !3330

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2907, metadata !DIExpression()), !dbg !2967
  %418 = icmp ult i64 %417, %129, !dbg !3335
  br i1 %418, label %419, label %421, !dbg !3338

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3335
  store i8 39, ptr %420, align 1, !dbg !3335, !tbaa !948
  br label %421, !dbg !3335

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2967
  br label %423, !dbg !3339

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3340
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2907, metadata !DIExpression()), !dbg !2967
  %426 = icmp ult i64 %424, %129, !dbg !3341
  br i1 %426, label %427, label %429, !dbg !3344

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3341
  store i8 %406, ptr %428, align 1, !dbg !3341, !tbaa !948
  br label %429, !dbg !3341

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2922, metadata !DIExpression()), !dbg !3054
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3345
  %432 = load i8, ptr %431, align 1, !dbg !3345, !tbaa !948
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2929, metadata !DIExpression()), !dbg !3063
  br label %343, !dbg !3346, !llvm.loop !3347

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3350
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2967
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2971
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3054
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3063
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2928, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2927, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2924, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2900, metadata !DIExpression()), !dbg !2967
  br i1 %111, label %455, label %444, !dbg !3351

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
  br i1 %120, label %456, label %476, !dbg !3353

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3354

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
  %467 = lshr i8 %458, 5, !dbg !3355
  %468 = zext nneg i8 %467 to i64, !dbg !3355
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3356
  %470 = load i32, ptr %469, align 4, !dbg !3356, !tbaa !939
  %471 = and i8 %458, 31, !dbg !3357
  %472 = zext nneg i8 %471 to i32, !dbg !3357
  %473 = shl nuw i32 1, %472, !dbg !3358
  %474 = and i32 %470, %473, !dbg !3358
  %475 = icmp eq i32 %474, 0, !dbg !3358
  br i1 %475, label %476, label %487, !dbg !3359

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
  br i1 %153, label %487, label %523, !dbg !3360

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3350
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2967
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2971
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3361
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3063
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2928, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2900, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.label(metadata !2956), !dbg !3362
  br i1 %109, label %.loopexit8, label %497, !dbg !3363

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2927, metadata !DIExpression()), !dbg !3063
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3365
  br i1 %498, label %515, label %499, !dbg !3365

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3367
  br i1 %500, label %501, label %503, !dbg !3371

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3367
  store i8 39, ptr %502, align 1, !dbg !3367, !tbaa !948
  br label %503, !dbg !3367

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2907, metadata !DIExpression()), !dbg !2967
  %505 = icmp ult i64 %504, %496, !dbg !3372
  br i1 %505, label %506, label %508, !dbg !3375

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3372
  store i8 36, ptr %507, align 1, !dbg !3372, !tbaa !948
  br label %508, !dbg !3372

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2907, metadata !DIExpression()), !dbg !2967
  %510 = icmp ult i64 %509, %496, !dbg !3376
  br i1 %510, label %511, label %513, !dbg !3379

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3376
  store i8 39, ptr %512, align 1, !dbg !3376, !tbaa !948
  br label %513, !dbg !3376

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2916, metadata !DIExpression()), !dbg !2967
  br label %515, !dbg !3380

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3063
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2907, metadata !DIExpression()), !dbg !2967
  %518 = icmp ult i64 %516, %496, !dbg !3381
  br i1 %518, label %519, label %521, !dbg !3384

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3381
  store i8 92, ptr %520, align 1, !dbg !3381, !tbaa !948
  br label %521, !dbg !3381

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2928, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2927, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2900, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.label(metadata !2957), !dbg !3385
  br label %547, !dbg !3386

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2967
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3063
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3054
  br label %523, !dbg !3386

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3350
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2967
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2971
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3361
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3389
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2929, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2928, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2927, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2900, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.label(metadata !2957), !dbg !3385
  %534 = xor i1 %528, true, !dbg !3386
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3386
  br i1 %535, label %547, label %536, !dbg !3386

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3390
  br i1 %537, label %538, label %540, !dbg !3394

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3390
  store i8 39, ptr %539, align 1, !dbg !3390, !tbaa !948
  br label %540, !dbg !3390

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2907, metadata !DIExpression()), !dbg !2967
  %542 = icmp ult i64 %541, %533, !dbg !3395
  br i1 %542, label %543, label %545, !dbg !3398

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3395
  store i8 39, ptr %544, align 1, !dbg !3395, !tbaa !948
  br label %545, !dbg !3395

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3398
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2967
  br label %547, !dbg !3399

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3063
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2907, metadata !DIExpression()), !dbg !2967
  %557 = icmp ult i64 %555, %548, !dbg !3400
  br i1 %557, label %558, label %560, !dbg !3403

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3400
  store i8 %549, ptr %559, align 1, !dbg !3400, !tbaa !948
  br label %560, !dbg !3400

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2907, metadata !DIExpression()), !dbg !2967
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2914, metadata !DIExpression()), !dbg !2967
  br label %563, !dbg !3405

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3350
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2967
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2971
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3361
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2922, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2916, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2914, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2900, metadata !DIExpression()), !dbg !2967
  %572 = add i64 %570, 1, !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2922, metadata !DIExpression()), !dbg !3054
  br label %121, !dbg !3407, !llvm.loop !3408

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !3042
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2971
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2898, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2914, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2913, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2908, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2907, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2900, metadata !DIExpression()), !dbg !2967
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3410
  %575 = xor i1 %109, true, !dbg !3412
  %576 = or i1 %574, %575, !dbg !3412
  %577 = or i1 %576, %110, !dbg !3412
  br i1 %577, label %578, label %.loopexit13, !dbg !3412

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3413
  %580 = xor i1 %.lcssa38, true, !dbg !3413
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3413
  br i1 %581, label %589, label %582, !dbg !3413

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3415

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2971
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3417
  br label %638, !dbg !3419

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3420
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3422
  br i1 %588, label %27, label %589, !dbg !3422

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2967
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !3042
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3423
  %592 = or i1 %591, %590, !dbg !3425
  br i1 %592, label %608, label %593, !dbg !3425

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2909, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2907, metadata !DIExpression()), !dbg !2967
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3426, !tbaa !948
  %595 = icmp eq i8 %594, 0, !dbg !3429
  br i1 %595, label %608, label %.preheader, !dbg !3429

.preheader:                                       ; preds = %593
  br label %596, !dbg !3429

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2909, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2907, metadata !DIExpression()), !dbg !2967
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3430
  br i1 %600, label %601, label %603, !dbg !3433

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3430
  store i8 %597, ptr %602, align 1, !dbg !3430, !tbaa !948
  br label %603, !dbg !3430

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3433
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2907, metadata !DIExpression()), !dbg !2967
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3434
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2909, metadata !DIExpression()), !dbg !2967
  %606 = load i8, ptr %605, align 1, !dbg !3426, !tbaa !948
  %607 = icmp eq i8 %606, 0, !dbg !3429
  br i1 %607, label %.loopexit, label %596, !dbg !3429, !llvm.loop !3435

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3433
  br label %608, !dbg !3437

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2907, metadata !DIExpression()), !dbg !2967
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3437
  br i1 %610, label %611, label %638, !dbg !3439

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3440
  store i8 0, ptr %612, align 1, !dbg !3441, !tbaa !948
  br label %638, !dbg !3440

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2958), !dbg !3267
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3442
  br i1 %614, label %624, label %630, !dbg !3268

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3063
  br label %615, !dbg !3442

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3442

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3442

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2958), !dbg !3267
  %622 = icmp eq i32 %616, 2, !dbg !3442
  %623 = select i1 %619, i32 4, i32 2, !dbg !3268
  br i1 %622, label %624, label %630, !dbg !3268

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3268

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3069
  br label %630, !dbg !3443

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2901, metadata !DIExpression()), !dbg !2967
  %636 = and i32 %5, -3, !dbg !3443
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3444
  br label %638, !dbg !3445

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3446
}

; Function Attrs: nounwind
declare !dbg !3447 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3450 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3453 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3455 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3462
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3462
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata ptr null, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata ptr %2, metadata !3470, metadata !DIExpression()), !dbg !3476
  %4 = icmp eq ptr %2, null, !dbg !3478
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3478
  call void @llvm.dbg.value(metadata ptr %5, metadata !3471, metadata !DIExpression()), !dbg !3476
  %6 = tail call ptr @__errno_location() #47, !dbg !3479
  %7 = load i32, ptr %6, align 4, !dbg !3479, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %7, metadata !3472, metadata !DIExpression()), !dbg !3476
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3480
  %9 = load i32, ptr %8, align 4, !dbg !3480, !tbaa !2841
  %10 = or i32 %9, 1, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %10, metadata !3473, metadata !DIExpression()), !dbg !3476
  %11 = load i32, ptr %5, align 8, !dbg !3482, !tbaa !2791
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3483
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3484
  %14 = load ptr, ptr %13, align 8, !dbg !3484, !tbaa !2862
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3485
  %16 = load ptr, ptr %15, align 8, !dbg !3485, !tbaa !2865
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3486
  %18 = add i64 %17, 1, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %18, metadata !3474, metadata !DIExpression()), !dbg !3476
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %19, metadata !3475, metadata !DIExpression()), !dbg !3476
  %20 = load i32, ptr %5, align 8, !dbg !3489, !tbaa !2791
  %21 = load ptr, ptr %13, align 8, !dbg !3490, !tbaa !2862
  %22 = load ptr, ptr %15, align 8, !dbg !3491, !tbaa !2865
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3492
  store i32 %7, ptr %6, align 4, !dbg !3493, !tbaa !939
  ret ptr %19, !dbg !3494
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #20 !dbg !3464 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3469, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3470, metadata !DIExpression()), !dbg !3495
  %5 = icmp eq ptr %3, null, !dbg !3496
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3496
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3471, metadata !DIExpression()), !dbg !3495
  %7 = tail call ptr @__errno_location() #47, !dbg !3497
  %8 = load i32, ptr %7, align 4, !dbg !3497, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3472, metadata !DIExpression()), !dbg !3495
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3498
  %10 = load i32, ptr %9, align 4, !dbg !3498, !tbaa !2841
  %11 = icmp eq ptr %2, null, !dbg !3499
  %12 = zext i1 %11 to i32, !dbg !3499
  %13 = or i32 %10, %12, !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3473, metadata !DIExpression()), !dbg !3495
  %14 = load i32, ptr %6, align 8, !dbg !3501, !tbaa !2791
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3502
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3503
  %17 = load ptr, ptr %16, align 8, !dbg !3503, !tbaa !2862
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3504
  %19 = load ptr, ptr %18, align 8, !dbg !3504, !tbaa !2865
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3505
  %21 = add i64 %20, 1, !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3474, metadata !DIExpression()), !dbg !3495
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3507
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3475, metadata !DIExpression()), !dbg !3495
  %23 = load i32, ptr %6, align 8, !dbg !3508, !tbaa !2791
  %24 = load ptr, ptr %16, align 8, !dbg !3509, !tbaa !2862
  %25 = load ptr, ptr %18, align 8, !dbg !3510, !tbaa !2865
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3511
  store i32 %8, ptr %7, align 4, !dbg !3512, !tbaa !939
  br i1 %11, label %28, label %27, !dbg !3513

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3514, !tbaa !1322
  br label %28, !dbg !3516

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #20 !dbg !3518 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3523, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3520, metadata !DIExpression()), !dbg !3524
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3521, metadata !DIExpression()), !dbg !3525
  %2 = load i32, ptr @nslots, align 4, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3521, metadata !DIExpression()), !dbg !3525
  %3 = icmp sgt i32 %2, 1, !dbg !3526
  br i1 %3, label %4, label %6, !dbg !3528

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3526
  br label %10, !dbg !3528

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3529

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3529
  %8 = load ptr, ptr %7, align 8, !dbg !3529, !tbaa !3531
  %9 = icmp eq ptr %8, @slot0, !dbg !3533
  br i1 %9, label %17, label %16, !dbg !3534

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3521, metadata !DIExpression()), !dbg !3525
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3535
  %13 = load ptr, ptr %12, align 8, !dbg !3535, !tbaa !3531
  tail call void @free(ptr noundef %13) #44, !dbg !3536
  %14 = add nuw nsw i64 %11, 1, !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3521, metadata !DIExpression()), !dbg !3525
  %15 = icmp eq i64 %14, %5, !dbg !3526
  br i1 %15, label %.loopexit, label %10, !dbg !3528, !llvm.loop !3538

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #44, !dbg !3540
  store i64 256, ptr @slotvec0, align 8, !dbg !3542, !tbaa !3543
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3544, !tbaa !3531
  br label %17, !dbg !3545

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3546
  br i1 %18, label %20, label %19, !dbg !3548

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #44, !dbg !3549
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3551, !tbaa !869
  br label %20, !dbg !3552

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3553, !tbaa !939
  ret void, !dbg !3554
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 !dbg !3555 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3557, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3558, metadata !DIExpression()), !dbg !3559
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3560
  ret ptr %3, !dbg !3561
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 !dbg !3562 {
  %5 = alloca i64, align 8, !DIAssignID !3582
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3576, metadata !DIExpression(), metadata !3582, metadata ptr %5, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3566, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3567, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3568, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3569, metadata !DIExpression()), !dbg !3584
  %6 = tail call ptr @__errno_location() #47, !dbg !3585
  %7 = load i32, ptr %6, align 4, !dbg !3585, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3570, metadata !DIExpression()), !dbg !3584
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3586, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3571, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3572, metadata !DIExpression()), !dbg !3584
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3587
  br i1 %9, label %10, label %11, !dbg !3587

10:                                               ; preds = %4
  tail call void @abort() #46, !dbg !3589
  unreachable, !dbg !3589

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3590, !tbaa !939
  %13 = icmp sgt i32 %12, %0, !dbg !3591
  br i1 %13, label %32, label %14, !dbg !3592

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3593
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3583
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !3594
  %16 = sext i32 %12 to i64, !dbg !3595
  store i64 %16, ptr %5, align 8, !dbg !3596, !tbaa !1322, !DIAssignID !3597
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3576, metadata !DIExpression(), metadata !3597, metadata ptr %5, metadata !DIExpression()), !dbg !3583
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3598
  %18 = add nuw nsw i32 %0, 1, !dbg !3599
  %19 = sub i32 %18, %12, !dbg !3600
  %20 = sext i32 %19 to i64, !dbg !3601
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #44, !dbg !3602
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3571, metadata !DIExpression()), !dbg !3584
  store ptr %21, ptr @slotvec, align 8, !dbg !3603, !tbaa !869
  br i1 %15, label %22, label %23, !dbg !3604

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3605, !tbaa.struct !3607
  br label %23, !dbg !3608

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3609, !tbaa !939
  %25 = sext i32 %24 to i64, !dbg !3610
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3610
  %27 = load i64, ptr %5, align 8, !dbg !3611, !tbaa !1322
  %28 = sub nsw i64 %27, %25, !dbg !3612
  %29 = shl i64 %28, 4, !dbg !3613
  call void @llvm.dbg.value(metadata ptr %26, metadata !3000, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %29, metadata !3004, metadata !DIExpression()), !dbg !3614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #44, !dbg !3616
  %30 = load i64, ptr %5, align 8, !dbg !3617, !tbaa !1322
  %31 = trunc i64 %30 to i32, !dbg !3617
  store i32 %31, ptr @nslots, align 4, !dbg !3618, !tbaa !939
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !3619
  br label %32, !dbg !3620

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3584
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3571, metadata !DIExpression()), !dbg !3584
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3621
  %36 = load i64, ptr %35, align 8, !dbg !3622, !tbaa !3543
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3577, metadata !DIExpression()), !dbg !3623
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3624
  %38 = load ptr, ptr %37, align 8, !dbg !3624, !tbaa !3531
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3579, metadata !DIExpression()), !dbg !3623
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3625
  %40 = load i32, ptr %39, align 4, !dbg !3625, !tbaa !2841
  %41 = or i32 %40, 1, !dbg !3626
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3580, metadata !DIExpression()), !dbg !3623
  %42 = load i32, ptr %3, align 8, !dbg !3627, !tbaa !2791
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3628
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3629
  %45 = load ptr, ptr %44, align 8, !dbg !3629, !tbaa !2862
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3630
  %47 = load ptr, ptr %46, align 8, !dbg !3630, !tbaa !2865
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3581, metadata !DIExpression()), !dbg !3623
  %49 = icmp ugt i64 %36, %48, !dbg !3632
  br i1 %49, label %60, label %50, !dbg !3634

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3577, metadata !DIExpression()), !dbg !3623
  store i64 %51, ptr %35, align 8, !dbg !3637, !tbaa !3543
  %52 = icmp eq ptr %38, @slot0, !dbg !3638
  br i1 %52, label %54, label %53, !dbg !3640

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #44, !dbg !3641
  br label %54, !dbg !3641

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3642
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3579, metadata !DIExpression()), !dbg !3623
  store ptr %55, ptr %37, align 8, !dbg !3643, !tbaa !3531
  %56 = load i32, ptr %3, align 8, !dbg !3644, !tbaa !2791
  %57 = load ptr, ptr %44, align 8, !dbg !3645, !tbaa !2862
  %58 = load ptr, ptr %46, align 8, !dbg !3646, !tbaa !2865
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3647
  br label %60, !dbg !3648

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3623
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3579, metadata !DIExpression()), !dbg !3623
  store i32 %7, ptr %6, align 4, !dbg !3649, !tbaa !939
  ret ptr %61, !dbg !3650
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #32

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !3651 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3655, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3657, metadata !DIExpression()), !dbg !3658
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3659
  ret ptr %4, !dbg !3660
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #20 !dbg !3661 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3557, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %0, metadata !3558, metadata !DIExpression()), !dbg !3665
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3667
  ret ptr %2, !dbg !3668
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 !dbg !3669 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3673, metadata !DIExpression()), !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %1, metadata !3657, metadata !DIExpression()), !dbg !3676
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3678
  ret ptr %3, !dbg !3679
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3680 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3687, metadata !DIExpression(), metadata !3688, metadata ptr %4, metadata !DIExpression()), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3684, metadata !DIExpression()), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3685, metadata !DIExpression()), !dbg !3689
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3686, metadata !DIExpression()), !dbg !3689
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3691), !dbg !3694
  call void @llvm.dbg.value(metadata i32 %1, metadata !3695, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3703, !alias.scope !3691, !DIAssignID !3704
  call void @llvm.dbg.assign(metadata i8 0, metadata !3687, metadata !DIExpression(), metadata !3704, metadata ptr %4, metadata !DIExpression()), !dbg !3689
  %5 = icmp eq i32 %1, 10, !dbg !3705
  br i1 %5, label %6, label %7, !dbg !3707

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3708, !noalias !3691
  unreachable, !dbg !3708

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3709, !tbaa !2791, !alias.scope !3691, !DIAssignID !3710
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3687, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3710, metadata ptr %4, metadata !DIExpression()), !dbg !3689
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3711
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3712
  ret ptr %8, !dbg !3713
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #20 !dbg !3714 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3722, metadata !DIExpression(), metadata !3723, metadata ptr %5, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3718, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3719, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3720, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !3725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3726), !dbg !3729
  call void @llvm.dbg.value(metadata i32 %1, metadata !3695, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3700, metadata !DIExpression()), !dbg !3732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3732, !alias.scope !3726, !DIAssignID !3733
  call void @llvm.dbg.assign(metadata i8 0, metadata !3722, metadata !DIExpression(), metadata !3733, metadata ptr %5, metadata !DIExpression()), !dbg !3724
  %6 = icmp eq i32 %1, 10, !dbg !3734
  br i1 %6, label %7, label %8, !dbg !3735

7:                                                ; preds = %4
  tail call void @abort() #46, !dbg !3736, !noalias !3726
  unreachable, !dbg !3736

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3737, !tbaa !2791, !alias.scope !3726, !DIAssignID !3738
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3722, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3738, metadata ptr %5, metadata !DIExpression()), !dbg !3724
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !3740
  ret ptr %9, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 !dbg !3742 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3748
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3749
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3687, metadata !DIExpression(), metadata !3748, metadata ptr %3, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 0, metadata !3684, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %1, metadata !3686, metadata !DIExpression()), !dbg !3750
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3753), !dbg !3756
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3700, metadata !DIExpression()), !dbg !3759
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3759, !alias.scope !3753, !DIAssignID !3760
  call void @llvm.dbg.assign(metadata i8 0, metadata !3687, metadata !DIExpression(), metadata !3760, metadata ptr %3, metadata !DIExpression()), !dbg !3750
  %4 = icmp eq i32 %0, 10, !dbg !3761
  br i1 %4, label %5, label %6, !dbg !3762

5:                                                ; preds = %2
  tail call void @abort() #46, !dbg !3763, !noalias !3753
  unreachable, !dbg !3763

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3764, !tbaa !2791, !alias.scope !3753, !DIAssignID !3765
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3687, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3765, metadata ptr %3, metadata !DIExpression()), !dbg !3750
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3767
  ret ptr %7, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !3769 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3776
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3774, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3722, metadata !DIExpression(), metadata !3776, metadata ptr %4, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 %0, metadata !3719, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %1, metadata !3720, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %2, metadata !3721, metadata !DIExpression()), !dbg !3778
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781), !dbg !3784
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3700, metadata !DIExpression()), !dbg !3787
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3787, !alias.scope !3781, !DIAssignID !3788
  call void @llvm.dbg.assign(metadata i8 0, metadata !3722, metadata !DIExpression(), metadata !3788, metadata ptr %4, metadata !DIExpression()), !dbg !3778
  %5 = icmp eq i32 %0, 10, !dbg !3789
  br i1 %5, label %6, label %7, !dbg !3790

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3791, !noalias !3781
  unreachable, !dbg !3791

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3792, !tbaa !2791, !alias.scope !3781, !DIAssignID !3793
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3722, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3793, metadata ptr %4, metadata !DIExpression()), !dbg !3778
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3794
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3795
  ret ptr %8, !dbg !3796
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #20 !dbg !3797 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3805, metadata ptr %4, metadata !DIExpression()), !dbg !3806
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3806
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3802, metadata !DIExpression()), !dbg !3806
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3808, !tbaa.struct !3809, !DIAssignID !3810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3810, metadata ptr %4, metadata !DIExpression()), !dbg !3806
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2808, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2809, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2810, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2811, metadata !DIExpression()), !dbg !3811
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3813
  %6 = lshr i8 %2, 5, !dbg !3814
  %7 = zext nneg i8 %6 to i64, !dbg !3814
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3815
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2812, metadata !DIExpression()), !dbg !3811
  %9 = and i8 %2, 31, !dbg !3816
  %10 = zext nneg i8 %9 to i32, !dbg !3816
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2814, metadata !DIExpression()), !dbg !3811
  %11 = load i32, ptr %8, align 4, !dbg !3817, !tbaa !939
  %12 = lshr i32 %11, %10, !dbg !3818
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2815, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3811
  %13 = and i32 %12, 1, !dbg !3819
  %14 = xor i32 %13, 1, !dbg !3819
  %15 = shl nuw i32 %14, %10, !dbg !3820
  %16 = xor i32 %15, %11, !dbg !3821
  store i32 %16, ptr %8, align 4, !dbg !3821, !tbaa !939
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3822
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3823
  ret ptr %17, !dbg !3824
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #20 !dbg !3825 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3831
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3829, metadata !DIExpression()), !dbg !3832
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3830, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3831, metadata ptr %3, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 -1, metadata !3802, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 %1, metadata !3803, metadata !DIExpression()), !dbg !3833
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3836, !tbaa.struct !3809, !DIAssignID !3837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3837, metadata ptr %3, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %3, metadata !2808, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 %1, metadata !2809, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 1, metadata !2810, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 %1, metadata !2811, metadata !DIExpression()), !dbg !3838
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3840
  %5 = lshr i8 %1, 5, !dbg !3841
  %6 = zext nneg i8 %5 to i64, !dbg !3841
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3842
  call void @llvm.dbg.value(metadata ptr %7, metadata !2812, metadata !DIExpression()), !dbg !3838
  %8 = and i8 %1, 31, !dbg !3843
  %9 = zext nneg i8 %8 to i32, !dbg !3843
  call void @llvm.dbg.value(metadata i32 %9, metadata !2814, metadata !DIExpression()), !dbg !3838
  %10 = load i32, ptr %7, align 4, !dbg !3844, !tbaa !939
  %11 = lshr i32 %10, %9, !dbg !3845
  call void @llvm.dbg.value(metadata i32 %11, metadata !2815, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3838
  %12 = and i32 %11, 1, !dbg !3846
  %13 = xor i32 %12, 1, !dbg !3846
  %14 = shl nuw i32 %13, %9, !dbg !3847
  %15 = xor i32 %14, %10, !dbg !3848
  store i32 %15, ptr %7, align 4, !dbg !3848, !tbaa !939
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3850
  ret ptr %16, !dbg !3851
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #20 !dbg !3852 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3855
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata ptr %0, metadata !3829, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8 58, metadata !3830, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3855, metadata ptr %2, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 -1, metadata !3802, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8 58, metadata !3803, metadata !DIExpression()), !dbg !3859
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #44, !dbg !3861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3862, !tbaa.struct !3809, !DIAssignID !3863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3863, metadata ptr %2, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata ptr %2, metadata !2808, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8 58, metadata !2809, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 1, metadata !2810, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()), !dbg !3864
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3866
  call void @llvm.dbg.value(metadata ptr %3, metadata !2812, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 26, metadata !2814, metadata !DIExpression()), !dbg !3864
  %4 = load i32, ptr %3, align 4, !dbg !3867, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %4, metadata !2815, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3864
  %5 = or i32 %4, 67108864, !dbg !3868
  store i32 %5, ptr %3, align 4, !dbg !3868, !tbaa !939
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3869
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #44, !dbg !3870
  ret ptr %6, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 !dbg !3872 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3876
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3876, metadata ptr %3, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3802, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i8 58, metadata !3803, metadata !DIExpression()), !dbg !3878
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3881, !tbaa.struct !3809, !DIAssignID !3882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3804, metadata !DIExpression(), metadata !3882, metadata ptr %3, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata ptr %3, metadata !2808, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 58, metadata !2809, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 1, metadata !2810, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()), !dbg !3883
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3885
  call void @llvm.dbg.value(metadata ptr %4, metadata !2812, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 26, metadata !2814, metadata !DIExpression()), !dbg !3883
  %5 = load i32, ptr %4, align 4, !dbg !3886, !tbaa !939
  call void @llvm.dbg.value(metadata i32 %5, metadata !2815, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3883
  %6 = or i32 %5, 67108864, !dbg !3887
  store i32 %6, ptr %4, align 4, !dbg !3887, !tbaa !939
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3888
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3889
  ret ptr %7, !dbg !3890
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3891 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3897
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3896, metadata !DIExpression(), metadata !3897, metadata ptr %4, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3894, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3895, metadata !DIExpression()), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3901
  call void @llvm.dbg.value(metadata i32 %1, metadata !3695, metadata !DIExpression()), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3902
  %5 = icmp eq i32 %1, 10, !dbg !3903
  br i1 %5, label %6, label %7, !dbg !3904

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3905, !noalias !3906
  unreachable, !dbg !3905

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3902
  store i32 %1, ptr %4, align 8, !dbg !3909, !tbaa.struct !3809, !DIAssignID !3910
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3909
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3909
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3896, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3910, metadata ptr %4, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3896, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3911, metadata ptr %8, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2808, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2809, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2810, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()), !dbg !3912
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3914
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2812, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2814, metadata !DIExpression()), !dbg !3912
  %10 = load i32, ptr %9, align 4, !dbg !3915, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2815, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3912
  %11 = or i32 %10, 67108864, !dbg !3916
  store i32 %11, ptr %9, align 4, !dbg !3916, !tbaa !939, !DIAssignID !3917
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3896, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3917, metadata ptr %9, metadata !DIExpression()), !dbg !3898
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3918
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3919
  ret ptr %12, !dbg !3920
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !3921 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3929
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3925, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3927, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !3929, metadata ptr %5, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 %0, metadata !3936, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %1, metadata !3937, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %2, metadata !3938, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %3, metadata !3939, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 -1, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !3943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3944, !tbaa.struct !3809, !DIAssignID !3945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !3945, metadata ptr %5, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3946, metadata ptr undef, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %1, metadata !2849, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !3947
  store i32 10, ptr %5, align 8, !dbg !3949, !tbaa !2791, !DIAssignID !3950
  call void @llvm.dbg.assign(metadata i32 10, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3950, metadata ptr %5, metadata !DIExpression()), !dbg !3941
  %6 = icmp ne ptr %1, null, !dbg !3951
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3952
  br i1 %8, label %10, label %9, !dbg !3952

9:                                                ; preds = %4
  tail call void @abort() #46, !dbg !3953
  unreachable, !dbg !3953

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3954
  store ptr %1, ptr %11, align 8, !dbg !3955, !tbaa !2862, !DIAssignID !3956
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3956, metadata ptr %11, metadata !DIExpression()), !dbg !3941
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3957
  store ptr %2, ptr %12, align 8, !dbg !3958, !tbaa !2865, !DIAssignID !3959
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3959, metadata ptr %12, metadata !DIExpression()), !dbg !3941
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3960
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !3961
  ret ptr %13, !dbg !3962
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #20 !dbg !3932 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3963
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !3963, metadata ptr %6, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3936, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3937, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3938, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3939, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3940, metadata !DIExpression()), !dbg !3964
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #44, !dbg !3965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3966, !tbaa.struct !3809, !DIAssignID !3967
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !3967, metadata ptr %6, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3968, metadata ptr undef, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %6, metadata !2848, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %1, metadata !2849, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %6, metadata !2848, metadata !DIExpression()), !dbg !3969
  store i32 10, ptr %6, align 8, !dbg !3971, !tbaa !2791, !DIAssignID !3972
  call void @llvm.dbg.assign(metadata i32 10, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3972, metadata ptr %6, metadata !DIExpression()), !dbg !3964
  %7 = icmp ne ptr %1, null, !dbg !3973
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3974
  br i1 %9, label %11, label %10, !dbg !3974

10:                                               ; preds = %5
  tail call void @abort() #46, !dbg !3975
  unreachable, !dbg !3975

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3976
  store ptr %1, ptr %12, align 8, !dbg !3977, !tbaa !2862, !DIAssignID !3978
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3978, metadata ptr %12, metadata !DIExpression()), !dbg !3964
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3979
  store ptr %2, ptr %13, align 8, !dbg !3980, !tbaa !2865, !DIAssignID !3981
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3981, metadata ptr %13, metadata !DIExpression()), !dbg !3964
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3982
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #44, !dbg !3983
  ret ptr %14, !dbg !3984
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3985 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3992
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3989, metadata !DIExpression()), !dbg !3993
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3990, metadata !DIExpression()), !dbg !3993
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3991, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 0, metadata !3925, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %0, metadata !3926, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %1, metadata !3927, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %2, metadata !3928, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !3992, metadata ptr %4, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 0, metadata !3936, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %0, metadata !3937, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %2, metadata !3939, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 -1, metadata !3940, metadata !DIExpression()), !dbg !3996
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3999, !tbaa.struct !3809, !DIAssignID !4000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !4000, metadata ptr %4, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4001, metadata ptr undef, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %4, metadata !2848, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %4, metadata !2848, metadata !DIExpression()), !dbg !4002
  store i32 10, ptr %4, align 8, !dbg !4004, !tbaa !2791, !DIAssignID !4005
  call void @llvm.dbg.assign(metadata i32 10, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4005, metadata ptr %4, metadata !DIExpression()), !dbg !3996
  %5 = icmp ne ptr %0, null, !dbg !4006
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4007
  br i1 %7, label %9, label %8, !dbg !4007

8:                                                ; preds = %3
  tail call void @abort() #46, !dbg !4008
  unreachable, !dbg !4008

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4009
  store ptr %0, ptr %10, align 8, !dbg !4010, !tbaa !2862, !DIAssignID !4011
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4011, metadata ptr %10, metadata !DIExpression()), !dbg !3996
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4012
  store ptr %1, ptr %11, align 8, !dbg !4013, !tbaa !2865, !DIAssignID !4014
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4014, metadata ptr %11, metadata !DIExpression()), !dbg !3996
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4015
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !4016
  ret ptr %12, !dbg !4017
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #20 !dbg !4018 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4026
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4023, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4024, metadata !DIExpression()), !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4025, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !4026, metadata ptr %5, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !3936, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr %0, metadata !3937, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr %2, metadata !3939, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %3, metadata !3940, metadata !DIExpression()), !dbg !4028
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !4030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4031, !tbaa.struct !3809, !DIAssignID !4032
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(), metadata !4032, metadata ptr %5, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4033, metadata ptr undef, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !4034
  store i32 10, ptr %5, align 8, !dbg !4036, !tbaa !2791, !DIAssignID !4037
  call void @llvm.dbg.assign(metadata i32 10, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4037, metadata ptr %5, metadata !DIExpression()), !dbg !4028
  %6 = icmp ne ptr %0, null, !dbg !4038
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4039
  br i1 %8, label %10, label %9, !dbg !4039

9:                                                ; preds = %4
  tail call void @abort() #46, !dbg !4040
  unreachable, !dbg !4040

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4041
  store ptr %0, ptr %11, align 8, !dbg !4042, !tbaa !2862, !DIAssignID !4043
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4043, metadata ptr %11, metadata !DIExpression()), !dbg !4028
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4044
  store ptr %1, ptr %12, align 8, !dbg !4045, !tbaa !2865, !DIAssignID !4046
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3931, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4046, metadata ptr %12, metadata !DIExpression()), !dbg !4028
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4047
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !4048
  ret ptr %13, !dbg !4049
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !4050 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4054, metadata !DIExpression()), !dbg !4057
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4057
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4056, metadata !DIExpression()), !dbg !4057
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4058
  ret ptr %4, !dbg !4059
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 !dbg !4060 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4064, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4065, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 0, metadata !4054, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %1, metadata !4056, metadata !DIExpression()), !dbg !4067
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4069
  ret ptr %3, !dbg !4070
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 !dbg !4071 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4075, metadata !DIExpression()), !dbg !4077
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i32 %0, metadata !4054, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 -1, metadata !4056, metadata !DIExpression()), !dbg !4078
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4080
  ret ptr %3, !dbg !4081
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #20 !dbg !4082 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4086, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4075, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %0, metadata !4076, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 0, metadata !4054, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 -1, metadata !4056, metadata !DIExpression()), !dbg !4090
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4092
  ret ptr %2, !dbg !4093
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #20 !dbg !4094 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4133, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4134, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4135, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4136, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4138, metadata !DIExpression()), !dbg !4139
  %7 = icmp eq ptr %1, null, !dbg !4140
  br i1 %7, label %10, label %8, !dbg !4142

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #44, !dbg !4143
  br label %12, !dbg !4143

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #44, !dbg !4144
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #44, !dbg !4145
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #44, !dbg !4145
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4146
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #44, !dbg !4147
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #44, !dbg !4147
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4148
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
  ], !dbg !4149

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #44, !dbg !4150
  %21 = load ptr, ptr %4, align 8, !dbg !4150, !tbaa !869
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #44, !dbg !4150
  br label %147, !dbg !4152

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #44, !dbg !4153
  %25 = load ptr, ptr %4, align 8, !dbg !4153, !tbaa !869
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4153
  %27 = load ptr, ptr %26, align 8, !dbg !4153, !tbaa !869
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #44, !dbg !4153
  br label %147, !dbg !4154

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #44, !dbg !4155
  %31 = load ptr, ptr %4, align 8, !dbg !4155, !tbaa !869
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4155
  %33 = load ptr, ptr %32, align 8, !dbg !4155, !tbaa !869
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4155
  %35 = load ptr, ptr %34, align 8, !dbg !4155, !tbaa !869
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #44, !dbg !4155
  br label %147, !dbg !4156

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #44, !dbg !4157
  %39 = load ptr, ptr %4, align 8, !dbg !4157, !tbaa !869
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4157
  %41 = load ptr, ptr %40, align 8, !dbg !4157, !tbaa !869
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4157
  %43 = load ptr, ptr %42, align 8, !dbg !4157, !tbaa !869
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4157
  %45 = load ptr, ptr %44, align 8, !dbg !4157, !tbaa !869
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #44, !dbg !4157
  br label %147, !dbg !4158

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #44, !dbg !4159
  %49 = load ptr, ptr %4, align 8, !dbg !4159, !tbaa !869
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4159
  %51 = load ptr, ptr %50, align 8, !dbg !4159, !tbaa !869
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4159
  %53 = load ptr, ptr %52, align 8, !dbg !4159, !tbaa !869
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4159
  %55 = load ptr, ptr %54, align 8, !dbg !4159, !tbaa !869
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4159
  %57 = load ptr, ptr %56, align 8, !dbg !4159, !tbaa !869
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #44, !dbg !4159
  br label %147, !dbg !4160

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #44, !dbg !4161
  %61 = load ptr, ptr %4, align 8, !dbg !4161, !tbaa !869
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4161
  %63 = load ptr, ptr %62, align 8, !dbg !4161, !tbaa !869
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4161
  %65 = load ptr, ptr %64, align 8, !dbg !4161, !tbaa !869
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4161
  %67 = load ptr, ptr %66, align 8, !dbg !4161, !tbaa !869
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4161
  %69 = load ptr, ptr %68, align 8, !dbg !4161, !tbaa !869
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4161
  %71 = load ptr, ptr %70, align 8, !dbg !4161, !tbaa !869
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #44, !dbg !4161
  br label %147, !dbg !4162

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #44, !dbg !4163
  %75 = load ptr, ptr %4, align 8, !dbg !4163, !tbaa !869
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4163
  %77 = load ptr, ptr %76, align 8, !dbg !4163, !tbaa !869
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4163
  %79 = load ptr, ptr %78, align 8, !dbg !4163, !tbaa !869
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4163
  %81 = load ptr, ptr %80, align 8, !dbg !4163, !tbaa !869
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4163
  %83 = load ptr, ptr %82, align 8, !dbg !4163, !tbaa !869
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4163
  %85 = load ptr, ptr %84, align 8, !dbg !4163, !tbaa !869
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4163
  %87 = load ptr, ptr %86, align 8, !dbg !4163, !tbaa !869
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #44, !dbg !4163
  br label %147, !dbg !4164

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #44, !dbg !4165
  %91 = load ptr, ptr %4, align 8, !dbg !4165, !tbaa !869
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4165
  %93 = load ptr, ptr %92, align 8, !dbg !4165, !tbaa !869
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4165
  %95 = load ptr, ptr %94, align 8, !dbg !4165, !tbaa !869
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4165
  %97 = load ptr, ptr %96, align 8, !dbg !4165, !tbaa !869
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4165
  %99 = load ptr, ptr %98, align 8, !dbg !4165, !tbaa !869
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4165
  %101 = load ptr, ptr %100, align 8, !dbg !4165, !tbaa !869
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4165
  %103 = load ptr, ptr %102, align 8, !dbg !4165, !tbaa !869
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4165
  %105 = load ptr, ptr %104, align 8, !dbg !4165, !tbaa !869
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #44, !dbg !4165
  br label %147, !dbg !4166

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #44, !dbg !4167
  %109 = load ptr, ptr %4, align 8, !dbg !4167, !tbaa !869
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4167
  %111 = load ptr, ptr %110, align 8, !dbg !4167, !tbaa !869
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4167
  %113 = load ptr, ptr %112, align 8, !dbg !4167, !tbaa !869
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4167
  %115 = load ptr, ptr %114, align 8, !dbg !4167, !tbaa !869
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4167
  %117 = load ptr, ptr %116, align 8, !dbg !4167, !tbaa !869
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4167
  %119 = load ptr, ptr %118, align 8, !dbg !4167, !tbaa !869
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4167
  %121 = load ptr, ptr %120, align 8, !dbg !4167, !tbaa !869
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4167
  %123 = load ptr, ptr %122, align 8, !dbg !4167, !tbaa !869
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4167
  %125 = load ptr, ptr %124, align 8, !dbg !4167, !tbaa !869
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #44, !dbg !4167
  br label %147, !dbg !4168

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #44, !dbg !4169
  %129 = load ptr, ptr %4, align 8, !dbg !4169, !tbaa !869
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4169
  %131 = load ptr, ptr %130, align 8, !dbg !4169, !tbaa !869
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4169
  %133 = load ptr, ptr %132, align 8, !dbg !4169, !tbaa !869
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4169
  %135 = load ptr, ptr %134, align 8, !dbg !4169, !tbaa !869
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4169
  %137 = load ptr, ptr %136, align 8, !dbg !4169, !tbaa !869
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4169
  %139 = load ptr, ptr %138, align 8, !dbg !4169, !tbaa !869
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4169
  %141 = load ptr, ptr %140, align 8, !dbg !4169, !tbaa !869
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4169
  %143 = load ptr, ptr %142, align 8, !dbg !4169, !tbaa !869
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4169
  %145 = load ptr, ptr %144, align 8, !dbg !4169, !tbaa !869
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #44, !dbg !4169
  br label %147, !dbg !4170

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4171
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #20 !dbg !4172 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4176, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4179, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4180, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4181, metadata !DIExpression()), !dbg !4182
  br label %6, !dbg !4183

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4181, metadata !DIExpression()), !dbg !4182
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4186
  %9 = load ptr, ptr %8, align 8, !dbg !4186, !tbaa !869
  %10 = icmp eq ptr %9, null, !dbg !4188
  %11 = add i64 %7, 1, !dbg !4189
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4181, metadata !DIExpression()), !dbg !4182
  br i1 %10, label %12, label %6, !dbg !4188, !llvm.loop !4190

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4185
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4192
  ret void, !dbg !4193
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #20 !dbg !4194 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4216
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4214, metadata !DIExpression(), metadata !4216, metadata ptr %6, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4208, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4209, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4210, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4211, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4212, metadata !DIExpression(DW_OP_deref)), !dbg !4217
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #44, !dbg !4218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4213, metadata !DIExpression()), !dbg !4217
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4213, metadata !DIExpression()), !dbg !4217
  %10 = icmp sgt i32 %9, -1, !dbg !4219
  br i1 %10, label %18, label %11, !dbg !4219

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4219
  store i32 %12, ptr %7, align 8, !dbg !4219
  %13 = icmp ult i32 %9, -7, !dbg !4219
  br i1 %13, label %14, label %18, !dbg !4219

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4219
  %16 = sext i32 %9 to i64, !dbg !4219
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4219
  br label %22, !dbg !4219

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4219
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4219
  store ptr %21, ptr %4, align 8, !dbg !4219
  br label %22, !dbg !4219

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4219
  %25 = load ptr, ptr %24, align 8, !dbg !4219
  store ptr %25, ptr %6, align 8, !dbg !4222, !tbaa !869
  %26 = icmp eq ptr %25, null, !dbg !4223
  br i1 %26, label %197, label %27, !dbg !4224

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4213, metadata !DIExpression()), !dbg !4217
  %28 = icmp sgt i32 %23, -1, !dbg !4219
  br i1 %28, label %36, label %29, !dbg !4219

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4219
  store i32 %30, ptr %7, align 8, !dbg !4219
  %31 = icmp ult i32 %23, -7, !dbg !4219
  br i1 %31, label %32, label %36, !dbg !4219

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4219
  %34 = sext i32 %23 to i64, !dbg !4219
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4219
  br label %40, !dbg !4219

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4219
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4219
  store ptr %39, ptr %4, align 8, !dbg !4219
  br label %40, !dbg !4219

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4219
  %43 = load ptr, ptr %42, align 8, !dbg !4219
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4225
  store ptr %43, ptr %44, align 8, !dbg !4222, !tbaa !869
  %45 = icmp eq ptr %43, null, !dbg !4223
  br i1 %45, label %197, label %46, !dbg !4224

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4213, metadata !DIExpression()), !dbg !4217
  %47 = icmp sgt i32 %41, -1, !dbg !4219
  br i1 %47, label %55, label %48, !dbg !4219

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4219
  store i32 %49, ptr %7, align 8, !dbg !4219
  %50 = icmp ult i32 %41, -7, !dbg !4219
  br i1 %50, label %51, label %55, !dbg !4219

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4219
  %53 = sext i32 %41 to i64, !dbg !4219
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4219
  br label %59, !dbg !4219

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4219
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4219
  store ptr %58, ptr %4, align 8, !dbg !4219
  br label %59, !dbg !4219

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4219
  %62 = load ptr, ptr %61, align 8, !dbg !4219
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4225
  store ptr %62, ptr %63, align 8, !dbg !4222, !tbaa !869
  %64 = icmp eq ptr %62, null, !dbg !4223
  br i1 %64, label %197, label %65, !dbg !4224

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4213, metadata !DIExpression()), !dbg !4217
  %66 = icmp sgt i32 %60, -1, !dbg !4219
  br i1 %66, label %74, label %67, !dbg !4219

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4219
  store i32 %68, ptr %7, align 8, !dbg !4219
  %69 = icmp ult i32 %60, -7, !dbg !4219
  br i1 %69, label %70, label %74, !dbg !4219

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4219
  %72 = sext i32 %60 to i64, !dbg !4219
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4219
  br label %78, !dbg !4219

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4219
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4219
  store ptr %77, ptr %4, align 8, !dbg !4219
  br label %78, !dbg !4219

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4219
  %81 = load ptr, ptr %80, align 8, !dbg !4219
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4225
  store ptr %81, ptr %82, align 8, !dbg !4222, !tbaa !869
  %83 = icmp eq ptr %81, null, !dbg !4223
  br i1 %83, label %197, label %84, !dbg !4224

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4213, metadata !DIExpression()), !dbg !4217
  %85 = icmp sgt i32 %79, -1, !dbg !4219
  br i1 %85, label %93, label %86, !dbg !4219

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4219
  store i32 %87, ptr %7, align 8, !dbg !4219
  %88 = icmp ult i32 %79, -7, !dbg !4219
  br i1 %88, label %89, label %93, !dbg !4219

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4219
  %91 = sext i32 %79 to i64, !dbg !4219
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4219
  br label %97, !dbg !4219

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4219
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4219
  store ptr %96, ptr %4, align 8, !dbg !4219
  br label %97, !dbg !4219

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4219
  %100 = load ptr, ptr %99, align 8, !dbg !4219
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4225
  store ptr %100, ptr %101, align 8, !dbg !4222, !tbaa !869
  %102 = icmp eq ptr %100, null, !dbg !4223
  br i1 %102, label %197, label %103, !dbg !4224

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4213, metadata !DIExpression()), !dbg !4217
  %104 = icmp sgt i32 %98, -1, !dbg !4219
  br i1 %104, label %112, label %105, !dbg !4219

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4219
  store i32 %106, ptr %7, align 8, !dbg !4219
  %107 = icmp ult i32 %98, -7, !dbg !4219
  br i1 %107, label %108, label %112, !dbg !4219

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4219
  %110 = sext i32 %98 to i64, !dbg !4219
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4219
  br label %116, !dbg !4219

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4219
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4219
  store ptr %115, ptr %4, align 8, !dbg !4219
  br label %116, !dbg !4219

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4219
  %119 = load ptr, ptr %118, align 8, !dbg !4219
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4225
  store ptr %119, ptr %120, align 8, !dbg !4222, !tbaa !869
  %121 = icmp eq ptr %119, null, !dbg !4223
  br i1 %121, label %197, label %122, !dbg !4224

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4213, metadata !DIExpression()), !dbg !4217
  %123 = icmp sgt i32 %117, -1, !dbg !4219
  br i1 %123, label %131, label %124, !dbg !4219

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4219
  store i32 %125, ptr %7, align 8, !dbg !4219
  %126 = icmp ult i32 %117, -7, !dbg !4219
  br i1 %126, label %127, label %131, !dbg !4219

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4219
  %129 = sext i32 %117 to i64, !dbg !4219
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4219
  br label %135, !dbg !4219

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4219
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4219
  store ptr %134, ptr %4, align 8, !dbg !4219
  br label %135, !dbg !4219

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4219
  %138 = load ptr, ptr %137, align 8, !dbg !4219
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4225
  store ptr %138, ptr %139, align 8, !dbg !4222, !tbaa !869
  %140 = icmp eq ptr %138, null, !dbg !4223
  br i1 %140, label %197, label %141, !dbg !4224

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4213, metadata !DIExpression()), !dbg !4217
  %142 = icmp sgt i32 %136, -1, !dbg !4219
  br i1 %142, label %150, label %143, !dbg !4219

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4219
  store i32 %144, ptr %7, align 8, !dbg !4219
  %145 = icmp ult i32 %136, -7, !dbg !4219
  br i1 %145, label %146, label %150, !dbg !4219

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4219
  %148 = sext i32 %136 to i64, !dbg !4219
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4219
  br label %154, !dbg !4219

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4219
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4219
  store ptr %153, ptr %4, align 8, !dbg !4219
  br label %154, !dbg !4219

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4219
  %157 = load ptr, ptr %156, align 8, !dbg !4219
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4225
  store ptr %157, ptr %158, align 8, !dbg !4222, !tbaa !869
  %159 = icmp eq ptr %157, null, !dbg !4223
  br i1 %159, label %197, label %160, !dbg !4224

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4213, metadata !DIExpression()), !dbg !4217
  %161 = icmp sgt i32 %155, -1, !dbg !4219
  br i1 %161, label %169, label %162, !dbg !4219

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4219
  store i32 %163, ptr %7, align 8, !dbg !4219
  %164 = icmp ult i32 %155, -7, !dbg !4219
  br i1 %164, label %165, label %169, !dbg !4219

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4219
  %167 = sext i32 %155 to i64, !dbg !4219
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4219
  br label %173, !dbg !4219

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4219
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4219
  store ptr %172, ptr %4, align 8, !dbg !4219
  br label %173, !dbg !4219

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4219
  %176 = load ptr, ptr %175, align 8, !dbg !4219
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4225
  store ptr %176, ptr %177, align 8, !dbg !4222, !tbaa !869
  %178 = icmp eq ptr %176, null, !dbg !4223
  br i1 %178, label %197, label %179, !dbg !4224

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4213, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4213, metadata !DIExpression()), !dbg !4217
  %180 = icmp sgt i32 %174, -1, !dbg !4219
  br i1 %180, label %188, label %181, !dbg !4219

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4219
  store i32 %182, ptr %7, align 8, !dbg !4219
  %183 = icmp ult i32 %174, -7, !dbg !4219
  br i1 %183, label %184, label %188, !dbg !4219

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4219
  %186 = sext i32 %174 to i64, !dbg !4219
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4219
  br label %191, !dbg !4219

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4219
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4219
  store ptr %190, ptr %4, align 8, !dbg !4219
  br label %191, !dbg !4219

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4219
  %193 = load ptr, ptr %192, align 8, !dbg !4219
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4225
  store ptr %193, ptr %194, align 8, !dbg !4222, !tbaa !869
  %195 = icmp eq ptr %193, null, !dbg !4223
  %196 = select i1 %195, i64 9, i64 10, !dbg !4224
  br label %197, !dbg !4224

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4226
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4227
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #44, !dbg !4228
  ret void, !dbg !4228
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #20 !dbg !4229 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4238
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4237, metadata !DIExpression(), metadata !4238, metadata ptr %5, metadata !DIExpression()), !dbg !4239
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4233, metadata !DIExpression()), !dbg !4239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4234, metadata !DIExpression()), !dbg !4239
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4235, metadata !DIExpression()), !dbg !4239
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4236, metadata !DIExpression()), !dbg !4239
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #44, !dbg !4240
  call void @llvm.va_start(ptr nonnull %5), !dbg !4241
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #44, !dbg !4242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4242, !tbaa.struct !2173
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4242
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #44, !dbg !4242
  call void @llvm.va_end(ptr nonnull %5), !dbg !4243
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #44, !dbg !4244
  ret void, !dbg !4244
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #20 !dbg !4245 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4246, !tbaa !869
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4246
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #44, !dbg !4247
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #44, !dbg !4247
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #44, !dbg !4248
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #44, !dbg !4248
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #44, !dbg !4249
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #44, !dbg !4249
  ret void, !dbg !4250
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4251 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4256, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4258, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %2, metadata !4264, metadata !DIExpression()), !dbg !4265
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4273
  %5 = icmp eq ptr %4, null, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4277

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4278
  unreachable, !dbg !4278

7:                                                ; preds = %3
  ret ptr %4, !dbg !4279
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4261 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4264, metadata !DIExpression()), !dbg !4280
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4282
  %5 = icmp eq ptr %4, null, !dbg !4284
  br i1 %5, label %6, label %7, !dbg !4285

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4286
  unreachable, !dbg !4286

7:                                                ; preds = %3
  ret ptr %4, !dbg !4287
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4288 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4290, metadata !DIExpression()), !dbg !4291
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4292
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4293
  %3 = icmp eq ptr %2, null, !dbg !4295
  br i1 %3, label %4, label %5, !dbg !4296

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4297
  unreachable, !dbg !4297

5:                                                ; preds = %1
  ret ptr %2, !dbg !4298
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4299 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4303, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %0, metadata !4305, metadata !DIExpression()), !dbg !4309
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4311
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4312
  %3 = icmp eq ptr %2, null, !dbg !4314
  br i1 %3, label %4, label %5, !dbg !4315

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4316
  unreachable, !dbg !4316

5:                                                ; preds = %1
  ret ptr %2, !dbg !4317
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4318 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %0, metadata !4290, metadata !DIExpression()), !dbg !4324
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4326
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4327
  %3 = icmp eq ptr %2, null, !dbg !4329
  br i1 %3, label %4, label %5, !dbg !4330

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4331
  unreachable, !dbg !4331

5:                                                ; preds = %1
  ret ptr %2, !dbg !4332
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4333 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4339
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i64 %1, metadata !4344, metadata !DIExpression()), !dbg !4345
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4347
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #51, !dbg !4348
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4349
  %5 = icmp eq ptr %4, null, !dbg !4351
  br i1 %5, label %6, label %7, !dbg !4352

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4353
  unreachable, !dbg !4353

7:                                                ; preds = %2
  ret ptr %4, !dbg !4354
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4355 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4356 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4360, metadata !DIExpression()), !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4361, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %0, metadata !4363, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %1, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %1, metadata !4344, metadata !DIExpression()), !dbg !4369
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4371
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #51, !dbg !4372
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4373
  %5 = icmp eq ptr %4, null, !dbg !4375
  br i1 %5, label %6, label %7, !dbg !4376

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4377
  unreachable, !dbg !4377

7:                                                ; preds = %2
  ret ptr %4, !dbg !4378
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4379 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4383, metadata !DIExpression()), !dbg !4386
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4384, metadata !DIExpression()), !dbg !4386
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %1, metadata !4390, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %2, metadata !4391, metadata !DIExpression()), !dbg !4392
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4394
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4395
  %5 = icmp eq ptr %4, null, !dbg !4397
  br i1 %5, label %6, label %7, !dbg !4398

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4399
  unreachable, !dbg !4399

7:                                                ; preds = %3
  ret ptr %4, !dbg !4400
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4401 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4405, metadata !DIExpression()), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata ptr null, metadata !4260, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %0, metadata !4263, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %1, metadata !4264, metadata !DIExpression()), !dbg !4408
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #44, !dbg !4410
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4411
  %4 = icmp eq ptr %3, null, !dbg !4413
  br i1 %4, label %5, label %6, !dbg !4414

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4415
  unreachable, !dbg !4415

6:                                                ; preds = %2
  ret ptr %3, !dbg !4416
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4417 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4421, metadata !DIExpression()), !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata ptr null, metadata !4383, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %0, metadata !4384, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %1, metadata !4385, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr null, metadata !4387, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %0, metadata !4390, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %1, metadata !4391, metadata !DIExpression()), !dbg !4426
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #44, !dbg !4428
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4429
  %4 = icmp eq ptr %3, null, !dbg !4431
  br i1 %4, label %5, label %6, !dbg !4432

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4433
  unreachable, !dbg !4433

6:                                                ; preds = %2
  ret ptr %3, !dbg !4434
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #20 !dbg !4435 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4439, metadata !DIExpression()), !dbg !4441
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %0, metadata !800, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %1, metadata !801, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 1, metadata !802, metadata !DIExpression()), !dbg !4442
  %3 = load i64, ptr %1, align 8, !dbg !4444, !tbaa !1322
  call void @llvm.dbg.value(metadata i64 %3, metadata !803, metadata !DIExpression()), !dbg !4442
  %4 = icmp eq ptr %0, null, !dbg !4445
  br i1 %4, label %5, label %8, !dbg !4447

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4448
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4451
  br label %15, !dbg !4451

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4452
  %10 = add nuw i64 %9, 1, !dbg !4452
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4452
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4452
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4452
  call void @llvm.dbg.value(metadata i64 %13, metadata !803, metadata !DIExpression()), !dbg !4442
  br i1 %12, label %14, label %15, !dbg !4455

14:                                               ; preds = %8
  tail call void @xalloc_die() #46, !dbg !4456
  unreachable, !dbg !4456

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4442
  call void @llvm.dbg.value(metadata i64 %16, metadata !803, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 %16, metadata !4263, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 1, metadata !4264, metadata !DIExpression()), !dbg !4457
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #44, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %17, metadata !4268, metadata !DIExpression()), !dbg !4460
  %18 = icmp eq ptr %17, null, !dbg !4462
  br i1 %18, label %19, label %20, !dbg !4463

19:                                               ; preds = %15
  tail call void @xalloc_die() #46, !dbg !4464
  unreachable, !dbg !4464

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !800, metadata !DIExpression()), !dbg !4442
  store i64 %16, ptr %1, align 8, !dbg !4465, !tbaa !1322
  ret ptr %17, !dbg !4466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !795 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !800, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !801, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !802, metadata !DIExpression()), !dbg !4467
  %4 = load i64, ptr %1, align 8, !dbg !4468, !tbaa !1322
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !803, metadata !DIExpression()), !dbg !4467
  %5 = icmp eq ptr %0, null, !dbg !4469
  br i1 %5, label %6, label %13, !dbg !4470

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4471
  br i1 %7, label %8, label %20, !dbg !4472

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !803, metadata !DIExpression()), !dbg !4467
  %10 = icmp ugt i64 %2, 128, !dbg !4475
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !803, metadata !DIExpression()), !dbg !4467
  br label %20, !dbg !4477

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4478
  %15 = add nuw i64 %14, 1, !dbg !4478
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4478
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4478
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4478
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !803, metadata !DIExpression()), !dbg !4467
  br i1 %17, label %19, label %20, !dbg !4479

19:                                               ; preds = %13
  tail call void @xalloc_die() #46, !dbg !4480
  unreachable, !dbg !4480

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !803, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i64 %21, metadata !4263, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i64 %2, metadata !4264, metadata !DIExpression()), !dbg !4481
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #44, !dbg !4483
  call void @llvm.dbg.value(metadata ptr %22, metadata !4268, metadata !DIExpression()), !dbg !4484
  %23 = icmp eq ptr %22, null, !dbg !4486
  br i1 %23, label %24, label %25, !dbg !4487

24:                                               ; preds = %20
  tail call void @xalloc_die() #46, !dbg !4488
  unreachable, !dbg !4488

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !800, metadata !DIExpression()), !dbg !4467
  store i64 %21, ptr %1, align 8, !dbg !4489, !tbaa !1322
  ret ptr %22, !dbg !4490
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #20 !dbg !807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !816, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !817, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !818, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !819, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !820, metadata !DIExpression()), !dbg !4491
  %6 = load i64, ptr %1, align 8, !dbg !4492, !tbaa !1322
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !821, metadata !DIExpression()), !dbg !4491
  %7 = ashr i64 %6, 1, !dbg !4493
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4493
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4493
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4493
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !822, metadata !DIExpression()), !dbg !4491
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4495
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !822, metadata !DIExpression()), !dbg !4491
  %12 = icmp sgt i64 %3, -1, !dbg !4496
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4498
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4498
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !822, metadata !DIExpression()), !dbg !4491
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4499
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4499
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4499
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !823, metadata !DIExpression()), !dbg !4491
  %18 = icmp slt i64 %17, 128, !dbg !4499
  %19 = select i1 %18, i64 128, i64 0, !dbg !4499
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4499
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !824, metadata !DIExpression()), !dbg !4491
  %21 = icmp eq i64 %20, 0, !dbg !4500
  br i1 %21, label %28, label %22, !dbg !4502

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4503
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !822, metadata !DIExpression()), !dbg !4491
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4505
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !823, metadata !DIExpression()), !dbg !4491
  br label %28, !dbg !4506

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4491
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !823, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !822, metadata !DIExpression()), !dbg !4491
  %31 = icmp eq ptr %0, null, !dbg !4507
  br i1 %31, label %32, label %33, !dbg !4509

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4510, !tbaa !1322
  br label %33, !dbg !4511

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4512
  %35 = icmp slt i64 %34, %2, !dbg !4514
  br i1 %35, label %36, label %48, !dbg !4515

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4516
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4516
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4516
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !822, metadata !DIExpression()), !dbg !4491
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4517
  br i1 %42, label %47, label %43, !dbg !4517

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4518
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4518
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4518
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !823, metadata !DIExpression()), !dbg !4491
  br i1 %45, label %47, label %48, !dbg !4519

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #46, !dbg !4520
  unreachable, !dbg !4520

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4491
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !823, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !822, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %50, metadata !4338, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %50, metadata !4344, metadata !DIExpression()), !dbg !4523
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4525
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #51, !dbg !4526
  call void @llvm.dbg.value(metadata ptr %52, metadata !4268, metadata !DIExpression()), !dbg !4527
  %53 = icmp eq ptr %52, null, !dbg !4529
  br i1 %53, label %54, label %55, !dbg !4530

54:                                               ; preds = %48
  tail call void @xalloc_die() #46, !dbg !4531
  unreachable, !dbg !4531

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !816, metadata !DIExpression()), !dbg !4491
  store i64 %49, ptr %1, align 8, !dbg !4532, !tbaa !1322
  ret ptr %52, !dbg !4533
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4534 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4536, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %0, metadata !4538, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i64 1, metadata !4541, metadata !DIExpression()), !dbg !4542
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #52, !dbg !4544
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4545
  %3 = icmp eq ptr %2, null, !dbg !4547
  br i1 %3, label %4, label %5, !dbg !4548

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4549
  unreachable, !dbg !4549

5:                                                ; preds = %1
  ret ptr %2, !dbg !4550
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4551 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #39

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4539 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4538, metadata !DIExpression()), !dbg !4552
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4541, metadata !DIExpression()), !dbg !4552
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #52, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4554
  %4 = icmp eq ptr %3, null, !dbg !4556
  br i1 %4, label %5, label %6, !dbg !4557

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4558
  unreachable, !dbg !4558

6:                                                ; preds = %2
  ret ptr %3, !dbg !4559
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4560 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4562, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i64 %0, metadata !4564, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 1, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 1, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 1, metadata !4573, metadata !DIExpression()), !dbg !4574
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #52, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4577
  %3 = icmp eq ptr %2, null, !dbg !4579
  br i1 %3, label %4, label %5, !dbg !4580

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4581
  unreachable, !dbg !4581

5:                                                ; preds = %1
  ret ptr %2, !dbg !4582
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4565 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4564, metadata !DIExpression()), !dbg !4583
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4567, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %1, metadata !4573, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %1, metadata !4573, metadata !DIExpression()), !dbg !4584
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #52, !dbg !4586
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4587
  %4 = icmp eq ptr %3, null, !dbg !4589
  br i1 %4, label %5, label %6, !dbg !4590

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4591
  unreachable, !dbg !4591

6:                                                ; preds = %2
  ret ptr %3, !dbg !4592
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4593 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4597, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4598, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4600
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4602
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4603
  %4 = icmp eq ptr %3, null, !dbg !4605
  br i1 %4, label %5, label %6, !dbg !4606

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4607
  unreachable, !dbg !4607

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4608, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i64 %1, metadata !4615, metadata !DIExpression()), !dbg !4616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4618
  ret ptr %3, !dbg !4619
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4620 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4624, metadata !DIExpression()), !dbg !4626
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %1, metadata !4305, metadata !DIExpression()), !dbg !4629
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4631
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4632
  %4 = icmp eq ptr %3, null, !dbg !4634
  br i1 %4, label %5, label %6, !dbg !4635

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4636
  unreachable, !dbg !4636

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4608, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i64 %1, metadata !4615, metadata !DIExpression()), !dbg !4637
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4639
  ret ptr %3, !dbg !4640
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #20 !dbg !4641 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4645, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4646, metadata !DIExpression()), !dbg !4648
  %3 = add nsw i64 %1, 1, !dbg !4649
  call void @llvm.dbg.value(metadata i64 %3, metadata !4303, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i64 %3, metadata !4305, metadata !DIExpression()), !dbg !4652
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4654
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4655
  %5 = icmp eq ptr %4, null, !dbg !4657
  br i1 %5, label %6, label %7, !dbg !4658

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4659
  unreachable, !dbg !4659

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4647, metadata !DIExpression()), !dbg !4648
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4660
  store i8 0, ptr %8, align 1, !dbg !4661, !tbaa !948
  call void @llvm.dbg.value(metadata ptr %4, metadata !4608, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i64 %1, metadata !4615, metadata !DIExpression()), !dbg !4662
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4664
  ret ptr %4, !dbg !4665
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !dbg !4666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4668, metadata !DIExpression()), !dbg !4669
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #45, !dbg !4670
  %3 = add i64 %2, 1, !dbg !4671
  call void @llvm.dbg.value(metadata ptr %0, metadata !4597, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %3, metadata !4598, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %3, metadata !4290, metadata !DIExpression()), !dbg !4674
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4676
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4677
  %5 = icmp eq ptr %4, null, !dbg !4679
  br i1 %5, label %6, label %7, !dbg !4680

6:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4681
  unreachable, !dbg !4681

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4608, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %3, metadata !4615, metadata !DIExpression()), !dbg !4682
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #44, !dbg !4684
  ret ptr %4, !dbg !4685
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4686 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4691, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4688, metadata !DIExpression()), !dbg !4692
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #44, !dbg !4691
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #44, !dbg !4691
  %3 = icmp eq i32 %1, 0, !dbg !4691
  tail call void @llvm.assume(i1 %3), !dbg !4691
  tail call void @abort() #46, !dbg !4693
  unreachable, !dbg !4693
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #40

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #20 !dbg !4694 {
  %6 = alloca ptr, align 8, !DIAssignID !4715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4706, metadata !DIExpression(), metadata !4715, metadata ptr %6, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4701, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4702, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4703, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4704, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4705, metadata !DIExpression()), !dbg !4716
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !4717
  %7 = icmp eq ptr %1, null, !dbg !4718
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4718
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4707, metadata !DIExpression()), !dbg !4716
  %9 = tail call ptr @__errno_location() #47, !dbg !4719
  store i32 0, ptr %9, align 4, !dbg !4720, !tbaa !939
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #44, !dbg !4721
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4709, metadata !DIExpression()), !dbg !4716
  %11 = load ptr, ptr %8, align 8, !dbg !4722, !tbaa !869
  %12 = icmp eq ptr %11, %0, !dbg !4724
  br i1 %12, label %13, label %22, !dbg !4725

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4726
  br i1 %14, label %490, label %15, !dbg !4729

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4730, !tbaa !948
  %17 = icmp eq i8 %16, 0, !dbg !4730
  br i1 %17, label %490, label %18, !dbg !4731

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !4730
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #45, !dbg !4732
  %21 = icmp eq ptr %20, null, !dbg !4732
  br i1 %21, label %490, label %29, !dbg !4733

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4734, !tbaa !939
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4736

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4709, metadata !DIExpression()), !dbg !4716
  br label %25, !dbg !4737

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4716
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4709, metadata !DIExpression()), !dbg !4716
  %27 = icmp eq ptr %4, null, !dbg !4739
  br i1 %27, label %28, label %29, !dbg !4741

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !4742, !tbaa !1322
  br label %490, !dbg !4744

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4745, !tbaa !948
  %33 = icmp eq i8 %32, 0, !dbg !4746
  br i1 %33, label %487, label %34, !dbg !4747

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !4745
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #45, !dbg !4748
  %37 = icmp eq ptr %36, null, !dbg !4748
  br i1 %37, label %38, label %40, !dbg !4750

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !4751, !tbaa !1322
  %39 = or disjoint i32 %30, 2, !dbg !4753
  br label %490, !dbg !4754

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4710, metadata !DIExpression()), !dbg !4755
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4713, metadata !DIExpression()), !dbg !4755
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
  ], !dbg !4756

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #45, !dbg !4757
  %43 = icmp eq ptr %42, null, !dbg !4757
  br i1 %43, label %53, label %44, !dbg !4760

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4761
  %46 = load i8, ptr %45, align 1, !dbg !4761, !tbaa !948
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4762

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4763
  %49 = load i8, ptr %48, align 1, !dbg !4763, !tbaa !948
  %50 = icmp eq i8 %49, 66, !dbg !4766
  %51 = select i1 %50, i64 3, i64 1, !dbg !4767
  br label %53, !dbg !4767

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4710, metadata !DIExpression()), !dbg !4755
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4713, metadata !DIExpression()), !dbg !4755
  br label %53, !dbg !4768

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !4755
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !4713, metadata !DIExpression()), !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !4710, metadata !DIExpression()), !dbg !4755
  switch i8 %32, label %485 [
    i8 98, label %377
    i8 66, label %385
    i8 99, label %476
    i8 69, label %334
    i8 71, label %393
    i8 103, label %393
    i8 107, label %415
    i8 75, label %415
    i8 77, label %423
    i8 109, label %423
    i8 80, label %298
    i8 81, label %227
    i8 82, label %163
    i8 84, label %438
    i8 116, label %438
    i8 119, label %467
    i8 89, label %106
    i8 90, label %56
  ], !dbg !4769

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %57 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4790
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !4792
  %60 = icmp slt i64 %31, 0, !dbg !4792
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !4792
  call void @llvm.dbg.value(metadata i1 %58, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i1 %58, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !4790
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !4792
  %66 = icmp slt i64 %62, 0, !dbg !4792
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !4792
  %69 = or i1 %58, %64, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %69, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i1 %69, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %70 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !4790
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !4792
  %73 = icmp slt i64 %68, 0, !dbg !4792
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !4792
  %76 = or i1 %69, %71, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %76, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i1 %76, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %77 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !4790
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !4792
  %80 = icmp slt i64 %75, 0, !dbg !4792
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !4792
  %83 = or i1 %76, %78, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %83, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i1 %83, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %84 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !4790
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !4792
  %87 = icmp slt i64 %82, 0, !dbg !4792
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !4792
  %90 = or i1 %83, %85, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %90, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i1 %90, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %91 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !4790
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4792
  %94 = icmp slt i64 %89, 0, !dbg !4792
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !4792
  %97 = or i1 %90, %92, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %97, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i1 %97, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4778
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4788
  %98 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !4790
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !4790
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4788
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !4792
  %101 = icmp slt i64 %96, 0, !dbg !4792
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4792
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !4792
  %104 = or i1 %97, %99, !dbg !4793
  %105 = zext i1 %104 to i32, !dbg !4793
  call void @llvm.dbg.value(metadata i32 %105, metadata !4770, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4778
  br label %476, !dbg !4794

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %107 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4799
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !4800
  %110 = icmp slt i64 %31, 0, !dbg !4800
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !4800
  call void @llvm.dbg.value(metadata i1 %108, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %108, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %113 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !4799
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !4800
  %116 = icmp slt i64 %112, 0, !dbg !4800
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !4800
  %119 = or i1 %108, %114, !dbg !4801
  call void @llvm.dbg.value(metadata i1 %119, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %119, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %120 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !4799
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !4800
  %123 = icmp slt i64 %118, 0, !dbg !4800
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !4800
  %126 = or i1 %119, %121, !dbg !4801
  call void @llvm.dbg.value(metadata i1 %126, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %126, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !4799
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4800
  %130 = icmp slt i64 %125, 0, !dbg !4800
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !4800
  %133 = or i1 %126, %128, !dbg !4801
  call void @llvm.dbg.value(metadata i1 %133, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %133, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !4799
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !4800
  %137 = icmp slt i64 %132, 0, !dbg !4800
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !4800
  %140 = or i1 %133, %135, !dbg !4801
  call void @llvm.dbg.value(metadata i1 %140, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %140, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %141 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !4799
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !4800
  %144 = icmp slt i64 %139, 0, !dbg !4800
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !4800
  %147 = or i1 %140, %142, !dbg !4801
  call void @llvm.dbg.value(metadata i1 %147, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %147, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %148 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !4799
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !4800
  %151 = icmp slt i64 %146, 0, !dbg !4800
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !4800
  %154 = or i1 %147, %149, !dbg !4801
  call void @llvm.dbg.value(metadata i1 %154, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %154, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4797
  %155 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !4799
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4799
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4797
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !4800
  %158 = icmp slt i64 %153, 0, !dbg !4800
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4800
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !4800
  %161 = or i1 %154, %156, !dbg !4801
  %162 = zext i1 %161 to i32, !dbg !4801
  call void @llvm.dbg.value(metadata i32 %162, metadata !4770, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  br label %476, !dbg !4794

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 9, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %164 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4806
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !4807
  %167 = icmp slt i64 %31, 0, !dbg !4807
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !4807
  call void @llvm.dbg.value(metadata i1 %165, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %165, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %170 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !4806
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !4807
  %173 = icmp slt i64 %169, 0, !dbg !4807
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !4807
  %176 = or i1 %165, %171, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %176, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %176, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %177 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !4806
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !4807
  %180 = icmp slt i64 %175, 0, !dbg !4807
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !4807
  %183 = or i1 %176, %178, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %183, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %183, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !4806
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !4807
  %187 = icmp slt i64 %182, 0, !dbg !4807
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !4807
  %190 = or i1 %183, %185, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %190, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %190, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %191 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !4806
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !4807
  %194 = icmp slt i64 %189, 0, !dbg !4807
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !4807
  %197 = or i1 %190, %192, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %197, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %197, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %198 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !4806
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !4807
  %201 = icmp slt i64 %196, 0, !dbg !4807
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !4807
  %204 = or i1 %197, %199, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %204, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %204, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %205 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !4806
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !4807
  %208 = icmp slt i64 %203, 0, !dbg !4807
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !4807
  %211 = or i1 %204, %206, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %211, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %211, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !4806
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !4807
  %215 = icmp slt i64 %210, 0, !dbg !4807
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !4807
  %218 = or i1 %211, %213, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %218, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i1 %218, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4802
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4804
  %219 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !4806
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4804
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4807
  %222 = icmp slt i64 %217, 0, !dbg !4807
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4807
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !4807
  %225 = or i1 %218, %220, !dbg !4808
  %226 = zext i1 %225 to i32, !dbg !4808
  call void @llvm.dbg.value(metadata i32 %226, metadata !4770, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4802
  br label %476, !dbg !4794

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 10, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 9, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4813
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !4814
  %231 = icmp slt i64 %31, 0, !dbg !4814
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !4814
  call void @llvm.dbg.value(metadata i1 %229, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 9, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %229, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 9, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %234 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !4813
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4814
  %237 = icmp slt i64 %233, 0, !dbg !4814
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !4814
  %240 = or i1 %229, %235, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %240, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %240, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 8, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %241 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !4813
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !4814
  %244 = icmp slt i64 %239, 0, !dbg !4814
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !4814
  %247 = or i1 %240, %242, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %247, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %247, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 7, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %248 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !4813
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !4814
  %251 = icmp slt i64 %246, 0, !dbg !4814
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !4814
  %254 = or i1 %247, %249, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %254, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %254, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %255 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !4813
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4814
  %258 = icmp slt i64 %253, 0, !dbg !4814
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !4814
  %261 = or i1 %254, %256, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %261, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %261, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %262 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !4813
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !4814
  %265 = icmp slt i64 %260, 0, !dbg !4814
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !4814
  %268 = or i1 %261, %263, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %268, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %268, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %269 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !4813
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !4814
  %272 = icmp slt i64 %267, 0, !dbg !4814
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !4814
  %275 = or i1 %268, %270, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %275, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %275, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %276 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !4813
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4814
  %279 = icmp slt i64 %274, 0, !dbg !4814
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !4814
  %282 = or i1 %275, %277, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %282, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %282, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %283 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !4813
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !4814
  %286 = icmp slt i64 %281, 0, !dbg !4814
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !4814
  %289 = or i1 %282, %284, !dbg !4815
  call void @llvm.dbg.value(metadata i1 %289, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i1 %289, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4809
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4811
  %290 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !4813
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !4813
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4811
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !4814
  %293 = icmp slt i64 %288, 0, !dbg !4814
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4814
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !4814
  %296 = or i1 %289, %291, !dbg !4815
  %297 = zext i1 %296 to i32, !dbg !4815
  call void @llvm.dbg.value(metadata i32 %297, metadata !4770, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4809
  br label %476, !dbg !4794

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4818
  %299 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4820
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !4820
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4818
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !4821
  %302 = icmp slt i64 %31, 0, !dbg !4821
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4821
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !4821
  call void @llvm.dbg.value(metadata i1 %300, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i1 %300, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4818
  %305 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !4820
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !4820
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4818
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !4821
  %308 = icmp slt i64 %304, 0, !dbg !4821
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4821
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !4821
  %311 = or i1 %300, %306, !dbg !4822
  call void @llvm.dbg.value(metadata i1 %311, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i1 %311, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4818
  %312 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !4820
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !4820
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4818
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !4821
  %315 = icmp slt i64 %310, 0, !dbg !4821
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4821
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !4821
  %318 = or i1 %311, %313, !dbg !4822
  call void @llvm.dbg.value(metadata i1 %318, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i1 %318, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4818
  %319 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !4820
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !4820
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4818
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !4821
  %322 = icmp slt i64 %317, 0, !dbg !4821
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4821
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !4821
  %325 = or i1 %318, %320, !dbg !4822
  call void @llvm.dbg.value(metadata i1 %325, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i1 %325, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4816
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4818
  %326 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !4820
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !4820
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4818
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !4821
  %329 = icmp slt i64 %324, 0, !dbg !4821
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4821
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !4821
  %332 = or i1 %325, %327, !dbg !4822
  %333 = zext i1 %332 to i32, !dbg !4822
  call void @llvm.dbg.value(metadata i32 %333, metadata !4770, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4816
  br label %476, !dbg !4794

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 6, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4825
  %335 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4827
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4827
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4825
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4828
  %338 = icmp slt i64 %31, 0, !dbg !4828
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4828
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !4828
  call void @llvm.dbg.value(metadata i1 %336, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i1 %336, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 5, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4825
  %341 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !4827
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !4827
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4825
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !4828
  %344 = icmp slt i64 %340, 0, !dbg !4828
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4828
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !4828
  %347 = or i1 %336, %342, !dbg !4829
  call void @llvm.dbg.value(metadata i1 %347, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i1 %347, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4825
  %348 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !4827
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !4827
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4825
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !4828
  %351 = icmp slt i64 %346, 0, !dbg !4828
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4828
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !4828
  %354 = or i1 %347, %349, !dbg !4829
  call void @llvm.dbg.value(metadata i1 %354, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i1 %354, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4825
  %355 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !4827
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4827
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4825
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4828
  %358 = icmp slt i64 %353, 0, !dbg !4828
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4828
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !4828
  %361 = or i1 %354, %356, !dbg !4829
  call void @llvm.dbg.value(metadata i1 %361, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i1 %361, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4825
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !4827
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !4827
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4825
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !4828
  %365 = icmp slt i64 %360, 0, !dbg !4828
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4828
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !4828
  %368 = or i1 %361, %363, !dbg !4829
  call void @llvm.dbg.value(metadata i1 %368, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i1 %368, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4823
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4825
  %369 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !4827
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !4827
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4825
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !4828
  %372 = icmp slt i64 %367, 0, !dbg !4828
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4828
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !4828
  %375 = or i1 %368, %370, !dbg !4829
  %376 = zext i1 %375 to i32, !dbg !4829
  call void @llvm.dbg.value(metadata i32 %376, metadata !4770, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  br label %476, !dbg !4794

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 512, metadata !4786, metadata !DIExpression()), !dbg !4830
  %378 = add i64 %31, -18014398509481984, !dbg !4832
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !4832
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4830
  %380 = shl i64 %31, 9, !dbg !4833
  %381 = icmp slt i64 %31, 0, !dbg !4833
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4833
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !4833
  %384 = zext i1 %379 to i32, !dbg !4833
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !4714, metadata !DIExpression()), !dbg !4755
  br label %476, !dbg !4834

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 1024, metadata !4786, metadata !DIExpression()), !dbg !4835
  %386 = add i64 %31, -9007199254740992, !dbg !4837
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !4837
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4835
  %388 = shl i64 %31, 10, !dbg !4838
  %389 = icmp slt i64 %31, 0, !dbg !4838
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4838
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !4838
  %392 = zext i1 %387 to i32, !dbg !4838
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !4714, metadata !DIExpression()), !dbg !4755
  br label %476, !dbg !4839

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4775, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %54, metadata !4776, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4842
  %394 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4844
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4842
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !4845
  %397 = icmp slt i64 %31, 0, !dbg !4845
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !4845
  call void @llvm.dbg.value(metadata i1 %395, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %395, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4842
  %400 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !4844
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4842
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !4845
  %403 = icmp slt i64 %399, 0, !dbg !4845
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !4845
  %406 = or i1 %395, %401, !dbg !4846
  call void @llvm.dbg.value(metadata i1 %406, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %406, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4842
  %407 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !4844
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4842
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !4845
  %410 = icmp slt i64 %405, 0, !dbg !4845
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !4845
  %413 = or i1 %406, %408, !dbg !4846
  %414 = zext i1 %413 to i32, !dbg !4846
  call void @llvm.dbg.value(metadata i32 %414, metadata !4770, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  br label %476, !dbg !4794

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4775, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %54, metadata !4776, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4847
  %416 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4849
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !4849
  %418 = icmp slt i64 %31, 0, !dbg !4851
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4851
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !4851
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !4851
  %422 = zext i1 %417 to i32, !dbg !4851
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4852
  br label %476, !dbg !4794

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4775, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i64 %54, metadata !4776, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4853
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4855
  %424 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4857
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !4857
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4855
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !4858
  %427 = icmp slt i64 %31, 0, !dbg !4858
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4858
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !4858
  call void @llvm.dbg.value(metadata i1 %425, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4853
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4853
  call void @llvm.dbg.value(metadata i1 %425, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4853
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4855
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !4857
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !4857
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4855
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !4858
  %433 = icmp slt i64 %429, 0, !dbg !4858
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4858
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !4858
  %436 = or i1 %425, %431, !dbg !4859
  %437 = zext i1 %436 to i32, !dbg !4859
  call void @llvm.dbg.value(metadata i32 %437, metadata !4770, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4853
  br label %476, !dbg !4794

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4775, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %54, metadata !4776, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 4, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4862
  %439 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4864
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4862
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !4865
  %442 = icmp slt i64 %31, 0, !dbg !4865
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4865
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !4865
  call void @llvm.dbg.value(metadata i1 %440, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i1 %440, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 3, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4862
  %445 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !4864
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4862
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !4865
  %448 = icmp slt i64 %444, 0, !dbg !4865
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4865
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !4865
  %451 = or i1 %440, %446, !dbg !4866
  call void @llvm.dbg.value(metadata i1 %451, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i1 %451, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 2, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4862
  %452 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !4864
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4862
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !4865
  %455 = icmp slt i64 %450, 0, !dbg !4865
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4865
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !4865
  %458 = or i1 %451, %453, !dbg !4866
  call void @llvm.dbg.value(metadata i1 %458, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i1 %458, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  call void @llvm.dbg.value(metadata i32 1, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %54, metadata !4786, metadata !DIExpression()), !dbg !4862
  %459 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !4864
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4862
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !4865
  %462 = icmp slt i64 %457, 0, !dbg !4865
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4865
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !4865
  %465 = or i1 %458, %460, !dbg !4866
  %466 = zext i1 %465 to i32, !dbg !4866
  call void @llvm.dbg.value(metadata i32 %466, metadata !4770, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4860
  br label %476, !dbg !4794

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4781, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 2, metadata !4786, metadata !DIExpression()), !dbg !4867
  %468 = add i64 %31, 4611686018427387904, !dbg !4869
  %469 = icmp slt i64 %468, 0, !dbg !4869
  call void @llvm.dbg.value(metadata i64 poison, metadata !4787, metadata !DIExpression()), !dbg !4867
  %470 = shl i64 %31, 1, !dbg !4870
  %471 = icmp slt i64 %31, 0, !dbg !4870
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4870
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !4870
  %474 = lshr i64 %468, 63, !dbg !4870
  %475 = trunc i64 %474 to i32, !dbg !4870
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !4714, metadata !DIExpression()), !dbg !4755
  br label %476, !dbg !4871

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !4716
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !4872
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !4714, metadata !DIExpression()), !dbg !4755
  %479 = or i32 %478, %30, !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !4709, metadata !DIExpression()), !dbg !4716
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4873
  store ptr %480, ptr %8, align 8, !dbg !4873, !tbaa !869
  %481 = load i8, ptr %480, align 1, !dbg !4874, !tbaa !948
  %482 = icmp eq i8 %481, 0, !dbg !4874
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !4876
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !4709, metadata !DIExpression()), !dbg !4716
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !4877, !tbaa !1322
  %486 = or disjoint i32 %30, 2, !dbg !4878
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !4709, metadata !DIExpression()), !dbg !4716
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !4879
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !4880
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !4708, metadata !DIExpression()), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !4709, metadata !DIExpression()), !dbg !4716
  store i64 %488, ptr %3, align 8, !dbg !4881, !tbaa !1322
  br label %490, !dbg !4882

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !4883
  ret i32 %491, !dbg !4883
}

; Function Attrs: nounwind
declare !dbg !4884 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #20 !dbg !4889 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4932, metadata !DIExpression(), metadata !4951, metadata ptr %3, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4927, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4928, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4929, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4930, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4931, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #44, !dbg !4953
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4936, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4938, metadata !DIExpression()), !dbg !4954
  br label %4, !dbg !4955

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4954
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4952
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4956
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4957
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4929, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4930, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4938, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4936, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4931, metadata !DIExpression()), !dbg !4952
  %11 = load i8, ptr %6, align 1, !dbg !4957, !tbaa !948
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4958

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4929, metadata !DIExpression()), !dbg !4952
  %13 = icmp slt i64 %7, 80, !dbg !4959
  br i1 %13, label %14, label %43, !dbg !4962

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4963
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4938, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4954
  store i8 114, ptr %10, align 1, !dbg !4964, !tbaa !948
  br label %43, !dbg !4965

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4929, metadata !DIExpression()), !dbg !4952
  %17 = or i32 %8, 576, !dbg !4966
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4930, metadata !DIExpression()), !dbg !4952
  %18 = icmp slt i64 %7, 80, !dbg !4967
  br i1 %18, label %19, label %43, !dbg !4969

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4970
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4938, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4954
  store i8 119, ptr %10, align 1, !dbg !4971, !tbaa !948
  br label %43, !dbg !4972

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4929, metadata !DIExpression()), !dbg !4952
  %22 = or i32 %8, 1088, !dbg !4973
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4930, metadata !DIExpression()), !dbg !4952
  %23 = icmp slt i64 %7, 80, !dbg !4974
  br i1 %23, label %24, label %43, !dbg !4976

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4977
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4938, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4954
  store i8 97, ptr %10, align 1, !dbg !4978, !tbaa !948
  br label %43, !dbg !4979

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4930, metadata !DIExpression()), !dbg !4952
  %27 = icmp slt i64 %7, 80, !dbg !4980
  br i1 %27, label %28, label %43, !dbg !4982

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4983
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4938, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4954
  store i8 98, ptr %10, align 1, !dbg !4984, !tbaa !948
  br label %43, !dbg !4985

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4929, metadata !DIExpression()), !dbg !4952
  %31 = icmp slt i64 %7, 80, !dbg !4986
  br i1 %31, label %32, label %43, !dbg !4988

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4989
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4938, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4954
  store i8 43, ptr %10, align 1, !dbg !4990, !tbaa !948
  br label %43, !dbg !4991

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4992
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4930, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4931, metadata !DIExpression()), !dbg !4952
  br label %43, !dbg !4993

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4994
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4930, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4931, metadata !DIExpression()), !dbg !4952
  br label %43, !dbg !4995

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4954
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4952
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4956
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4957
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #45, !dbg !4996
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4939, metadata !DIExpression()), !dbg !4997
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4998
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5000
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4939, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !5001, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !5004, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i64 %41, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #44, !dbg !5008
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !5009
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4938, metadata !DIExpression()), !dbg !4954
  br label %49, !dbg !5010

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4952
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4929, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4930, metadata !DIExpression()), !dbg !4952
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4938, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4954
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4931, metadata !DIExpression()), !dbg !4952
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5011
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4936, metadata !DIExpression()), !dbg !4954
  br label %4, !dbg !5012, !llvm.loop !5013

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4952
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4956
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4957
  br label %49, !dbg !5015

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4954
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4938, metadata !DIExpression()), !dbg !4954
  store i8 0, ptr %53, align 1, !dbg !5015, !tbaa !948
  br i1 %50, label %54, label %65, !dbg !5016

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !5017
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #44, !dbg !5018
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4944, metadata !DIExpression()), !dbg !5019
  %57 = icmp slt i32 %56, 0, !dbg !5020
  br i1 %57, label %67, label %58, !dbg !5022

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #44, !dbg !5023
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4947, metadata !DIExpression()), !dbg !5019
  %60 = icmp eq ptr %59, null, !dbg !5024
  br i1 %60, label %61, label %67, !dbg !5025

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #47, !dbg !5026
  %63 = load i32, ptr %62, align 4, !dbg !5026, !tbaa !939
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4948, metadata !DIExpression()), !dbg !5027
  %64 = tail call i32 @close(i32 noundef %56) #44, !dbg !5028
  store i32 %63, ptr %62, align 4, !dbg !5029, !tbaa !939
  br label %67, !dbg !5030

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5031, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata ptr %1, metadata !5034, metadata !DIExpression()), !dbg !5035
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5037
  br label %67, !dbg !5038

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4952
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #44, !dbg !5039
  ret ptr %68, !dbg !5039
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5040 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #41

; Function Attrs: nofree nounwind
declare !dbg !5043 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5046 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5047 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #20 !dbg !5050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5088, metadata !DIExpression()), !dbg !5093
  %2 = tail call i64 @__fpending(ptr noundef %0) #44, !dbg !5094
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5089, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5093
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5095, metadata !DIExpression()), !dbg !5098
  %3 = load i32, ptr %0, align 8, !dbg !5100, !tbaa !1302
  %4 = and i32 %3, 32, !dbg !5101
  %5 = icmp eq i32 %4, 0, !dbg !5101
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5093
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #44, !dbg !5102
  %7 = icmp eq i32 %6, 0, !dbg !5103
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5093
  br i1 %5, label %8, label %18, !dbg !5104

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5106
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5089, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5093
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5107
  %11 = xor i1 %7, true, !dbg !5107
  %12 = sext i1 %11 to i32, !dbg !5107
  br i1 %10, label %21, label %13, !dbg !5107

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #47, !dbg !5108
  %15 = load i32, ptr %14, align 4, !dbg !5108, !tbaa !939
  %16 = icmp ne i32 %15, 9, !dbg !5109
  %17 = sext i1 %16 to i32, !dbg !5110
  br label %21, !dbg !5110

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5111

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #47, !dbg !5113
  store i32 0, ptr %20, align 4, !dbg !5115, !tbaa !939
  br label %21, !dbg !5113

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5093
  ret i32 %22, !dbg !5116
}

; Function Attrs: nounwind
declare !dbg !5117 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !5120 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5125, metadata !DIExpression()), !dbg !5130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5126, metadata !DIExpression()), !dbg !5130
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5127, metadata !DIExpression()), !dbg !5130
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5128, metadata !DIExpression()), !dbg !5130
  %5 = icmp eq ptr %1, null, !dbg !5131
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5133
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5133
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5133
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5127, metadata !DIExpression()), !dbg !5130
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5126, metadata !DIExpression()), !dbg !5130
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5125, metadata !DIExpression()), !dbg !5130
  %9 = icmp eq ptr %3, null, !dbg !5134
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5136
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5128, metadata !DIExpression()), !dbg !5130
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #44, !dbg !5137
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5129, metadata !DIExpression()), !dbg !5130
  %12 = icmp ult i64 %11, -3, !dbg !5138
  br i1 %12, label %13, label %17, !dbg !5140

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #45, !dbg !5141
  %15 = icmp eq i32 %14, 0, !dbg !5141
  br i1 %15, label %16, label %29, !dbg !5142

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5143, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata ptr %10, metadata !5150, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.value(metadata i32 0, metadata !5153, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.value(metadata i64 8, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i64 0, ptr %10, align 1, !dbg !5157
  br label %29, !dbg !5158

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5159
  br i1 %18, label %19, label %20, !dbg !5161

19:                                               ; preds = %17
  tail call void @abort() #46, !dbg !5162
  unreachable, !dbg !5162

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5163

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #44, !dbg !5165
  br i1 %23, label %29, label %24, !dbg !5166

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5167
  br i1 %25, label %29, label %26, !dbg !5170

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5171, !tbaa !948
  %28 = zext i8 %27 to i32, !dbg !5172
  store i32 %28, ptr %6, align 4, !dbg !5173, !tbaa !939
  br label %29, !dbg !5174

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5130
  ret i64 %30, !dbg !5175
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5176 i32 @mbsinit(ptr noundef) local_unnamed_addr #42

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #43 !dbg !5182 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5184, metadata !DIExpression()), !dbg !5188
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5185, metadata !DIExpression()), !dbg !5188
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5186, metadata !DIExpression()), !dbg !5188
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5189
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5189
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5187, metadata !DIExpression()), !dbg !5188
  br i1 %5, label %6, label %8, !dbg !5191

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #47, !dbg !5192
  store i32 12, ptr %7, align 4, !dbg !5194, !tbaa !939
  br label %12, !dbg !5195

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5189
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5187, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.value(metadata ptr %0, metadata !5196, metadata !DIExpression()), !dbg !5200
  call void @llvm.dbg.value(metadata i64 %9, metadata !5199, metadata !DIExpression()), !dbg !5200
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5202
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #51, !dbg !5203
  br label %12, !dbg !5204

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5188
  ret ptr %13, !dbg !5205
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #20 !dbg !5206 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5215
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5211, metadata !DIExpression(), metadata !5215, metadata ptr %2, metadata !DIExpression()), !dbg !5216
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5210, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #44, !dbg !5217
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #44, !dbg !5218
  %4 = icmp eq i32 %3, 0, !dbg !5218
  br i1 %4, label %5, label %12, !dbg !5220

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5221, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.value(metadata ptr @.str.158, metadata !5224, metadata !DIExpression()), !dbg !5225
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.158, i64 2), !dbg !5228
  %7 = icmp eq i32 %6, 0, !dbg !5229
  br i1 %7, label %11, label %8, !dbg !5230

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5221, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.value(metadata ptr @.str.1.159, metadata !5224, metadata !DIExpression()), !dbg !5231
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.159, i64 6), !dbg !5233
  %10 = icmp eq i32 %9, 0, !dbg !5234
  br i1 %10, label %11, label %12, !dbg !5235

11:                                               ; preds = %8, %5
  br label %12, !dbg !5236

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5216
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #44, !dbg !5237
  ret i1 %13, !dbg !5237
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #20 !dbg !5238 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5242, metadata !DIExpression()), !dbg !5245
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5243, metadata !DIExpression()), !dbg !5245
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5244, metadata !DIExpression()), !dbg !5245
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #44, !dbg !5246
  ret i32 %4, !dbg !5247
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #20 !dbg !5248 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5252, metadata !DIExpression()), !dbg !5253
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #44, !dbg !5254
  ret ptr %2, !dbg !5255
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #20 !dbg !5256 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5258, metadata !DIExpression()), !dbg !5260
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #44, !dbg !5261
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5259, metadata !DIExpression()), !dbg !5260
  ret ptr %2, !dbg !5262
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #20 !dbg !5263 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5265, metadata !DIExpression()), !dbg !5272
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5266, metadata !DIExpression()), !dbg !5272
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5267, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata i32 %0, metadata !5258, metadata !DIExpression()), !dbg !5273
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #44, !dbg !5275
  call void @llvm.dbg.value(metadata ptr %4, metadata !5259, metadata !DIExpression()), !dbg !5273
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5268, metadata !DIExpression()), !dbg !5272
  %5 = icmp eq ptr %4, null, !dbg !5276
  br i1 %5, label %6, label %9, !dbg !5277

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5278
  br i1 %7, label %19, label %8, !dbg !5281

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5282, !tbaa !948
  br label %19, !dbg !5283

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #45, !dbg !5284
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5269, metadata !DIExpression()), !dbg !5285
  %11 = icmp ult i64 %10, %2, !dbg !5286
  br i1 %11, label %12, label %14, !dbg !5288

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5289
  call void @llvm.dbg.value(metadata ptr %1, metadata !5291, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata ptr %4, metadata !5294, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata i64 %13, metadata !5295, metadata !DIExpression()), !dbg !5296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #44, !dbg !5298
  br label %19, !dbg !5299

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5300
  br i1 %15, label %19, label %16, !dbg !5303

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5304
  call void @llvm.dbg.value(metadata ptr %1, metadata !5291, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata ptr %4, metadata !5294, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata i64 %17, metadata !5295, metadata !DIExpression()), !dbg !5306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #44, !dbg !5308
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5309
  store i8 0, ptr %18, align 1, !dbg !5310, !tbaa !948
  br label %19, !dbg !5311

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5312
  ret i32 %20, !dbg !5313
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
attributes #14 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nofree nounwind willreturn memory(argmem: read) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #33 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #41 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #43 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #44 = { nounwind }
attributes #45 = { nounwind willreturn memory(read) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind willreturn memory(none) }
attributes #48 = { noreturn }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { cold }
attributes #51 = { nounwind allocsize(1) }
attributes #52 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !424, !428, !443, !458, !735, !769, !774, !776, !779, !781, !783, !514, !527, !575, !785, !727, !791, !826, !828, !837, !839, !751, !841, !843, !845, !847}
!llvm.ident = !{!849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849, !849}
!llvm.module.flags = !{!850, !851, !852, !853, !854, !855, !856, !857}

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
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -D BASE_TYPE=64 -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/base64-basenc.o -MD -MP -MF src/.deps/base64-basenc.Tpo -c src/basenc.c -o src/.base64-basenc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !129, globals: !139, splitDebugInlining: false, nameTableKind: None)
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
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 18, baseType: !135)
!134 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
!425 = !{!419, !422}
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "base64_to_int", scope: !428, file: !429, line: 243, type: !437, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-base64.o -MD -MP -MF lib/.deps/libcoreutils_a-base64.Tpo -c lib/base64.c -o lib/.libcoreutils_a-base64.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !431, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/base64.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de7b87ba8809e6c9b8f3253a3b932105")
!430 = !{!131, !130}
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
!443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !444, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !445, splitDebugInlining: false, nameTableKind: None)
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
!457 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !458, file: !459, line: 66, type: !509, isLocal: false, isDefinition: true)
!458 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !460, globals: !461, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!460 = !{!131, !138}
!461 = !{!462, !464, !488, !490, !492, !494, !456, !496, !498, !500, !502, !507}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 272, type: !69, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "old_file_name", scope: !466, file: !459, line: 304, type: !136, isLocal: true, isDefinition: true)
!466 = distinct !DISubprogram(name: "verror_at_line", scope: !459, file: !459, line: 298, type: !467, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !481)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !87, !87, !136, !78, !136, !469}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !470, line: 52, baseType: !471)
!470 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !472, line: 12, baseType: !473)
!472 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !459, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !475)
!475 = !{!476, !477, !478, !479, !480}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !474, file: !459, baseType: !131, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !474, file: !459, baseType: !131, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !474, file: !459, baseType: !131, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !474, file: !459, baseType: !87, size: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !474, file: !459, baseType: !87, size: 32, offset: 224)
!481 = !{!482, !483, !484, !485, !486, !487}
!482 = !DILocalVariable(name: "status", arg: 1, scope: !466, file: !459, line: 298, type: !87)
!483 = !DILocalVariable(name: "errnum", arg: 2, scope: !466, file: !459, line: 298, type: !87)
!484 = !DILocalVariable(name: "file_name", arg: 3, scope: !466, file: !459, line: 298, type: !136)
!485 = !DILocalVariable(name: "line_number", arg: 4, scope: !466, file: !459, line: 298, type: !78)
!486 = !DILocalVariable(name: "message", arg: 5, scope: !466, file: !459, line: 298, type: !136)
!487 = !DILocalVariable(name: "args", arg: 6, scope: !466, file: !459, line: 298, type: !469)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "old_line_number", scope: !466, file: !459, line: 305, type: !78, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !459, line: 338, type: !273, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !299, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !164, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "error_message_count", scope: !458, file: !459, line: 69, type: !78, isLocal: false, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !458, file: !459, line: 295, type: !87, isLocal: false, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !19, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 21)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !459, line: 214, type: !69, isLocal: true, isDefinition: true)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "program_name", scope: !514, file: !515, line: 31, type: !136, isLocal: false, isDefinition: true)
!514 = distinct !DICompileUnit(language: DW_LANG_C11, file: !515, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !516, splitDebugInlining: false, nameTableKind: None)
!515 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!516 = !{!512, !517, !519}
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !515, line: 46, type: !299, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !515, line: 49, type: !273, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "utf07FF", scope: !523, file: !524, line: 46, type: !551, isLocal: true, isDefinition: true)
!523 = distinct !DISubprogram(name: "proper_name_lite", scope: !524, file: !524, line: 38, type: !525, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !529)
!524 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!525 = !DISubroutineType(types: !526)
!526 = !{!136, !136, !136}
!527 = distinct !DICompileUnit(language: DW_LANG_C11, file: !524, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !528, splitDebugInlining: false, nameTableKind: None)
!528 = !{!521}
!529 = !{!530, !531, !532, !533, !538}
!530 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !523, file: !524, line: 38, type: !136)
!531 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !523, file: !524, line: 38, type: !136)
!532 = !DILocalVariable(name: "translation", scope: !523, file: !524, line: 40, type: !136)
!533 = !DILocalVariable(name: "w", scope: !523, file: !524, line: 47, type: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !535, line: 37, baseType: !536)
!535 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!538 = !DILocalVariable(name: "mbs", scope: !523, file: !524, line: 48, type: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !540, line: 6, baseType: !541)
!540 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !542, line: 21, baseType: !543)
!542 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 13, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !543, file: !542, line: 15, baseType: !87, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !543, file: !542, line: 20, baseType: !547, size: 32, offset: 32)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !542, line: 16, size: 32, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !547, file: !542, line: 18, baseType: !78, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !547, file: !542, line: 19, baseType: !273, size: 32)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !554, line: 78, type: !299, isLocal: true, isDefinition: true)
!554 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !554, line: 79, type: !278, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !554, line: 80, type: !394, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !554, line: 81, type: !394, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !554, line: 82, type: !258, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !554, line: 83, type: !164, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !554, line: 84, type: !299, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !554, line: 85, type: !19, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !554, line: 86, type: !19, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !554, line: 87, type: !299, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !575, file: !554, line: 76, type: !647, isLocal: false, isDefinition: true)
!575 = distinct !DICompileUnit(language: DW_LANG_C11, file: !554, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !576, retainedTypes: !584, globals: !585, splitDebugInlining: false, nameTableKind: None)
!576 = !{!577, !579, !114}
!577 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !578, line: 42, baseType: !78, size: 32, elements: !93)
!578 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !578, line: 254, baseType: !78, size: 32, elements: !580)
!580 = !{!581, !582, !583}
!581 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!582 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!583 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!584 = !{!131, !87, !132, !133}
!585 = !{!552, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !586, !590, !600, !602, !605, !607, !609, !611, !613, !636, !643, !645}
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !575, file: !554, line: 92, type: !588, isLocal: false, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 320, elements: !60)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !575, file: !554, line: 1040, type: !592, isLocal: false, isDefinition: true)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !554, line: 56, size: 448, elements: !593)
!593 = !{!594, !595, !596, !598, !599}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !592, file: !554, line: 59, baseType: !577, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !554, line: 62, baseType: !87, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !592, file: !554, line: 66, baseType: !597, size: 256, offset: 64)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !592, file: !554, line: 69, baseType: !136, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !592, file: !554, line: 72, baseType: !136, size: 64, offset: 384)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !575, file: !554, line: 107, type: !592, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "slot0", scope: !575, file: !554, line: 831, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !439)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !554, line: 321, type: !164, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !554, line: 357, type: !164, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !554, line: 358, type: !164, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !554, line: 199, type: !19, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "quote", scope: !615, file: !554, line: 228, type: !634, isLocal: true, isDefinition: true)
!615 = distinct !DISubprogram(name: "gettext_quote", scope: !554, file: !554, line: 197, type: !616, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!136, !136, !577}
!618 = !{!619, !620, !621, !622, !623}
!619 = !DILocalVariable(name: "msgid", arg: 1, scope: !615, file: !554, line: 197, type: !136)
!620 = !DILocalVariable(name: "s", arg: 2, scope: !615, file: !554, line: 197, type: !577)
!621 = !DILocalVariable(name: "translation", scope: !615, file: !554, line: 199, type: !136)
!622 = !DILocalVariable(name: "w", scope: !615, file: !554, line: 229, type: !534)
!623 = !DILocalVariable(name: "mbs", scope: !615, file: !554, line: 230, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !540, line: 6, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !542, line: 21, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 13, size: 64, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !626, file: !542, line: 15, baseType: !87, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !626, file: !542, line: 20, baseType: !630, size: 32, offset: 32)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !542, line: 16, size: 32, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !630, file: !542, line: 18, baseType: !78, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !630, file: !542, line: 19, baseType: !273, size: 32)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !635)
!635 = !{!166, !275}
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "slotvec", scope: !575, file: !554, line: 834, type: !638, isLocal: true, isDefinition: true)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !554, line: 823, size: 128, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !639, file: !554, line: 825, baseType: !133, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !639, file: !554, line: 826, baseType: !130, size: 64, offset: 64)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "nslots", scope: !575, file: !554, line: 832, type: !87, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "slotvec0", scope: !575, file: !554, line: 833, type: !639, isLocal: true, isDefinition: true)
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
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !729, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!729 = !{!725}
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 47)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "exit_failure", scope: !735, file: !736, line: 24, type: !738, isLocal: false, isDefinition: true)
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
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
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !752, globals: !753, splitDebugInlining: false, nameTableKind: None)
!752 = !{!131, !133, !138}
!753 = !{!746, !749}
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !540, line: 6, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !542, line: 21, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 13, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !542, line: 15, baseType: !87, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !756, file: !542, line: 20, baseType: !760, size: 32, offset: 32)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !542, line: 16, size: 32, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !760, file: !542, line: 18, baseType: !78, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !760, file: !542, line: 19, baseType: !273, size: 32)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !766, line: 35, type: !164, isLocal: true, isDefinition: true)
!766 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !766, line: 35, type: !278, isLocal: true, isDefinition: true)
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !771, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!771 = !{!772}
!772 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !773, line: 44, baseType: !78, size: 32, elements: !107)
!773 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!778 = !{!131}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !786, retainedTypes: !778, globals: !790, splitDebugInlining: false, nameTableKind: None)
!786 = !{!787}
!787 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !651, line: 40, baseType: !78, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!790 = !{!649, !652, !654, !656, !658, !660, !665, !670, !672, !674, !679, !681, !686, !688, !693, !698, !703, !708, !710, !712, !714, !716, !718, !720}
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !793, retainedTypes: !825, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!793 = !{!794, !806}
!794 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !795, file: !792, line: 188, baseType: !78, size: 32, elements: !804)
!795 = distinct !DISubprogram(name: "x2nrealloc", scope: !792, file: !792, line: 176, type: !796, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !799)
!796 = !DISubroutineType(types: !797)
!797 = !{!131, !131, !798, !133}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!799 = !{!800, !801, !802, !803}
!800 = !DILocalVariable(name: "p", arg: 1, scope: !795, file: !792, line: 176, type: !131)
!801 = !DILocalVariable(name: "pn", arg: 2, scope: !795, file: !792, line: 176, type: !798)
!802 = !DILocalVariable(name: "s", arg: 3, scope: !795, file: !792, line: 176, type: !133)
!803 = !DILocalVariable(name: "n", scope: !795, file: !792, line: 178, type: !133)
!804 = !{!805}
!805 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!806 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !807, file: !792, line: 228, baseType: !78, size: 32, elements: !804)
!807 = distinct !DISubprogram(name: "xpalloc", scope: !792, file: !792, line: 223, type: !808, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !815)
!808 = !DISubroutineType(types: !809)
!809 = !{!131, !131, !810, !811, !813, !811}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !812, line: 130, baseType: !813)
!812 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !814, line: 18, baseType: !237)
!814 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824}
!816 = !DILocalVariable(name: "pa", arg: 1, scope: !807, file: !792, line: 223, type: !131)
!817 = !DILocalVariable(name: "pn", arg: 2, scope: !807, file: !792, line: 223, type: !810)
!818 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !807, file: !792, line: 223, type: !811)
!819 = !DILocalVariable(name: "n_max", arg: 4, scope: !807, file: !792, line: 223, type: !813)
!820 = !DILocalVariable(name: "s", arg: 5, scope: !807, file: !792, line: 223, type: !811)
!821 = !DILocalVariable(name: "n0", scope: !807, file: !792, line: 230, type: !811)
!822 = !DILocalVariable(name: "n", scope: !807, file: !792, line: 237, type: !811)
!823 = !DILocalVariable(name: "nbytes", scope: !807, file: !792, line: 248, type: !811)
!824 = !DILocalVariable(name: "adjusted_nbytes", scope: !807, file: !792, line: 252, type: !811)
!825 = !{!130, !131}
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !827, splitDebugInlining: false, nameTableKind: None)
!827 = !{!739, !742, !744}
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoimax.Tpo -c lib/xstrtoimax.c -o lib/.libcoreutils_a-xstrtoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !830, retainedTypes: !833, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!830 = !{!831}
!831 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !832, line: 30, baseType: !78, size: 32, elements: !79)
!832 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !835, line: 101, baseType: !836)
!835 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!843 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !844, splitDebugInlining: false, nameTableKind: None)
!844 = !{!764, !767}
!845 = distinct !DICompileUnit(language: DW_LANG_C11, file: !846, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!846 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!849 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!850 = !{i32 7, !"Dwarf Version", i32 5}
!851 = !{i32 2, !"Debug Info Version", i32 3}
!852 = !{i32 1, !"wchar_size", i32 4}
!853 = !{i32 8, !"PIC Level", i32 2}
!854 = !{i32 7, !"PIE Level", i32 2}
!855 = !{i32 7, !"uwtable", i32 2}
!856 = !{i32 7, !"frame-pointer", i32 1}
!857 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!858 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !859, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !87}
!861 = !{!862}
!862 = !DILocalVariable(name: "status", arg: 1, scope: !858, file: !2, line: 97, type: !87)
!863 = !DILocation(line: 0, scope: !858)
!864 = !DILocation(line: 99, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !858, file: !2, line: 99, column: 7)
!866 = !DILocation(line: 99, column: 7, scope: !858)
!867 = !DILocation(line: 100, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !2, line: 100, column: 5)
!869 = !{!870, !870, i64 0}
!870 = !{!"any pointer", !871, i64 0}
!871 = !{!"omnipotent char", !872, i64 0}
!872 = !{!"Simple C/C++ TBAA"}
!873 = !DILocation(line: 103, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !2, line: 102, column: 5)
!875 = !DILocation(line: 112, column: 7, scope: !874)
!876 = !DILocation(line: 729, column: 3, scope: !877, inlinedAt: !878)
!877 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !510, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!878 = distinct !DILocation(line: 117, column: 7, scope: !874)
!879 = !DILocation(line: 736, column: 3, scope: !880, inlinedAt: !881)
!880 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !510, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!881 = distinct !DILocation(line: 118, column: 7, scope: !874)
!882 = !DILocation(line: 153, column: 7, scope: !874)
!883 = !DILocation(line: 157, column: 7, scope: !874)
!884 = !DILocation(line: 161, column: 7, scope: !874)
!885 = !DILocation(line: 174, column: 7, scope: !874)
!886 = !DILocation(line: 175, column: 7, scope: !874)
!887 = !DILocation(line: 184, column: 7, scope: !874)
!888 = !DILocalVariable(name: "program", arg: 1, scope: !889, file: !86, line: 836, type: !136)
!889 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 836, type: !890, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !136}
!892 = !{!888, !893, !900, !901, !903, !904}
!893 = !DILocalVariable(name: "infomap", scope: !889, file: !86, line: 838, type: !894)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 896, elements: !20)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !889, file: !86, line: 838, size: 128, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !896, file: !86, line: 838, baseType: !136, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !896, file: !86, line: 838, baseType: !136, size: 64, offset: 64)
!900 = !DILocalVariable(name: "node", scope: !889, file: !86, line: 848, type: !136)
!901 = !DILocalVariable(name: "map_prog", scope: !889, file: !86, line: 849, type: !902)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!903 = !DILocalVariable(name: "lc_messages", scope: !889, file: !86, line: 861, type: !136)
!904 = !DILocalVariable(name: "url_program", scope: !889, file: !86, line: 874, type: !136)
!905 = !DILocation(line: 0, scope: !889, inlinedAt: !906)
!906 = distinct !DILocation(line: 192, column: 7, scope: !874)
!907 = !{}
!908 = !DILocation(line: 857, column: 3, scope: !889, inlinedAt: !906)
!909 = !DILocation(line: 861, column: 29, scope: !889, inlinedAt: !906)
!910 = !DILocation(line: 862, column: 7, scope: !911, inlinedAt: !906)
!911 = distinct !DILexicalBlock(scope: !889, file: !86, line: 862, column: 7)
!912 = !DILocation(line: 862, column: 19, scope: !911, inlinedAt: !906)
!913 = !DILocation(line: 862, column: 22, scope: !911, inlinedAt: !906)
!914 = !DILocation(line: 862, column: 7, scope: !889, inlinedAt: !906)
!915 = !DILocation(line: 868, column: 7, scope: !916, inlinedAt: !906)
!916 = distinct !DILexicalBlock(scope: !911, file: !86, line: 863, column: 5)
!917 = !DILocation(line: 870, column: 5, scope: !916, inlinedAt: !906)
!918 = !DILocation(line: 875, column: 3, scope: !889, inlinedAt: !906)
!919 = !DILocation(line: 877, column: 3, scope: !889, inlinedAt: !906)
!920 = !DILocation(line: 195, column: 3, scope: !858)
!921 = !DISubprogram(name: "dcgettext", scope: !922, file: !922, line: 51, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!923 = !DISubroutineType(types: !924)
!924 = !{!130, !136, !136, !87}
!925 = !DISubprogram(name: "__fprintf_chk", scope: !926, file: !926, line: 93, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!927 = !DISubroutineType(types: !928)
!928 = !{!87, !929, !87, !930, null}
!929 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!930 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!931 = !DISubprogram(name: "__printf_chk", scope: !926, file: !926, line: 95, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{!87, !87, !930, null}
!934 = !DISubprogram(name: "fputs_unlocked", scope: !470, file: !470, line: 691, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DISubroutineType(types: !936)
!936 = !{!87, !930, !929}
!937 = !DILocation(line: 0, scope: !186)
!938 = !DILocation(line: 581, column: 7, scope: !194)
!939 = !{!940, !940, i64 0}
!940 = !{!"int", !871, i64 0}
!941 = !DILocation(line: 581, column: 19, scope: !194)
!942 = !DILocation(line: 581, column: 7, scope: !186)
!943 = !DILocation(line: 585, column: 26, scope: !193)
!944 = !DILocation(line: 0, scope: !193)
!945 = !DILocation(line: 586, column: 23, scope: !193)
!946 = !DILocation(line: 586, column: 28, scope: !193)
!947 = !DILocation(line: 586, column: 32, scope: !193)
!948 = !{!871, !871, i64 0}
!949 = !DILocation(line: 586, column: 38, scope: !193)
!950 = !DILocalVariable(name: "__s1", arg: 1, scope: !951, file: !952, line: 1359, type: !136)
!951 = distinct !DISubprogram(name: "streq", scope: !952, file: !952, line: 1359, type: !953, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !955)
!952 = !DIFile(filename: "./lib/string.h", directory: "/src")
!953 = !DISubroutineType(types: !954)
!954 = !{!196, !136, !136}
!955 = !{!950, !956}
!956 = !DILocalVariable(name: "__s2", arg: 2, scope: !951, file: !952, line: 1359, type: !136)
!957 = !DILocation(line: 0, scope: !951, inlinedAt: !958)
!958 = distinct !DILocation(line: 586, column: 41, scope: !193)
!959 = !DILocation(line: 1361, column: 11, scope: !951, inlinedAt: !958)
!960 = !DILocation(line: 1361, column: 10, scope: !951, inlinedAt: !958)
!961 = !DILocation(line: 586, column: 19, scope: !193)
!962 = !DILocation(line: 587, column: 5, scope: !193)
!963 = !DILocation(line: 588, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !186, file: !86, line: 588, column: 7)
!965 = !DILocation(line: 588, column: 7, scope: !186)
!966 = !DILocation(line: 590, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !86, line: 589, column: 5)
!968 = !DILocation(line: 591, column: 7, scope: !967)
!969 = !DILocation(line: 595, column: 37, scope: !186)
!970 = !DILocation(line: 595, column: 35, scope: !186)
!971 = !DILocation(line: 596, column: 29, scope: !186)
!972 = !DILocation(line: 597, column: 8, scope: !202)
!973 = !DILocation(line: 597, column: 7, scope: !186)
!974 = !DILocation(line: 604, column: 24, scope: !201)
!975 = !DILocation(line: 604, column: 12, scope: !202)
!976 = !DILocation(line: 0, scope: !200)
!977 = !DILocation(line: 610, column: 16, scope: !200)
!978 = !DILocation(line: 610, column: 7, scope: !200)
!979 = !DILocation(line: 611, column: 21, scope: !200)
!980 = !{!981, !981, i64 0}
!981 = !{!"short", !871, i64 0}
!982 = !DILocation(line: 611, column: 19, scope: !200)
!983 = !DILocation(line: 611, column: 16, scope: !200)
!984 = !DILocation(line: 610, column: 30, scope: !200)
!985 = distinct !{!985, !978, !979, !986}
!986 = !{!"llvm.loop.mustprogress"}
!987 = !DILocation(line: 612, column: 18, scope: !988)
!988 = distinct !DILexicalBlock(scope: !200, file: !86, line: 612, column: 11)
!989 = !DILocation(line: 612, column: 11, scope: !200)
!990 = !DILocation(line: 620, column: 23, scope: !186)
!991 = !DILocation(line: 625, column: 39, scope: !186)
!992 = !DILocation(line: 626, column: 3, scope: !186)
!993 = !DILocation(line: 626, column: 10, scope: !186)
!994 = !DILocation(line: 626, column: 21, scope: !186)
!995 = !DILocation(line: 628, column: 44, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !86, line: 628, column: 11)
!997 = distinct !DILexicalBlock(scope: !186, file: !86, line: 627, column: 5)
!998 = !DILocation(line: 628, column: 32, scope: !996)
!999 = !DILocation(line: 628, column: 49, scope: !996)
!1000 = !DILocation(line: 628, column: 11, scope: !997)
!1001 = !DILocation(line: 630, column: 11, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !86, line: 630, column: 11)
!1003 = !DILocation(line: 630, column: 11, scope: !997)
!1004 = !DILocation(line: 632, column: 26, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !86, line: 632, column: 15)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !86, line: 631, column: 9)
!1007 = !DILocation(line: 632, column: 34, scope: !1005)
!1008 = !DILocation(line: 632, column: 37, scope: !1005)
!1009 = !DILocation(line: 632, column: 15, scope: !1006)
!1010 = !DILocation(line: 640, column: 16, scope: !997)
!1011 = distinct !{!1011, !992, !1012, !986}
!1012 = !DILocation(line: 641, column: 5, scope: !186)
!1013 = !DILocation(line: 644, column: 3, scope: !186)
!1014 = !DILocation(line: 0, scope: !951, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1016 = !DILocation(line: 0, scope: !951, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1018 = !DILocation(line: 0, scope: !951, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1020 = !DILocation(line: 0, scope: !951, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1022 = !DILocation(line: 0, scope: !951, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1024 = !DILocation(line: 0, scope: !951, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1026 = !DILocation(line: 0, scope: !951, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1028 = !DILocation(line: 0, scope: !951, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1030 = !DILocation(line: 0, scope: !951, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1032 = !DILocation(line: 0, scope: !951, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1034 = !DILocation(line: 663, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1036 = !DILocation(line: 664, column: 7, scope: !1035)
!1037 = !DILocation(line: 664, column: 10, scope: !1035)
!1038 = !DILocation(line: 663, column: 7, scope: !186)
!1039 = !DILocation(line: 669, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !86, line: 665, column: 5)
!1041 = !DILocation(line: 671, column: 5, scope: !1040)
!1042 = !DILocation(line: 676, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1035, file: !86, line: 673, column: 5)
!1044 = !DILocation(line: 679, column: 3, scope: !186)
!1045 = !DILocation(line: 683, column: 3, scope: !186)
!1046 = !DILocation(line: 686, column: 3, scope: !186)
!1047 = !DILocation(line: 688, column: 3, scope: !186)
!1048 = !DILocation(line: 691, column: 3, scope: !186)
!1049 = !DILocation(line: 695, column: 3, scope: !186)
!1050 = !DILocation(line: 696, column: 1, scope: !186)
!1051 = !DISubprogram(name: "setlocale", scope: !1052, file: !1052, line: 122, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!130, !87, !136}
!1055 = !DISubprogram(name: "strncmp", scope: !1056, file: !1056, line: 159, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!87, !136, !136, !133}
!1059 = !DISubprogram(name: "exit", scope: !1060, file: !1060, line: 624, type: !859, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1060 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1061 = !DISubprogram(name: "getenv", scope: !1060, file: !1060, line: 641, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!130, !136}
!1064 = !DISubprogram(name: "strcmp", scope: !1056, file: !1056, line: 156, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!87, !136, !136}
!1067 = !DISubprogram(name: "strspn", scope: !1056, file: !1056, line: 297, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!135, !136, !136}
!1070 = !DISubprogram(name: "strchr", scope: !1056, file: !1056, line: 246, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!130, !136, !87}
!1073 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1079 = !DISubprogram(name: "strcspn", scope: !1056, file: !1056, line: 293, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DISubprogram(name: "fwrite_unlocked", scope: !470, file: !470, line: 704, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!133, !1083, !133, !133, !929}
!1083 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1086 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1087, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1090)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!87, !87, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1101, !1104}
!1091 = !DILocalVariable(name: "argc", arg: 1, scope: !1086, file: !2, line: 1630, type: !87)
!1092 = !DILocalVariable(name: "argv", arg: 2, scope: !1086, file: !2, line: 1630, type: !1089)
!1093 = !DILocalVariable(name: "opt", scope: !1086, file: !2, line: 1632, type: !87)
!1094 = !DILocalVariable(name: "input_fh", scope: !1086, file: !2, line: 1633, type: !209)
!1095 = !DILocalVariable(name: "infile", scope: !1086, file: !2, line: 1634, type: !136)
!1096 = !DILocalVariable(name: "decode", scope: !1086, file: !2, line: 1637, type: !196)
!1097 = !DILocalVariable(name: "ignore_garbage", scope: !1086, file: !2, line: 1639, type: !196)
!1098 = !DILocalVariable(name: "wrap_column", scope: !1086, file: !2, line: 1641, type: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1100, line: 130, baseType: !813)
!1100 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1101 = !DILocalVariable(name: "w", scope: !1102, file: !2, line: 1664, type: !834)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 1663, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1657, column: 7)
!1104 = !DILocalVariable(name: "s_err", scope: !1102, file: !2, line: 1665, type: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1106 = distinct !DIAssignID()
!1107 = !DILocation(line: 0, scope: !1102)
!1108 = !DILocation(line: 0, scope: !1086)
!1109 = !DILocation(line: 1648, column: 21, scope: !1086)
!1110 = !DILocation(line: 1648, column: 3, scope: !1086)
!1111 = !DILocation(line: 1649, column: 3, scope: !1086)
!1112 = !DILocation(line: 1650, column: 3, scope: !1086)
!1113 = !DILocation(line: 1651, column: 3, scope: !1086)
!1114 = !DILocation(line: 1653, column: 3, scope: !1086)
!1115 = !DILocation(line: 1655, column: 3, scope: !1086)
!1116 = !DILocation(line: 1641, column: 9, scope: !1086)
!1117 = distinct !{!1117, !1115, !1118, !986}
!1118 = !DILocation(line: 1698, column: 7, scope: !1086)
!1119 = !DILocation(line: 1655, column: 17, scope: !1086)
!1120 = !DILocation(line: 1664, column: 11, scope: !1102)
!1121 = !DILocation(line: 1665, column: 44, scope: !1102)
!1122 = !DILocation(line: 1665, column: 32, scope: !1102)
!1123 = !DILocation(line: 1666, column: 32, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 1666, column: 15)
!1125 = !DILocation(line: 1666, column: 40, scope: !1124)
!1126 = !DILocation(line: 1667, column: 13, scope: !1124)
!1127 = !DILocation(line: 1669, column: 31, scope: !1102)
!1128 = !DILocation(line: 1669, column: 51, scope: !1102)
!1129 = !DILocation(line: 1670, column: 9, scope: !1103)
!1130 = !DILocation(line: 1671, column: 9, scope: !1103)
!1131 = !DILocation(line: 1675, column: 9, scope: !1103)
!1132 = !DILocation(line: 1691, column: 7, scope: !1103)
!1133 = !DILocation(line: 1693, column: 7, scope: !1103)
!1134 = !DILocation(line: 1696, column: 9, scope: !1103)
!1135 = !DILocation(line: 1805, column: 14, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1805, column: 7)
!1137 = !DILocation(line: 1805, column: 12, scope: !1136)
!1138 = !DILocation(line: 1805, column: 21, scope: !1136)
!1139 = !DILocation(line: 1805, column: 7, scope: !1086)
!1140 = !DILocation(line: 1807, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 1806, column: 5)
!1142 = !DILocation(line: 1808, column: 7, scope: !1141)
!1143 = !DILocation(line: 1811, column: 14, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1811, column: 7)
!1145 = !DILocation(line: 1811, column: 7, scope: !1086)
!1146 = !DILocation(line: 1812, column: 14, scope: !1144)
!1147 = !DILocation(line: 1812, column: 5, scope: !1144)
!1148 = !DILocation(line: 0, scope: !1144)
!1149 = !DILocation(line: 0, scope: !951, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 1816, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1816, column: 7)
!1152 = !DILocation(line: 1361, column: 11, scope: !951, inlinedAt: !1150)
!1153 = !DILocation(line: 1361, column: 10, scope: !951, inlinedAt: !1150)
!1154 = !DILocation(line: 1816, column: 7, scope: !1086)
!1155 = !DILocation(line: 1819, column: 18, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1817, column: 5)
!1157 = !DILocation(line: 1820, column: 5, scope: !1156)
!1158 = !DILocation(line: 1823, column: 18, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1822, column: 5)
!1160 = !DILocation(line: 1824, column: 20, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 1824, column: 11)
!1162 = !DILocation(line: 1824, column: 11, scope: !1159)
!1163 = !DILocation(line: 1825, column: 9, scope: !1161)
!1164 = !DILocation(line: 0, scope: !1151)
!1165 = !DILocation(line: 1828, column: 3, scope: !1086)
!1166 = !DILocation(line: 0, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1830, column: 7)
!1168 = !DILocation(line: 1830, column: 7, scope: !1086)
!1169 = !DILocation(line: 1831, column: 5, scope: !1167)
!1170 = !DILocation(line: 1833, column: 5, scope: !1167)
!1171 = !DISubprogram(name: "bindtextdomain", scope: !922, file: !922, line: 86, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!130, !136, !136}
!1174 = !DISubprogram(name: "textdomain", scope: !922, file: !922, line: 82, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubprogram(name: "atexit", scope: !1060, file: !1060, line: 602, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!87, !509}
!1178 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!87, !87, !1181, !136, !1183, !417}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1184 = !DISubprogram(name: "__errno_location", scope: !1185, file: !1185, line: 37, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!417}
!1188 = distinct !DISubprogram(name: "do_decode", scope: !2, file: !2, line: 1562, type: !1189, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !209, !136, !209, !196}
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1205, !1207, !1209, !1213, !1215, !1218, !1219}
!1192 = !DILocalVariable(name: "in", arg: 1, scope: !1188, file: !2, line: 1562, type: !209)
!1193 = !DILocalVariable(name: "infile", arg: 2, scope: !1188, file: !2, line: 1562, type: !136)
!1194 = !DILocalVariable(name: "out", arg: 3, scope: !1188, file: !2, line: 1562, type: !209)
!1195 = !DILocalVariable(name: "ignore_garbage", arg: 4, scope: !1188, file: !2, line: 1562, type: !196)
!1196 = !DILocalVariable(name: "inbuf", scope: !1188, file: !2, line: 1564, type: !130)
!1197 = !DILocalVariable(name: "outbuf", scope: !1188, file: !2, line: 1564, type: !130)
!1198 = !DILocalVariable(name: "sum", scope: !1188, file: !2, line: 1565, type: !1099)
!1199 = !DILocalVariable(name: "ctx", scope: !1188, file: !2, line: 1566, type: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1201, line: 47, size: 64, elements: !1202)
!1201 = !DIFile(filename: "./lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1200, file: !1201, line: 49, baseType: !87, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1200, file: !1201, line: 50, baseType: !273, size: 32, offset: 32)
!1205 = !DILocalVariable(name: "ok", scope: !1206, file: !2, line: 1578, type: !196)
!1206 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 1577, column: 5)
!1207 = !DILocalVariable(name: "n", scope: !1208, file: !2, line: 1583, type: !1099)
!1208 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 1582, column: 9)
!1209 = !DILocalVariable(name: "i", scope: !1210, file: !2, line: 1588, type: !1099)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 1588, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 1587, column: 13)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 1586, column: 15)
!1213 = !DILocalVariable(name: "n", scope: !1214, file: !2, line: 1607, type: !1099)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 1606, column: 9)
!1215 = !DILocalVariable(name: "__ptr", scope: !1216, file: !2, line: 1613, type: !136)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1613, column: 15)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1613, column: 15)
!1218 = !DILocalVariable(name: "__stream", scope: !1216, file: !2, line: 1613, type: !209)
!1219 = !DILocalVariable(name: "__cnt", scope: !1216, file: !2, line: 1613, type: !133)
!1220 = distinct !DIAssignID()
!1221 = distinct !DIAssignID()
!1222 = distinct !DIAssignID()
!1223 = !DILocation(line: 0, scope: !1188)
!1224 = distinct !DIAssignID()
!1225 = !DILocation(line: 0, scope: !1214)
!1226 = !DILocation(line: 1566, column: 3, scope: !1188)
!1227 = !DILocation(line: 1568, column: 11, scope: !1188)
!1228 = !DILocation(line: 1569, column: 12, scope: !1188)
!1229 = !DILocalVariable(name: "ctx", arg: 1, scope: !1230, file: !1201, line: 74, type: !1233)
!1230 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !1201, file: !1201, line: 74, type: !1231, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1234)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1234 = !{!1229}
!1235 = !DILocation(line: 0, scope: !1230, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 1574, column: 3, scope: !1188)
!1237 = !DILocation(line: 76, column: 10, scope: !1230, inlinedAt: !1236)
!1238 = !{!1239, !940, i64 0}
!1239 = !{!"base64_decode_context", !940, i64 0, !871, i64 4}
!1240 = distinct !DIAssignID()
!1241 = !DILocation(line: 1576, column: 3, scope: !1188)
!1242 = !DILocation(line: 0, scope: !1206)
!1243 = !DILocation(line: 1583, column: 21, scope: !1208)
!1244 = !DILocation(line: 0, scope: !1208)
!1245 = !DILocation(line: 0, scope: !1210)
!1246 = !DILocation(line: 1586, column: 15, scope: !1208)
!1247 = !DILocation(line: 1588, column: 15, scope: !1210)
!1248 = !DILocation(line: 1590, column: 32, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 1590, column: 23)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 1589, column: 17)
!1251 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 1588, column: 15)
!1252 = !DILocalVariable(name: "ch", arg: 1, scope: !1253, file: !1201, line: 56, type: !138)
!1253 = distinct !DISubprogram(name: "isubase64", scope: !1201, file: !1201, line: 56, type: !1254, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!196, !138}
!1256 = !{!1252}
!1257 = !DILocation(line: 0, scope: !1253, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 1590, column: 23, scope: !1249)
!1259 = !DILocation(line: 58, column: 10, scope: !1253, inlinedAt: !1258)
!1260 = !DILocation(line: 58, column: 44, scope: !1253, inlinedAt: !1258)
!1261 = !DILocation(line: 58, column: 41, scope: !1253, inlinedAt: !1258)
!1262 = !DILocalVariable(name: "len", arg: 1, scope: !1263, file: !2, line: 209, type: !87)
!1263 = distinct !DISubprogram(name: "base64_required_padding", scope: !2, file: !2, line: 209, type: !1264, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!87, !87}
!1266 = !{!1262, !1267}
!1267 = !DILocalVariable(name: "partial", scope: !1263, file: !2, line: 211, type: !87)
!1268 = !DILocation(line: 0, scope: !1263, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 1591, column: 27, scope: !1249)
!1270 = !DILocation(line: 1591, column: 23, scope: !1249)
!1271 = !DILocation(line: 1592, column: 22, scope: !1249)
!1272 = !DILocation(line: 1592, column: 21, scope: !1249)
!1273 = !DILocation(line: 1594, column: 63, scope: !1249)
!1274 = !DILocation(line: 1594, column: 68, scope: !1249)
!1275 = !DILocation(line: 1594, column: 72, scope: !1249)
!1276 = !DILocalVariable(name: "__dest", arg: 1, scope: !1277, file: !1278, line: 34, type: !131)
!1277 = distinct !DISubprogram(name: "memmove", scope: !1278, file: !1278, line: 34, type: !1279, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1281)
!1278 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!131, !131, !1084, !133}
!1281 = !{!1276, !1282, !1283}
!1282 = !DILocalVariable(name: "__src", arg: 2, scope: !1277, file: !1278, line: 34, type: !1084)
!1283 = !DILocalVariable(name: "__len", arg: 3, scope: !1277, file: !1278, line: 34, type: !133)
!1284 = !DILocation(line: 0, scope: !1277, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 1594, column: 21, scope: !1249)
!1286 = !DILocation(line: 36, column: 10, scope: !1277, inlinedAt: !1285)
!1287 = !DILocation(line: 1588, column: 35, scope: !1251)
!1288 = !DILocation(line: 1588, column: 39, scope: !1251)
!1289 = distinct !{!1289, !1247, !1290, !986}
!1290 = !DILocation(line: 1595, column: 17, scope: !1210)
!1291 = !DILocation(line: 137, column: 10, scope: !1292, inlinedAt: !1298)
!1292 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1293, file: !1293, line: 135, type: !1294, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1296)
!1293 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!87, !209}
!1296 = !{!1297}
!1297 = !DILocalVariable(name: "__stream", arg: 1, scope: !1292, file: !1293, line: 135, type: !209)
!1298 = distinct !DILocation(line: 1600, column: 15, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 1600, column: 15)
!1300 = !DILocation(line: 1583, column: 17, scope: !1208)
!1301 = !DILocation(line: 0, scope: !1292, inlinedAt: !1298)
!1302 = !{!1303, !940, i64 0}
!1303 = !{!"_IO_FILE", !940, i64 0, !870, i64 8, !870, i64 16, !870, i64 24, !870, i64 32, !870, i64 40, !870, i64 48, !870, i64 56, !870, i64 64, !870, i64 72, !870, i64 80, !870, i64 88, !870, i64 96, !870, i64 104, !940, i64 112, !940, i64 116, !1304, i64 120, !981, i64 128, !871, i64 130, !871, i64 131, !870, i64 136, !1304, i64 144, !870, i64 152, !870, i64 160, !870, i64 168, !870, i64 176, !1304, i64 184, !940, i64 192, !871, i64 196}
!1304 = !{!"long", !871, i64 0}
!1305 = !DILocation(line: 1600, column: 15, scope: !1299)
!1306 = !DILocation(line: 1600, column: 15, scope: !1208)
!1307 = !DILocation(line: 1601, column: 13, scope: !1299)
!1308 = !DILocation(line: 1598, column: 15, scope: !1208)
!1309 = !DILocation(line: 1603, column: 18, scope: !1206)
!1310 = !DILocalVariable(name: "__stream", arg: 1, scope: !1311, file: !1293, line: 128, type: !209)
!1311 = distinct !DISubprogram(name: "feof_unlocked", scope: !1293, file: !1293, line: 128, type: !1294, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1312)
!1312 = !{!1310}
!1313 = !DILocation(line: 0, scope: !1311, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 1603, column: 52, scope: !1206)
!1315 = !DILocation(line: 1603, column: 48, scope: !1206)
!1316 = distinct !{!1316, !1241, !1317, !986}
!1317 = !DILocation(line: 1624, column: 20, scope: !1188)
!1318 = !DILocation(line: 1605, column: 14, scope: !1206)
!1319 = !DILocation(line: 1605, column: 18, scope: !1206)
!1320 = !DILocation(line: 1607, column: 11, scope: !1214)
!1321 = !DILocation(line: 1607, column: 17, scope: !1214)
!1322 = !{!1304, !1304, i64 0}
!1323 = distinct !DIAssignID()
!1324 = !DILocation(line: 1609, column: 18, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1608, column: 15)
!1326 = !DILocation(line: 1613, column: 15, scope: !1217)
!1327 = !DILocation(line: 1609, column: 13, scope: !1325)
!1328 = !DILocation(line: 0, scope: !1311, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 1605, column: 21, scope: !1206)
!1330 = !DILocation(line: 130, column: 10, scope: !1311, inlinedAt: !1329)
!1331 = !DILocation(line: 1605, column: 7, scope: !1206)
!1332 = !DILocalVariable(name: "padbuf", scope: !1333, file: !2, line: 424, type: !299)
!1333 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !2, file: !2, line: 414, type: !1334, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1339)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!196, !1233, !1336, !1338}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1339 = !{!1340, !1341, !1342, !1332, !1343, !1344, !1345, !1346}
!1340 = !DILocalVariable(name: "ctx", arg: 1, scope: !1333, file: !2, line: 414, type: !1233)
!1341 = !DILocalVariable(name: "out", arg: 2, scope: !1333, file: !2, line: 415, type: !1336)
!1342 = !DILocalVariable(name: "outlen", arg: 3, scope: !1333, file: !2, line: 415, type: !1338)
!1343 = !DILocalVariable(name: "pending_len", scope: !1333, file: !2, line: 425, type: !1099)
!1344 = !DILocalVariable(name: "auto_padding", scope: !1333, file: !2, line: 426, type: !1099)
!1345 = !DILocalVariable(name: "n", scope: !1333, file: !2, line: 427, type: !1099)
!1346 = !DILocalVariable(name: "result", scope: !1333, file: !2, line: 428, type: !196)
!1347 = !DILocation(line: 0, scope: !1333, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 1611, column: 18, scope: !1325)
!1349 = !DILocalVariable(name: "ctx", arg: 1, scope: !1350, file: !2, line: 403, type: !1233)
!1350 = distinct !DISubprogram(name: "get_pending_length", scope: !2, file: !2, line: 403, type: !1351, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!87, !1233}
!1353 = !{!1349}
!1354 = !DILocation(line: 0, scope: !1350, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 417, column: 7, scope: !1356, inlinedAt: !1348)
!1356 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 417, column: 7)
!1357 = !DILocation(line: 405, column: 15, scope: !1350, inlinedAt: !1355)
!1358 = !DILocation(line: 417, column: 32, scope: !1356, inlinedAt: !1348)
!1359 = !DILocation(line: 417, column: 7, scope: !1333, inlinedAt: !1348)
!1360 = !DILocation(line: 424, column: 3, scope: !1333, inlinedAt: !1348)
!1361 = !DILocation(line: 424, column: 8, scope: !1333, inlinedAt: !1348)
!1362 = distinct !DIAssignID()
!1363 = !DILocation(line: 0, scope: !1350, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 425, column: 23, scope: !1333, inlinedAt: !1348)
!1365 = !DILocation(line: 0, scope: !1263, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 426, column: 24, scope: !1333, inlinedAt: !1348)
!1367 = !DILocation(line: 211, column: 21, scope: !1263, inlinedAt: !1366)
!1368 = !DILocation(line: 212, column: 10, scope: !1263, inlinedAt: !1366)
!1369 = !DILocation(line: 427, column: 3, scope: !1333, inlinedAt: !1348)
!1370 = !DILocation(line: 427, column: 9, scope: !1333, inlinedAt: !1348)
!1371 = distinct !DIAssignID()
!1372 = !DILocation(line: 430, column: 7, scope: !1373, inlinedAt: !1348)
!1373 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 430, column: 7)
!1374 = !DILocation(line: 430, column: 20, scope: !1373, inlinedAt: !1348)
!1375 = !DILocalVariable(name: "ctx", arg: 1, scope: !1376, file: !2, line: 397, type: !1233)
!1376 = distinct !DISubprogram(name: "has_padding", scope: !2, file: !2, line: 397, type: !1377, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!196, !1233}
!1379 = !{!1375}
!1380 = !DILocation(line: 0, scope: !1376, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 430, column: 25, scope: !1373, inlinedAt: !1348)
!1382 = !DILocation(line: 399, column: 36, scope: !1376, inlinedAt: !1381)
!1383 = !DILocation(line: 399, column: 20, scope: !1376, inlinedAt: !1381)
!1384 = !DILocation(line: 399, column: 41, scope: !1376, inlinedAt: !1381)
!1385 = !DILocation(line: 430, column: 7, scope: !1333, inlinedAt: !1348)
!1386 = !DILocation(line: 433, column: 16, scope: !1387, inlinedAt: !1348)
!1387 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 431, column: 5)
!1388 = !DILocation(line: 434, column: 5, scope: !1387, inlinedAt: !1348)
!1389 = !DILocation(line: 437, column: 16, scope: !1390, inlinedAt: !1348)
!1390 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 436, column: 5)
!1391 = !DILocation(line: 440, column: 13, scope: !1333, inlinedAt: !1348)
!1392 = !DILocation(line: 440, column: 11, scope: !1333, inlinedAt: !1348)
!1393 = distinct !DIAssignID()
!1394 = !DILocation(line: 442, column: 1, scope: !1333, inlinedAt: !1348)
!1395 = !DILocation(line: 419, column: 15, scope: !1396, inlinedAt: !1348)
!1396 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 418, column: 5)
!1397 = distinct !DIAssignID()
!1398 = !DILocation(line: 420, column: 7, scope: !1396, inlinedAt: !1348)
!1399 = !DILocation(line: 1613, column: 44, scope: !1217)
!1400 = !DILocation(line: 1613, column: 42, scope: !1217)
!1401 = !DILocation(line: 1613, column: 15, scope: !1214)
!1402 = !DILocation(line: 1616, column: 15, scope: !1214)
!1403 = !DILocation(line: 1622, column: 9, scope: !1206)
!1404 = !DILocation(line: 948, column: 21, scope: !1405, inlinedAt: !1408)
!1405 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !510, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1406)
!1406 = !{!1407}
!1407 = !DILocalVariable(name: "saved_errno", scope: !1405, file: !86, line: 948, type: !87)
!1408 = distinct !DILocation(line: 1614, column: 13, scope: !1217)
!1409 = !DILocation(line: 0, scope: !1405, inlinedAt: !1408)
!1410 = !DILocation(line: 949, column: 3, scope: !1405, inlinedAt: !1408)
!1411 = !DILocation(line: 950, column: 11, scope: !1405, inlinedAt: !1408)
!1412 = !DILocation(line: 950, column: 3, scope: !1405, inlinedAt: !1408)
!1413 = !DILocation(line: 951, column: 3, scope: !1405, inlinedAt: !1408)
!1414 = !DILocation(line: 952, column: 3, scope: !1405, inlinedAt: !1408)
!1415 = !DILocation(line: 1617, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1616, column: 15)
!1417 = !DILocation(line: 130, column: 10, scope: !1311, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 1624, column: 11, scope: !1188)
!1419 = !DILocation(line: 1624, column: 10, scope: !1188)
!1420 = !DILocation(line: 0, scope: !1311, inlinedAt: !1418)
!1421 = !DILocation(line: 1623, column: 5, scope: !1206)
!1422 = !DILocation(line: 1626, column: 3, scope: !1188)
!1423 = distinct !DISubprogram(name: "do_encode", scope: !2, file: !2, line: 1488, type: !1424, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !209, !136, !209, !1099}
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1427 = !DILocalVariable(name: "in", arg: 1, scope: !1423, file: !2, line: 1488, type: !209)
!1428 = !DILocalVariable(name: "infile", arg: 2, scope: !1423, file: !2, line: 1488, type: !136)
!1429 = !DILocalVariable(name: "out", arg: 3, scope: !1423, file: !2, line: 1488, type: !209)
!1430 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1423, file: !2, line: 1488, type: !1099)
!1431 = !DILocalVariable(name: "current_column", scope: !1423, file: !2, line: 1490, type: !1099)
!1432 = !DILocalVariable(name: "inbuf", scope: !1423, file: !2, line: 1491, type: !130)
!1433 = !DILocalVariable(name: "outbuf", scope: !1423, file: !2, line: 1491, type: !130)
!1434 = !DILocalVariable(name: "sum", scope: !1423, file: !2, line: 1492, type: !1099)
!1435 = !DILocalVariable(name: "n", scope: !1436, file: !2, line: 1507, type: !1099)
!1436 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 1506, column: 5)
!1437 = !DILocation(line: 0, scope: !1423)
!1438 = !DILocation(line: 1494, column: 11, scope: !1423)
!1439 = !DILocation(line: 1495, column: 12, scope: !1423)
!1440 = !DILocation(line: 1505, column: 3, scope: !1423)
!1441 = !DILocation(line: 1490, column: 9, scope: !1423)
!1442 = !DILocation(line: 1510, column: 7, scope: !1436)
!1443 = !DILocation(line: 0, scope: !1436)
!1444 = !DILocation(line: 1512, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1511, column: 9)
!1446 = !DILocation(line: 1513, column: 15, scope: !1445)
!1447 = !DILocation(line: 0, scope: !1311, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 1515, column: 15, scope: !1436)
!1449 = !DILocation(line: 130, column: 10, scope: !1311, inlinedAt: !1448)
!1450 = !DILocation(line: 1515, column: 15, scope: !1436)
!1451 = !DILocation(line: 1515, column: 25, scope: !1436)
!1452 = !DILocation(line: 0, scope: !1292, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 1515, column: 29, scope: !1436)
!1454 = !DILocation(line: 1515, column: 29, scope: !1436)
!1455 = !DILocation(line: 1515, column: 41, scope: !1436)
!1456 = distinct !{!1456, !1442, !1457, !986}
!1457 = !DILocation(line: 1515, column: 63, scope: !1436)
!1458 = !DILocation(line: 1517, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1517, column: 11)
!1460 = !DILocation(line: 1517, column: 11, scope: !1436)
!1461 = !DILocation(line: 1532, column: 48, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 1529, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 1518, column: 9)
!1464 = !DILocation(line: 1532, column: 15, scope: !1462)
!1465 = !DILocalVariable(name: "buffer", arg: 1, scope: !1466, file: !2, line: 1443, type: !136)
!1466 = distinct !DISubprogram(name: "wrap_write", scope: !2, file: !2, line: 1443, type: !1467, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !136, !1099, !1099, !1338, !209}
!1469 = !{!1465, !1470, !1471, !1472, !1473, !1474, !1479, !1480, !1481, !1483, !1486, !1491, !1492}
!1470 = !DILocalVariable(name: "len", arg: 2, scope: !1466, file: !2, line: 1443, type: !1099)
!1471 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1466, file: !2, line: 1444, type: !1099)
!1472 = !DILocalVariable(name: "current_column", arg: 4, scope: !1466, file: !2, line: 1444, type: !1338)
!1473 = !DILocalVariable(name: "out", arg: 5, scope: !1466, file: !2, line: 1444, type: !209)
!1474 = !DILocalVariable(name: "__ptr", scope: !1475, file: !2, line: 1449, type: !136)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 1449, column: 11)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 1449, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 1447, column: 5)
!1478 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 1446, column: 7)
!1479 = !DILocalVariable(name: "__stream", scope: !1475, file: !2, line: 1449, type: !209)
!1480 = !DILocalVariable(name: "__cnt", scope: !1475, file: !2, line: 1449, type: !133)
!1481 = !DILocalVariable(name: "written", scope: !1482, file: !2, line: 1453, type: !1099)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 1453, column: 5)
!1483 = !DILocalVariable(name: "to_write", scope: !1484, file: !2, line: 1455, type: !1099)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 1454, column: 7)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1453, column: 5)
!1486 = !DILocalVariable(name: "__ptr", scope: !1487, file: !2, line: 1465, type: !136)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 1465, column: 17)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 1465, column: 17)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1464, column: 11)
!1490 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 1457, column: 13)
!1491 = !DILocalVariable(name: "__stream", scope: !1487, file: !2, line: 1465, type: !209)
!1492 = !DILocalVariable(name: "__cnt", scope: !1487, file: !2, line: 1465, type: !133)
!1493 = !DILocation(line: 0, scope: !1466, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 1534, column: 15, scope: !1462)
!1495 = !DILocation(line: 1446, column: 7, scope: !1466, inlinedAt: !1494)
!1496 = !DILocation(line: 1453, column: 5, scope: !1482, inlinedAt: !1494)
!1497 = !DILocation(line: 1449, column: 11, scope: !1476, inlinedAt: !1494)
!1498 = !DILocation(line: 1449, column: 43, scope: !1476, inlinedAt: !1494)
!1499 = !DILocation(line: 1449, column: 11, scope: !1477, inlinedAt: !1494)
!1500 = !DILocation(line: 948, column: 21, scope: !1405, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 1450, column: 9, scope: !1476, inlinedAt: !1494)
!1502 = !DILocation(line: 0, scope: !1405, inlinedAt: !1501)
!1503 = !DILocation(line: 949, column: 3, scope: !1405, inlinedAt: !1501)
!1504 = !DILocation(line: 950, column: 11, scope: !1405, inlinedAt: !1501)
!1505 = !DILocation(line: 950, column: 3, scope: !1405, inlinedAt: !1501)
!1506 = !DILocation(line: 951, column: 3, scope: !1405, inlinedAt: !1501)
!1507 = !DILocation(line: 952, column: 3, scope: !1405, inlinedAt: !1501)
!1508 = !DILocation(line: 0, scope: !1482, inlinedAt: !1494)
!1509 = !DILocation(line: 1455, column: 26, scope: !1484, inlinedAt: !1494)
!1510 = !DILocation(line: 0, scope: !1484, inlinedAt: !1494)
!1511 = !DILocation(line: 1457, column: 22, scope: !1490, inlinedAt: !1494)
!1512 = !DILocation(line: 1457, column: 13, scope: !1484, inlinedAt: !1494)
!1513 = !DILocalVariable(name: "__c", arg: 1, scope: !1514, file: !1293, line: 91, type: !87)
!1514 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1293, file: !1293, line: 91, type: !1515, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!87, !87, !209}
!1517 = !{!1513, !1518}
!1518 = !DILocalVariable(name: "__stream", arg: 2, scope: !1514, file: !1293, line: 91, type: !209)
!1519 = !DILocation(line: 0, scope: !1514, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 1459, column: 17, scope: !1521, inlinedAt: !1494)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 1459, column: 17)
!1522 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1458, column: 11)
!1523 = !DILocation(line: 93, column: 10, scope: !1514, inlinedAt: !1520)
!1524 = !{!1303, !870, i64 40}
!1525 = !{!1303, !870, i64 48}
!1526 = !{!"branch_weights", i32 2000, i32 1}
!1527 = !DILocation(line: 1459, column: 17, scope: !1522, inlinedAt: !1494)
!1528 = !DILocation(line: 1459, column: 35, scope: !1521, inlinedAt: !1494)
!1529 = !DILocation(line: 948, column: 21, scope: !1405, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 1460, column: 15, scope: !1521, inlinedAt: !1494)
!1531 = !DILocation(line: 0, scope: !1405, inlinedAt: !1530)
!1532 = !DILocation(line: 949, column: 3, scope: !1405, inlinedAt: !1530)
!1533 = !DILocation(line: 950, column: 11, scope: !1405, inlinedAt: !1530)
!1534 = !DILocation(line: 950, column: 3, scope: !1405, inlinedAt: !1530)
!1535 = !DILocation(line: 951, column: 3, scope: !1405, inlinedAt: !1530)
!1536 = !DILocation(line: 952, column: 3, scope: !1405, inlinedAt: !1530)
!1537 = !DILocation(line: 1465, column: 17, scope: !1488, inlinedAt: !1494)
!1538 = !DILocation(line: 1465, column: 64, scope: !1488, inlinedAt: !1494)
!1539 = !DILocation(line: 1465, column: 17, scope: !1489, inlinedAt: !1494)
!1540 = !DILocation(line: 948, column: 21, scope: !1405, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 1466, column: 15, scope: !1488, inlinedAt: !1494)
!1542 = !DILocation(line: 0, scope: !1405, inlinedAt: !1541)
!1543 = !DILocation(line: 949, column: 3, scope: !1405, inlinedAt: !1541)
!1544 = !DILocation(line: 950, column: 11, scope: !1405, inlinedAt: !1541)
!1545 = !DILocation(line: 950, column: 3, scope: !1405, inlinedAt: !1541)
!1546 = !DILocation(line: 951, column: 3, scope: !1405, inlinedAt: !1541)
!1547 = !DILocation(line: 952, column: 3, scope: !1405, inlinedAt: !1541)
!1548 = !DILocation(line: 1467, column: 29, scope: !1489, inlinedAt: !1494)
!1549 = !DILocation(line: 1468, column: 21, scope: !1489, inlinedAt: !1494)
!1550 = !DILocation(line: 0, scope: !1490, inlinedAt: !1494)
!1551 = !DILocation(line: 1453, column: 37, scope: !1485, inlinedAt: !1494)
!1552 = distinct !{!1552, !1496, !1553, !986}
!1553 = !DILocation(line: 1470, column: 7, scope: !1482, inlinedAt: !1494)
!1554 = !DILocation(line: 130, column: 10, scope: !1311, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 1539, column: 11, scope: !1423)
!1556 = !DILocation(line: 0, scope: !1311, inlinedAt: !1555)
!1557 = !DILocation(line: 1539, column: 11, scope: !1423)
!1558 = !DILocation(line: 1539, column: 21, scope: !1423)
!1559 = !DILocation(line: 0, scope: !1292, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 1539, column: 25, scope: !1423)
!1561 = !DILocation(line: 1539, column: 25, scope: !1423)
!1562 = !DILocation(line: 1539, column: 37, scope: !1423)
!1563 = distinct !{!1563, !1440, !1564, !986}
!1564 = !DILocation(line: 1539, column: 60, scope: !1423)
!1565 = !DILocation(line: 1552, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 1552, column: 7)
!1567 = !DILocation(line: 1552, column: 19, scope: !1566)
!1568 = !DILocation(line: 0, scope: !1514, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 1552, column: 44, scope: !1566)
!1570 = !DILocation(line: 93, column: 10, scope: !1514, inlinedAt: !1569)
!1571 = !DILocation(line: 1552, column: 7, scope: !1423)
!1572 = !DILocation(line: 1552, column: 62, scope: !1566)
!1573 = !DILocation(line: 948, column: 21, scope: !1405, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 1553, column: 5, scope: !1566)
!1575 = !DILocation(line: 0, scope: !1405, inlinedAt: !1574)
!1576 = !DILocation(line: 949, column: 3, scope: !1405, inlinedAt: !1574)
!1577 = !DILocation(line: 950, column: 11, scope: !1405, inlinedAt: !1574)
!1578 = !DILocation(line: 950, column: 3, scope: !1405, inlinedAt: !1574)
!1579 = !DILocation(line: 951, column: 3, scope: !1405, inlinedAt: !1574)
!1580 = !DILocation(line: 952, column: 3, scope: !1405, inlinedAt: !1574)
!1581 = !DILocation(line: 0, scope: !1292, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 1555, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 1555, column: 7)
!1584 = !DILocation(line: 137, column: 10, scope: !1292, inlinedAt: !1582)
!1585 = !DILocation(line: 1555, column: 7, scope: !1583)
!1586 = !DILocation(line: 1555, column: 7, scope: !1423)
!1587 = !DILocation(line: 1556, column: 5, scope: !1583)
!1588 = !DILocation(line: 1558, column: 3, scope: !1423)
!1589 = !DISubprogram(name: "fflush_unlocked", scope: !470, file: !470, line: 239, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubprogram(name: "clearerr_unlocked", scope: !470, file: !470, line: 794, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !209}
!1593 = !DISubprogram(name: "__overflow", scope: !470, file: !470, line: 886, type: !1594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!87, !209, !87}
!1596 = distinct !DISubprogram(name: "finish_and_exit", scope: !2, file: !2, line: 1474, type: !1597, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1599)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !209, !136}
!1599 = !{!1600, !1601}
!1600 = !DILocalVariable(name: "in", arg: 1, scope: !1596, file: !2, line: 1474, type: !209)
!1601 = !DILocalVariable(name: "infile", arg: 2, scope: !1596, file: !2, line: 1474, type: !136)
!1602 = !DILocation(line: 0, scope: !1596)
!1603 = !DILocation(line: 1476, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 1476, column: 7)
!1605 = !DILocation(line: 1476, column: 19, scope: !1604)
!1606 = !DILocation(line: 1476, column: 7, scope: !1596)
!1607 = !DILocation(line: 0, scope: !951, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 1478, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 1478, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 1477, column: 5)
!1611 = !DILocation(line: 1361, column: 11, scope: !951, inlinedAt: !1608)
!1612 = !DILocation(line: 1361, column: 10, scope: !951, inlinedAt: !1608)
!1613 = !DILocation(line: 0, scope: !1609)
!1614 = !DILocation(line: 1478, column: 11, scope: !1610)
!1615 = !DILocation(line: 1479, column: 9, scope: !1609)
!1616 = !DILocation(line: 1481, column: 9, scope: !1609)
!1617 = !DILocation(line: 1484, column: 3, scope: !1596)
!1618 = distinct !DISubprogram(name: "isubase64", scope: !1619, file: !1619, line: 56, type: !1254, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1620)
!1619 = !DIFile(filename: "lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "ch", arg: 1, scope: !1618, file: !1619, line: 56, type: !138)
!1622 = !DILocation(line: 0, scope: !1618)
!1623 = !DILocation(line: 58, column: 10, scope: !1618)
!1624 = !DILocation(line: 58, column: 44, scope: !1618)
!1625 = !DILocation(line: 58, column: 41, scope: !1618)
!1626 = !DILocation(line: 58, column: 3, scope: !1618)
!1627 = distinct !DISubprogram(name: "isbase64", scope: !1619, file: !1619, line: 62, type: !1628, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!196, !4}
!1630 = !{!1631}
!1631 = !DILocalVariable(name: "ch", arg: 1, scope: !1627, file: !1619, line: 62, type: !4)
!1632 = !DILocation(line: 0, scope: !1627)
!1633 = !DILocation(line: 0, scope: !1618, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 64, column: 10, scope: !1627)
!1635 = !DILocation(line: 58, column: 10, scope: !1618, inlinedAt: !1634)
!1636 = !DILocation(line: 58, column: 44, scope: !1618, inlinedAt: !1634)
!1637 = !DILocation(line: 58, column: 41, scope: !1618, inlinedAt: !1634)
!1638 = !DILocation(line: 64, column: 3, scope: !1627)
!1639 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !1619, file: !1619, line: 74, type: !1640, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1647)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1619, line: 47, size: 64, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1643, file: !1619, line: 49, baseType: !87, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1643, file: !1619, line: 50, baseType: !273, size: 32, offset: 32)
!1647 = !{!1648}
!1648 = !DILocalVariable(name: "ctx", arg: 1, scope: !1639, file: !1619, line: 74, type: !1642)
!1649 = !DILocation(line: 0, scope: !1639)
!1650 = !DILocation(line: 76, column: 10, scope: !1639)
!1651 = !DILocation(line: 77, column: 1, scope: !1639)
!1652 = distinct !DISubprogram(name: "base64_encode", scope: !429, file: !429, line: 88, type: !1653, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !930, !1099, !1337, !1099}
!1655 = !{!1656, !1657, !1658, !1659}
!1656 = !DILocalVariable(name: "in", arg: 1, scope: !1652, file: !429, line: 88, type: !930)
!1657 = !DILocalVariable(name: "inlen", arg: 2, scope: !1652, file: !429, line: 88, type: !1099)
!1658 = !DILocalVariable(name: "out", arg: 3, scope: !1652, file: !429, line: 89, type: !1337)
!1659 = !DILocalVariable(name: "outlen", arg: 4, scope: !1652, file: !429, line: 89, type: !1099)
!1660 = !DILocation(line: 0, scope: !1652)
!1661 = !DILocation(line: 98, column: 18, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1652, file: !429, line: 98, column: 7)
!1663 = !DILocation(line: 98, column: 23, scope: !1662)
!1664 = !DILocation(line: 98, column: 43, scope: !1662)
!1665 = !DILocation(line: 98, column: 49, scope: !1662)
!1666 = !DILocation(line: 98, column: 32, scope: !1662)
!1667 = !DILocation(line: 98, column: 7, scope: !1652)
!1668 = !{!1669}
!1669 = distinct !{!1669, !1670, !"base64_encode_fast: argument 0"}
!1670 = distinct !{!1670, !"base64_encode_fast"}
!1671 = !DILocation(line: 100, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1662, file: !429, line: 99, column: 5)
!1673 = !{!1674}
!1674 = distinct !{!1674, !1670, !"base64_encode_fast: argument 1"}
!1675 = !DILocalVariable(name: "in", arg: 1, scope: !1676, file: !429, line: 69, type: !930)
!1676 = distinct !DISubprogram(name: "base64_encode_fast", scope: !429, file: !429, line: 69, type: !1677, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !930, !1099, !1337}
!1679 = !{!1675, !1680, !1681}
!1680 = !DILocalVariable(name: "inlen", arg: 2, scope: !1676, file: !429, line: 69, type: !1099)
!1681 = !DILocalVariable(name: "out", arg: 3, scope: !1676, file: !429, line: 69, type: !1337)
!1682 = !DILocation(line: 0, scope: !1676, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 100, column: 7, scope: !1672)
!1684 = !DILocation(line: 71, column: 3, scope: !1676, inlinedAt: !1683)
!1685 = !DILocation(line: 73, column: 32, scope: !1686, inlinedAt: !1683)
!1686 = distinct !DILexicalBlock(scope: !1676, file: !429, line: 72, column: 5)
!1687 = !DILocation(line: 73, column: 16, scope: !1686, inlinedAt: !1683)
!1688 = !{!1669, !1674}
!1689 = !DILocation(line: 73, column: 11, scope: !1686, inlinedAt: !1683)
!1690 = !DILocation(line: 73, column: 14, scope: !1686, inlinedAt: !1683)
!1691 = !DILocation(line: 74, column: 23, scope: !1686, inlinedAt: !1683)
!1692 = !DILocation(line: 74, column: 40, scope: !1686, inlinedAt: !1683)
!1693 = !DILocation(line: 74, column: 59, scope: !1686, inlinedAt: !1683)
!1694 = !DILocation(line: 74, column: 73, scope: !1686, inlinedAt: !1683)
!1695 = !DILocation(line: 74, column: 16, scope: !1686, inlinedAt: !1683)
!1696 = !DILocation(line: 74, column: 11, scope: !1686, inlinedAt: !1683)
!1697 = !DILocation(line: 74, column: 14, scope: !1686, inlinedAt: !1683)
!1698 = !DILocation(line: 75, column: 23, scope: !1686, inlinedAt: !1683)
!1699 = !DILocation(line: 75, column: 40, scope: !1686, inlinedAt: !1683)
!1700 = !DILocation(line: 75, column: 59, scope: !1686, inlinedAt: !1683)
!1701 = !DILocation(line: 75, column: 73, scope: !1686, inlinedAt: !1683)
!1702 = !DILocation(line: 75, column: 16, scope: !1686, inlinedAt: !1683)
!1703 = !DILocation(line: 75, column: 11, scope: !1686, inlinedAt: !1683)
!1704 = !DILocation(line: 75, column: 14, scope: !1686, inlinedAt: !1683)
!1705 = !DILocation(line: 76, column: 38, scope: !1686, inlinedAt: !1683)
!1706 = !DILocation(line: 76, column: 16, scope: !1686, inlinedAt: !1683)
!1707 = !DILocation(line: 76, column: 11, scope: !1686, inlinedAt: !1683)
!1708 = !DILocation(line: 76, column: 14, scope: !1686, inlinedAt: !1683)
!1709 = !DILocation(line: 78, column: 13, scope: !1686, inlinedAt: !1683)
!1710 = !DILocation(line: 79, column: 10, scope: !1686, inlinedAt: !1683)
!1711 = distinct !{!1711, !1684, !1712, !986}
!1712 = !DILocation(line: 80, column: 5, scope: !1676, inlinedAt: !1683)
!1713 = !DILocation(line: 104, column: 10, scope: !1652)
!1714 = !DILocation(line: 104, column: 16, scope: !1652)
!1715 = !DILocation(line: 104, column: 3, scope: !1652)
!1716 = !DILocation(line: 106, column: 32, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1652, file: !429, line: 105, column: 5)
!1718 = !DILocation(line: 106, column: 16, scope: !1717)
!1719 = !DILocation(line: 106, column: 11, scope: !1717)
!1720 = !DILocation(line: 106, column: 14, scope: !1717)
!1721 = !DILocation(line: 107, column: 12, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !429, line: 107, column: 11)
!1723 = !DILocation(line: 107, column: 11, scope: !1717)
!1724 = !DILocation(line: 109, column: 23, scope: !1717)
!1725 = !DILocation(line: 109, column: 40, scope: !1717)
!1726 = !DILocation(line: 110, column: 27, scope: !1717)
!1727 = !DILocation(line: 111, column: 23, scope: !1717)
!1728 = !DILocation(line: 109, column: 16, scope: !1717)
!1729 = !DILocation(line: 109, column: 14, scope: !1717)
!1730 = !DILocation(line: 112, column: 12, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1717, file: !429, line: 112, column: 11)
!1732 = !DILocation(line: 112, column: 11, scope: !1717)
!1733 = !DILocation(line: 110, column: 47, scope: !1717)
!1734 = !DILocation(line: 109, column: 11, scope: !1717)
!1735 = !DILocation(line: 116, column: 19, scope: !1717)
!1736 = !DILocation(line: 116, column: 36, scope: !1717)
!1737 = !DILocation(line: 117, column: 23, scope: !1717)
!1738 = !DILocation(line: 118, column: 19, scope: !1717)
!1739 = !DILocation(line: 116, column: 12, scope: !1717)
!1740 = !DILocation(line: 114, column: 14, scope: !1717)
!1741 = !DILocation(line: 120, column: 12, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1717, file: !429, line: 120, column: 11)
!1743 = !DILocation(line: 120, column: 11, scope: !1717)
!1744 = !DILocation(line: 117, column: 43, scope: !1717)
!1745 = !DILocation(line: 122, column: 39, scope: !1717)
!1746 = !DILocation(line: 122, column: 46, scope: !1717)
!1747 = !DILocation(line: 122, column: 24, scope: !1717)
!1748 = !DILocation(line: 122, column: 16, scope: !1717)
!1749 = !DILocation(line: 114, column: 11, scope: !1717)
!1750 = !DILocation(line: 122, column: 14, scope: !1717)
!1751 = !DILocation(line: 123, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1717, file: !429, line: 123, column: 11)
!1753 = !DILocation(line: 123, column: 11, scope: !1717)
!1754 = !DILocation(line: 122, column: 11, scope: !1717)
!1755 = !DILocation(line: 125, column: 11, scope: !1717)
!1756 = !DILocation(line: 127, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1717, file: !429, line: 127, column: 11)
!1758 = !DILocation(line: 127, column: 11, scope: !1717)
!1759 = distinct !{!1759, !1715, !1760, !986}
!1760 = !DILocation(line: 129, column: 5, scope: !1652)
!1761 = !DILocation(line: 131, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1652, file: !429, line: 131, column: 7)
!1763 = !DILocation(line: 131, column: 7, scope: !1652)
!1764 = !DILocation(line: 132, column: 10, scope: !1762)
!1765 = !DILocation(line: 132, column: 5, scope: !1762)
!1766 = !DILocation(line: 133, column: 1, scope: !1652)
!1767 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !429, file: !429, line: 145, type: !1768, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1099, !136, !1099, !1089}
!1770 = !{!1771, !1772, !1773, !1774, !1775}
!1771 = !DILocalVariable(name: "in", arg: 1, scope: !1767, file: !429, line: 145, type: !136)
!1772 = !DILocalVariable(name: "inlen", arg: 2, scope: !1767, file: !429, line: 145, type: !1099)
!1773 = !DILocalVariable(name: "out", arg: 3, scope: !1767, file: !429, line: 145, type: !1089)
!1774 = !DILocalVariable(name: "in_over_3", scope: !1767, file: !429, line: 150, type: !1099)
!1775 = !DILocalVariable(name: "outlen", scope: !1767, file: !429, line: 150, type: !1099)
!1776 = !DILocation(line: 0, scope: !1767)
!1777 = !DILocation(line: 150, column: 27, scope: !1767)
!1778 = !DILocation(line: 150, column: 44, scope: !1767)
!1779 = !DILocation(line: 150, column: 31, scope: !1767)
!1780 = !DILocation(line: 151, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1767, file: !429, line: 151, column: 7)
!1782 = !DILocation(line: 151, column: 39, scope: !1781)
!1783 = !DILocation(line: 153, column: 12, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !429, line: 152, column: 5)
!1785 = !DILocation(line: 154, column: 7, scope: !1784)
!1786 = !DILocation(line: 156, column: 9, scope: !1767)
!1787 = !DILocalVariable(name: "s", arg: 1, scope: !1788, file: !1789, line: 55, type: !1099)
!1788 = distinct !DISubprogram(name: "imalloc", scope: !1789, file: !1789, line: 55, type: !1790, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1792)
!1789 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!131, !1099}
!1792 = !{!1787}
!1793 = !DILocation(line: 0, scope: !1788, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 158, column: 10, scope: !1767)
!1795 = !DILocation(line: 57, column: 26, scope: !1788, inlinedAt: !1794)
!1796 = !DILocation(line: 158, column: 8, scope: !1767)
!1797 = !DILocation(line: 159, column: 8, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1767, file: !429, line: 159, column: 7)
!1799 = !DILocation(line: 159, column: 7, scope: !1767)
!1800 = !DILocation(line: 162, column: 3, scope: !1767)
!1801 = !DILocation(line: 164, column: 3, scope: !1767)
!1802 = !DILocation(line: 165, column: 1, scope: !1767)
!1803 = !DISubprogram(name: "malloc", scope: !1060, file: !1060, line: 540, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!131, !133}
!1806 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !429, file: !429, line: 466, type: !1807, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!196, !1642, !930, !1099, !1337, !1338}
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1821, !1825}
!1810 = !DILocalVariable(name: "ctx", arg: 1, scope: !1806, file: !429, line: 466, type: !1642)
!1811 = !DILocalVariable(name: "in", arg: 2, scope: !1806, file: !429, line: 467, type: !930)
!1812 = !DILocalVariable(name: "inlen", arg: 3, scope: !1806, file: !429, line: 467, type: !1099)
!1813 = !DILocalVariable(name: "out", arg: 4, scope: !1806, file: !429, line: 468, type: !1337)
!1814 = !DILocalVariable(name: "outlen", arg: 5, scope: !1806, file: !429, line: 468, type: !1338)
!1815 = !DILocalVariable(name: "ignore_newlines", scope: !1806, file: !429, line: 470, type: !196)
!1816 = !DILocalVariable(name: "flush_ctx", scope: !1806, file: !429, line: 471, type: !196)
!1817 = !DILocalVariable(name: "ctx_i", scope: !1806, file: !429, line: 472, type: !78)
!1818 = !DILocalVariable(name: "outleft", scope: !1806, file: !429, line: 480, type: !1099)
!1819 = !DILocalVariable(name: "outleft_save", scope: !1820, file: !429, line: 484, type: !1099)
!1820 = distinct !DILexicalBlock(scope: !1806, file: !429, line: 483, column: 5)
!1821 = !DILocalVariable(name: "in_end", scope: !1822, file: !429, line: 517, type: !136)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !429, line: 516, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !429, line: 511, column: 9)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !429, line: 505, column: 11)
!1825 = !DILocalVariable(name: "non_nl", scope: !1822, file: !429, line: 519, type: !136)
!1826 = distinct !DIAssignID()
!1827 = !DILocation(line: 0, scope: !1806)
!1828 = distinct !DIAssignID()
!1829 = distinct !DIAssignID()
!1830 = !DILocation(line: 470, column: 30, scope: !1806)
!1831 = !DILocation(line: 474, column: 7, scope: !1806)
!1832 = !DILocation(line: 476, column: 20, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !429, line: 475, column: 5)
!1834 = distinct !DILexicalBlock(scope: !1806, file: !429, line: 474, column: 7)
!1835 = !DILocation(line: 477, column: 25, scope: !1833)
!1836 = !DILocation(line: 485, column: 17, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1820, file: !429, line: 485, column: 11)
!1838 = !DILocation(line: 478, column: 5, scope: !1833)
!1839 = !DILocation(line: 480, column: 3, scope: !1806)
!1840 = !DILocation(line: 480, column: 19, scope: !1806)
!1841 = !DILocation(line: 480, column: 9, scope: !1806)
!1842 = distinct !DIAssignID()
!1843 = !DILocation(line: 482, column: 3, scope: !1806)
!1844 = !DILocation(line: 484, column: 28, scope: !1820)
!1845 = !DILocation(line: 0, scope: !1820)
!1846 = !DILocation(line: 485, column: 22, scope: !1837)
!1847 = !DILocation(line: 492, column: 20, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !429, line: 492, column: 19)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !429, line: 488, column: 13)
!1850 = distinct !DILexicalBlock(scope: !1837, file: !429, line: 486, column: 9)
!1851 = !DILocation(line: 492, column: 19, scope: !1849)
!1852 = !DILocation(line: 487, column: 11, scope: !1850)
!1853 = !DILocation(line: 495, column: 18, scope: !1849)
!1854 = !DILocation(line: 496, column: 21, scope: !1849)
!1855 = !DILocation(line: 491, column: 30, scope: !1849)
!1856 = distinct !{!1856, !1852, !1857}
!1857 = !DILocation(line: 497, column: 13, scope: !1850)
!1858 = !DILocation(line: 500, column: 17, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1820, file: !429, line: 500, column: 11)
!1860 = !DILocation(line: 500, column: 22, scope: !1859)
!1861 = !DILocation(line: 505, column: 17, scope: !1824)
!1862 = !DILocation(line: 505, column: 20, scope: !1824)
!1863 = !DILocation(line: 505, column: 24, scope: !1824)
!1864 = !DILocation(line: 505, column: 32, scope: !1824)
!1865 = !DILocation(line: 507, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1824, file: !429, line: 506, column: 9)
!1867 = !DILocation(line: 508, column: 11, scope: !1866)
!1868 = !DILocation(line: 509, column: 9, scope: !1866)
!1869 = !DILocation(line: 513, column: 33, scope: !1823)
!1870 = !DILocation(line: 513, column: 31, scope: !1823)
!1871 = !DILocation(line: 513, column: 15, scope: !1823)
!1872 = distinct !DIAssignID()
!1873 = !DILocation(line: 514, column: 19, scope: !1823)
!1874 = distinct !DIAssignID()
!1875 = !DILocation(line: 517, column: 37, scope: !1822)
!1876 = !DILocation(line: 0, scope: !1822)
!1877 = !DILocation(line: 520, column: 17, scope: !1822)
!1878 = !DILocalVariable(name: "ctx", arg: 1, scope: !1879, file: !429, line: 318, type: !1642)
!1879 = distinct !DISubprogram(name: "get_4", scope: !429, file: !429, line: 318, type: !1880, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1883)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!130, !1642, !1882, !930, !1338}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!1883 = !{!1878, !1884, !1885, !1886, !1887, !1890, !1892}
!1884 = !DILocalVariable(name: "in", arg: 2, scope: !1879, file: !429, line: 319, type: !1882)
!1885 = !DILocalVariable(name: "in_end", arg: 3, scope: !1879, file: !429, line: 319, type: !930)
!1886 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1879, file: !429, line: 320, type: !1338)
!1887 = !DILocalVariable(name: "t", scope: !1888, file: !429, line: 327, type: !136)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !429, line: 326, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !429, line: 325, column: 7)
!1890 = !DILocalVariable(name: "p", scope: !1891, file: !429, line: 339, type: !136)
!1891 = distinct !DILexicalBlock(scope: !1879, file: !429, line: 337, column: 3)
!1892 = !DILocalVariable(name: "c", scope: !1893, file: !429, line: 342, type: !4)
!1893 = distinct !DILexicalBlock(scope: !1891, file: !429, line: 341, column: 7)
!1894 = !DILocation(line: 0, scope: !1879, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 521, column: 24, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1822, file: !429, line: 520, column: 17)
!1897 = !DILocation(line: 322, column: 12, scope: !1898, inlinedAt: !1895)
!1898 = distinct !DILexicalBlock(scope: !1879, file: !429, line: 322, column: 7)
!1899 = !{!1900}
!1900 = distinct !{!1900, !1901, !"get_4: argument 0"}
!1901 = distinct !{!1901, !"get_4"}
!1902 = !DILocation(line: 322, column: 7, scope: !1879, inlinedAt: !1895)
!1903 = !DILocation(line: 323, column: 12, scope: !1898, inlinedAt: !1895)
!1904 = !DILocation(line: 325, column: 7, scope: !1879, inlinedAt: !1895)
!1905 = !DILocation(line: 0, scope: !1888, inlinedAt: !1895)
!1906 = !DILocation(line: 328, column: 13, scope: !1907, inlinedAt: !1895)
!1907 = distinct !DILexicalBlock(scope: !1888, file: !429, line: 328, column: 11)
!1908 = !DILocation(line: 328, column: 29, scope: !1907, inlinedAt: !1895)
!1909 = !DILocation(line: 328, column: 32, scope: !1907, inlinedAt: !1895)
!1910 = !DILocation(line: 328, column: 52, scope: !1907, inlinedAt: !1895)
!1911 = !DILocation(line: 328, column: 11, scope: !1888, inlinedAt: !1895)
!1912 = !DILocation(line: 331, column: 15, scope: !1913, inlinedAt: !1895)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !429, line: 329, column: 9)
!1914 = !DILocation(line: 528, column: 42, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1822, file: !429, line: 528, column: 17)
!1916 = !DILocation(line: 0, scope: !1891, inlinedAt: !1895)
!1917 = !DILocation(line: 340, column: 14, scope: !1891, inlinedAt: !1895)
!1918 = !DILocation(line: 340, column: 5, scope: !1891, inlinedAt: !1895)
!1919 = !DILocation(line: 343, column: 13, scope: !1893, inlinedAt: !1895)
!1920 = !DILocation(line: 342, column: 20, scope: !1893, inlinedAt: !1895)
!1921 = !DILocation(line: 342, column: 18, scope: !1893, inlinedAt: !1895)
!1922 = !DILocation(line: 0, scope: !1893, inlinedAt: !1895)
!1923 = !DILocation(line: 343, column: 15, scope: !1924, inlinedAt: !1895)
!1924 = distinct !DILexicalBlock(scope: !1893, file: !429, line: 343, column: 13)
!1925 = !DILocation(line: 345, column: 28, scope: !1926, inlinedAt: !1895)
!1926 = distinct !DILexicalBlock(scope: !1924, file: !429, line: 344, column: 11)
!1927 = !DILocation(line: 345, column: 13, scope: !1926, inlinedAt: !1895)
!1928 = !DILocation(line: 345, column: 32, scope: !1926, inlinedAt: !1895)
!1929 = !DILocation(line: 346, column: 22, scope: !1930, inlinedAt: !1895)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !429, line: 346, column: 17)
!1931 = !DILocation(line: 346, column: 24, scope: !1930, inlinedAt: !1895)
!1932 = !DILocation(line: 346, column: 17, scope: !1926, inlinedAt: !1895)
!1933 = !DILocation(line: 352, column: 22, scope: !1891, inlinedAt: !1895)
!1934 = !DILocation(line: 352, column: 27, scope: !1891, inlinedAt: !1895)
!1935 = !DILocation(line: 0, scope: !1896)
!1936 = !DILocation(line: 528, column: 23, scope: !1915)
!1937 = !DILocation(line: 528, column: 28, scope: !1915)
!1938 = !DILocation(line: 528, column: 38, scope: !1915)
!1939 = !DILocation(line: 533, column: 18, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1822, file: !429, line: 533, column: 17)
!1941 = !DILocation(line: 533, column: 17, scope: !1822)
!1942 = !DILocation(line: 536, column: 28, scope: !1822)
!1943 = !DILocation(line: 541, column: 14, scope: !1806)
!1944 = !DILocation(line: 541, column: 11, scope: !1806)
!1945 = !DILocation(line: 544, column: 1, scope: !1806)
!1946 = !DILocation(line: 543, column: 3, scope: !1806)
!1947 = distinct !DISubprogram(name: "decode_4", scope: !429, file: !429, line: 372, type: !1948, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!196, !930, !1099, !1336, !1338}
!1950 = !{!1951, !1952, !1953, !1954, !1955}
!1951 = !DILocalVariable(name: "in", arg: 1, scope: !1947, file: !429, line: 372, type: !930)
!1952 = !DILocalVariable(name: "inlen", arg: 2, scope: !1947, file: !429, line: 372, type: !1099)
!1953 = !DILocalVariable(name: "outp", arg: 3, scope: !1947, file: !429, line: 373, type: !1336)
!1954 = !DILocalVariable(name: "outleft", arg: 4, scope: !1947, file: !429, line: 373, type: !1338)
!1955 = !DILocalVariable(name: "out", scope: !1947, file: !429, line: 381, type: !130)
!1956 = !DILocation(line: 0, scope: !1947)
!1957 = !DILocation(line: 375, column: 13, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 375, column: 7)
!1959 = !DILocation(line: 375, column: 7, scope: !1947)
!1960 = !DILocation(line: 378, column: 18, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 378, column: 7)
!1962 = !DILocation(line: 0, scope: !1627, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 378, column: 8, scope: !1961)
!1964 = !DILocation(line: 0, scope: !1618, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 64, column: 10, scope: !1627, inlinedAt: !1963)
!1966 = !DILocation(line: 58, column: 10, scope: !1618, inlinedAt: !1965)
!1967 = !DILocation(line: 58, column: 44, scope: !1618, inlinedAt: !1965)
!1968 = !DILocation(line: 58, column: 41, scope: !1618, inlinedAt: !1965)
!1969 = !DILocation(line: 378, column: 25, scope: !1961)
!1970 = !DILocation(line: 378, column: 39, scope: !1961)
!1971 = !DILocation(line: 0, scope: !1627, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 378, column: 29, scope: !1961)
!1973 = !DILocation(line: 0, scope: !1618, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 64, column: 10, scope: !1627, inlinedAt: !1972)
!1975 = !DILocation(line: 58, column: 10, scope: !1618, inlinedAt: !1974)
!1976 = !DILocation(line: 58, column: 44, scope: !1618, inlinedAt: !1974)
!1977 = !DILocation(line: 58, column: 41, scope: !1618, inlinedAt: !1974)
!1978 = !DILocation(line: 378, column: 7, scope: !1947)
!1979 = !DILocation(line: 381, column: 15, scope: !1947)
!1980 = !DILocation(line: 383, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 383, column: 7)
!1982 = !DILocation(line: 383, column: 7, scope: !1947)
!1983 = !DILocation(line: 385, column: 50, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !429, line: 384, column: 5)
!1985 = !DILocation(line: 386, column: 52, scope: !1984)
!1986 = !DILocation(line: 386, column: 17, scope: !1984)
!1987 = !DILocation(line: 385, column: 11, scope: !1984)
!1988 = !DILocation(line: 385, column: 14, scope: !1984)
!1989 = !DILocation(line: 387, column: 7, scope: !1984)
!1990 = !DILocation(line: 410, column: 11, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !429, line: 410, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !429, line: 406, column: 5)
!1993 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 393, column: 7)
!1994 = !DILocation(line: 388, column: 5, scope: !1984)
!1995 = !DILocation(line: 390, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 390, column: 7)
!1997 = !DILocation(line: 390, column: 7, scope: !1947)
!1998 = !DILocation(line: 393, column: 7, scope: !1993)
!1999 = !DILocation(line: 393, column: 13, scope: !1993)
!2000 = !DILocation(line: 393, column: 7, scope: !1947)
!2001 = !DILocation(line: 395, column: 17, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !429, line: 395, column: 11)
!2003 = distinct !DILexicalBlock(scope: !1993, file: !429, line: 394, column: 5)
!2004 = !DILocation(line: 395, column: 11, scope: !2003)
!2005 = !DILocation(line: 398, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !429, line: 398, column: 11)
!2007 = !DILocation(line: 398, column: 17, scope: !2006)
!2008 = !DILocation(line: 398, column: 11, scope: !2003)
!2009 = !DILocation(line: 0, scope: !1627, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 407, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1992, file: !429, line: 407, column: 11)
!2012 = !DILocation(line: 0, scope: !1618, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 64, column: 10, scope: !1627, inlinedAt: !2010)
!2014 = !DILocation(line: 58, column: 10, scope: !1618, inlinedAt: !2013)
!2015 = !DILocation(line: 58, column: 44, scope: !1618, inlinedAt: !2013)
!2016 = !DILocation(line: 58, column: 41, scope: !1618, inlinedAt: !2013)
!2017 = !DILocation(line: 407, column: 11, scope: !1992)
!2018 = !DILocation(line: 410, column: 11, scope: !1992)
!2019 = !DILocation(line: 412, column: 55, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1991, file: !429, line: 411, column: 9)
!2021 = !DILocation(line: 413, column: 56, scope: !2020)
!2022 = !DILocation(line: 413, column: 21, scope: !2020)
!2023 = !DILocation(line: 412, column: 15, scope: !2020)
!2024 = !DILocation(line: 412, column: 18, scope: !2020)
!2025 = !DILocation(line: 414, column: 11, scope: !2020)
!2026 = !DILocation(line: 434, column: 15, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !429, line: 434, column: 15)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !429, line: 430, column: 9)
!2029 = distinct !DILexicalBlock(scope: !1992, file: !429, line: 420, column: 11)
!2030 = !DILocation(line: 415, column: 9, scope: !2020)
!2031 = !DILocation(line: 417, column: 17, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1992, file: !429, line: 417, column: 11)
!2033 = !DILocation(line: 417, column: 11, scope: !1992)
!2034 = !DILocation(line: 420, column: 11, scope: !2029)
!2035 = !DILocation(line: 420, column: 17, scope: !2029)
!2036 = !DILocation(line: 420, column: 11, scope: !1992)
!2037 = !DILocation(line: 422, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !429, line: 422, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2029, file: !429, line: 421, column: 9)
!2040 = !DILocation(line: 422, column: 15, scope: !2039)
!2041 = !DILocation(line: 0, scope: !1627, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 431, column: 16, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2028, file: !429, line: 431, column: 15)
!2044 = !DILocation(line: 0, scope: !1618, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 64, column: 10, scope: !1627, inlinedAt: !2042)
!2046 = !DILocation(line: 58, column: 10, scope: !1618, inlinedAt: !2045)
!2047 = !DILocation(line: 58, column: 44, scope: !1618, inlinedAt: !2045)
!2048 = !DILocation(line: 58, column: 41, scope: !1618, inlinedAt: !2045)
!2049 = !DILocation(line: 431, column: 15, scope: !2028)
!2050 = !DILocation(line: 434, column: 15, scope: !2028)
!2051 = !DILocation(line: 436, column: 59, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2027, file: !429, line: 435, column: 13)
!2053 = !DILocation(line: 437, column: 25, scope: !2052)
!2054 = !DILocation(line: 436, column: 19, scope: !2052)
!2055 = !DILocation(line: 436, column: 22, scope: !2052)
!2056 = !DILocation(line: 438, column: 15, scope: !2052)
!2057 = !DILocation(line: 439, column: 13, scope: !2052)
!2058 = !DILocation(line: 444, column: 3, scope: !1947)
!2059 = !DILocation(line: 445, column: 1, scope: !1947)
!2060 = !DISubprogram(name: "memchr", scope: !1056, file: !1056, line: 107, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!131, !1084, !87, !133}
!2063 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !429, file: !429, line: 558, type: !2064, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!196, !1642, !136, !1099, !1089, !1338}
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072}
!2067 = !DILocalVariable(name: "ctx", arg: 1, scope: !2063, file: !429, line: 558, type: !1642)
!2068 = !DILocalVariable(name: "in", arg: 2, scope: !2063, file: !429, line: 559, type: !136)
!2069 = !DILocalVariable(name: "inlen", arg: 3, scope: !2063, file: !429, line: 559, type: !1099)
!2070 = !DILocalVariable(name: "out", arg: 4, scope: !2063, file: !429, line: 559, type: !1089)
!2071 = !DILocalVariable(name: "outlen", arg: 5, scope: !2063, file: !429, line: 560, type: !1338)
!2072 = !DILocalVariable(name: "needlen", scope: !2063, file: !429, line: 567, type: !1099)
!2073 = distinct !DIAssignID()
!2074 = !DILocation(line: 0, scope: !2063)
!2075 = !DILocation(line: 567, column: 3, scope: !2063)
!2076 = !DILocation(line: 567, column: 31, scope: !2063)
!2077 = !DILocation(line: 567, column: 21, scope: !2063)
!2078 = !DILocation(line: 567, column: 9, scope: !2063)
!2079 = distinct !DIAssignID()
!2080 = !DILocation(line: 0, scope: !1788, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 569, column: 10, scope: !2063)
!2082 = !DILocation(line: 57, column: 26, scope: !1788, inlinedAt: !2081)
!2083 = !DILocation(line: 569, column: 8, scope: !2063)
!2084 = !DILocation(line: 570, column: 8, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2063, file: !429, line: 570, column: 7)
!2086 = !DILocation(line: 570, column: 7, scope: !2063)
!2087 = !DILocation(line: 573, column: 8, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2063, file: !429, line: 573, column: 7)
!2089 = !DILocation(line: 573, column: 7, scope: !2063)
!2090 = !DILocation(line: 575, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !429, line: 574, column: 5)
!2092 = !DILocation(line: 575, column: 7, scope: !2091)
!2093 = !DILocation(line: 576, column: 12, scope: !2091)
!2094 = !DILocation(line: 577, column: 7, scope: !2091)
!2095 = !DILocation(line: 580, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2063, file: !429, line: 580, column: 7)
!2097 = !DILocation(line: 580, column: 7, scope: !2063)
!2098 = !DILocation(line: 581, column: 15, scope: !2096)
!2099 = !DILocation(line: 581, column: 13, scope: !2096)
!2100 = !DILocation(line: 581, column: 5, scope: !2096)
!2101 = !DILocation(line: 584, column: 1, scope: !2063)
!2102 = !DISubprogram(name: "free", scope: !952, file: !952, line: 752, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !131}
!2105 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !444, file: !444, line: 50, type: !890, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "file", arg: 1, scope: !2105, file: !444, line: 50, type: !136)
!2108 = !DILocation(line: 0, scope: !2105)
!2109 = !DILocation(line: 52, column: 13, scope: !2105)
!2110 = !DILocation(line: 53, column: 1, scope: !2105)
!2111 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !444, file: !444, line: 87, type: !2112, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !196}
!2114 = !{!2115}
!2115 = !DILocalVariable(name: "ignore", arg: 1, scope: !2111, file: !444, line: 87, type: !196)
!2116 = !DILocation(line: 0, scope: !2111)
!2117 = !DILocation(line: 89, column: 16, scope: !2111)
!2118 = !{!2119, !2119, i64 0}
!2119 = !{!"_Bool", !871, i64 0}
!2120 = !DILocation(line: 90, column: 1, scope: !2111)
!2121 = distinct !DISubprogram(name: "close_stdout", scope: !444, file: !444, line: 116, type: !510, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2122)
!2122 = !{!2123}
!2123 = !DILocalVariable(name: "write_error", scope: !2124, file: !444, line: 121, type: !136)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !444, line: 120, column: 5)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !444, line: 118, column: 7)
!2126 = !DILocation(line: 118, column: 21, scope: !2125)
!2127 = !DILocation(line: 118, column: 7, scope: !2125)
!2128 = !DILocation(line: 118, column: 29, scope: !2125)
!2129 = !DILocation(line: 119, column: 7, scope: !2125)
!2130 = !DILocation(line: 119, column: 12, scope: !2125)
!2131 = !{i8 0, i8 2}
!2132 = !DILocation(line: 119, column: 25, scope: !2125)
!2133 = !DILocation(line: 119, column: 28, scope: !2125)
!2134 = !DILocation(line: 119, column: 34, scope: !2125)
!2135 = !DILocation(line: 118, column: 7, scope: !2121)
!2136 = !DILocation(line: 121, column: 33, scope: !2124)
!2137 = !DILocation(line: 0, scope: !2124)
!2138 = !DILocation(line: 122, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2124, file: !444, line: 122, column: 11)
!2140 = !DILocation(line: 0, scope: !2139)
!2141 = !DILocation(line: 122, column: 11, scope: !2124)
!2142 = !DILocation(line: 123, column: 9, scope: !2139)
!2143 = !DILocation(line: 126, column: 9, scope: !2139)
!2144 = !DILocation(line: 128, column: 14, scope: !2124)
!2145 = !DILocation(line: 128, column: 7, scope: !2124)
!2146 = !DILocation(line: 133, column: 42, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2121, file: !444, line: 133, column: 7)
!2148 = !DILocation(line: 133, column: 28, scope: !2147)
!2149 = !DILocation(line: 133, column: 50, scope: !2147)
!2150 = !DILocation(line: 133, column: 7, scope: !2121)
!2151 = !DILocation(line: 134, column: 12, scope: !2147)
!2152 = !DILocation(line: 134, column: 5, scope: !2147)
!2153 = !DILocation(line: 135, column: 1, scope: !2121)
!2154 = !DISubprogram(name: "_exit", scope: !2155, file: !2155, line: 624, type: !859, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2155 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2156 = distinct !DISubprogram(name: "verror", scope: !459, file: !459, line: 251, type: !2157, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !87, !87, !136, !469}
!2159 = !{!2160, !2161, !2162, !2163}
!2160 = !DILocalVariable(name: "status", arg: 1, scope: !2156, file: !459, line: 251, type: !87)
!2161 = !DILocalVariable(name: "errnum", arg: 2, scope: !2156, file: !459, line: 251, type: !87)
!2162 = !DILocalVariable(name: "message", arg: 3, scope: !2156, file: !459, line: 251, type: !136)
!2163 = !DILocalVariable(name: "args", arg: 4, scope: !2156, file: !459, line: 251, type: !469)
!2164 = !DILocation(line: 0, scope: !2156)
!2165 = !DILocation(line: 261, column: 3, scope: !2156)
!2166 = !DILocation(line: 265, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2156, file: !459, line: 265, column: 7)
!2168 = !DILocation(line: 265, column: 7, scope: !2156)
!2169 = !DILocation(line: 266, column: 5, scope: !2167)
!2170 = !DILocation(line: 272, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !459, line: 268, column: 5)
!2172 = !DILocation(line: 276, column: 3, scope: !2156)
!2173 = !{i64 0, i64 8, !869, i64 8, i64 8, !869, i64 16, i64 8, !869, i64 24, i64 4, !939, i64 28, i64 4, !939}
!2174 = !DILocation(line: 282, column: 1, scope: !2156)
!2175 = distinct !DISubprogram(name: "flush_stdout", scope: !459, file: !459, line: 163, type: !510, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2176)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "stdout_fd", scope: !2175, file: !459, line: 166, type: !87)
!2178 = !DILocation(line: 0, scope: !2175)
!2179 = !DILocalVariable(name: "fd", arg: 1, scope: !2180, file: !459, line: 145, type: !87)
!2180 = distinct !DISubprogram(name: "is_open", scope: !459, file: !459, line: 145, type: !1264, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2181)
!2181 = !{!2179}
!2182 = !DILocation(line: 0, scope: !2180, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 182, column: 25, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2175, file: !459, line: 182, column: 7)
!2185 = !DILocation(line: 157, column: 15, scope: !2180, inlinedAt: !2183)
!2186 = !DILocation(line: 157, column: 12, scope: !2180, inlinedAt: !2183)
!2187 = !DILocation(line: 182, column: 7, scope: !2175)
!2188 = !DILocation(line: 184, column: 5, scope: !2184)
!2189 = !DILocation(line: 185, column: 1, scope: !2175)
!2190 = distinct !DISubprogram(name: "error_tail", scope: !459, file: !459, line: 219, type: !2157, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DILocalVariable(name: "status", arg: 1, scope: !2190, file: !459, line: 219, type: !87)
!2193 = !DILocalVariable(name: "errnum", arg: 2, scope: !2190, file: !459, line: 219, type: !87)
!2194 = !DILocalVariable(name: "message", arg: 3, scope: !2190, file: !459, line: 219, type: !136)
!2195 = !DILocalVariable(name: "args", arg: 4, scope: !2190, file: !459, line: 219, type: !469)
!2196 = distinct !DIAssignID()
!2197 = !DILocation(line: 0, scope: !2190)
!2198 = !DILocation(line: 229, column: 13, scope: !2190)
!2199 = !DILocation(line: 135, column: 10, scope: !2200, inlinedAt: !2242)
!2200 = distinct !DISubprogram(name: "vfprintf", scope: !926, file: !926, line: 132, type: !2201, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2238)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!87, !2203, !930, !471}
!2203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2204)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2206, file: !213, line: 51, baseType: !87, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2206, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2206, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2206, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2206, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2206, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2206, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2206, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2206, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2206, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2206, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2206, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2206, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2206, file: !213, line: 70, baseType: !2222, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2206, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2206, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2206, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2206, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2206, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2206, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2206, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2206, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2206, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2206, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2206, file: !213, line: 93, baseType: !2222, size: 64, offset: 1344)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2206, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2206, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2206, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2206, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2238 = !{!2239, !2240, !2241}
!2239 = !DILocalVariable(name: "__stream", arg: 1, scope: !2200, file: !926, line: 132, type: !2203)
!2240 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2200, file: !926, line: 133, type: !930)
!2241 = !DILocalVariable(name: "__ap", arg: 3, scope: !2200, file: !926, line: 133, type: !471)
!2242 = distinct !DILocation(line: 229, column: 3, scope: !2190)
!2243 = !{!2244, !2246}
!2244 = distinct !{!2244, !2245, !"vfprintf.inline: argument 0"}
!2245 = distinct !{!2245, !"vfprintf.inline"}
!2246 = distinct !{!2246, !2245, !"vfprintf.inline: argument 1"}
!2247 = !DILocation(line: 229, column: 3, scope: !2190)
!2248 = !DILocation(line: 0, scope: !2200, inlinedAt: !2242)
!2249 = !DILocation(line: 232, column: 3, scope: !2190)
!2250 = !DILocation(line: 233, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2190, file: !459, line: 233, column: 7)
!2252 = !DILocation(line: 233, column: 7, scope: !2190)
!2253 = !DILocalVariable(name: "errbuf", scope: !2254, file: !459, line: 193, type: !2258)
!2254 = distinct !DISubprogram(name: "print_errno_message", scope: !459, file: !459, line: 188, type: !859, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2255)
!2255 = !{!2256, !2257, !2253}
!2256 = !DILocalVariable(name: "errnum", arg: 1, scope: !2254, file: !459, line: 188, type: !87)
!2257 = !DILocalVariable(name: "s", scope: !2254, file: !459, line: 190, type: !136)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2259)
!2259 = !{!2260}
!2260 = !DISubrange(count: 1024)
!2261 = !DILocation(line: 0, scope: !2254, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 234, column: 5, scope: !2251)
!2263 = !DILocation(line: 193, column: 3, scope: !2254, inlinedAt: !2262)
!2264 = !DILocation(line: 195, column: 7, scope: !2254, inlinedAt: !2262)
!2265 = !DILocation(line: 207, column: 9, scope: !2266, inlinedAt: !2262)
!2266 = distinct !DILexicalBlock(scope: !2254, file: !459, line: 207, column: 7)
!2267 = !DILocation(line: 207, column: 7, scope: !2254, inlinedAt: !2262)
!2268 = !DILocation(line: 208, column: 9, scope: !2266, inlinedAt: !2262)
!2269 = !DILocation(line: 208, column: 5, scope: !2266, inlinedAt: !2262)
!2270 = !DILocation(line: 214, column: 3, scope: !2254, inlinedAt: !2262)
!2271 = !DILocation(line: 216, column: 1, scope: !2254, inlinedAt: !2262)
!2272 = !DILocation(line: 234, column: 5, scope: !2251)
!2273 = !DILocation(line: 238, column: 3, scope: !2190)
!2274 = !DILocalVariable(name: "__c", arg: 1, scope: !2275, file: !1293, line: 101, type: !87)
!2275 = distinct !DISubprogram(name: "putc_unlocked", scope: !1293, file: !1293, line: 101, type: !2276, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!87, !87, !2204}
!2278 = !{!2274, !2279}
!2279 = !DILocalVariable(name: "__stream", arg: 2, scope: !2275, file: !1293, line: 101, type: !2204)
!2280 = !DILocation(line: 0, scope: !2275, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 238, column: 3, scope: !2190)
!2282 = !DILocation(line: 103, column: 10, scope: !2275, inlinedAt: !2281)
!2283 = !DILocation(line: 240, column: 3, scope: !2190)
!2284 = !DILocation(line: 241, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2190, file: !459, line: 241, column: 7)
!2286 = !DILocation(line: 241, column: 7, scope: !2190)
!2287 = !DILocation(line: 242, column: 5, scope: !2285)
!2288 = !DILocation(line: 243, column: 1, scope: !2190)
!2289 = !DISubprogram(name: "__vfprintf_chk", scope: !926, file: !926, line: 96, type: !2290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!87, !2203, !87, !930, !471}
!2292 = !DISubprogram(name: "strerror_r", scope: !1056, file: !1056, line: 444, type: !2293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!130, !87, !130, !133}
!2295 = !DISubprogram(name: "fcntl", scope: !2296, file: !2296, line: 149, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2296 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!87, !87, !87, null}
!2299 = distinct !DISubprogram(name: "error", scope: !459, file: !459, line: 285, type: !2300, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !87, !87, !136, null}
!2302 = !{!2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "status", arg: 1, scope: !2299, file: !459, line: 285, type: !87)
!2304 = !DILocalVariable(name: "errnum", arg: 2, scope: !2299, file: !459, line: 285, type: !87)
!2305 = !DILocalVariable(name: "message", arg: 3, scope: !2299, file: !459, line: 285, type: !136)
!2306 = !DILocalVariable(name: "ap", scope: !2299, file: !459, line: 287, type: !469)
!2307 = distinct !DIAssignID()
!2308 = !DILocation(line: 0, scope: !2299)
!2309 = !DILocation(line: 287, column: 3, scope: !2299)
!2310 = !DILocation(line: 288, column: 3, scope: !2299)
!2311 = !DILocation(line: 289, column: 3, scope: !2299)
!2312 = !DILocation(line: 290, column: 3, scope: !2299)
!2313 = !DILocation(line: 291, column: 1, scope: !2299)
!2314 = !DILocation(line: 0, scope: !466)
!2315 = !DILocation(line: 302, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !466, file: !459, line: 302, column: 7)
!2317 = !DILocation(line: 302, column: 7, scope: !466)
!2318 = !DILocation(line: 307, column: 11, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !459, line: 307, column: 11)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !459, line: 303, column: 5)
!2321 = !DILocation(line: 307, column: 27, scope: !2319)
!2322 = !DILocation(line: 308, column: 11, scope: !2319)
!2323 = !DILocation(line: 308, column: 28, scope: !2319)
!2324 = !DILocation(line: 308, column: 25, scope: !2319)
!2325 = !DILocation(line: 309, column: 15, scope: !2319)
!2326 = !DILocation(line: 309, column: 33, scope: !2319)
!2327 = !DILocation(line: 310, column: 19, scope: !2319)
!2328 = !DILocation(line: 311, column: 22, scope: !2319)
!2329 = !DILocation(line: 311, column: 56, scope: !2319)
!2330 = !DILocation(line: 307, column: 11, scope: !2320)
!2331 = !DILocation(line: 316, column: 21, scope: !2320)
!2332 = !DILocation(line: 317, column: 23, scope: !2320)
!2333 = !DILocation(line: 318, column: 5, scope: !2320)
!2334 = !DILocation(line: 327, column: 3, scope: !466)
!2335 = !DILocation(line: 331, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !466, file: !459, line: 331, column: 7)
!2337 = !DILocation(line: 331, column: 7, scope: !466)
!2338 = !DILocation(line: 332, column: 5, scope: !2336)
!2339 = !DILocation(line: 338, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !459, line: 334, column: 5)
!2341 = !DILocation(line: 346, column: 3, scope: !466)
!2342 = !DILocation(line: 350, column: 3, scope: !466)
!2343 = !DILocation(line: 356, column: 1, scope: !466)
!2344 = distinct !DISubprogram(name: "error_at_line", scope: !459, file: !459, line: 359, type: !2345, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !87, !87, !136, !78, !136, null}
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353}
!2348 = !DILocalVariable(name: "status", arg: 1, scope: !2344, file: !459, line: 359, type: !87)
!2349 = !DILocalVariable(name: "errnum", arg: 2, scope: !2344, file: !459, line: 359, type: !87)
!2350 = !DILocalVariable(name: "file_name", arg: 3, scope: !2344, file: !459, line: 359, type: !136)
!2351 = !DILocalVariable(name: "line_number", arg: 4, scope: !2344, file: !459, line: 360, type: !78)
!2352 = !DILocalVariable(name: "message", arg: 5, scope: !2344, file: !459, line: 360, type: !136)
!2353 = !DILocalVariable(name: "ap", scope: !2344, file: !459, line: 362, type: !469)
!2354 = distinct !DIAssignID()
!2355 = !DILocation(line: 0, scope: !2344)
!2356 = !DILocation(line: 362, column: 3, scope: !2344)
!2357 = !DILocation(line: 363, column: 3, scope: !2344)
!2358 = !DILocation(line: 364, column: 3, scope: !2344)
!2359 = !DILocation(line: 366, column: 3, scope: !2344)
!2360 = !DILocation(line: 367, column: 1, scope: !2344)
!2361 = distinct !DISubprogram(name: "fdadvise", scope: !770, file: !770, line: 25, type: !2362, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2366)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !87, !2364, !2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !470, line: 63, baseType: !235)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !773, line: 51, baseType: !772)
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "fd", arg: 1, scope: !2361, file: !770, line: 25, type: !87)
!2368 = !DILocalVariable(name: "offset", arg: 2, scope: !2361, file: !770, line: 25, type: !2364)
!2369 = !DILocalVariable(name: "len", arg: 3, scope: !2361, file: !770, line: 25, type: !2364)
!2370 = !DILocalVariable(name: "advice", arg: 4, scope: !2361, file: !770, line: 25, type: !2365)
!2371 = !DILocation(line: 0, scope: !2361)
!2372 = !DILocation(line: 28, column: 3, scope: !2361)
!2373 = !DILocation(line: 30, column: 1, scope: !2361)
!2374 = !DISubprogram(name: "posix_fadvise", scope: !2296, file: !2296, line: 273, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!87, !87, !2364, !2364, !87}
!2377 = distinct !DISubprogram(name: "fadvise", scope: !770, file: !770, line: 33, type: !2378, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2414)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !2380, !2365}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2382, file: !213, line: 51, baseType: !87, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2382, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2382, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2382, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2382, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2382, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2382, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2382, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2382, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2382, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2382, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2382, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2382, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2382, file: !213, line: 70, baseType: !2398, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2382, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2382, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2382, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2382, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2382, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2382, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2382, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2382, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2382, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2382, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2382, file: !213, line: 93, baseType: !2398, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2382, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2382, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2382, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2382, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2414 = !{!2415, !2416}
!2415 = !DILocalVariable(name: "fp", arg: 1, scope: !2377, file: !770, line: 33, type: !2380)
!2416 = !DILocalVariable(name: "advice", arg: 2, scope: !2377, file: !770, line: 33, type: !2365)
!2417 = !DILocation(line: 0, scope: !2377)
!2418 = !DILocation(line: 35, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2377, file: !770, line: 35, column: 7)
!2420 = !DILocation(line: 35, column: 7, scope: !2377)
!2421 = !DILocation(line: 36, column: 15, scope: !2419)
!2422 = !DILocation(line: 0, scope: !2361, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 36, column: 5, scope: !2419)
!2424 = !DILocation(line: 28, column: 3, scope: !2361, inlinedAt: !2423)
!2425 = !DILocation(line: 36, column: 5, scope: !2419)
!2426 = !DILocation(line: 37, column: 1, scope: !2377)
!2427 = !DISubprogram(name: "fileno", scope: !470, file: !470, line: 809, type: !2428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!87, !2380}
!2430 = distinct !DISubprogram(name: "rpl_fclose", scope: !775, file: !775, line: 58, type: !2431, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2467)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!87, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2435, file: !213, line: 51, baseType: !87, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2435, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2435, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2435, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2435, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2435, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2435, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2435, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2435, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2435, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2435, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2435, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2435, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2435, file: !213, line: 70, baseType: !2451, size: 64, offset: 832)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2435, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2435, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2435, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2435, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2435, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2435, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2435, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2435, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2435, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2435, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2435, file: !213, line: 93, baseType: !2451, size: 64, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2435, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2435, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2435, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2435, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2467 = !{!2468, !2469, !2470, !2471}
!2468 = !DILocalVariable(name: "fp", arg: 1, scope: !2430, file: !775, line: 58, type: !2433)
!2469 = !DILocalVariable(name: "saved_errno", scope: !2430, file: !775, line: 60, type: !87)
!2470 = !DILocalVariable(name: "fd", scope: !2430, file: !775, line: 63, type: !87)
!2471 = !DILocalVariable(name: "result", scope: !2430, file: !775, line: 74, type: !87)
!2472 = !DILocation(line: 0, scope: !2430)
!2473 = !DILocation(line: 63, column: 12, scope: !2430)
!2474 = !DILocation(line: 64, column: 10, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2430, file: !775, line: 64, column: 7)
!2476 = !DILocation(line: 64, column: 7, scope: !2430)
!2477 = !DILocation(line: 65, column: 12, scope: !2475)
!2478 = !DILocation(line: 65, column: 5, scope: !2475)
!2479 = !DILocation(line: 70, column: 9, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2430, file: !775, line: 70, column: 7)
!2481 = !DILocation(line: 70, column: 23, scope: !2480)
!2482 = !DILocation(line: 70, column: 33, scope: !2480)
!2483 = !DILocation(line: 70, column: 26, scope: !2480)
!2484 = !DILocation(line: 70, column: 59, scope: !2480)
!2485 = !DILocation(line: 71, column: 7, scope: !2480)
!2486 = !DILocation(line: 71, column: 10, scope: !2480)
!2487 = !DILocation(line: 70, column: 7, scope: !2430)
!2488 = !DILocation(line: 100, column: 12, scope: !2430)
!2489 = !DILocation(line: 105, column: 7, scope: !2430)
!2490 = !DILocation(line: 72, column: 19, scope: !2480)
!2491 = !DILocation(line: 105, column: 19, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2430, file: !775, line: 105, column: 7)
!2493 = !DILocation(line: 107, column: 13, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2492, file: !775, line: 106, column: 5)
!2495 = !DILocation(line: 109, column: 5, scope: !2494)
!2496 = !DILocation(line: 112, column: 1, scope: !2430)
!2497 = !DISubprogram(name: "fclose", scope: !470, file: !470, line: 178, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2498 = !DISubprogram(name: "__freading", scope: !2499, file: !2499, line: 51, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2499 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2500 = !DISubprogram(name: "lseek", scope: !2155, file: !2155, line: 339, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!235, !87, !235, !87}
!2503 = distinct !DISubprogram(name: "rpl_fflush", scope: !777, file: !777, line: 130, type: !2504, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !2540)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!87, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2508, file: !213, line: 51, baseType: !87, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2508, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2508, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2508, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2508, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2508, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2508, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2508, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2508, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2508, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2508, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2508, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2508, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2508, file: !213, line: 70, baseType: !2524, size: 64, offset: 832)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2508, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2508, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2508, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2508, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2508, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2508, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2508, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2508, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2508, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2508, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2508, file: !213, line: 93, baseType: !2524, size: 64, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2508, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2508, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2508, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2508, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "stream", arg: 1, scope: !2503, file: !777, line: 130, type: !2506)
!2542 = !DILocation(line: 0, scope: !2503)
!2543 = !DILocation(line: 151, column: 14, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2503, file: !777, line: 151, column: 7)
!2545 = !DILocation(line: 151, column: 22, scope: !2544)
!2546 = !DILocation(line: 151, column: 27, scope: !2544)
!2547 = !DILocation(line: 151, column: 7, scope: !2503)
!2548 = !DILocation(line: 152, column: 12, scope: !2544)
!2549 = !DILocation(line: 152, column: 5, scope: !2544)
!2550 = !DILocalVariable(name: "fp", arg: 1, scope: !2551, file: !777, line: 42, type: !2506)
!2551 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !777, file: !777, line: 42, type: !2552, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2506}
!2554 = !{!2550}
!2555 = !DILocation(line: 0, scope: !2551, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 157, column: 3, scope: !2503)
!2557 = !DILocation(line: 44, column: 12, scope: !2558, inlinedAt: !2556)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !777, line: 44, column: 7)
!2559 = !DILocation(line: 44, column: 19, scope: !2558, inlinedAt: !2556)
!2560 = !DILocation(line: 44, column: 7, scope: !2551, inlinedAt: !2556)
!2561 = !DILocation(line: 46, column: 5, scope: !2558, inlinedAt: !2556)
!2562 = !DILocation(line: 159, column: 10, scope: !2503)
!2563 = !DILocation(line: 159, column: 3, scope: !2503)
!2564 = !DILocation(line: 236, column: 1, scope: !2503)
!2565 = !DISubprogram(name: "fflush", scope: !470, file: !470, line: 230, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2566 = distinct !DISubprogram(name: "fpurge", scope: !780, file: !780, line: 32, type: !2567, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2603)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!87, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2572)
!2572 = !{!2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2571, file: !213, line: 51, baseType: !87, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2571, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2571, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2571, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2571, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2571, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2571, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2571, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2571, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2571, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2571, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2571, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2571, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2571, file: !213, line: 70, baseType: !2587, size: 64, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2571, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2571, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2571, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2571, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2571, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2571, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2571, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2571, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2571, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2571, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2571, file: !213, line: 93, baseType: !2587, size: 64, offset: 1344)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2571, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2571, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2571, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2571, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "fp", arg: 1, scope: !2566, file: !780, line: 32, type: !2569)
!2605 = !DILocation(line: 0, scope: !2566)
!2606 = !DILocation(line: 36, column: 3, scope: !2566)
!2607 = !DILocation(line: 38, column: 3, scope: !2566)
!2608 = !DISubprogram(name: "__fpurge", scope: !2499, file: !2499, line: 72, type: !2609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !2569}
!2611 = distinct !DISubprogram(name: "rpl_fseeko", scope: !782, file: !782, line: 28, type: !2612, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !2648)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!87, !2614, !2364, !87}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2616, file: !213, line: 51, baseType: !87, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2616, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2616, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2616, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2616, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2616, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2616, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2616, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2616, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2616, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2616, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2616, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2616, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2616, file: !213, line: 70, baseType: !2632, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2616, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2616, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2616, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2616, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2616, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2616, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2616, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2616, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2616, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2616, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2616, file: !213, line: 93, baseType: !2632, size: 64, offset: 1344)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2616, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2616, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2616, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2616, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2648 = !{!2649, !2650, !2651, !2652}
!2649 = !DILocalVariable(name: "fp", arg: 1, scope: !2611, file: !782, line: 28, type: !2614)
!2650 = !DILocalVariable(name: "offset", arg: 2, scope: !2611, file: !782, line: 28, type: !2364)
!2651 = !DILocalVariable(name: "whence", arg: 3, scope: !2611, file: !782, line: 28, type: !87)
!2652 = !DILocalVariable(name: "pos", scope: !2653, file: !782, line: 123, type: !2364)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !782, line: 119, column: 5)
!2654 = distinct !DILexicalBlock(scope: !2611, file: !782, line: 55, column: 7)
!2655 = !DILocation(line: 0, scope: !2611)
!2656 = !DILocation(line: 55, column: 12, scope: !2654)
!2657 = !{!1303, !870, i64 16}
!2658 = !DILocation(line: 55, column: 33, scope: !2654)
!2659 = !{!1303, !870, i64 8}
!2660 = !DILocation(line: 55, column: 25, scope: !2654)
!2661 = !DILocation(line: 56, column: 7, scope: !2654)
!2662 = !DILocation(line: 56, column: 15, scope: !2654)
!2663 = !DILocation(line: 56, column: 37, scope: !2654)
!2664 = !{!1303, !870, i64 32}
!2665 = !DILocation(line: 56, column: 29, scope: !2654)
!2666 = !DILocation(line: 57, column: 7, scope: !2654)
!2667 = !DILocation(line: 57, column: 15, scope: !2654)
!2668 = !{!1303, !870, i64 72}
!2669 = !DILocation(line: 57, column: 29, scope: !2654)
!2670 = !DILocation(line: 55, column: 7, scope: !2611)
!2671 = !DILocation(line: 123, column: 26, scope: !2653)
!2672 = !DILocation(line: 123, column: 19, scope: !2653)
!2673 = !DILocation(line: 0, scope: !2653)
!2674 = !DILocation(line: 124, column: 15, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2653, file: !782, line: 124, column: 11)
!2676 = !DILocation(line: 124, column: 11, scope: !2653)
!2677 = !DILocation(line: 135, column: 19, scope: !2653)
!2678 = !DILocation(line: 136, column: 12, scope: !2653)
!2679 = !DILocation(line: 136, column: 20, scope: !2653)
!2680 = !{!1303, !1304, i64 144}
!2681 = !DILocation(line: 167, column: 7, scope: !2653)
!2682 = !DILocation(line: 169, column: 10, scope: !2611)
!2683 = !DILocation(line: 169, column: 3, scope: !2611)
!2684 = !DILocation(line: 170, column: 1, scope: !2611)
!2685 = !DISubprogram(name: "fseeko", scope: !470, file: !470, line: 736, type: !2686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!87, !2614, !235, !87}
!2688 = distinct !DISubprogram(name: "getprogname", scope: !784, file: !784, line: 54, type: !2689, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!136}
!2691 = !DILocation(line: 58, column: 10, scope: !2688)
!2692 = !DILocation(line: 58, column: 3, scope: !2688)
!2693 = distinct !DISubprogram(name: "set_program_name", scope: !515, file: !515, line: 37, type: !890, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DILocalVariable(name: "argv0", arg: 1, scope: !2693, file: !515, line: 37, type: !136)
!2696 = !DILocalVariable(name: "slash", scope: !2693, file: !515, line: 44, type: !136)
!2697 = !DILocalVariable(name: "base", scope: !2693, file: !515, line: 45, type: !136)
!2698 = !DILocation(line: 0, scope: !2693)
!2699 = !DILocation(line: 44, column: 23, scope: !2693)
!2700 = !DILocation(line: 45, column: 22, scope: !2693)
!2701 = !DILocation(line: 46, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2693, file: !515, line: 46, column: 7)
!2703 = !DILocation(line: 46, column: 9, scope: !2702)
!2704 = !DILocation(line: 46, column: 25, scope: !2702)
!2705 = !DILocation(line: 46, column: 40, scope: !2702)
!2706 = !DILocalVariable(name: "__s1", arg: 1, scope: !2707, file: !952, line: 974, type: !1084)
!2707 = distinct !DISubprogram(name: "memeq", scope: !952, file: !952, line: 974, type: !2708, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!196, !1084, !1084, !133}
!2710 = !{!2706, !2711, !2712}
!2711 = !DILocalVariable(name: "__s2", arg: 2, scope: !2707, file: !952, line: 974, type: !1084)
!2712 = !DILocalVariable(name: "__n", arg: 3, scope: !2707, file: !952, line: 974, type: !133)
!2713 = !DILocation(line: 0, scope: !2707, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 46, column: 28, scope: !2702)
!2715 = !DILocation(line: 976, column: 11, scope: !2707, inlinedAt: !2714)
!2716 = !DILocation(line: 976, column: 10, scope: !2707, inlinedAt: !2714)
!2717 = !DILocation(line: 46, column: 7, scope: !2693)
!2718 = !DILocation(line: 49, column: 11, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !515, line: 49, column: 11)
!2720 = distinct !DILexicalBlock(scope: !2702, file: !515, line: 47, column: 5)
!2721 = !DILocation(line: 49, column: 36, scope: !2719)
!2722 = !DILocation(line: 49, column: 11, scope: !2720)
!2723 = !DILocation(line: 65, column: 16, scope: !2693)
!2724 = !DILocation(line: 71, column: 27, scope: !2693)
!2725 = !DILocation(line: 74, column: 33, scope: !2693)
!2726 = !DILocation(line: 76, column: 1, scope: !2693)
!2727 = !DISubprogram(name: "strrchr", scope: !1056, file: !1056, line: 273, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2728 = distinct !DIAssignID()
!2729 = !DILocation(line: 0, scope: !523)
!2730 = distinct !DIAssignID()
!2731 = !DILocation(line: 40, column: 29, scope: !523)
!2732 = !DILocation(line: 41, column: 19, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !523, file: !524, line: 41, column: 7)
!2734 = !DILocation(line: 41, column: 7, scope: !523)
!2735 = !DILocation(line: 47, column: 3, scope: !523)
!2736 = !DILocation(line: 48, column: 3, scope: !523)
!2737 = !DILocalVariable(name: "ps", arg: 1, scope: !2738, file: !2739, line: 1135, type: !2742)
!2738 = distinct !DISubprogram(name: "mbszero", scope: !2739, file: !2739, line: 1135, type: !2740, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2743)
!2739 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!2743 = !{!2737}
!2744 = !DILocation(line: 0, scope: !2738, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 48, column: 18, scope: !523)
!2746 = !DILocalVariable(name: "__dest", arg: 1, scope: !2747, file: !1278, line: 57, type: !131)
!2747 = distinct !DISubprogram(name: "memset", scope: !1278, file: !1278, line: 57, type: !2748, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!131, !131, !87, !133}
!2750 = !{!2746, !2751, !2752}
!2751 = !DILocalVariable(name: "__ch", arg: 2, scope: !2747, file: !1278, line: 57, type: !87)
!2752 = !DILocalVariable(name: "__len", arg: 3, scope: !2747, file: !1278, line: 57, type: !133)
!2753 = !DILocation(line: 0, scope: !2747, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1137, column: 3, scope: !2738, inlinedAt: !2745)
!2755 = !DILocation(line: 59, column: 10, scope: !2747, inlinedAt: !2754)
!2756 = !DILocation(line: 49, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !523, file: !524, line: 49, column: 7)
!2758 = !DILocation(line: 49, column: 39, scope: !2757)
!2759 = !DILocation(line: 49, column: 44, scope: !2757)
!2760 = !DILocation(line: 54, column: 1, scope: !523)
!2761 = !DISubprogram(name: "mbrtoc32", scope: !535, file: !535, line: 57, type: !2762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!133, !2764, !930, !133, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2765)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2742)
!2767 = distinct !DISubprogram(name: "clone_quoting_options", scope: !554, file: !554, line: 113, type: !2768, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2771)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!2770, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!2771 = !{!2772, !2773, !2774}
!2772 = !DILocalVariable(name: "o", arg: 1, scope: !2767, file: !554, line: 113, type: !2770)
!2773 = !DILocalVariable(name: "saved_errno", scope: !2767, file: !554, line: 115, type: !87)
!2774 = !DILocalVariable(name: "p", scope: !2767, file: !554, line: 116, type: !2770)
!2775 = !DILocation(line: 0, scope: !2767)
!2776 = !DILocation(line: 115, column: 21, scope: !2767)
!2777 = !DILocation(line: 116, column: 40, scope: !2767)
!2778 = !DILocation(line: 116, column: 31, scope: !2767)
!2779 = !DILocation(line: 118, column: 9, scope: !2767)
!2780 = !DILocation(line: 119, column: 3, scope: !2767)
!2781 = distinct !DISubprogram(name: "get_quoting_style", scope: !554, file: !554, line: 124, type: !2782, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2786)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!577, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!2786 = !{!2787}
!2787 = !DILocalVariable(name: "o", arg: 1, scope: !2781, file: !554, line: 124, type: !2784)
!2788 = !DILocation(line: 0, scope: !2781)
!2789 = !DILocation(line: 126, column: 11, scope: !2781)
!2790 = !DILocation(line: 126, column: 46, scope: !2781)
!2791 = !{!2792, !940, i64 0}
!2792 = !{!"quoting_options", !940, i64 0, !940, i64 4, !871, i64 8, !870, i64 40, !870, i64 48}
!2793 = !DILocation(line: 126, column: 3, scope: !2781)
!2794 = distinct !DISubprogram(name: "set_quoting_style", scope: !554, file: !554, line: 132, type: !2795, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2770, !577}
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "o", arg: 1, scope: !2794, file: !554, line: 132, type: !2770)
!2799 = !DILocalVariable(name: "s", arg: 2, scope: !2794, file: !554, line: 132, type: !577)
!2800 = !DILocation(line: 0, scope: !2794)
!2801 = !DILocation(line: 134, column: 4, scope: !2794)
!2802 = !DILocation(line: 134, column: 45, scope: !2794)
!2803 = !DILocation(line: 135, column: 1, scope: !2794)
!2804 = distinct !DISubprogram(name: "set_char_quoting", scope: !554, file: !554, line: 143, type: !2805, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!87, !2770, !4, !87}
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2814, !2815}
!2808 = !DILocalVariable(name: "o", arg: 1, scope: !2804, file: !554, line: 143, type: !2770)
!2809 = !DILocalVariable(name: "c", arg: 2, scope: !2804, file: !554, line: 143, type: !4)
!2810 = !DILocalVariable(name: "i", arg: 3, scope: !2804, file: !554, line: 143, type: !87)
!2811 = !DILocalVariable(name: "uc", scope: !2804, file: !554, line: 145, type: !138)
!2812 = !DILocalVariable(name: "p", scope: !2804, file: !554, line: 146, type: !2813)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2814 = !DILocalVariable(name: "shift", scope: !2804, file: !554, line: 148, type: !87)
!2815 = !DILocalVariable(name: "r", scope: !2804, file: !554, line: 149, type: !78)
!2816 = !DILocation(line: 0, scope: !2804)
!2817 = !DILocation(line: 147, column: 6, scope: !2804)
!2818 = !DILocation(line: 147, column: 41, scope: !2804)
!2819 = !DILocation(line: 147, column: 62, scope: !2804)
!2820 = !DILocation(line: 147, column: 57, scope: !2804)
!2821 = !DILocation(line: 148, column: 15, scope: !2804)
!2822 = !DILocation(line: 149, column: 21, scope: !2804)
!2823 = !DILocation(line: 149, column: 24, scope: !2804)
!2824 = !DILocation(line: 149, column: 34, scope: !2804)
!2825 = !DILocation(line: 150, column: 19, scope: !2804)
!2826 = !DILocation(line: 150, column: 24, scope: !2804)
!2827 = !DILocation(line: 150, column: 6, scope: !2804)
!2828 = !DILocation(line: 151, column: 3, scope: !2804)
!2829 = distinct !DISubprogram(name: "set_quoting_flags", scope: !554, file: !554, line: 159, type: !2830, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!87, !2770, !87}
!2832 = !{!2833, !2834, !2835}
!2833 = !DILocalVariable(name: "o", arg: 1, scope: !2829, file: !554, line: 159, type: !2770)
!2834 = !DILocalVariable(name: "i", arg: 2, scope: !2829, file: !554, line: 159, type: !87)
!2835 = !DILocalVariable(name: "r", scope: !2829, file: !554, line: 163, type: !87)
!2836 = !DILocation(line: 0, scope: !2829)
!2837 = !DILocation(line: 161, column: 8, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2829, file: !554, line: 161, column: 7)
!2839 = !DILocation(line: 161, column: 7, scope: !2829)
!2840 = !DILocation(line: 163, column: 14, scope: !2829)
!2841 = !{!2792, !940, i64 4}
!2842 = !DILocation(line: 164, column: 12, scope: !2829)
!2843 = !DILocation(line: 165, column: 3, scope: !2829)
!2844 = distinct !DISubprogram(name: "set_custom_quoting", scope: !554, file: !554, line: 169, type: !2845, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !2770, !136, !136}
!2847 = !{!2848, !2849, !2850}
!2848 = !DILocalVariable(name: "o", arg: 1, scope: !2844, file: !554, line: 169, type: !2770)
!2849 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2844, file: !554, line: 170, type: !136)
!2850 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2844, file: !554, line: 170, type: !136)
!2851 = !DILocation(line: 0, scope: !2844)
!2852 = !DILocation(line: 172, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2844, file: !554, line: 172, column: 7)
!2854 = !DILocation(line: 172, column: 7, scope: !2844)
!2855 = !DILocation(line: 174, column: 12, scope: !2844)
!2856 = !DILocation(line: 175, column: 8, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2844, file: !554, line: 175, column: 7)
!2858 = !DILocation(line: 175, column: 19, scope: !2857)
!2859 = !DILocation(line: 176, column: 5, scope: !2857)
!2860 = !DILocation(line: 177, column: 6, scope: !2844)
!2861 = !DILocation(line: 177, column: 17, scope: !2844)
!2862 = !{!2792, !870, i64 40}
!2863 = !DILocation(line: 178, column: 6, scope: !2844)
!2864 = !DILocation(line: 178, column: 18, scope: !2844)
!2865 = !{!2792, !870, i64 48}
!2866 = !DILocation(line: 179, column: 1, scope: !2844)
!2867 = !DISubprogram(name: "abort", scope: !1060, file: !1060, line: 598, type: !510, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2868 = distinct !DISubprogram(name: "quotearg_buffer", scope: !554, file: !554, line: 774, type: !2869, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!133, !130, !133, !136, !133, !2784}
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2872 = !DILocalVariable(name: "buffer", arg: 1, scope: !2868, file: !554, line: 774, type: !130)
!2873 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2868, file: !554, line: 774, type: !133)
!2874 = !DILocalVariable(name: "arg", arg: 3, scope: !2868, file: !554, line: 775, type: !136)
!2875 = !DILocalVariable(name: "argsize", arg: 4, scope: !2868, file: !554, line: 775, type: !133)
!2876 = !DILocalVariable(name: "o", arg: 5, scope: !2868, file: !554, line: 776, type: !2784)
!2877 = !DILocalVariable(name: "p", scope: !2868, file: !554, line: 778, type: !2784)
!2878 = !DILocalVariable(name: "saved_errno", scope: !2868, file: !554, line: 779, type: !87)
!2879 = !DILocalVariable(name: "r", scope: !2868, file: !554, line: 780, type: !133)
!2880 = !DILocation(line: 0, scope: !2868)
!2881 = !DILocation(line: 778, column: 37, scope: !2868)
!2882 = !DILocation(line: 779, column: 21, scope: !2868)
!2883 = !DILocation(line: 781, column: 43, scope: !2868)
!2884 = !DILocation(line: 781, column: 53, scope: !2868)
!2885 = !DILocation(line: 781, column: 63, scope: !2868)
!2886 = !DILocation(line: 782, column: 43, scope: !2868)
!2887 = !DILocation(line: 782, column: 58, scope: !2868)
!2888 = !DILocation(line: 780, column: 14, scope: !2868)
!2889 = !DILocation(line: 783, column: 9, scope: !2868)
!2890 = !DILocation(line: 784, column: 3, scope: !2868)
!2891 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !554, file: !554, line: 251, type: !2892, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2896)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!133, !130, !133, !136, !133, !577, !87, !2894, !136, !136}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2922, !2924, !2927, !2928, !2929, !2930, !2933, !2934, !2936, !2937, !2940, !2944, !2945, !2953, !2956, !2957, !2958}
!2897 = !DILocalVariable(name: "buffer", arg: 1, scope: !2891, file: !554, line: 251, type: !130)
!2898 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2891, file: !554, line: 251, type: !133)
!2899 = !DILocalVariable(name: "arg", arg: 3, scope: !2891, file: !554, line: 252, type: !136)
!2900 = !DILocalVariable(name: "argsize", arg: 4, scope: !2891, file: !554, line: 252, type: !133)
!2901 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2891, file: !554, line: 253, type: !577)
!2902 = !DILocalVariable(name: "flags", arg: 6, scope: !2891, file: !554, line: 253, type: !87)
!2903 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2891, file: !554, line: 254, type: !2894)
!2904 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2891, file: !554, line: 255, type: !136)
!2905 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2891, file: !554, line: 256, type: !136)
!2906 = !DILocalVariable(name: "unibyte_locale", scope: !2891, file: !554, line: 258, type: !196)
!2907 = !DILocalVariable(name: "len", scope: !2891, file: !554, line: 260, type: !133)
!2908 = !DILocalVariable(name: "orig_buffersize", scope: !2891, file: !554, line: 261, type: !133)
!2909 = !DILocalVariable(name: "quote_string", scope: !2891, file: !554, line: 262, type: !136)
!2910 = !DILocalVariable(name: "quote_string_len", scope: !2891, file: !554, line: 263, type: !133)
!2911 = !DILocalVariable(name: "backslash_escapes", scope: !2891, file: !554, line: 264, type: !196)
!2912 = !DILocalVariable(name: "elide_outer_quotes", scope: !2891, file: !554, line: 265, type: !196)
!2913 = !DILocalVariable(name: "encountered_single_quote", scope: !2891, file: !554, line: 266, type: !196)
!2914 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2891, file: !554, line: 267, type: !196)
!2915 = !DILabel(scope: !2891, name: "process_input", file: !554, line: 308)
!2916 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2891, file: !554, line: 309, type: !196)
!2917 = !DILocalVariable(name: "lq", scope: !2918, file: !554, line: 361, type: !136)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !554, line: 361, column: 11)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !554, line: 360, column: 13)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !554, line: 333, column: 7)
!2921 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 312, column: 5)
!2922 = !DILocalVariable(name: "i", scope: !2923, file: !554, line: 395, type: !133)
!2923 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 395, column: 3)
!2924 = !DILocalVariable(name: "is_right_quote", scope: !2925, file: !554, line: 397, type: !196)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !554, line: 396, column: 5)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !554, line: 395, column: 3)
!2927 = !DILocalVariable(name: "escaping", scope: !2925, file: !554, line: 398, type: !196)
!2928 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2925, file: !554, line: 399, type: !196)
!2929 = !DILocalVariable(name: "c", scope: !2925, file: !554, line: 417, type: !138)
!2930 = !DILabel(scope: !2931, name: "c_and_shell_escape", file: !554, line: 502)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 478, column: 9)
!2932 = distinct !DILexicalBlock(scope: !2925, file: !554, line: 419, column: 9)
!2933 = !DILabel(scope: !2931, name: "c_escape", file: !554, line: 507)
!2934 = !DILocalVariable(name: "m", scope: !2935, file: !554, line: 598, type: !133)
!2935 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 596, column: 11)
!2936 = !DILocalVariable(name: "printable", scope: !2935, file: !554, line: 600, type: !196)
!2937 = !DILocalVariable(name: "mbs", scope: !2938, file: !554, line: 609, type: !624)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !554, line: 608, column: 15)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !554, line: 602, column: 17)
!2940 = !DILocalVariable(name: "w", scope: !2941, file: !554, line: 618, type: !534)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !554, line: 617, column: 19)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !554, line: 616, column: 17)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !554, line: 616, column: 17)
!2944 = !DILocalVariable(name: "bytes", scope: !2941, file: !554, line: 619, type: !133)
!2945 = !DILocalVariable(name: "j", scope: !2946, file: !554, line: 648, type: !133)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !554, line: 648, column: 29)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !554, line: 647, column: 27)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !554, line: 645, column: 29)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !554, line: 636, column: 23)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !554, line: 628, column: 30)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !554, line: 623, column: 30)
!2952 = distinct !DILexicalBlock(scope: !2941, file: !554, line: 621, column: 25)
!2953 = !DILocalVariable(name: "ilim", scope: !2954, file: !554, line: 674, type: !133)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !554, line: 671, column: 15)
!2955 = distinct !DILexicalBlock(scope: !2935, file: !554, line: 670, column: 17)
!2956 = !DILabel(scope: !2925, name: "store_escape", file: !554, line: 709)
!2957 = !DILabel(scope: !2925, name: "store_c", file: !554, line: 712)
!2958 = !DILabel(scope: !2891, name: "force_outer_quoting_style", file: !554, line: 753)
!2959 = distinct !DIAssignID()
!2960 = distinct !DIAssignID()
!2961 = distinct !DIAssignID()
!2962 = distinct !DIAssignID()
!2963 = distinct !DIAssignID()
!2964 = !DILocation(line: 0, scope: !2938)
!2965 = distinct !DIAssignID()
!2966 = !DILocation(line: 0, scope: !2941)
!2967 = !DILocation(line: 0, scope: !2891)
!2968 = !DILocation(line: 258, column: 25, scope: !2891)
!2969 = !DILocation(line: 258, column: 36, scope: !2891)
!2970 = !DILocation(line: 267, column: 3, scope: !2891)
!2971 = !DILocation(line: 261, column: 10, scope: !2891)
!2972 = !DILocation(line: 262, column: 15, scope: !2891)
!2973 = !DILocation(line: 263, column: 10, scope: !2891)
!2974 = !DILocation(line: 308, column: 2, scope: !2891)
!2975 = !DILocation(line: 311, column: 3, scope: !2891)
!2976 = !DILocation(line: 318, column: 11, scope: !2921)
!2977 = !DILocation(line: 319, column: 9, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !554, line: 319, column: 9)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !554, line: 319, column: 9)
!2980 = distinct !DILexicalBlock(scope: !2921, file: !554, line: 318, column: 11)
!2981 = !DILocation(line: 319, column: 9, scope: !2979)
!2982 = !DILocation(line: 0, scope: !615, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 357, column: 26, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !554, line: 335, column: 11)
!2985 = distinct !DILexicalBlock(scope: !2920, file: !554, line: 334, column: 13)
!2986 = !DILocation(line: 199, column: 29, scope: !615, inlinedAt: !2983)
!2987 = !DILocation(line: 201, column: 19, scope: !2988, inlinedAt: !2983)
!2988 = distinct !DILexicalBlock(scope: !615, file: !554, line: 201, column: 7)
!2989 = !DILocation(line: 201, column: 7, scope: !615, inlinedAt: !2983)
!2990 = !DILocation(line: 229, column: 3, scope: !615, inlinedAt: !2983)
!2991 = !DILocation(line: 230, column: 3, scope: !615, inlinedAt: !2983)
!2992 = !DILocalVariable(name: "ps", arg: 1, scope: !2993, file: !2739, line: 1135, type: !2996)
!2993 = distinct !DISubprogram(name: "mbszero", scope: !2739, file: !2739, line: 1135, type: !2994, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !2997)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!2997 = !{!2992}
!2998 = !DILocation(line: 0, scope: !2993, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 230, column: 18, scope: !615, inlinedAt: !2983)
!3000 = !DILocalVariable(name: "__dest", arg: 1, scope: !3001, file: !1278, line: 57, type: !131)
!3001 = distinct !DISubprogram(name: "memset", scope: !1278, file: !1278, line: 57, type: !2748, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3002)
!3002 = !{!3000, !3003, !3004}
!3003 = !DILocalVariable(name: "__ch", arg: 2, scope: !3001, file: !1278, line: 57, type: !87)
!3004 = !DILocalVariable(name: "__len", arg: 3, scope: !3001, file: !1278, line: 57, type: !133)
!3005 = !DILocation(line: 0, scope: !3001, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 1137, column: 3, scope: !2993, inlinedAt: !2999)
!3007 = !DILocation(line: 59, column: 10, scope: !3001, inlinedAt: !3006)
!3008 = !DILocation(line: 231, column: 7, scope: !3009, inlinedAt: !2983)
!3009 = distinct !DILexicalBlock(scope: !615, file: !554, line: 231, column: 7)
!3010 = !DILocation(line: 231, column: 40, scope: !3009, inlinedAt: !2983)
!3011 = !DILocation(line: 231, column: 45, scope: !3009, inlinedAt: !2983)
!3012 = !DILocation(line: 235, column: 1, scope: !615, inlinedAt: !2983)
!3013 = !DILocation(line: 0, scope: !615, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 358, column: 27, scope: !2984)
!3015 = !DILocation(line: 199, column: 29, scope: !615, inlinedAt: !3014)
!3016 = !DILocation(line: 201, column: 19, scope: !2988, inlinedAt: !3014)
!3017 = !DILocation(line: 201, column: 7, scope: !615, inlinedAt: !3014)
!3018 = !DILocation(line: 229, column: 3, scope: !615, inlinedAt: !3014)
!3019 = !DILocation(line: 230, column: 3, scope: !615, inlinedAt: !3014)
!3020 = !DILocation(line: 0, scope: !2993, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 230, column: 18, scope: !615, inlinedAt: !3014)
!3022 = !DILocation(line: 0, scope: !3001, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 1137, column: 3, scope: !2993, inlinedAt: !3021)
!3024 = !DILocation(line: 59, column: 10, scope: !3001, inlinedAt: !3023)
!3025 = !DILocation(line: 231, column: 7, scope: !3009, inlinedAt: !3014)
!3026 = !DILocation(line: 231, column: 40, scope: !3009, inlinedAt: !3014)
!3027 = !DILocation(line: 231, column: 45, scope: !3009, inlinedAt: !3014)
!3028 = !DILocation(line: 235, column: 1, scope: !615, inlinedAt: !3014)
!3029 = !DILocation(line: 360, column: 13, scope: !2920)
!3030 = !DILocation(line: 0, scope: !2918)
!3031 = !DILocation(line: 361, column: 45, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2918, file: !554, line: 361, column: 11)
!3033 = !DILocation(line: 361, column: 11, scope: !2918)
!3034 = !DILocation(line: 362, column: 13, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !554, line: 362, column: 13)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !554, line: 362, column: 13)
!3037 = !DILocation(line: 362, column: 13, scope: !3036)
!3038 = !DILocation(line: 361, column: 52, scope: !3032)
!3039 = distinct !{!3039, !3033, !3040, !986}
!3040 = !DILocation(line: 362, column: 13, scope: !2918)
!3041 = !DILocation(line: 365, column: 28, scope: !2920)
!3042 = !DILocation(line: 260, column: 10, scope: !2891)
!3043 = !DILocation(line: 367, column: 7, scope: !2921)
!3044 = !DILocation(line: 373, column: 7, scope: !2921)
!3045 = !DILocation(line: 381, column: 11, scope: !2921)
!3046 = !DILocation(line: 376, column: 11, scope: !2921)
!3047 = !DILocation(line: 382, column: 9, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !554, line: 382, column: 9)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !554, line: 382, column: 9)
!3050 = distinct !DILexicalBlock(scope: !2921, file: !554, line: 381, column: 11)
!3051 = !DILocation(line: 382, column: 9, scope: !3049)
!3052 = !DILocation(line: 389, column: 7, scope: !2921)
!3053 = !DILocation(line: 392, column: 7, scope: !2921)
!3054 = !DILocation(line: 0, scope: !2923)
!3055 = !DILocation(line: 395, column: 8, scope: !2923)
!3056 = !DILocation(line: 395, scope: !2923)
!3057 = !DILocation(line: 395, column: 34, scope: !2926)
!3058 = !DILocation(line: 395, column: 26, scope: !2926)
!3059 = !DILocation(line: 395, column: 48, scope: !2926)
!3060 = !DILocation(line: 395, column: 55, scope: !2926)
!3061 = !DILocation(line: 395, column: 3, scope: !2923)
!3062 = !DILocation(line: 395, column: 67, scope: !2926)
!3063 = !DILocation(line: 0, scope: !2925)
!3064 = !DILocation(line: 402, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2925, file: !554, line: 401, column: 11)
!3066 = !DILocation(line: 404, column: 17, scope: !3065)
!3067 = !DILocation(line: 405, column: 39, scope: !3065)
!3068 = !DILocation(line: 409, column: 32, scope: !3065)
!3069 = !DILocation(line: 405, column: 19, scope: !3065)
!3070 = !DILocation(line: 405, column: 15, scope: !3065)
!3071 = !DILocation(line: 410, column: 11, scope: !3065)
!3072 = !DILocation(line: 410, column: 25, scope: !3065)
!3073 = !DILocalVariable(name: "__s1", arg: 1, scope: !3074, file: !952, line: 974, type: !1084)
!3074 = distinct !DISubprogram(name: "memeq", scope: !952, file: !952, line: 974, type: !2708, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3075)
!3075 = !{!3073, !3076, !3077}
!3076 = !DILocalVariable(name: "__s2", arg: 2, scope: !3074, file: !952, line: 974, type: !1084)
!3077 = !DILocalVariable(name: "__n", arg: 3, scope: !3074, file: !952, line: 974, type: !133)
!3078 = !DILocation(line: 0, scope: !3074, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 410, column: 14, scope: !3065)
!3080 = !DILocation(line: 976, column: 11, scope: !3074, inlinedAt: !3079)
!3081 = !DILocation(line: 976, column: 10, scope: !3074, inlinedAt: !3079)
!3082 = !DILocation(line: 401, column: 11, scope: !2925)
!3083 = !DILocation(line: 417, column: 25, scope: !2925)
!3084 = !DILocation(line: 418, column: 7, scope: !2925)
!3085 = !DILocation(line: 421, column: 15, scope: !2932)
!3086 = !DILocation(line: 423, column: 15, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !554, line: 423, column: 15)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !554, line: 422, column: 13)
!3089 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 421, column: 15)
!3090 = !DILocation(line: 423, column: 15, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3087, file: !554, line: 423, column: 15)
!3092 = !DILocation(line: 423, column: 15, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !554, line: 423, column: 15)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !554, line: 423, column: 15)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !554, line: 423, column: 15)
!3096 = !DILocation(line: 423, column: 15, scope: !3094)
!3097 = !DILocation(line: 423, column: 15, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !554, line: 423, column: 15)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !554, line: 423, column: 15)
!3100 = !DILocation(line: 423, column: 15, scope: !3099)
!3101 = !DILocation(line: 423, column: 15, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !554, line: 423, column: 15)
!3103 = distinct !DILexicalBlock(scope: !3095, file: !554, line: 423, column: 15)
!3104 = !DILocation(line: 423, column: 15, scope: !3103)
!3105 = !DILocation(line: 423, column: 15, scope: !3095)
!3106 = !DILocation(line: 423, column: 15, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !554, line: 423, column: 15)
!3108 = distinct !DILexicalBlock(scope: !3087, file: !554, line: 423, column: 15)
!3109 = !DILocation(line: 423, column: 15, scope: !3108)
!3110 = !DILocation(line: 431, column: 19, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3088, file: !554, line: 430, column: 19)
!3112 = !DILocation(line: 431, column: 24, scope: !3111)
!3113 = !DILocation(line: 431, column: 28, scope: !3111)
!3114 = !DILocation(line: 431, column: 38, scope: !3111)
!3115 = !DILocation(line: 431, column: 48, scope: !3111)
!3116 = !DILocation(line: 431, column: 59, scope: !3111)
!3117 = !DILocation(line: 433, column: 19, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !554, line: 433, column: 19)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !554, line: 433, column: 19)
!3120 = distinct !DILexicalBlock(scope: !3111, file: !554, line: 432, column: 17)
!3121 = !DILocation(line: 433, column: 19, scope: !3119)
!3122 = !DILocation(line: 434, column: 19, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !554, line: 434, column: 19)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !554, line: 434, column: 19)
!3125 = !DILocation(line: 434, column: 19, scope: !3124)
!3126 = !DILocation(line: 435, column: 17, scope: !3120)
!3127 = !DILocation(line: 442, column: 20, scope: !3089)
!3128 = !DILocation(line: 447, column: 11, scope: !2932)
!3129 = !DILocation(line: 450, column: 19, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 448, column: 13)
!3131 = !DILocation(line: 456, column: 19, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3130, file: !554, line: 455, column: 19)
!3133 = !DILocation(line: 456, column: 24, scope: !3132)
!3134 = !DILocation(line: 456, column: 28, scope: !3132)
!3135 = !DILocation(line: 456, column: 38, scope: !3132)
!3136 = !DILocation(line: 456, column: 41, scope: !3132)
!3137 = !DILocation(line: 456, column: 52, scope: !3132)
!3138 = !DILocation(line: 455, column: 19, scope: !3130)
!3139 = !DILocation(line: 457, column: 25, scope: !3132)
!3140 = !DILocation(line: 457, column: 17, scope: !3132)
!3141 = !DILocation(line: 464, column: 25, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3132, file: !554, line: 458, column: 19)
!3143 = !DILocation(line: 468, column: 21, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !554, line: 468, column: 21)
!3145 = distinct !DILexicalBlock(scope: !3142, file: !554, line: 468, column: 21)
!3146 = !DILocation(line: 468, column: 21, scope: !3145)
!3147 = !DILocation(line: 469, column: 21, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !554, line: 469, column: 21)
!3149 = distinct !DILexicalBlock(scope: !3142, file: !554, line: 469, column: 21)
!3150 = !DILocation(line: 469, column: 21, scope: !3149)
!3151 = !DILocation(line: 470, column: 21, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !554, line: 470, column: 21)
!3153 = distinct !DILexicalBlock(scope: !3142, file: !554, line: 470, column: 21)
!3154 = !DILocation(line: 470, column: 21, scope: !3153)
!3155 = !DILocation(line: 471, column: 21, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !554, line: 471, column: 21)
!3157 = distinct !DILexicalBlock(scope: !3142, file: !554, line: 471, column: 21)
!3158 = !DILocation(line: 471, column: 21, scope: !3157)
!3159 = !DILocation(line: 472, column: 21, scope: !3142)
!3160 = !DILocation(line: 482, column: 33, scope: !2931)
!3161 = !DILocation(line: 483, column: 33, scope: !2931)
!3162 = !DILocation(line: 485, column: 33, scope: !2931)
!3163 = !DILocation(line: 486, column: 33, scope: !2931)
!3164 = !DILocation(line: 487, column: 33, scope: !2931)
!3165 = !DILocation(line: 490, column: 17, scope: !2931)
!3166 = !DILocation(line: 492, column: 21, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !554, line: 491, column: 15)
!3168 = distinct !DILexicalBlock(scope: !2931, file: !554, line: 490, column: 17)
!3169 = !DILocation(line: 499, column: 35, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !2931, file: !554, line: 499, column: 17)
!3171 = !DILocation(line: 0, scope: !2931)
!3172 = !DILocation(line: 502, column: 11, scope: !2931)
!3173 = !DILocation(line: 504, column: 17, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !2931, file: !554, line: 503, column: 17)
!3175 = !DILocation(line: 507, column: 11, scope: !2931)
!3176 = !DILocation(line: 508, column: 17, scope: !2931)
!3177 = !DILocation(line: 517, column: 15, scope: !2932)
!3178 = !DILocation(line: 517, column: 40, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 517, column: 15)
!3180 = !DILocation(line: 517, column: 47, scope: !3179)
!3181 = !DILocation(line: 517, column: 18, scope: !3179)
!3182 = !DILocation(line: 521, column: 17, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 521, column: 15)
!3184 = !DILocation(line: 521, column: 15, scope: !2932)
!3185 = !DILocation(line: 525, column: 11, scope: !2932)
!3186 = !DILocation(line: 537, column: 15, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 536, column: 15)
!3188 = !DILocation(line: 536, column: 15, scope: !2932)
!3189 = !DILocation(line: 544, column: 15, scope: !2932)
!3190 = !DILocation(line: 546, column: 19, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !554, line: 545, column: 13)
!3192 = distinct !DILexicalBlock(scope: !2932, file: !554, line: 544, column: 15)
!3193 = !DILocation(line: 549, column: 19, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3191, file: !554, line: 549, column: 19)
!3195 = !DILocation(line: 549, column: 30, scope: !3194)
!3196 = !DILocation(line: 558, column: 15, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !554, line: 558, column: 15)
!3198 = distinct !DILexicalBlock(scope: !3191, file: !554, line: 558, column: 15)
!3199 = !DILocation(line: 558, column: 15, scope: !3198)
!3200 = !DILocation(line: 559, column: 15, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !554, line: 559, column: 15)
!3202 = distinct !DILexicalBlock(scope: !3191, file: !554, line: 559, column: 15)
!3203 = !DILocation(line: 559, column: 15, scope: !3202)
!3204 = !DILocation(line: 560, column: 15, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !554, line: 560, column: 15)
!3206 = distinct !DILexicalBlock(scope: !3191, file: !554, line: 560, column: 15)
!3207 = !DILocation(line: 560, column: 15, scope: !3206)
!3208 = !DILocation(line: 562, column: 13, scope: !3191)
!3209 = !DILocation(line: 602, column: 17, scope: !2935)
!3210 = !DILocation(line: 0, scope: !2935)
!3211 = !DILocation(line: 605, column: 29, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !2939, file: !554, line: 603, column: 15)
!3213 = !DILocation(line: 605, column: 41, scope: !3212)
!3214 = !DILocation(line: 606, column: 15, scope: !3212)
!3215 = !DILocation(line: 609, column: 17, scope: !2938)
!3216 = !DILocation(line: 0, scope: !2993, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 609, column: 32, scope: !2938)
!3218 = !DILocation(line: 0, scope: !3001, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1137, column: 3, scope: !2993, inlinedAt: !3217)
!3220 = !DILocation(line: 59, column: 10, scope: !3001, inlinedAt: !3219)
!3221 = !DILocation(line: 613, column: 29, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !2938, file: !554, line: 613, column: 21)
!3223 = !DILocation(line: 613, column: 21, scope: !2938)
!3224 = !DILocation(line: 614, column: 29, scope: !3222)
!3225 = !DILocation(line: 614, column: 19, scope: !3222)
!3226 = !DILocation(line: 618, column: 21, scope: !2941)
!3227 = !DILocation(line: 620, column: 54, scope: !2941)
!3228 = !DILocation(line: 619, column: 36, scope: !2941)
!3229 = !DILocation(line: 621, column: 25, scope: !2941)
!3230 = !DILocation(line: 631, column: 38, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !2950, file: !554, line: 629, column: 23)
!3232 = !DILocation(line: 631, column: 48, scope: !3231)
!3233 = !DILocation(line: 631, column: 25, scope: !3231)
!3234 = !DILocation(line: 626, column: 25, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !2951, file: !554, line: 624, column: 23)
!3236 = !DILocation(line: 631, column: 51, scope: !3231)
!3237 = !DILocation(line: 632, column: 28, scope: !3231)
!3238 = !DILocation(line: 631, column: 34, scope: !3231)
!3239 = distinct !{!3239, !3233, !3237, !986}
!3240 = !DILocation(line: 0, scope: !2946)
!3241 = !DILocation(line: 646, column: 29, scope: !2948)
!3242 = !DILocation(line: 648, column: 29, scope: !2946)
!3243 = !DILocation(line: 649, column: 39, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !2946, file: !554, line: 648, column: 29)
!3245 = !DILocation(line: 649, column: 31, scope: !3244)
!3246 = !DILocation(line: 648, column: 60, scope: !3244)
!3247 = !DILocation(line: 648, column: 50, scope: !3244)
!3248 = distinct !{!3248, !3242, !3249, !986}
!3249 = !DILocation(line: 654, column: 33, scope: !2946)
!3250 = !DILocation(line: 657, column: 43, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2949, file: !554, line: 657, column: 29)
!3252 = !DILocalVariable(name: "wc", arg: 1, scope: !3253, file: !3254, line: 865, type: !3257)
!3253 = distinct !DISubprogram(name: "c32isprint", scope: !3254, file: !3254, line: 865, type: !3255, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3259)
!3254 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!87, !3257}
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3258, line: 20, baseType: !78)
!3258 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3259 = !{!3252}
!3260 = !DILocation(line: 0, scope: !3253, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 657, column: 31, scope: !3251)
!3262 = !DILocation(line: 871, column: 10, scope: !3253, inlinedAt: !3261)
!3263 = !DILocation(line: 657, column: 31, scope: !3251)
!3264 = !DILocation(line: 664, column: 23, scope: !2941)
!3265 = !DILocation(line: 665, column: 19, scope: !2942)
!3266 = !DILocation(line: 666, column: 15, scope: !2939)
!3267 = !DILocation(line: 753, column: 2, scope: !2891)
!3268 = !DILocation(line: 756, column: 51, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 756, column: 7)
!3270 = !DILocation(line: 0, scope: !2939)
!3271 = !DILocation(line: 670, column: 19, scope: !2955)
!3272 = !DILocation(line: 670, column: 23, scope: !2955)
!3273 = !DILocation(line: 674, column: 33, scope: !2954)
!3274 = !DILocation(line: 0, scope: !2954)
!3275 = !DILocation(line: 676, column: 17, scope: !2954)
!3276 = !DILocation(line: 678, column: 43, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !554, line: 678, column: 25)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !554, line: 677, column: 19)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !554, line: 676, column: 17)
!3280 = distinct !DILexicalBlock(scope: !2954, file: !554, line: 676, column: 17)
!3281 = !DILocation(line: 680, column: 25, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !554, line: 680, column: 25)
!3283 = distinct !DILexicalBlock(scope: !3277, file: !554, line: 679, column: 23)
!3284 = !DILocation(line: 680, column: 25, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !554, line: 680, column: 25)
!3286 = !DILocation(line: 680, column: 25, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !554, line: 680, column: 25)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !554, line: 680, column: 25)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !554, line: 680, column: 25)
!3290 = !DILocation(line: 680, column: 25, scope: !3288)
!3291 = !DILocation(line: 680, column: 25, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !554, line: 680, column: 25)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !554, line: 680, column: 25)
!3294 = !DILocation(line: 680, column: 25, scope: !3293)
!3295 = !DILocation(line: 680, column: 25, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !554, line: 680, column: 25)
!3297 = distinct !DILexicalBlock(scope: !3289, file: !554, line: 680, column: 25)
!3298 = !DILocation(line: 680, column: 25, scope: !3297)
!3299 = !DILocation(line: 680, column: 25, scope: !3289)
!3300 = !DILocation(line: 680, column: 25, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !554, line: 680, column: 25)
!3302 = distinct !DILexicalBlock(scope: !3282, file: !554, line: 680, column: 25)
!3303 = !DILocation(line: 680, column: 25, scope: !3302)
!3304 = !DILocation(line: 681, column: 25, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !554, line: 681, column: 25)
!3306 = distinct !DILexicalBlock(scope: !3283, file: !554, line: 681, column: 25)
!3307 = !DILocation(line: 681, column: 25, scope: !3306)
!3308 = !DILocation(line: 682, column: 25, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !554, line: 682, column: 25)
!3310 = distinct !DILexicalBlock(scope: !3283, file: !554, line: 682, column: 25)
!3311 = !DILocation(line: 682, column: 25, scope: !3310)
!3312 = !DILocation(line: 683, column: 38, scope: !3283)
!3313 = !DILocation(line: 683, column: 33, scope: !3283)
!3314 = !DILocation(line: 684, column: 23, scope: !3283)
!3315 = !DILocation(line: 685, column: 30, scope: !3277)
!3316 = !DILocation(line: 687, column: 25, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !554, line: 687, column: 25)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !554, line: 687, column: 25)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !554, line: 686, column: 23)
!3320 = distinct !DILexicalBlock(scope: !3277, file: !554, line: 685, column: 30)
!3321 = !DILocation(line: 687, column: 25, scope: !3318)
!3322 = !DILocation(line: 689, column: 23, scope: !3319)
!3323 = !DILocation(line: 690, column: 35, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3278, file: !554, line: 690, column: 25)
!3325 = !DILocation(line: 690, column: 30, scope: !3324)
!3326 = !DILocation(line: 690, column: 25, scope: !3278)
!3327 = !DILocation(line: 692, column: 21, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !554, line: 692, column: 21)
!3329 = distinct !DILexicalBlock(scope: !3278, file: !554, line: 692, column: 21)
!3330 = !DILocation(line: 692, column: 21, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !554, line: 692, column: 21)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !554, line: 692, column: 21)
!3333 = distinct !DILexicalBlock(scope: !3328, file: !554, line: 692, column: 21)
!3334 = !DILocation(line: 692, column: 21, scope: !3332)
!3335 = !DILocation(line: 692, column: 21, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !554, line: 692, column: 21)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !554, line: 692, column: 21)
!3338 = !DILocation(line: 692, column: 21, scope: !3337)
!3339 = !DILocation(line: 692, column: 21, scope: !3333)
!3340 = !DILocation(line: 0, scope: !3278)
!3341 = !DILocation(line: 693, column: 21, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !554, line: 693, column: 21)
!3343 = distinct !DILexicalBlock(scope: !3278, file: !554, line: 693, column: 21)
!3344 = !DILocation(line: 693, column: 21, scope: !3343)
!3345 = !DILocation(line: 694, column: 25, scope: !3278)
!3346 = !DILocation(line: 676, column: 17, scope: !3279)
!3347 = distinct !{!3347, !3348, !3349}
!3348 = !DILocation(line: 676, column: 17, scope: !3280)
!3349 = !DILocation(line: 695, column: 19, scope: !3280)
!3350 = !DILocation(line: 409, column: 30, scope: !3065)
!3351 = !DILocation(line: 702, column: 34, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !2925, file: !554, line: 702, column: 11)
!3353 = !DILocation(line: 704, column: 14, scope: !3352)
!3354 = !DILocation(line: 705, column: 14, scope: !3352)
!3355 = !DILocation(line: 705, column: 35, scope: !3352)
!3356 = !DILocation(line: 705, column: 17, scope: !3352)
!3357 = !DILocation(line: 705, column: 47, scope: !3352)
!3358 = !DILocation(line: 705, column: 65, scope: !3352)
!3359 = !DILocation(line: 706, column: 11, scope: !3352)
!3360 = !DILocation(line: 702, column: 11, scope: !2925)
!3361 = !DILocation(line: 395, column: 15, scope: !2923)
!3362 = !DILocation(line: 709, column: 5, scope: !2925)
!3363 = !DILocation(line: 710, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !2925, file: !554, line: 710, column: 7)
!3365 = !DILocation(line: 710, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3364, file: !554, line: 710, column: 7)
!3367 = !DILocation(line: 710, column: 7, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !554, line: 710, column: 7)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !554, line: 710, column: 7)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !554, line: 710, column: 7)
!3371 = !DILocation(line: 710, column: 7, scope: !3369)
!3372 = !DILocation(line: 710, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !554, line: 710, column: 7)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !554, line: 710, column: 7)
!3375 = !DILocation(line: 710, column: 7, scope: !3374)
!3376 = !DILocation(line: 710, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !554, line: 710, column: 7)
!3378 = distinct !DILexicalBlock(scope: !3370, file: !554, line: 710, column: 7)
!3379 = !DILocation(line: 710, column: 7, scope: !3378)
!3380 = !DILocation(line: 710, column: 7, scope: !3370)
!3381 = !DILocation(line: 710, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !554, line: 710, column: 7)
!3383 = distinct !DILexicalBlock(scope: !3364, file: !554, line: 710, column: 7)
!3384 = !DILocation(line: 710, column: 7, scope: !3383)
!3385 = !DILocation(line: 712, column: 5, scope: !2925)
!3386 = !DILocation(line: 713, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !554, line: 713, column: 7)
!3388 = distinct !DILexicalBlock(scope: !2925, file: !554, line: 713, column: 7)
!3389 = !DILocation(line: 417, column: 21, scope: !2925)
!3390 = !DILocation(line: 713, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !554, line: 713, column: 7)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !554, line: 713, column: 7)
!3393 = distinct !DILexicalBlock(scope: !3387, file: !554, line: 713, column: 7)
!3394 = !DILocation(line: 713, column: 7, scope: !3392)
!3395 = !DILocation(line: 713, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !554, line: 713, column: 7)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !554, line: 713, column: 7)
!3398 = !DILocation(line: 713, column: 7, scope: !3397)
!3399 = !DILocation(line: 713, column: 7, scope: !3393)
!3400 = !DILocation(line: 714, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !554, line: 714, column: 7)
!3402 = distinct !DILexicalBlock(scope: !2925, file: !554, line: 714, column: 7)
!3403 = !DILocation(line: 714, column: 7, scope: !3402)
!3404 = !DILocation(line: 716, column: 11, scope: !2925)
!3405 = !DILocation(line: 718, column: 5, scope: !2926)
!3406 = !DILocation(line: 395, column: 82, scope: !2926)
!3407 = !DILocation(line: 395, column: 3, scope: !2926)
!3408 = distinct !{!3408, !3061, !3409, !986}
!3409 = !DILocation(line: 718, column: 5, scope: !2923)
!3410 = !DILocation(line: 720, column: 11, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 720, column: 7)
!3412 = !DILocation(line: 720, column: 16, scope: !3411)
!3413 = !DILocation(line: 728, column: 51, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 728, column: 7)
!3415 = !DILocation(line: 731, column: 11, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3414, file: !554, line: 730, column: 5)
!3417 = !DILocation(line: 732, column: 16, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3416, file: !554, line: 731, column: 11)
!3419 = !DILocation(line: 732, column: 9, scope: !3418)
!3420 = !DILocation(line: 736, column: 18, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !554, line: 736, column: 16)
!3422 = !DILocation(line: 736, column: 29, scope: !3421)
!3423 = !DILocation(line: 745, column: 7, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 745, column: 7)
!3425 = !DILocation(line: 745, column: 20, scope: !3424)
!3426 = !DILocation(line: 746, column: 12, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !554, line: 746, column: 5)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !554, line: 746, column: 5)
!3429 = !DILocation(line: 746, column: 5, scope: !3428)
!3430 = !DILocation(line: 747, column: 7, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !554, line: 747, column: 7)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !554, line: 747, column: 7)
!3433 = !DILocation(line: 747, column: 7, scope: !3432)
!3434 = !DILocation(line: 746, column: 39, scope: !3427)
!3435 = distinct !{!3435, !3429, !3436, !986}
!3436 = !DILocation(line: 747, column: 7, scope: !3428)
!3437 = !DILocation(line: 749, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !2891, file: !554, line: 749, column: 7)
!3439 = !DILocation(line: 749, column: 7, scope: !2891)
!3440 = !DILocation(line: 750, column: 5, scope: !3438)
!3441 = !DILocation(line: 750, column: 17, scope: !3438)
!3442 = !DILocation(line: 756, column: 21, scope: !3269)
!3443 = !DILocation(line: 760, column: 42, scope: !2891)
!3444 = !DILocation(line: 758, column: 10, scope: !2891)
!3445 = !DILocation(line: 758, column: 3, scope: !2891)
!3446 = !DILocation(line: 762, column: 1, scope: !2891)
!3447 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1060, file: !1060, line: 98, type: !3448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!133}
!3450 = !DISubprogram(name: "strlen", scope: !1056, file: !1056, line: 407, type: !3451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!135, !136}
!3453 = !DISubprogram(name: "iswprint", scope: !3454, file: !3454, line: 120, type: !3255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3454 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3455 = distinct !DISubprogram(name: "quotearg_alloc", scope: !554, file: !554, line: 788, type: !3456, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!130, !136, !133, !2784}
!3458 = !{!3459, !3460, !3461}
!3459 = !DILocalVariable(name: "arg", arg: 1, scope: !3455, file: !554, line: 788, type: !136)
!3460 = !DILocalVariable(name: "argsize", arg: 2, scope: !3455, file: !554, line: 788, type: !133)
!3461 = !DILocalVariable(name: "o", arg: 3, scope: !3455, file: !554, line: 789, type: !2784)
!3462 = !DILocation(line: 0, scope: !3455)
!3463 = !DILocalVariable(name: "arg", arg: 1, scope: !3464, file: !554, line: 801, type: !136)
!3464 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !554, file: !554, line: 801, type: !3465, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!130, !136, !133, !798, !2784}
!3467 = !{!3463, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3468 = !DILocalVariable(name: "argsize", arg: 2, scope: !3464, file: !554, line: 801, type: !133)
!3469 = !DILocalVariable(name: "size", arg: 3, scope: !3464, file: !554, line: 801, type: !798)
!3470 = !DILocalVariable(name: "o", arg: 4, scope: !3464, file: !554, line: 802, type: !2784)
!3471 = !DILocalVariable(name: "p", scope: !3464, file: !554, line: 804, type: !2784)
!3472 = !DILocalVariable(name: "saved_errno", scope: !3464, file: !554, line: 805, type: !87)
!3473 = !DILocalVariable(name: "flags", scope: !3464, file: !554, line: 807, type: !87)
!3474 = !DILocalVariable(name: "bufsize", scope: !3464, file: !554, line: 808, type: !133)
!3475 = !DILocalVariable(name: "buf", scope: !3464, file: !554, line: 812, type: !130)
!3476 = !DILocation(line: 0, scope: !3464, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 791, column: 10, scope: !3455)
!3478 = !DILocation(line: 804, column: 37, scope: !3464, inlinedAt: !3477)
!3479 = !DILocation(line: 805, column: 21, scope: !3464, inlinedAt: !3477)
!3480 = !DILocation(line: 807, column: 18, scope: !3464, inlinedAt: !3477)
!3481 = !DILocation(line: 807, column: 24, scope: !3464, inlinedAt: !3477)
!3482 = !DILocation(line: 808, column: 72, scope: !3464, inlinedAt: !3477)
!3483 = !DILocation(line: 809, column: 56, scope: !3464, inlinedAt: !3477)
!3484 = !DILocation(line: 810, column: 49, scope: !3464, inlinedAt: !3477)
!3485 = !DILocation(line: 811, column: 49, scope: !3464, inlinedAt: !3477)
!3486 = !DILocation(line: 808, column: 20, scope: !3464, inlinedAt: !3477)
!3487 = !DILocation(line: 811, column: 62, scope: !3464, inlinedAt: !3477)
!3488 = !DILocation(line: 812, column: 15, scope: !3464, inlinedAt: !3477)
!3489 = !DILocation(line: 813, column: 60, scope: !3464, inlinedAt: !3477)
!3490 = !DILocation(line: 815, column: 32, scope: !3464, inlinedAt: !3477)
!3491 = !DILocation(line: 815, column: 47, scope: !3464, inlinedAt: !3477)
!3492 = !DILocation(line: 813, column: 3, scope: !3464, inlinedAt: !3477)
!3493 = !DILocation(line: 816, column: 9, scope: !3464, inlinedAt: !3477)
!3494 = !DILocation(line: 791, column: 3, scope: !3455)
!3495 = !DILocation(line: 0, scope: !3464)
!3496 = !DILocation(line: 804, column: 37, scope: !3464)
!3497 = !DILocation(line: 805, column: 21, scope: !3464)
!3498 = !DILocation(line: 807, column: 18, scope: !3464)
!3499 = !DILocation(line: 807, column: 27, scope: !3464)
!3500 = !DILocation(line: 807, column: 24, scope: !3464)
!3501 = !DILocation(line: 808, column: 72, scope: !3464)
!3502 = !DILocation(line: 809, column: 56, scope: !3464)
!3503 = !DILocation(line: 810, column: 49, scope: !3464)
!3504 = !DILocation(line: 811, column: 49, scope: !3464)
!3505 = !DILocation(line: 808, column: 20, scope: !3464)
!3506 = !DILocation(line: 811, column: 62, scope: !3464)
!3507 = !DILocation(line: 812, column: 15, scope: !3464)
!3508 = !DILocation(line: 813, column: 60, scope: !3464)
!3509 = !DILocation(line: 815, column: 32, scope: !3464)
!3510 = !DILocation(line: 815, column: 47, scope: !3464)
!3511 = !DILocation(line: 813, column: 3, scope: !3464)
!3512 = !DILocation(line: 816, column: 9, scope: !3464)
!3513 = !DILocation(line: 817, column: 7, scope: !3464)
!3514 = !DILocation(line: 818, column: 11, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3464, file: !554, line: 817, column: 7)
!3516 = !DILocation(line: 818, column: 5, scope: !3515)
!3517 = !DILocation(line: 819, column: 3, scope: !3464)
!3518 = distinct !DISubprogram(name: "quotearg_free", scope: !554, file: !554, line: 837, type: !510, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3519)
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "sv", scope: !3518, file: !554, line: 839, type: !638)
!3521 = !DILocalVariable(name: "i", scope: !3522, file: !554, line: 840, type: !87)
!3522 = distinct !DILexicalBlock(scope: !3518, file: !554, line: 840, column: 3)
!3523 = !DILocation(line: 839, column: 24, scope: !3518)
!3524 = !DILocation(line: 0, scope: !3518)
!3525 = !DILocation(line: 0, scope: !3522)
!3526 = !DILocation(line: 840, column: 21, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3522, file: !554, line: 840, column: 3)
!3528 = !DILocation(line: 840, column: 3, scope: !3522)
!3529 = !DILocation(line: 842, column: 13, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3518, file: !554, line: 842, column: 7)
!3531 = !{!3532, !870, i64 8}
!3532 = !{!"slotvec", !1304, i64 0, !870, i64 8}
!3533 = !DILocation(line: 842, column: 17, scope: !3530)
!3534 = !DILocation(line: 842, column: 7, scope: !3518)
!3535 = !DILocation(line: 841, column: 17, scope: !3527)
!3536 = !DILocation(line: 841, column: 5, scope: !3527)
!3537 = !DILocation(line: 840, column: 32, scope: !3527)
!3538 = distinct !{!3538, !3528, !3539, !986}
!3539 = !DILocation(line: 841, column: 20, scope: !3522)
!3540 = !DILocation(line: 844, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3530, file: !554, line: 843, column: 5)
!3542 = !DILocation(line: 845, column: 21, scope: !3541)
!3543 = !{!3532, !1304, i64 0}
!3544 = !DILocation(line: 846, column: 20, scope: !3541)
!3545 = !DILocation(line: 847, column: 5, scope: !3541)
!3546 = !DILocation(line: 848, column: 10, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3518, file: !554, line: 848, column: 7)
!3548 = !DILocation(line: 848, column: 7, scope: !3518)
!3549 = !DILocation(line: 850, column: 7, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3547, file: !554, line: 849, column: 5)
!3551 = !DILocation(line: 851, column: 15, scope: !3550)
!3552 = !DILocation(line: 852, column: 5, scope: !3550)
!3553 = !DILocation(line: 853, column: 10, scope: !3518)
!3554 = !DILocation(line: 854, column: 1, scope: !3518)
!3555 = distinct !DISubprogram(name: "quotearg_n", scope: !554, file: !554, line: 919, type: !1053, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3556)
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "n", arg: 1, scope: !3555, file: !554, line: 919, type: !87)
!3558 = !DILocalVariable(name: "arg", arg: 2, scope: !3555, file: !554, line: 919, type: !136)
!3559 = !DILocation(line: 0, scope: !3555)
!3560 = !DILocation(line: 921, column: 10, scope: !3555)
!3561 = !DILocation(line: 921, column: 3, scope: !3555)
!3562 = distinct !DISubprogram(name: "quotearg_n_options", scope: !554, file: !554, line: 866, type: !3563, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!130, !87, !136, !133, !2784}
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3576, !3577, !3579, !3580, !3581}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !554, line: 866, type: !87)
!3567 = !DILocalVariable(name: "arg", arg: 2, scope: !3562, file: !554, line: 866, type: !136)
!3568 = !DILocalVariable(name: "argsize", arg: 3, scope: !3562, file: !554, line: 866, type: !133)
!3569 = !DILocalVariable(name: "options", arg: 4, scope: !3562, file: !554, line: 867, type: !2784)
!3570 = !DILocalVariable(name: "saved_errno", scope: !3562, file: !554, line: 869, type: !87)
!3571 = !DILocalVariable(name: "sv", scope: !3562, file: !554, line: 871, type: !638)
!3572 = !DILocalVariable(name: "nslots_max", scope: !3562, file: !554, line: 873, type: !87)
!3573 = !DILocalVariable(name: "preallocated", scope: !3574, file: !554, line: 879, type: !196)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !554, line: 878, column: 5)
!3575 = distinct !DILexicalBlock(scope: !3562, file: !554, line: 877, column: 7)
!3576 = !DILocalVariable(name: "new_nslots", scope: !3574, file: !554, line: 880, type: !811)
!3577 = !DILocalVariable(name: "size", scope: !3578, file: !554, line: 891, type: !133)
!3578 = distinct !DILexicalBlock(scope: !3562, file: !554, line: 890, column: 3)
!3579 = !DILocalVariable(name: "val", scope: !3578, file: !554, line: 892, type: !130)
!3580 = !DILocalVariable(name: "flags", scope: !3578, file: !554, line: 894, type: !87)
!3581 = !DILocalVariable(name: "qsize", scope: !3578, file: !554, line: 895, type: !133)
!3582 = distinct !DIAssignID()
!3583 = !DILocation(line: 0, scope: !3574)
!3584 = !DILocation(line: 0, scope: !3562)
!3585 = !DILocation(line: 869, column: 21, scope: !3562)
!3586 = !DILocation(line: 871, column: 24, scope: !3562)
!3587 = !DILocation(line: 874, column: 17, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3562, file: !554, line: 874, column: 7)
!3589 = !DILocation(line: 875, column: 5, scope: !3588)
!3590 = !DILocation(line: 877, column: 7, scope: !3575)
!3591 = !DILocation(line: 877, column: 14, scope: !3575)
!3592 = !DILocation(line: 877, column: 7, scope: !3562)
!3593 = !DILocation(line: 879, column: 31, scope: !3574)
!3594 = !DILocation(line: 880, column: 7, scope: !3574)
!3595 = !DILocation(line: 880, column: 26, scope: !3574)
!3596 = !DILocation(line: 880, column: 13, scope: !3574)
!3597 = distinct !DIAssignID()
!3598 = !DILocation(line: 882, column: 31, scope: !3574)
!3599 = !DILocation(line: 883, column: 33, scope: !3574)
!3600 = !DILocation(line: 883, column: 42, scope: !3574)
!3601 = !DILocation(line: 883, column: 31, scope: !3574)
!3602 = !DILocation(line: 882, column: 22, scope: !3574)
!3603 = !DILocation(line: 882, column: 15, scope: !3574)
!3604 = !DILocation(line: 884, column: 11, scope: !3574)
!3605 = !DILocation(line: 885, column: 15, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3574, file: !554, line: 884, column: 11)
!3607 = !{i64 0, i64 8, !1322, i64 8, i64 8, !869}
!3608 = !DILocation(line: 885, column: 9, scope: !3606)
!3609 = !DILocation(line: 886, column: 20, scope: !3574)
!3610 = !DILocation(line: 886, column: 18, scope: !3574)
!3611 = !DILocation(line: 886, column: 32, scope: !3574)
!3612 = !DILocation(line: 886, column: 43, scope: !3574)
!3613 = !DILocation(line: 886, column: 53, scope: !3574)
!3614 = !DILocation(line: 0, scope: !3001, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 886, column: 7, scope: !3574)
!3616 = !DILocation(line: 59, column: 10, scope: !3001, inlinedAt: !3615)
!3617 = !DILocation(line: 887, column: 16, scope: !3574)
!3618 = !DILocation(line: 887, column: 14, scope: !3574)
!3619 = !DILocation(line: 888, column: 5, scope: !3575)
!3620 = !DILocation(line: 888, column: 5, scope: !3574)
!3621 = !DILocation(line: 891, column: 19, scope: !3578)
!3622 = !DILocation(line: 891, column: 25, scope: !3578)
!3623 = !DILocation(line: 0, scope: !3578)
!3624 = !DILocation(line: 892, column: 23, scope: !3578)
!3625 = !DILocation(line: 894, column: 26, scope: !3578)
!3626 = !DILocation(line: 894, column: 32, scope: !3578)
!3627 = !DILocation(line: 896, column: 55, scope: !3578)
!3628 = !DILocation(line: 897, column: 55, scope: !3578)
!3629 = !DILocation(line: 898, column: 55, scope: !3578)
!3630 = !DILocation(line: 899, column: 55, scope: !3578)
!3631 = !DILocation(line: 895, column: 20, scope: !3578)
!3632 = !DILocation(line: 901, column: 14, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3578, file: !554, line: 901, column: 9)
!3634 = !DILocation(line: 901, column: 9, scope: !3578)
!3635 = !DILocation(line: 903, column: 35, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !554, line: 902, column: 7)
!3637 = !DILocation(line: 903, column: 20, scope: !3636)
!3638 = !DILocation(line: 904, column: 17, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !554, line: 904, column: 13)
!3640 = !DILocation(line: 904, column: 13, scope: !3636)
!3641 = !DILocation(line: 905, column: 11, scope: !3639)
!3642 = !DILocation(line: 906, column: 27, scope: !3636)
!3643 = !DILocation(line: 906, column: 19, scope: !3636)
!3644 = !DILocation(line: 907, column: 69, scope: !3636)
!3645 = !DILocation(line: 909, column: 44, scope: !3636)
!3646 = !DILocation(line: 910, column: 44, scope: !3636)
!3647 = !DILocation(line: 907, column: 9, scope: !3636)
!3648 = !DILocation(line: 911, column: 7, scope: !3636)
!3649 = !DILocation(line: 913, column: 11, scope: !3578)
!3650 = !DILocation(line: 914, column: 5, scope: !3578)
!3651 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !554, file: !554, line: 925, type: !3652, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!130, !87, !136, !133}
!3654 = !{!3655, !3656, !3657}
!3655 = !DILocalVariable(name: "n", arg: 1, scope: !3651, file: !554, line: 925, type: !87)
!3656 = !DILocalVariable(name: "arg", arg: 2, scope: !3651, file: !554, line: 925, type: !136)
!3657 = !DILocalVariable(name: "argsize", arg: 3, scope: !3651, file: !554, line: 925, type: !133)
!3658 = !DILocation(line: 0, scope: !3651)
!3659 = !DILocation(line: 927, column: 10, scope: !3651)
!3660 = !DILocation(line: 927, column: 3, scope: !3651)
!3661 = distinct !DISubprogram(name: "quotearg", scope: !554, file: !554, line: 931, type: !1062, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3662)
!3662 = !{!3663}
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3661, file: !554, line: 931, type: !136)
!3664 = !DILocation(line: 0, scope: !3661)
!3665 = !DILocation(line: 0, scope: !3555, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 933, column: 10, scope: !3661)
!3667 = !DILocation(line: 921, column: 10, scope: !3555, inlinedAt: !3666)
!3668 = !DILocation(line: 933, column: 3, scope: !3661)
!3669 = distinct !DISubprogram(name: "quotearg_mem", scope: !554, file: !554, line: 937, type: !3670, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!130, !136, !133}
!3672 = !{!3673, !3674}
!3673 = !DILocalVariable(name: "arg", arg: 1, scope: !3669, file: !554, line: 937, type: !136)
!3674 = !DILocalVariable(name: "argsize", arg: 2, scope: !3669, file: !554, line: 937, type: !133)
!3675 = !DILocation(line: 0, scope: !3669)
!3676 = !DILocation(line: 0, scope: !3651, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 939, column: 10, scope: !3669)
!3678 = !DILocation(line: 927, column: 10, scope: !3651, inlinedAt: !3677)
!3679 = !DILocation(line: 939, column: 3, scope: !3669)
!3680 = distinct !DISubprogram(name: "quotearg_n_style", scope: !554, file: !554, line: 943, type: !3681, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!130, !87, !577, !136}
!3683 = !{!3684, !3685, !3686, !3687}
!3684 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !554, line: 943, type: !87)
!3685 = !DILocalVariable(name: "s", arg: 2, scope: !3680, file: !554, line: 943, type: !577)
!3686 = !DILocalVariable(name: "arg", arg: 3, scope: !3680, file: !554, line: 943, type: !136)
!3687 = !DILocalVariable(name: "o", scope: !3680, file: !554, line: 945, type: !2785)
!3688 = distinct !DIAssignID()
!3689 = !DILocation(line: 0, scope: !3680)
!3690 = !DILocation(line: 945, column: 3, scope: !3680)
!3691 = !{!3692}
!3692 = distinct !{!3692, !3693, !"quoting_options_from_style: argument 0"}
!3693 = distinct !{!3693, !"quoting_options_from_style"}
!3694 = !DILocation(line: 945, column: 36, scope: !3680)
!3695 = !DILocalVariable(name: "style", arg: 1, scope: !3696, file: !554, line: 183, type: !577)
!3696 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !554, file: !554, line: 183, type: !3697, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!592, !577}
!3699 = !{!3695, !3700}
!3700 = !DILocalVariable(name: "o", scope: !3696, file: !554, line: 185, type: !592)
!3701 = !DILocation(line: 0, scope: !3696, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 945, column: 36, scope: !3680)
!3703 = !DILocation(line: 185, column: 26, scope: !3696, inlinedAt: !3702)
!3704 = distinct !DIAssignID()
!3705 = !DILocation(line: 186, column: 13, scope: !3706, inlinedAt: !3702)
!3706 = distinct !DILexicalBlock(scope: !3696, file: !554, line: 186, column: 7)
!3707 = !DILocation(line: 186, column: 7, scope: !3696, inlinedAt: !3702)
!3708 = !DILocation(line: 187, column: 5, scope: !3706, inlinedAt: !3702)
!3709 = !DILocation(line: 188, column: 11, scope: !3696, inlinedAt: !3702)
!3710 = distinct !DIAssignID()
!3711 = !DILocation(line: 946, column: 10, scope: !3680)
!3712 = !DILocation(line: 947, column: 1, scope: !3680)
!3713 = !DILocation(line: 946, column: 3, scope: !3680)
!3714 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !554, file: !554, line: 950, type: !3715, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!130, !87, !577, !136, !133}
!3717 = !{!3718, !3719, !3720, !3721, !3722}
!3718 = !DILocalVariable(name: "n", arg: 1, scope: !3714, file: !554, line: 950, type: !87)
!3719 = !DILocalVariable(name: "s", arg: 2, scope: !3714, file: !554, line: 950, type: !577)
!3720 = !DILocalVariable(name: "arg", arg: 3, scope: !3714, file: !554, line: 951, type: !136)
!3721 = !DILocalVariable(name: "argsize", arg: 4, scope: !3714, file: !554, line: 951, type: !133)
!3722 = !DILocalVariable(name: "o", scope: !3714, file: !554, line: 953, type: !2785)
!3723 = distinct !DIAssignID()
!3724 = !DILocation(line: 0, scope: !3714)
!3725 = !DILocation(line: 953, column: 3, scope: !3714)
!3726 = !{!3727}
!3727 = distinct !{!3727, !3728, !"quoting_options_from_style: argument 0"}
!3728 = distinct !{!3728, !"quoting_options_from_style"}
!3729 = !DILocation(line: 953, column: 36, scope: !3714)
!3730 = !DILocation(line: 0, scope: !3696, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 953, column: 36, scope: !3714)
!3732 = !DILocation(line: 185, column: 26, scope: !3696, inlinedAt: !3731)
!3733 = distinct !DIAssignID()
!3734 = !DILocation(line: 186, column: 13, scope: !3706, inlinedAt: !3731)
!3735 = !DILocation(line: 186, column: 7, scope: !3696, inlinedAt: !3731)
!3736 = !DILocation(line: 187, column: 5, scope: !3706, inlinedAt: !3731)
!3737 = !DILocation(line: 188, column: 11, scope: !3696, inlinedAt: !3731)
!3738 = distinct !DIAssignID()
!3739 = !DILocation(line: 954, column: 10, scope: !3714)
!3740 = !DILocation(line: 955, column: 1, scope: !3714)
!3741 = !DILocation(line: 954, column: 3, scope: !3714)
!3742 = distinct !DISubprogram(name: "quotearg_style", scope: !554, file: !554, line: 958, type: !3743, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!130, !577, !136}
!3745 = !{!3746, !3747}
!3746 = !DILocalVariable(name: "s", arg: 1, scope: !3742, file: !554, line: 958, type: !577)
!3747 = !DILocalVariable(name: "arg", arg: 2, scope: !3742, file: !554, line: 958, type: !136)
!3748 = distinct !DIAssignID()
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 0, scope: !3680, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 960, column: 10, scope: !3742)
!3752 = !DILocation(line: 945, column: 3, scope: !3680, inlinedAt: !3751)
!3753 = !{!3754}
!3754 = distinct !{!3754, !3755, !"quoting_options_from_style: argument 0"}
!3755 = distinct !{!3755, !"quoting_options_from_style"}
!3756 = !DILocation(line: 945, column: 36, scope: !3680, inlinedAt: !3751)
!3757 = !DILocation(line: 0, scope: !3696, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 945, column: 36, scope: !3680, inlinedAt: !3751)
!3759 = !DILocation(line: 185, column: 26, scope: !3696, inlinedAt: !3758)
!3760 = distinct !DIAssignID()
!3761 = !DILocation(line: 186, column: 13, scope: !3706, inlinedAt: !3758)
!3762 = !DILocation(line: 186, column: 7, scope: !3696, inlinedAt: !3758)
!3763 = !DILocation(line: 187, column: 5, scope: !3706, inlinedAt: !3758)
!3764 = !DILocation(line: 188, column: 11, scope: !3696, inlinedAt: !3758)
!3765 = distinct !DIAssignID()
!3766 = !DILocation(line: 946, column: 10, scope: !3680, inlinedAt: !3751)
!3767 = !DILocation(line: 947, column: 1, scope: !3680, inlinedAt: !3751)
!3768 = !DILocation(line: 960, column: 3, scope: !3742)
!3769 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !554, file: !554, line: 964, type: !3770, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!130, !577, !136, !133}
!3772 = !{!3773, !3774, !3775}
!3773 = !DILocalVariable(name: "s", arg: 1, scope: !3769, file: !554, line: 964, type: !577)
!3774 = !DILocalVariable(name: "arg", arg: 2, scope: !3769, file: !554, line: 964, type: !136)
!3775 = !DILocalVariable(name: "argsize", arg: 3, scope: !3769, file: !554, line: 964, type: !133)
!3776 = distinct !DIAssignID()
!3777 = !DILocation(line: 0, scope: !3769)
!3778 = !DILocation(line: 0, scope: !3714, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 966, column: 10, scope: !3769)
!3780 = !DILocation(line: 953, column: 3, scope: !3714, inlinedAt: !3779)
!3781 = !{!3782}
!3782 = distinct !{!3782, !3783, !"quoting_options_from_style: argument 0"}
!3783 = distinct !{!3783, !"quoting_options_from_style"}
!3784 = !DILocation(line: 953, column: 36, scope: !3714, inlinedAt: !3779)
!3785 = !DILocation(line: 0, scope: !3696, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 953, column: 36, scope: !3714, inlinedAt: !3779)
!3787 = !DILocation(line: 185, column: 26, scope: !3696, inlinedAt: !3786)
!3788 = distinct !DIAssignID()
!3789 = !DILocation(line: 186, column: 13, scope: !3706, inlinedAt: !3786)
!3790 = !DILocation(line: 186, column: 7, scope: !3696, inlinedAt: !3786)
!3791 = !DILocation(line: 187, column: 5, scope: !3706, inlinedAt: !3786)
!3792 = !DILocation(line: 188, column: 11, scope: !3696, inlinedAt: !3786)
!3793 = distinct !DIAssignID()
!3794 = !DILocation(line: 954, column: 10, scope: !3714, inlinedAt: !3779)
!3795 = !DILocation(line: 955, column: 1, scope: !3714, inlinedAt: !3779)
!3796 = !DILocation(line: 966, column: 3, scope: !3769)
!3797 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !554, file: !554, line: 970, type: !3798, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!130, !136, !133, !4}
!3800 = !{!3801, !3802, !3803, !3804}
!3801 = !DILocalVariable(name: "arg", arg: 1, scope: !3797, file: !554, line: 970, type: !136)
!3802 = !DILocalVariable(name: "argsize", arg: 2, scope: !3797, file: !554, line: 970, type: !133)
!3803 = !DILocalVariable(name: "ch", arg: 3, scope: !3797, file: !554, line: 970, type: !4)
!3804 = !DILocalVariable(name: "options", scope: !3797, file: !554, line: 972, type: !592)
!3805 = distinct !DIAssignID()
!3806 = !DILocation(line: 0, scope: !3797)
!3807 = !DILocation(line: 972, column: 3, scope: !3797)
!3808 = !DILocation(line: 973, column: 13, scope: !3797)
!3809 = !{i64 0, i64 4, !939, i64 4, i64 4, !939, i64 8, i64 32, !948, i64 40, i64 8, !869, i64 48, i64 8, !869}
!3810 = distinct !DIAssignID()
!3811 = !DILocation(line: 0, scope: !2804, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 974, column: 3, scope: !3797)
!3813 = !DILocation(line: 147, column: 41, scope: !2804, inlinedAt: !3812)
!3814 = !DILocation(line: 147, column: 62, scope: !2804, inlinedAt: !3812)
!3815 = !DILocation(line: 147, column: 57, scope: !2804, inlinedAt: !3812)
!3816 = !DILocation(line: 148, column: 15, scope: !2804, inlinedAt: !3812)
!3817 = !DILocation(line: 149, column: 21, scope: !2804, inlinedAt: !3812)
!3818 = !DILocation(line: 149, column: 24, scope: !2804, inlinedAt: !3812)
!3819 = !DILocation(line: 150, column: 19, scope: !2804, inlinedAt: !3812)
!3820 = !DILocation(line: 150, column: 24, scope: !2804, inlinedAt: !3812)
!3821 = !DILocation(line: 150, column: 6, scope: !2804, inlinedAt: !3812)
!3822 = !DILocation(line: 975, column: 10, scope: !3797)
!3823 = !DILocation(line: 976, column: 1, scope: !3797)
!3824 = !DILocation(line: 975, column: 3, scope: !3797)
!3825 = distinct !DISubprogram(name: "quotearg_char", scope: !554, file: !554, line: 979, type: !3826, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!130, !136, !4}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "arg", arg: 1, scope: !3825, file: !554, line: 979, type: !136)
!3830 = !DILocalVariable(name: "ch", arg: 2, scope: !3825, file: !554, line: 979, type: !4)
!3831 = distinct !DIAssignID()
!3832 = !DILocation(line: 0, scope: !3825)
!3833 = !DILocation(line: 0, scope: !3797, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 981, column: 10, scope: !3825)
!3835 = !DILocation(line: 972, column: 3, scope: !3797, inlinedAt: !3834)
!3836 = !DILocation(line: 973, column: 13, scope: !3797, inlinedAt: !3834)
!3837 = distinct !DIAssignID()
!3838 = !DILocation(line: 0, scope: !2804, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 974, column: 3, scope: !3797, inlinedAt: !3834)
!3840 = !DILocation(line: 147, column: 41, scope: !2804, inlinedAt: !3839)
!3841 = !DILocation(line: 147, column: 62, scope: !2804, inlinedAt: !3839)
!3842 = !DILocation(line: 147, column: 57, scope: !2804, inlinedAt: !3839)
!3843 = !DILocation(line: 148, column: 15, scope: !2804, inlinedAt: !3839)
!3844 = !DILocation(line: 149, column: 21, scope: !2804, inlinedAt: !3839)
!3845 = !DILocation(line: 149, column: 24, scope: !2804, inlinedAt: !3839)
!3846 = !DILocation(line: 150, column: 19, scope: !2804, inlinedAt: !3839)
!3847 = !DILocation(line: 150, column: 24, scope: !2804, inlinedAt: !3839)
!3848 = !DILocation(line: 150, column: 6, scope: !2804, inlinedAt: !3839)
!3849 = !DILocation(line: 975, column: 10, scope: !3797, inlinedAt: !3834)
!3850 = !DILocation(line: 976, column: 1, scope: !3797, inlinedAt: !3834)
!3851 = !DILocation(line: 981, column: 3, scope: !3825)
!3852 = distinct !DISubprogram(name: "quotearg_colon", scope: !554, file: !554, line: 985, type: !1062, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3853)
!3853 = !{!3854}
!3854 = !DILocalVariable(name: "arg", arg: 1, scope: !3852, file: !554, line: 985, type: !136)
!3855 = distinct !DIAssignID()
!3856 = !DILocation(line: 0, scope: !3852)
!3857 = !DILocation(line: 0, scope: !3825, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 987, column: 10, scope: !3852)
!3859 = !DILocation(line: 0, scope: !3797, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 981, column: 10, scope: !3825, inlinedAt: !3858)
!3861 = !DILocation(line: 972, column: 3, scope: !3797, inlinedAt: !3860)
!3862 = !DILocation(line: 973, column: 13, scope: !3797, inlinedAt: !3860)
!3863 = distinct !DIAssignID()
!3864 = !DILocation(line: 0, scope: !2804, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 974, column: 3, scope: !3797, inlinedAt: !3860)
!3866 = !DILocation(line: 147, column: 57, scope: !2804, inlinedAt: !3865)
!3867 = !DILocation(line: 149, column: 21, scope: !2804, inlinedAt: !3865)
!3868 = !DILocation(line: 150, column: 6, scope: !2804, inlinedAt: !3865)
!3869 = !DILocation(line: 975, column: 10, scope: !3797, inlinedAt: !3860)
!3870 = !DILocation(line: 976, column: 1, scope: !3797, inlinedAt: !3860)
!3871 = !DILocation(line: 987, column: 3, scope: !3852)
!3872 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !554, file: !554, line: 991, type: !3670, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3873)
!3873 = !{!3874, !3875}
!3874 = !DILocalVariable(name: "arg", arg: 1, scope: !3872, file: !554, line: 991, type: !136)
!3875 = !DILocalVariable(name: "argsize", arg: 2, scope: !3872, file: !554, line: 991, type: !133)
!3876 = distinct !DIAssignID()
!3877 = !DILocation(line: 0, scope: !3872)
!3878 = !DILocation(line: 0, scope: !3797, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 993, column: 10, scope: !3872)
!3880 = !DILocation(line: 972, column: 3, scope: !3797, inlinedAt: !3879)
!3881 = !DILocation(line: 973, column: 13, scope: !3797, inlinedAt: !3879)
!3882 = distinct !DIAssignID()
!3883 = !DILocation(line: 0, scope: !2804, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 974, column: 3, scope: !3797, inlinedAt: !3879)
!3885 = !DILocation(line: 147, column: 57, scope: !2804, inlinedAt: !3884)
!3886 = !DILocation(line: 149, column: 21, scope: !2804, inlinedAt: !3884)
!3887 = !DILocation(line: 150, column: 6, scope: !2804, inlinedAt: !3884)
!3888 = !DILocation(line: 975, column: 10, scope: !3797, inlinedAt: !3879)
!3889 = !DILocation(line: 976, column: 1, scope: !3797, inlinedAt: !3879)
!3890 = !DILocation(line: 993, column: 3, scope: !3872)
!3891 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !554, file: !554, line: 997, type: !3681, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3892)
!3892 = !{!3893, !3894, !3895, !3896}
!3893 = !DILocalVariable(name: "n", arg: 1, scope: !3891, file: !554, line: 997, type: !87)
!3894 = !DILocalVariable(name: "s", arg: 2, scope: !3891, file: !554, line: 997, type: !577)
!3895 = !DILocalVariable(name: "arg", arg: 3, scope: !3891, file: !554, line: 997, type: !136)
!3896 = !DILocalVariable(name: "options", scope: !3891, file: !554, line: 999, type: !592)
!3897 = distinct !DIAssignID()
!3898 = !DILocation(line: 0, scope: !3891)
!3899 = !DILocation(line: 185, column: 26, scope: !3696, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 1000, column: 13, scope: !3891)
!3901 = !DILocation(line: 999, column: 3, scope: !3891)
!3902 = !DILocation(line: 0, scope: !3696, inlinedAt: !3900)
!3903 = !DILocation(line: 186, column: 13, scope: !3706, inlinedAt: !3900)
!3904 = !DILocation(line: 186, column: 7, scope: !3696, inlinedAt: !3900)
!3905 = !DILocation(line: 187, column: 5, scope: !3706, inlinedAt: !3900)
!3906 = !{!3907}
!3907 = distinct !{!3907, !3908, !"quoting_options_from_style: argument 0"}
!3908 = distinct !{!3908, !"quoting_options_from_style"}
!3909 = !DILocation(line: 1000, column: 13, scope: !3891)
!3910 = distinct !DIAssignID()
!3911 = distinct !DIAssignID()
!3912 = !DILocation(line: 0, scope: !2804, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 1001, column: 3, scope: !3891)
!3914 = !DILocation(line: 147, column: 57, scope: !2804, inlinedAt: !3913)
!3915 = !DILocation(line: 149, column: 21, scope: !2804, inlinedAt: !3913)
!3916 = !DILocation(line: 150, column: 6, scope: !2804, inlinedAt: !3913)
!3917 = distinct !DIAssignID()
!3918 = !DILocation(line: 1002, column: 10, scope: !3891)
!3919 = !DILocation(line: 1003, column: 1, scope: !3891)
!3920 = !DILocation(line: 1002, column: 3, scope: !3891)
!3921 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !554, file: !554, line: 1006, type: !3922, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3924)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!130, !87, !136, !136, !136}
!3924 = !{!3925, !3926, !3927, !3928}
!3925 = !DILocalVariable(name: "n", arg: 1, scope: !3921, file: !554, line: 1006, type: !87)
!3926 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3921, file: !554, line: 1006, type: !136)
!3927 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3921, file: !554, line: 1007, type: !136)
!3928 = !DILocalVariable(name: "arg", arg: 4, scope: !3921, file: !554, line: 1007, type: !136)
!3929 = distinct !DIAssignID()
!3930 = !DILocation(line: 0, scope: !3921)
!3931 = !DILocalVariable(name: "o", scope: !3932, file: !554, line: 1018, type: !592)
!3932 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !554, file: !554, line: 1014, type: !3933, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!130, !87, !136, !136, !136, !133}
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3931}
!3936 = !DILocalVariable(name: "n", arg: 1, scope: !3932, file: !554, line: 1014, type: !87)
!3937 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3932, file: !554, line: 1014, type: !136)
!3938 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3932, file: !554, line: 1015, type: !136)
!3939 = !DILocalVariable(name: "arg", arg: 4, scope: !3932, file: !554, line: 1016, type: !136)
!3940 = !DILocalVariable(name: "argsize", arg: 5, scope: !3932, file: !554, line: 1016, type: !133)
!3941 = !DILocation(line: 0, scope: !3932, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 1009, column: 10, scope: !3921)
!3943 = !DILocation(line: 1018, column: 3, scope: !3932, inlinedAt: !3942)
!3944 = !DILocation(line: 1018, column: 30, scope: !3932, inlinedAt: !3942)
!3945 = distinct !DIAssignID()
!3946 = distinct !DIAssignID()
!3947 = !DILocation(line: 0, scope: !2844, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 1019, column: 3, scope: !3932, inlinedAt: !3942)
!3949 = !DILocation(line: 174, column: 12, scope: !2844, inlinedAt: !3948)
!3950 = distinct !DIAssignID()
!3951 = !DILocation(line: 175, column: 8, scope: !2857, inlinedAt: !3948)
!3952 = !DILocation(line: 175, column: 19, scope: !2857, inlinedAt: !3948)
!3953 = !DILocation(line: 176, column: 5, scope: !2857, inlinedAt: !3948)
!3954 = !DILocation(line: 177, column: 6, scope: !2844, inlinedAt: !3948)
!3955 = !DILocation(line: 177, column: 17, scope: !2844, inlinedAt: !3948)
!3956 = distinct !DIAssignID()
!3957 = !DILocation(line: 178, column: 6, scope: !2844, inlinedAt: !3948)
!3958 = !DILocation(line: 178, column: 18, scope: !2844, inlinedAt: !3948)
!3959 = distinct !DIAssignID()
!3960 = !DILocation(line: 1020, column: 10, scope: !3932, inlinedAt: !3942)
!3961 = !DILocation(line: 1021, column: 1, scope: !3932, inlinedAt: !3942)
!3962 = !DILocation(line: 1009, column: 3, scope: !3921)
!3963 = distinct !DIAssignID()
!3964 = !DILocation(line: 0, scope: !3932)
!3965 = !DILocation(line: 1018, column: 3, scope: !3932)
!3966 = !DILocation(line: 1018, column: 30, scope: !3932)
!3967 = distinct !DIAssignID()
!3968 = distinct !DIAssignID()
!3969 = !DILocation(line: 0, scope: !2844, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 1019, column: 3, scope: !3932)
!3971 = !DILocation(line: 174, column: 12, scope: !2844, inlinedAt: !3970)
!3972 = distinct !DIAssignID()
!3973 = !DILocation(line: 175, column: 8, scope: !2857, inlinedAt: !3970)
!3974 = !DILocation(line: 175, column: 19, scope: !2857, inlinedAt: !3970)
!3975 = !DILocation(line: 176, column: 5, scope: !2857, inlinedAt: !3970)
!3976 = !DILocation(line: 177, column: 6, scope: !2844, inlinedAt: !3970)
!3977 = !DILocation(line: 177, column: 17, scope: !2844, inlinedAt: !3970)
!3978 = distinct !DIAssignID()
!3979 = !DILocation(line: 178, column: 6, scope: !2844, inlinedAt: !3970)
!3980 = !DILocation(line: 178, column: 18, scope: !2844, inlinedAt: !3970)
!3981 = distinct !DIAssignID()
!3982 = !DILocation(line: 1020, column: 10, scope: !3932)
!3983 = !DILocation(line: 1021, column: 1, scope: !3932)
!3984 = !DILocation(line: 1020, column: 3, scope: !3932)
!3985 = distinct !DISubprogram(name: "quotearg_custom", scope: !554, file: !554, line: 1024, type: !3986, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!130, !136, !136, !136}
!3988 = !{!3989, !3990, !3991}
!3989 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3985, file: !554, line: 1024, type: !136)
!3990 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3985, file: !554, line: 1024, type: !136)
!3991 = !DILocalVariable(name: "arg", arg: 3, scope: !3985, file: !554, line: 1025, type: !136)
!3992 = distinct !DIAssignID()
!3993 = !DILocation(line: 0, scope: !3985)
!3994 = !DILocation(line: 0, scope: !3921, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 1027, column: 10, scope: !3985)
!3996 = !DILocation(line: 0, scope: !3932, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 1009, column: 10, scope: !3921, inlinedAt: !3995)
!3998 = !DILocation(line: 1018, column: 3, scope: !3932, inlinedAt: !3997)
!3999 = !DILocation(line: 1018, column: 30, scope: !3932, inlinedAt: !3997)
!4000 = distinct !DIAssignID()
!4001 = distinct !DIAssignID()
!4002 = !DILocation(line: 0, scope: !2844, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 1019, column: 3, scope: !3932, inlinedAt: !3997)
!4004 = !DILocation(line: 174, column: 12, scope: !2844, inlinedAt: !4003)
!4005 = distinct !DIAssignID()
!4006 = !DILocation(line: 175, column: 8, scope: !2857, inlinedAt: !4003)
!4007 = !DILocation(line: 175, column: 19, scope: !2857, inlinedAt: !4003)
!4008 = !DILocation(line: 176, column: 5, scope: !2857, inlinedAt: !4003)
!4009 = !DILocation(line: 177, column: 6, scope: !2844, inlinedAt: !4003)
!4010 = !DILocation(line: 177, column: 17, scope: !2844, inlinedAt: !4003)
!4011 = distinct !DIAssignID()
!4012 = !DILocation(line: 178, column: 6, scope: !2844, inlinedAt: !4003)
!4013 = !DILocation(line: 178, column: 18, scope: !2844, inlinedAt: !4003)
!4014 = distinct !DIAssignID()
!4015 = !DILocation(line: 1020, column: 10, scope: !3932, inlinedAt: !3997)
!4016 = !DILocation(line: 1021, column: 1, scope: !3932, inlinedAt: !3997)
!4017 = !DILocation(line: 1027, column: 3, scope: !3985)
!4018 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !554, file: !554, line: 1031, type: !4019, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!130, !136, !136, !136, !133}
!4021 = !{!4022, !4023, !4024, !4025}
!4022 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4018, file: !554, line: 1031, type: !136)
!4023 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4018, file: !554, line: 1031, type: !136)
!4024 = !DILocalVariable(name: "arg", arg: 3, scope: !4018, file: !554, line: 1032, type: !136)
!4025 = !DILocalVariable(name: "argsize", arg: 4, scope: !4018, file: !554, line: 1032, type: !133)
!4026 = distinct !DIAssignID()
!4027 = !DILocation(line: 0, scope: !4018)
!4028 = !DILocation(line: 0, scope: !3932, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 1034, column: 10, scope: !4018)
!4030 = !DILocation(line: 1018, column: 3, scope: !3932, inlinedAt: !4029)
!4031 = !DILocation(line: 1018, column: 30, scope: !3932, inlinedAt: !4029)
!4032 = distinct !DIAssignID()
!4033 = distinct !DIAssignID()
!4034 = !DILocation(line: 0, scope: !2844, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 1019, column: 3, scope: !3932, inlinedAt: !4029)
!4036 = !DILocation(line: 174, column: 12, scope: !2844, inlinedAt: !4035)
!4037 = distinct !DIAssignID()
!4038 = !DILocation(line: 175, column: 8, scope: !2857, inlinedAt: !4035)
!4039 = !DILocation(line: 175, column: 19, scope: !2857, inlinedAt: !4035)
!4040 = !DILocation(line: 176, column: 5, scope: !2857, inlinedAt: !4035)
!4041 = !DILocation(line: 177, column: 6, scope: !2844, inlinedAt: !4035)
!4042 = !DILocation(line: 177, column: 17, scope: !2844, inlinedAt: !4035)
!4043 = distinct !DIAssignID()
!4044 = !DILocation(line: 178, column: 6, scope: !2844, inlinedAt: !4035)
!4045 = !DILocation(line: 178, column: 18, scope: !2844, inlinedAt: !4035)
!4046 = distinct !DIAssignID()
!4047 = !DILocation(line: 1020, column: 10, scope: !3932, inlinedAt: !4029)
!4048 = !DILocation(line: 1021, column: 1, scope: !3932, inlinedAt: !4029)
!4049 = !DILocation(line: 1034, column: 3, scope: !4018)
!4050 = distinct !DISubprogram(name: "quote_n_mem", scope: !554, file: !554, line: 1049, type: !4051, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!136, !87, !136, !133}
!4053 = !{!4054, !4055, !4056}
!4054 = !DILocalVariable(name: "n", arg: 1, scope: !4050, file: !554, line: 1049, type: !87)
!4055 = !DILocalVariable(name: "arg", arg: 2, scope: !4050, file: !554, line: 1049, type: !136)
!4056 = !DILocalVariable(name: "argsize", arg: 3, scope: !4050, file: !554, line: 1049, type: !133)
!4057 = !DILocation(line: 0, scope: !4050)
!4058 = !DILocation(line: 1051, column: 10, scope: !4050)
!4059 = !DILocation(line: 1051, column: 3, scope: !4050)
!4060 = distinct !DISubprogram(name: "quote_mem", scope: !554, file: !554, line: 1055, type: !4061, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!136, !136, !133}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "arg", arg: 1, scope: !4060, file: !554, line: 1055, type: !136)
!4065 = !DILocalVariable(name: "argsize", arg: 2, scope: !4060, file: !554, line: 1055, type: !133)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocation(line: 0, scope: !4050, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 1057, column: 10, scope: !4060)
!4069 = !DILocation(line: 1051, column: 10, scope: !4050, inlinedAt: !4068)
!4070 = !DILocation(line: 1057, column: 3, scope: !4060)
!4071 = distinct !DISubprogram(name: "quote_n", scope: !554, file: !554, line: 1061, type: !4072, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!136, !87, !136}
!4074 = !{!4075, !4076}
!4075 = !DILocalVariable(name: "n", arg: 1, scope: !4071, file: !554, line: 1061, type: !87)
!4076 = !DILocalVariable(name: "arg", arg: 2, scope: !4071, file: !554, line: 1061, type: !136)
!4077 = !DILocation(line: 0, scope: !4071)
!4078 = !DILocation(line: 0, scope: !4050, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 1063, column: 10, scope: !4071)
!4080 = !DILocation(line: 1051, column: 10, scope: !4050, inlinedAt: !4079)
!4081 = !DILocation(line: 1063, column: 3, scope: !4071)
!4082 = distinct !DISubprogram(name: "quote", scope: !554, file: !554, line: 1067, type: !4083, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!136, !136}
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "arg", arg: 1, scope: !4082, file: !554, line: 1067, type: !136)
!4087 = !DILocation(line: 0, scope: !4082)
!4088 = !DILocation(line: 0, scope: !4071, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 1069, column: 10, scope: !4082)
!4090 = !DILocation(line: 0, scope: !4050, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 1063, column: 10, scope: !4071, inlinedAt: !4089)
!4092 = !DILocation(line: 1051, column: 10, scope: !4050, inlinedAt: !4091)
!4093 = !DILocation(line: 1069, column: 3, scope: !4082)
!4094 = distinct !DISubprogram(name: "version_etc_arn", scope: !651, file: !651, line: 61, type: !4095, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4132)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4097, !136, !136, !136, !4131, !133}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4099, file: !213, line: 51, baseType: !87, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4099, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4099, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4099, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4099, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4099, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4099, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4099, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4099, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4099, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4099, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4099, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4099, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4099, file: !213, line: 70, baseType: !4115, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4099, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4099, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4099, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4099, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4099, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4099, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4099, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4099, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4099, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4099, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4099, file: !213, line: 93, baseType: !4115, size: 64, offset: 1344)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4099, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4099, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4099, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4099, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138}
!4133 = !DILocalVariable(name: "stream", arg: 1, scope: !4094, file: !651, line: 61, type: !4097)
!4134 = !DILocalVariable(name: "command_name", arg: 2, scope: !4094, file: !651, line: 62, type: !136)
!4135 = !DILocalVariable(name: "package", arg: 3, scope: !4094, file: !651, line: 62, type: !136)
!4136 = !DILocalVariable(name: "version", arg: 4, scope: !4094, file: !651, line: 63, type: !136)
!4137 = !DILocalVariable(name: "authors", arg: 5, scope: !4094, file: !651, line: 64, type: !4131)
!4138 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4094, file: !651, line: 64, type: !133)
!4139 = !DILocation(line: 0, scope: !4094)
!4140 = !DILocation(line: 66, column: 7, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4094, file: !651, line: 66, column: 7)
!4142 = !DILocation(line: 66, column: 7, scope: !4094)
!4143 = !DILocation(line: 67, column: 5, scope: !4141)
!4144 = !DILocation(line: 69, column: 5, scope: !4141)
!4145 = !DILocation(line: 83, column: 3, scope: !4094)
!4146 = !DILocation(line: 85, column: 3, scope: !4094)
!4147 = !DILocation(line: 88, column: 3, scope: !4094)
!4148 = !DILocation(line: 95, column: 3, scope: !4094)
!4149 = !DILocation(line: 97, column: 3, scope: !4094)
!4150 = !DILocation(line: 105, column: 7, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4094, file: !651, line: 98, column: 5)
!4152 = !DILocation(line: 106, column: 7, scope: !4151)
!4153 = !DILocation(line: 109, column: 7, scope: !4151)
!4154 = !DILocation(line: 110, column: 7, scope: !4151)
!4155 = !DILocation(line: 113, column: 7, scope: !4151)
!4156 = !DILocation(line: 115, column: 7, scope: !4151)
!4157 = !DILocation(line: 120, column: 7, scope: !4151)
!4158 = !DILocation(line: 122, column: 7, scope: !4151)
!4159 = !DILocation(line: 127, column: 7, scope: !4151)
!4160 = !DILocation(line: 129, column: 7, scope: !4151)
!4161 = !DILocation(line: 134, column: 7, scope: !4151)
!4162 = !DILocation(line: 137, column: 7, scope: !4151)
!4163 = !DILocation(line: 142, column: 7, scope: !4151)
!4164 = !DILocation(line: 145, column: 7, scope: !4151)
!4165 = !DILocation(line: 150, column: 7, scope: !4151)
!4166 = !DILocation(line: 154, column: 7, scope: !4151)
!4167 = !DILocation(line: 159, column: 7, scope: !4151)
!4168 = !DILocation(line: 163, column: 7, scope: !4151)
!4169 = !DILocation(line: 170, column: 7, scope: !4151)
!4170 = !DILocation(line: 174, column: 7, scope: !4151)
!4171 = !DILocation(line: 176, column: 1, scope: !4094)
!4172 = distinct !DISubprogram(name: "version_etc_ar", scope: !651, file: !651, line: 183, type: !4173, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !4097, !136, !136, !136, !4131}
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181}
!4176 = !DILocalVariable(name: "stream", arg: 1, scope: !4172, file: !651, line: 183, type: !4097)
!4177 = !DILocalVariable(name: "command_name", arg: 2, scope: !4172, file: !651, line: 184, type: !136)
!4178 = !DILocalVariable(name: "package", arg: 3, scope: !4172, file: !651, line: 184, type: !136)
!4179 = !DILocalVariable(name: "version", arg: 4, scope: !4172, file: !651, line: 185, type: !136)
!4180 = !DILocalVariable(name: "authors", arg: 5, scope: !4172, file: !651, line: 185, type: !4131)
!4181 = !DILocalVariable(name: "n_authors", scope: !4172, file: !651, line: 187, type: !133)
!4182 = !DILocation(line: 0, scope: !4172)
!4183 = !DILocation(line: 189, column: 8, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4172, file: !651, line: 189, column: 3)
!4185 = !DILocation(line: 189, scope: !4184)
!4186 = !DILocation(line: 189, column: 23, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !651, line: 189, column: 3)
!4188 = !DILocation(line: 189, column: 3, scope: !4184)
!4189 = !DILocation(line: 189, column: 52, scope: !4187)
!4190 = distinct !{!4190, !4188, !4191, !986}
!4191 = !DILocation(line: 190, column: 5, scope: !4184)
!4192 = !DILocation(line: 191, column: 3, scope: !4172)
!4193 = !DILocation(line: 192, column: 1, scope: !4172)
!4194 = distinct !DISubprogram(name: "version_etc_va", scope: !651, file: !651, line: 199, type: !4195, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4207)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4097, !136, !136, !136, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !470, line: 52, baseType: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !472, line: 12, baseType: !4199)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !651, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205, !4206}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4200, file: !651, line: 192, baseType: !131, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4200, file: !651, line: 192, baseType: !131, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4200, file: !651, line: 192, baseType: !131, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4200, file: !651, line: 192, baseType: !87, size: 32, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4200, file: !651, line: 192, baseType: !87, size: 32, offset: 224)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214}
!4208 = !DILocalVariable(name: "stream", arg: 1, scope: !4194, file: !651, line: 199, type: !4097)
!4209 = !DILocalVariable(name: "command_name", arg: 2, scope: !4194, file: !651, line: 200, type: !136)
!4210 = !DILocalVariable(name: "package", arg: 3, scope: !4194, file: !651, line: 200, type: !136)
!4211 = !DILocalVariable(name: "version", arg: 4, scope: !4194, file: !651, line: 201, type: !136)
!4212 = !DILocalVariable(name: "authors", arg: 5, scope: !4194, file: !651, line: 201, type: !4197)
!4213 = !DILocalVariable(name: "n_authors", scope: !4194, file: !651, line: 203, type: !133)
!4214 = !DILocalVariable(name: "authtab", scope: !4194, file: !651, line: 204, type: !4215)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4216 = distinct !DIAssignID()
!4217 = !DILocation(line: 0, scope: !4194)
!4218 = !DILocation(line: 204, column: 3, scope: !4194)
!4219 = !DILocation(line: 208, column: 35, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !651, line: 206, column: 3)
!4221 = distinct !DILexicalBlock(scope: !4194, file: !651, line: 206, column: 3)
!4222 = !DILocation(line: 208, column: 33, scope: !4220)
!4223 = !DILocation(line: 208, column: 67, scope: !4220)
!4224 = !DILocation(line: 206, column: 3, scope: !4221)
!4225 = !DILocation(line: 208, column: 14, scope: !4220)
!4226 = !DILocation(line: 0, scope: !4221)
!4227 = !DILocation(line: 211, column: 3, scope: !4194)
!4228 = !DILocation(line: 213, column: 1, scope: !4194)
!4229 = distinct !DISubprogram(name: "version_etc", scope: !651, file: !651, line: 230, type: !4230, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4097, !136, !136, !136, null}
!4232 = !{!4233, !4234, !4235, !4236, !4237}
!4233 = !DILocalVariable(name: "stream", arg: 1, scope: !4229, file: !651, line: 230, type: !4097)
!4234 = !DILocalVariable(name: "command_name", arg: 2, scope: !4229, file: !651, line: 231, type: !136)
!4235 = !DILocalVariable(name: "package", arg: 3, scope: !4229, file: !651, line: 231, type: !136)
!4236 = !DILocalVariable(name: "version", arg: 4, scope: !4229, file: !651, line: 232, type: !136)
!4237 = !DILocalVariable(name: "authors", scope: !4229, file: !651, line: 234, type: !4197)
!4238 = distinct !DIAssignID()
!4239 = !DILocation(line: 0, scope: !4229)
!4240 = !DILocation(line: 234, column: 3, scope: !4229)
!4241 = !DILocation(line: 235, column: 3, scope: !4229)
!4242 = !DILocation(line: 236, column: 3, scope: !4229)
!4243 = !DILocation(line: 237, column: 3, scope: !4229)
!4244 = !DILocation(line: 238, column: 1, scope: !4229)
!4245 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !651, file: !651, line: 241, type: !510, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785)
!4246 = !DILocation(line: 243, column: 3, scope: !4245)
!4247 = !DILocation(line: 248, column: 3, scope: !4245)
!4248 = !DILocation(line: 254, column: 3, scope: !4245)
!4249 = !DILocation(line: 259, column: 3, scope: !4245)
!4250 = !DILocation(line: 261, column: 1, scope: !4245)
!4251 = distinct !DISubprogram(name: "xnrealloc", scope: !4252, file: !4252, line: 147, type: !4253, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4255)
!4252 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!131, !131, !133, !133}
!4255 = !{!4256, !4257, !4258}
!4256 = !DILocalVariable(name: "p", arg: 1, scope: !4251, file: !4252, line: 147, type: !131)
!4257 = !DILocalVariable(name: "n", arg: 2, scope: !4251, file: !4252, line: 147, type: !133)
!4258 = !DILocalVariable(name: "s", arg: 3, scope: !4251, file: !4252, line: 147, type: !133)
!4259 = !DILocation(line: 0, scope: !4251)
!4260 = !DILocalVariable(name: "p", arg: 1, scope: !4261, file: !792, line: 83, type: !131)
!4261 = distinct !DISubprogram(name: "xreallocarray", scope: !792, file: !792, line: 83, type: !4253, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4262)
!4262 = !{!4260, !4263, !4264}
!4263 = !DILocalVariable(name: "n", arg: 2, scope: !4261, file: !792, line: 83, type: !133)
!4264 = !DILocalVariable(name: "s", arg: 3, scope: !4261, file: !792, line: 83, type: !133)
!4265 = !DILocation(line: 0, scope: !4261, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 149, column: 10, scope: !4251)
!4267 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4266)
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4269, file: !792, line: 37, type: !131)
!4269 = distinct !DISubprogram(name: "check_nonnull", scope: !792, file: !792, line: 37, type: !4270, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!131, !131}
!4272 = !{!4268}
!4273 = !DILocation(line: 0, scope: !4269, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4266)
!4275 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4274)
!4276 = distinct !DILexicalBlock(scope: !4269, file: !792, line: 39, column: 7)
!4277 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4274)
!4278 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4274)
!4279 = !DILocation(line: 149, column: 3, scope: !4251)
!4280 = !DILocation(line: 0, scope: !4261)
!4281 = !DILocation(line: 85, column: 25, scope: !4261)
!4282 = !DILocation(line: 0, scope: !4269, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 85, column: 10, scope: !4261)
!4284 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4283)
!4285 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4283)
!4286 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4283)
!4287 = !DILocation(line: 85, column: 3, scope: !4261)
!4288 = distinct !DISubprogram(name: "xmalloc", scope: !792, file: !792, line: 47, type: !1804, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4289)
!4289 = !{!4290}
!4290 = !DILocalVariable(name: "s", arg: 1, scope: !4288, file: !792, line: 47, type: !133)
!4291 = !DILocation(line: 0, scope: !4288)
!4292 = !DILocation(line: 49, column: 25, scope: !4288)
!4293 = !DILocation(line: 0, scope: !4269, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 49, column: 10, scope: !4288)
!4295 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4294)
!4296 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4294)
!4297 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4294)
!4298 = !DILocation(line: 49, column: 3, scope: !4288)
!4299 = distinct !DISubprogram(name: "ximalloc", scope: !792, file: !792, line: 53, type: !4300, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!131, !811}
!4302 = !{!4303}
!4303 = !DILocalVariable(name: "s", arg: 1, scope: !4299, file: !792, line: 53, type: !811)
!4304 = !DILocation(line: 0, scope: !4299)
!4305 = !DILocalVariable(name: "s", arg: 1, scope: !4306, file: !4307, line: 55, type: !811)
!4306 = distinct !DISubprogram(name: "imalloc", scope: !4307, file: !4307, line: 55, type: !4300, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4308)
!4307 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4308 = !{!4305}
!4309 = !DILocation(line: 0, scope: !4306, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 55, column: 25, scope: !4299)
!4311 = !DILocation(line: 57, column: 26, scope: !4306, inlinedAt: !4310)
!4312 = !DILocation(line: 0, scope: !4269, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 55, column: 10, scope: !4299)
!4314 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4313)
!4315 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4313)
!4316 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4313)
!4317 = !DILocation(line: 55, column: 3, scope: !4299)
!4318 = distinct !DISubprogram(name: "xcharalloc", scope: !792, file: !792, line: 59, type: !4319, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!130, !133}
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "n", arg: 1, scope: !4318, file: !792, line: 59, type: !133)
!4323 = !DILocation(line: 0, scope: !4318)
!4324 = !DILocation(line: 0, scope: !4288, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 61, column: 10, scope: !4318)
!4326 = !DILocation(line: 49, column: 25, scope: !4288, inlinedAt: !4325)
!4327 = !DILocation(line: 0, scope: !4269, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 49, column: 10, scope: !4288, inlinedAt: !4325)
!4329 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4328)
!4330 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4328)
!4331 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4328)
!4332 = !DILocation(line: 61, column: 3, scope: !4318)
!4333 = distinct !DISubprogram(name: "xrealloc", scope: !792, file: !792, line: 68, type: !4334, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4336)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!131, !131, !133}
!4336 = !{!4337, !4338}
!4337 = !DILocalVariable(name: "p", arg: 1, scope: !4333, file: !792, line: 68, type: !131)
!4338 = !DILocalVariable(name: "s", arg: 2, scope: !4333, file: !792, line: 68, type: !133)
!4339 = !DILocation(line: 0, scope: !4333)
!4340 = !DILocalVariable(name: "ptr", arg: 1, scope: !4341, file: !4342, line: 2057, type: !131)
!4341 = distinct !DISubprogram(name: "rpl_realloc", scope: !4342, file: !4342, line: 2057, type: !4334, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4343)
!4342 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4343 = !{!4340, !4344}
!4344 = !DILocalVariable(name: "size", arg: 2, scope: !4341, file: !4342, line: 2057, type: !133)
!4345 = !DILocation(line: 0, scope: !4341, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 70, column: 25, scope: !4333)
!4347 = !DILocation(line: 2059, column: 24, scope: !4341, inlinedAt: !4346)
!4348 = !DILocation(line: 2059, column: 10, scope: !4341, inlinedAt: !4346)
!4349 = !DILocation(line: 0, scope: !4269, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 70, column: 10, scope: !4333)
!4351 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4350)
!4352 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4350)
!4353 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4350)
!4354 = !DILocation(line: 70, column: 3, scope: !4333)
!4355 = !DISubprogram(name: "realloc", scope: !1060, file: !1060, line: 551, type: !4334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4356 = distinct !DISubprogram(name: "xirealloc", scope: !792, file: !792, line: 74, type: !4357, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!131, !131, !811}
!4359 = !{!4360, !4361}
!4360 = !DILocalVariable(name: "p", arg: 1, scope: !4356, file: !792, line: 74, type: !131)
!4361 = !DILocalVariable(name: "s", arg: 2, scope: !4356, file: !792, line: 74, type: !811)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = !DILocalVariable(name: "p", arg: 1, scope: !4364, file: !4307, line: 66, type: !131)
!4364 = distinct !DISubprogram(name: "irealloc", scope: !4307, file: !4307, line: 66, type: !4357, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4365)
!4365 = !{!4363, !4366}
!4366 = !DILocalVariable(name: "s", arg: 2, scope: !4364, file: !4307, line: 66, type: !811)
!4367 = !DILocation(line: 0, scope: !4364, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 76, column: 25, scope: !4356)
!4369 = !DILocation(line: 0, scope: !4341, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 68, column: 26, scope: !4364, inlinedAt: !4368)
!4371 = !DILocation(line: 2059, column: 24, scope: !4341, inlinedAt: !4370)
!4372 = !DILocation(line: 2059, column: 10, scope: !4341, inlinedAt: !4370)
!4373 = !DILocation(line: 0, scope: !4269, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 76, column: 10, scope: !4356)
!4375 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4374)
!4376 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4374)
!4377 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4374)
!4378 = !DILocation(line: 76, column: 3, scope: !4356)
!4379 = distinct !DISubprogram(name: "xireallocarray", scope: !792, file: !792, line: 89, type: !4380, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!131, !131, !811, !811}
!4382 = !{!4383, !4384, !4385}
!4383 = !DILocalVariable(name: "p", arg: 1, scope: !4379, file: !792, line: 89, type: !131)
!4384 = !DILocalVariable(name: "n", arg: 2, scope: !4379, file: !792, line: 89, type: !811)
!4385 = !DILocalVariable(name: "s", arg: 3, scope: !4379, file: !792, line: 89, type: !811)
!4386 = !DILocation(line: 0, scope: !4379)
!4387 = !DILocalVariable(name: "p", arg: 1, scope: !4388, file: !4307, line: 98, type: !131)
!4388 = distinct !DISubprogram(name: "ireallocarray", scope: !4307, file: !4307, line: 98, type: !4380, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4389)
!4389 = !{!4387, !4390, !4391}
!4390 = !DILocalVariable(name: "n", arg: 2, scope: !4388, file: !4307, line: 98, type: !811)
!4391 = !DILocalVariable(name: "s", arg: 3, scope: !4388, file: !4307, line: 98, type: !811)
!4392 = !DILocation(line: 0, scope: !4388, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 91, column: 25, scope: !4379)
!4394 = !DILocation(line: 101, column: 13, scope: !4388, inlinedAt: !4393)
!4395 = !DILocation(line: 0, scope: !4269, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 91, column: 10, scope: !4379)
!4397 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4396)
!4398 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4396)
!4399 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4396)
!4400 = !DILocation(line: 91, column: 3, scope: !4379)
!4401 = distinct !DISubprogram(name: "xnmalloc", scope: !792, file: !792, line: 98, type: !4402, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4404)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!131, !133, !133}
!4404 = !{!4405, !4406}
!4405 = !DILocalVariable(name: "n", arg: 1, scope: !4401, file: !792, line: 98, type: !133)
!4406 = !DILocalVariable(name: "s", arg: 2, scope: !4401, file: !792, line: 98, type: !133)
!4407 = !DILocation(line: 0, scope: !4401)
!4408 = !DILocation(line: 0, scope: !4261, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 100, column: 10, scope: !4401)
!4410 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4409)
!4411 = !DILocation(line: 0, scope: !4269, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4409)
!4413 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4412)
!4414 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4412)
!4415 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4412)
!4416 = !DILocation(line: 100, column: 3, scope: !4401)
!4417 = distinct !DISubprogram(name: "xinmalloc", scope: !792, file: !792, line: 104, type: !4418, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!131, !811, !811}
!4420 = !{!4421, !4422}
!4421 = !DILocalVariable(name: "n", arg: 1, scope: !4417, file: !792, line: 104, type: !811)
!4422 = !DILocalVariable(name: "s", arg: 2, scope: !4417, file: !792, line: 104, type: !811)
!4423 = !DILocation(line: 0, scope: !4417)
!4424 = !DILocation(line: 0, scope: !4379, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 106, column: 10, scope: !4417)
!4426 = !DILocation(line: 0, scope: !4388, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 91, column: 25, scope: !4379, inlinedAt: !4425)
!4428 = !DILocation(line: 101, column: 13, scope: !4388, inlinedAt: !4427)
!4429 = !DILocation(line: 0, scope: !4269, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 91, column: 10, scope: !4379, inlinedAt: !4425)
!4431 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4430)
!4432 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4430)
!4433 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4430)
!4434 = !DILocation(line: 106, column: 3, scope: !4417)
!4435 = distinct !DISubprogram(name: "x2realloc", scope: !792, file: !792, line: 116, type: !4436, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!131, !131, !798}
!4438 = !{!4439, !4440}
!4439 = !DILocalVariable(name: "p", arg: 1, scope: !4435, file: !792, line: 116, type: !131)
!4440 = !DILocalVariable(name: "ps", arg: 2, scope: !4435, file: !792, line: 116, type: !798)
!4441 = !DILocation(line: 0, scope: !4435)
!4442 = !DILocation(line: 0, scope: !795, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 118, column: 10, scope: !4435)
!4444 = !DILocation(line: 178, column: 14, scope: !795, inlinedAt: !4443)
!4445 = !DILocation(line: 180, column: 9, scope: !4446, inlinedAt: !4443)
!4446 = distinct !DILexicalBlock(scope: !795, file: !792, line: 180, column: 7)
!4447 = !DILocation(line: 180, column: 7, scope: !795, inlinedAt: !4443)
!4448 = !DILocation(line: 182, column: 13, scope: !4449, inlinedAt: !4443)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !792, line: 182, column: 11)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !792, line: 181, column: 5)
!4451 = !DILocation(line: 182, column: 11, scope: !4450, inlinedAt: !4443)
!4452 = !DILocation(line: 197, column: 11, scope: !4453, inlinedAt: !4443)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !792, line: 197, column: 11)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !792, line: 195, column: 5)
!4455 = !DILocation(line: 197, column: 11, scope: !4454, inlinedAt: !4443)
!4456 = !DILocation(line: 198, column: 9, scope: !4453, inlinedAt: !4443)
!4457 = !DILocation(line: 0, scope: !4261, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 201, column: 7, scope: !795, inlinedAt: !4443)
!4459 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4458)
!4460 = !DILocation(line: 0, scope: !4269, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4458)
!4462 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4461)
!4463 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4461)
!4464 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4461)
!4465 = !DILocation(line: 202, column: 7, scope: !795, inlinedAt: !4443)
!4466 = !DILocation(line: 118, column: 3, scope: !4435)
!4467 = !DILocation(line: 0, scope: !795)
!4468 = !DILocation(line: 178, column: 14, scope: !795)
!4469 = !DILocation(line: 180, column: 9, scope: !4446)
!4470 = !DILocation(line: 180, column: 7, scope: !795)
!4471 = !DILocation(line: 182, column: 13, scope: !4449)
!4472 = !DILocation(line: 182, column: 11, scope: !4450)
!4473 = !DILocation(line: 190, column: 30, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4449, file: !792, line: 183, column: 9)
!4475 = !DILocation(line: 191, column: 16, scope: !4474)
!4476 = !DILocation(line: 191, column: 13, scope: !4474)
!4477 = !DILocation(line: 192, column: 9, scope: !4474)
!4478 = !DILocation(line: 197, column: 11, scope: !4453)
!4479 = !DILocation(line: 197, column: 11, scope: !4454)
!4480 = !DILocation(line: 198, column: 9, scope: !4453)
!4481 = !DILocation(line: 0, scope: !4261, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 201, column: 7, scope: !795)
!4483 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4482)
!4484 = !DILocation(line: 0, scope: !4269, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4482)
!4486 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4485)
!4487 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4485)
!4488 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4485)
!4489 = !DILocation(line: 202, column: 7, scope: !795)
!4490 = !DILocation(line: 203, column: 3, scope: !795)
!4491 = !DILocation(line: 0, scope: !807)
!4492 = !DILocation(line: 230, column: 14, scope: !807)
!4493 = !DILocation(line: 238, column: 7, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !807, file: !792, line: 238, column: 7)
!4495 = !DILocation(line: 238, column: 7, scope: !807)
!4496 = !DILocation(line: 240, column: 9, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !807, file: !792, line: 240, column: 7)
!4498 = !DILocation(line: 240, column: 18, scope: !4497)
!4499 = !DILocation(line: 253, column: 8, scope: !807)
!4500 = !DILocation(line: 256, column: 7, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !807, file: !792, line: 256, column: 7)
!4502 = !DILocation(line: 256, column: 7, scope: !807)
!4503 = !DILocation(line: 258, column: 27, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !792, line: 257, column: 5)
!4505 = !DILocation(line: 259, column: 32, scope: !4504)
!4506 = !DILocation(line: 260, column: 5, scope: !4504)
!4507 = !DILocation(line: 262, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !807, file: !792, line: 262, column: 7)
!4509 = !DILocation(line: 262, column: 7, scope: !807)
!4510 = !DILocation(line: 263, column: 9, scope: !4508)
!4511 = !DILocation(line: 263, column: 5, scope: !4508)
!4512 = !DILocation(line: 264, column: 9, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !807, file: !792, line: 264, column: 7)
!4514 = !DILocation(line: 264, column: 14, scope: !4513)
!4515 = !DILocation(line: 265, column: 7, scope: !4513)
!4516 = !DILocation(line: 265, column: 11, scope: !4513)
!4517 = !DILocation(line: 266, column: 11, scope: !4513)
!4518 = !DILocation(line: 267, column: 14, scope: !4513)
!4519 = !DILocation(line: 264, column: 7, scope: !807)
!4520 = !DILocation(line: 268, column: 5, scope: !4513)
!4521 = !DILocation(line: 0, scope: !4333, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 269, column: 8, scope: !807)
!4523 = !DILocation(line: 0, scope: !4341, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 70, column: 25, scope: !4333, inlinedAt: !4522)
!4525 = !DILocation(line: 2059, column: 24, scope: !4341, inlinedAt: !4524)
!4526 = !DILocation(line: 2059, column: 10, scope: !4341, inlinedAt: !4524)
!4527 = !DILocation(line: 0, scope: !4269, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 70, column: 10, scope: !4333, inlinedAt: !4522)
!4529 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4528)
!4530 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4528)
!4531 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4528)
!4532 = !DILocation(line: 270, column: 7, scope: !807)
!4533 = !DILocation(line: 271, column: 3, scope: !807)
!4534 = distinct !DISubprogram(name: "xzalloc", scope: !792, file: !792, line: 279, type: !1804, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4535)
!4535 = !{!4536}
!4536 = !DILocalVariable(name: "s", arg: 1, scope: !4534, file: !792, line: 279, type: !133)
!4537 = !DILocation(line: 0, scope: !4534)
!4538 = !DILocalVariable(name: "n", arg: 1, scope: !4539, file: !792, line: 294, type: !133)
!4539 = distinct !DISubprogram(name: "xcalloc", scope: !792, file: !792, line: 294, type: !4402, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4540)
!4540 = !{!4538, !4541}
!4541 = !DILocalVariable(name: "s", arg: 2, scope: !4539, file: !792, line: 294, type: !133)
!4542 = !DILocation(line: 0, scope: !4539, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 281, column: 10, scope: !4534)
!4544 = !DILocation(line: 296, column: 25, scope: !4539, inlinedAt: !4543)
!4545 = !DILocation(line: 0, scope: !4269, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 296, column: 10, scope: !4539, inlinedAt: !4543)
!4547 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4546)
!4548 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4546)
!4549 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4546)
!4550 = !DILocation(line: 281, column: 3, scope: !4534)
!4551 = !DISubprogram(name: "calloc", scope: !1060, file: !1060, line: 543, type: !4402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4552 = !DILocation(line: 0, scope: !4539)
!4553 = !DILocation(line: 296, column: 25, scope: !4539)
!4554 = !DILocation(line: 0, scope: !4269, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 296, column: 10, scope: !4539)
!4556 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4555)
!4557 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4555)
!4558 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4555)
!4559 = !DILocation(line: 296, column: 3, scope: !4539)
!4560 = distinct !DISubprogram(name: "xizalloc", scope: !792, file: !792, line: 285, type: !4300, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4561)
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "s", arg: 1, scope: !4560, file: !792, line: 285, type: !811)
!4563 = !DILocation(line: 0, scope: !4560)
!4564 = !DILocalVariable(name: "n", arg: 1, scope: !4565, file: !792, line: 300, type: !811)
!4565 = distinct !DISubprogram(name: "xicalloc", scope: !792, file: !792, line: 300, type: !4418, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4566)
!4566 = !{!4564, !4567}
!4567 = !DILocalVariable(name: "s", arg: 2, scope: !4565, file: !792, line: 300, type: !811)
!4568 = !DILocation(line: 0, scope: !4565, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 287, column: 10, scope: !4560)
!4570 = !DILocalVariable(name: "n", arg: 1, scope: !4571, file: !4307, line: 77, type: !811)
!4571 = distinct !DISubprogram(name: "icalloc", scope: !4307, file: !4307, line: 77, type: !4418, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4572)
!4572 = !{!4570, !4573}
!4573 = !DILocalVariable(name: "s", arg: 2, scope: !4571, file: !4307, line: 77, type: !811)
!4574 = !DILocation(line: 0, scope: !4571, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 302, column: 25, scope: !4565, inlinedAt: !4569)
!4576 = !DILocation(line: 91, column: 10, scope: !4571, inlinedAt: !4575)
!4577 = !DILocation(line: 0, scope: !4269, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 302, column: 10, scope: !4565, inlinedAt: !4569)
!4579 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4578)
!4580 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4578)
!4581 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4578)
!4582 = !DILocation(line: 287, column: 3, scope: !4560)
!4583 = !DILocation(line: 0, scope: !4565)
!4584 = !DILocation(line: 0, scope: !4571, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 302, column: 25, scope: !4565)
!4586 = !DILocation(line: 91, column: 10, scope: !4571, inlinedAt: !4585)
!4587 = !DILocation(line: 0, scope: !4269, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 302, column: 10, scope: !4565)
!4589 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4588)
!4590 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4588)
!4591 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4588)
!4592 = !DILocation(line: 302, column: 3, scope: !4565)
!4593 = distinct !DISubprogram(name: "xmemdup", scope: !792, file: !792, line: 310, type: !4594, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!131, !1084, !133}
!4596 = !{!4597, !4598}
!4597 = !DILocalVariable(name: "p", arg: 1, scope: !4593, file: !792, line: 310, type: !1084)
!4598 = !DILocalVariable(name: "s", arg: 2, scope: !4593, file: !792, line: 310, type: !133)
!4599 = !DILocation(line: 0, scope: !4593)
!4600 = !DILocation(line: 0, scope: !4288, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 312, column: 18, scope: !4593)
!4602 = !DILocation(line: 49, column: 25, scope: !4288, inlinedAt: !4601)
!4603 = !DILocation(line: 0, scope: !4269, inlinedAt: !4604)
!4604 = distinct !DILocation(line: 49, column: 10, scope: !4288, inlinedAt: !4601)
!4605 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4604)
!4606 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4604)
!4607 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4604)
!4608 = !DILocalVariable(name: "__dest", arg: 1, scope: !4609, file: !1278, line: 26, type: !4612)
!4609 = distinct !DISubprogram(name: "memcpy", scope: !1278, file: !1278, line: 26, type: !4610, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4613)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!131, !4612, !1083, !133}
!4612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4613 = !{!4608, !4614, !4615}
!4614 = !DILocalVariable(name: "__src", arg: 2, scope: !4609, file: !1278, line: 26, type: !1083)
!4615 = !DILocalVariable(name: "__len", arg: 3, scope: !4609, file: !1278, line: 26, type: !133)
!4616 = !DILocation(line: 0, scope: !4609, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 312, column: 10, scope: !4593)
!4618 = !DILocation(line: 29, column: 10, scope: !4609, inlinedAt: !4617)
!4619 = !DILocation(line: 312, column: 3, scope: !4593)
!4620 = distinct !DISubprogram(name: "ximemdup", scope: !792, file: !792, line: 316, type: !4621, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!131, !1084, !811}
!4623 = !{!4624, !4625}
!4624 = !DILocalVariable(name: "p", arg: 1, scope: !4620, file: !792, line: 316, type: !1084)
!4625 = !DILocalVariable(name: "s", arg: 2, scope: !4620, file: !792, line: 316, type: !811)
!4626 = !DILocation(line: 0, scope: !4620)
!4627 = !DILocation(line: 0, scope: !4299, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 318, column: 18, scope: !4620)
!4629 = !DILocation(line: 0, scope: !4306, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 55, column: 25, scope: !4299, inlinedAt: !4628)
!4631 = !DILocation(line: 57, column: 26, scope: !4306, inlinedAt: !4630)
!4632 = !DILocation(line: 0, scope: !4269, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 55, column: 10, scope: !4299, inlinedAt: !4628)
!4634 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4633)
!4635 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4633)
!4636 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4633)
!4637 = !DILocation(line: 0, scope: !4609, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 318, column: 10, scope: !4620)
!4639 = !DILocation(line: 29, column: 10, scope: !4609, inlinedAt: !4638)
!4640 = !DILocation(line: 318, column: 3, scope: !4620)
!4641 = distinct !DISubprogram(name: "ximemdup0", scope: !792, file: !792, line: 325, type: !4642, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4644)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!130, !1084, !811}
!4644 = !{!4645, !4646, !4647}
!4645 = !DILocalVariable(name: "p", arg: 1, scope: !4641, file: !792, line: 325, type: !1084)
!4646 = !DILocalVariable(name: "s", arg: 2, scope: !4641, file: !792, line: 325, type: !811)
!4647 = !DILocalVariable(name: "result", scope: !4641, file: !792, line: 327, type: !130)
!4648 = !DILocation(line: 0, scope: !4641)
!4649 = !DILocation(line: 327, column: 30, scope: !4641)
!4650 = !DILocation(line: 0, scope: !4299, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 327, column: 18, scope: !4641)
!4652 = !DILocation(line: 0, scope: !4306, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 55, column: 25, scope: !4299, inlinedAt: !4651)
!4654 = !DILocation(line: 57, column: 26, scope: !4306, inlinedAt: !4653)
!4655 = !DILocation(line: 0, scope: !4269, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 55, column: 10, scope: !4299, inlinedAt: !4651)
!4657 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4656)
!4658 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4656)
!4659 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4656)
!4660 = !DILocation(line: 328, column: 3, scope: !4641)
!4661 = !DILocation(line: 328, column: 13, scope: !4641)
!4662 = !DILocation(line: 0, scope: !4609, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 329, column: 10, scope: !4641)
!4664 = !DILocation(line: 29, column: 10, scope: !4609, inlinedAt: !4663)
!4665 = !DILocation(line: 329, column: 3, scope: !4641)
!4666 = distinct !DISubprogram(name: "xstrdup", scope: !792, file: !792, line: 335, type: !1062, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4667)
!4667 = !{!4668}
!4668 = !DILocalVariable(name: "string", arg: 1, scope: !4666, file: !792, line: 335, type: !136)
!4669 = !DILocation(line: 0, scope: !4666)
!4670 = !DILocation(line: 337, column: 27, scope: !4666)
!4671 = !DILocation(line: 337, column: 43, scope: !4666)
!4672 = !DILocation(line: 0, scope: !4593, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 337, column: 10, scope: !4666)
!4674 = !DILocation(line: 0, scope: !4288, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 312, column: 18, scope: !4593, inlinedAt: !4673)
!4676 = !DILocation(line: 49, column: 25, scope: !4288, inlinedAt: !4675)
!4677 = !DILocation(line: 0, scope: !4269, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 49, column: 10, scope: !4288, inlinedAt: !4675)
!4679 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4678)
!4680 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4678)
!4681 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4678)
!4682 = !DILocation(line: 0, scope: !4609, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 312, column: 10, scope: !4593, inlinedAt: !4673)
!4684 = !DILocation(line: 29, column: 10, scope: !4609, inlinedAt: !4683)
!4685 = !DILocation(line: 337, column: 3, scope: !4666)
!4686 = distinct !DISubprogram(name: "xalloc_die", scope: !741, file: !741, line: 32, type: !510, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4687)
!4687 = !{!4688}
!4688 = !DILocalVariable(name: "__errstatus", scope: !4689, file: !741, line: 34, type: !4690)
!4689 = distinct !DILexicalBlock(scope: !4686, file: !741, line: 34, column: 3)
!4690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4691 = !DILocation(line: 34, column: 3, scope: !4689)
!4692 = !DILocation(line: 0, scope: !4689)
!4693 = !DILocation(line: 40, column: 3, scope: !4686)
!4694 = distinct !DISubprogram(name: "xstrtoimax", scope: !4695, file: !4695, line: 71, type: !4696, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4700)
!4695 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!4698, !136, !1089, !87, !4699, !136}
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !832, line: 43, baseType: !831)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4713, !4714}
!4701 = !DILocalVariable(name: "nptr", arg: 1, scope: !4694, file: !4695, line: 71, type: !136)
!4702 = !DILocalVariable(name: "endptr", arg: 2, scope: !4694, file: !4695, line: 71, type: !1089)
!4703 = !DILocalVariable(name: "base", arg: 3, scope: !4694, file: !4695, line: 71, type: !87)
!4704 = !DILocalVariable(name: "val", arg: 4, scope: !4694, file: !4695, line: 72, type: !4699)
!4705 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4694, file: !4695, line: 72, type: !136)
!4706 = !DILocalVariable(name: "t_ptr", scope: !4694, file: !4695, line: 74, type: !130)
!4707 = !DILocalVariable(name: "p", scope: !4694, file: !4695, line: 75, type: !1089)
!4708 = !DILocalVariable(name: "tmp", scope: !4694, file: !4695, line: 91, type: !834)
!4709 = !DILocalVariable(name: "err", scope: !4694, file: !4695, line: 92, type: !4698)
!4710 = !DILocalVariable(name: "xbase", scope: !4711, file: !4695, line: 126, type: !87)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !4695, line: 119, column: 5)
!4712 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 118, column: 7)
!4713 = !DILocalVariable(name: "suffixes", scope: !4711, file: !4695, line: 127, type: !87)
!4714 = !DILocalVariable(name: "overflow", scope: !4711, file: !4695, line: 156, type: !4698)
!4715 = distinct !DIAssignID()
!4716 = !DILocation(line: 0, scope: !4694)
!4717 = !DILocation(line: 74, column: 3, scope: !4694)
!4718 = !DILocation(line: 75, column: 14, scope: !4694)
!4719 = !DILocation(line: 90, column: 3, scope: !4694)
!4720 = !DILocation(line: 90, column: 9, scope: !4694)
!4721 = !DILocation(line: 91, column: 20, scope: !4694)
!4722 = !DILocation(line: 94, column: 7, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 94, column: 7)
!4724 = !DILocation(line: 94, column: 10, scope: !4723)
!4725 = !DILocation(line: 94, column: 7, scope: !4694)
!4726 = !DILocation(line: 98, column: 14, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !4695, line: 98, column: 11)
!4728 = distinct !DILexicalBlock(scope: !4723, file: !4695, line: 95, column: 5)
!4729 = !DILocation(line: 98, column: 29, scope: !4727)
!4730 = !DILocation(line: 98, column: 32, scope: !4727)
!4731 = !DILocation(line: 98, column: 38, scope: !4727)
!4732 = !DILocation(line: 98, column: 41, scope: !4727)
!4733 = !DILocation(line: 98, column: 11, scope: !4728)
!4734 = !DILocation(line: 102, column: 12, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4723, file: !4695, line: 102, column: 12)
!4736 = !DILocation(line: 102, column: 12, scope: !4723)
!4737 = !DILocation(line: 107, column: 5, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !4695, line: 103, column: 5)
!4739 = !DILocation(line: 112, column: 8, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 112, column: 7)
!4741 = !DILocation(line: 112, column: 7, scope: !4694)
!4742 = !DILocation(line: 114, column: 12, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4740, file: !4695, line: 113, column: 5)
!4744 = !DILocation(line: 115, column: 7, scope: !4743)
!4745 = !DILocation(line: 118, column: 7, scope: !4712)
!4746 = !DILocation(line: 118, column: 11, scope: !4712)
!4747 = !DILocation(line: 118, column: 7, scope: !4694)
!4748 = !DILocation(line: 120, column: 12, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4711, file: !4695, line: 120, column: 11)
!4750 = !DILocation(line: 120, column: 11, scope: !4711)
!4751 = !DILocation(line: 122, column: 16, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4749, file: !4695, line: 121, column: 9)
!4753 = !DILocation(line: 123, column: 22, scope: !4752)
!4754 = !DILocation(line: 123, column: 11, scope: !4752)
!4755 = !DILocation(line: 0, scope: !4711)
!4756 = !DILocation(line: 128, column: 7, scope: !4711)
!4757 = !DILocation(line: 140, column: 15, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !4695, line: 140, column: 15)
!4759 = distinct !DILexicalBlock(scope: !4711, file: !4695, line: 129, column: 9)
!4760 = !DILocation(line: 140, column: 15, scope: !4759)
!4761 = !DILocation(line: 141, column: 21, scope: !4758)
!4762 = !DILocation(line: 141, column: 13, scope: !4758)
!4763 = !DILocation(line: 144, column: 21, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !4695, line: 144, column: 21)
!4765 = distinct !DILexicalBlock(scope: !4758, file: !4695, line: 142, column: 15)
!4766 = !DILocation(line: 144, column: 29, scope: !4764)
!4767 = !DILocation(line: 144, column: 21, scope: !4765)
!4768 = !DILocation(line: 152, column: 17, scope: !4765)
!4769 = !DILocation(line: 157, column: 7, scope: !4711)
!4770 = !DILocalVariable(name: "err", scope: !4771, file: !4695, line: 64, type: !4698)
!4771 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4695, file: !4695, line: 62, type: !4772, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4774)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!4698, !4699, !87, !87}
!4774 = !{!4775, !4776, !4777, !4770}
!4775 = !DILocalVariable(name: "x", arg: 1, scope: !4771, file: !4695, line: 62, type: !4699)
!4776 = !DILocalVariable(name: "base", arg: 2, scope: !4771, file: !4695, line: 62, type: !87)
!4777 = !DILocalVariable(name: "power", arg: 3, scope: !4771, file: !4695, line: 62, type: !87)
!4778 = !DILocation(line: 0, scope: !4771, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 219, column: 22, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4711, file: !4695, line: 158, column: 9)
!4781 = !DILocalVariable(name: "x", arg: 1, scope: !4782, file: !4695, line: 47, type: !4699)
!4782 = distinct !DISubprogram(name: "bkm_scale", scope: !4695, file: !4695, line: 47, type: !4783, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4785)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!4698, !4699, !87}
!4785 = !{!4781, !4786, !4787}
!4786 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4782, file: !4695, line: 47, type: !87)
!4787 = !DILocalVariable(name: "scaled", scope: !4782, file: !4695, line: 49, type: !834)
!4788 = !DILocation(line: 0, scope: !4782, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4779)
!4790 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4789)
!4791 = distinct !DILexicalBlock(scope: !4782, file: !4695, line: 50, column: 7)
!4792 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4789)
!4793 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4779)
!4794 = !DILocation(line: 227, column: 11, scope: !4711)
!4795 = !DILocation(line: 0, scope: !4771, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 215, column: 22, scope: !4780)
!4797 = !DILocation(line: 0, scope: !4782, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4796)
!4799 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4798)
!4800 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4798)
!4801 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4796)
!4802 = !DILocation(line: 0, scope: !4771, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 202, column: 22, scope: !4780)
!4804 = !DILocation(line: 0, scope: !4782, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4803)
!4806 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4805)
!4807 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4805)
!4808 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4803)
!4809 = !DILocation(line: 0, scope: !4771, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 198, column: 22, scope: !4780)
!4811 = !DILocation(line: 0, scope: !4782, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4810)
!4813 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4812)
!4814 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4812)
!4815 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4810)
!4816 = !DILocation(line: 0, scope: !4771, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 194, column: 22, scope: !4780)
!4818 = !DILocation(line: 0, scope: !4782, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4817)
!4820 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4819)
!4821 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4819)
!4822 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4817)
!4823 = !DILocation(line: 0, scope: !4771, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 175, column: 22, scope: !4780)
!4825 = !DILocation(line: 0, scope: !4782, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4824)
!4827 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4826)
!4828 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4826)
!4829 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4824)
!4830 = !DILocation(line: 0, scope: !4782, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 160, column: 22, scope: !4780)
!4832 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4831)
!4833 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4831)
!4834 = !DILocation(line: 161, column: 11, scope: !4780)
!4835 = !DILocation(line: 0, scope: !4782, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 167, column: 22, scope: !4780)
!4837 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4836)
!4838 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4836)
!4839 = !DILocation(line: 168, column: 11, scope: !4780)
!4840 = !DILocation(line: 0, scope: !4771, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 180, column: 22, scope: !4780)
!4842 = !DILocation(line: 0, scope: !4782, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4841)
!4844 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4843)
!4845 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4843)
!4846 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4841)
!4847 = !DILocation(line: 0, scope: !4771, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 185, column: 22, scope: !4780)
!4849 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4848)
!4851 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4850)
!4852 = !DILocation(line: 0, scope: !4782, inlinedAt: !4850)
!4853 = !DILocation(line: 0, scope: !4771, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 190, column: 22, scope: !4780)
!4855 = !DILocation(line: 0, scope: !4782, inlinedAt: !4856)
!4856 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4854)
!4857 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4856)
!4858 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4856)
!4859 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4854)
!4860 = !DILocation(line: 0, scope: !4771, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 207, column: 22, scope: !4780)
!4862 = !DILocation(line: 0, scope: !4782, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 66, column: 12, scope: !4771, inlinedAt: !4861)
!4864 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4863)
!4865 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4863)
!4866 = !DILocation(line: 66, column: 9, scope: !4771, inlinedAt: !4861)
!4867 = !DILocation(line: 0, scope: !4782, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 211, column: 22, scope: !4780)
!4869 = !DILocation(line: 50, column: 7, scope: !4791, inlinedAt: !4868)
!4870 = !DILocation(line: 50, column: 7, scope: !4782, inlinedAt: !4868)
!4871 = !DILocation(line: 212, column: 11, scope: !4780)
!4872 = !DILocation(line: 0, scope: !4780)
!4873 = !DILocation(line: 228, column: 10, scope: !4711)
!4874 = !DILocation(line: 229, column: 11, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4711, file: !4695, line: 229, column: 11)
!4876 = !DILocation(line: 229, column: 11, scope: !4711)
!4877 = !DILocation(line: 223, column: 16, scope: !4780)
!4878 = !DILocation(line: 224, column: 22, scope: !4780)
!4879 = !DILocation(line: 100, column: 11, scope: !4728)
!4880 = !DILocation(line: 92, column: 16, scope: !4694)
!4881 = !DILocation(line: 233, column: 8, scope: !4694)
!4882 = !DILocation(line: 234, column: 3, scope: !4694)
!4883 = !DILocation(line: 235, column: 1, scope: !4694)
!4884 = !DISubprogram(name: "strtoimax", scope: !4885, file: !4885, line: 297, type: !4886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4885 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!834, !930, !4888, !87}
!4888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1089)
!4889 = distinct !DISubprogram(name: "rpl_fopen", scope: !838, file: !838, line: 46, type: !4890, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4926)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!4892, !136, !136}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4894)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4895)
!4895 = !{!4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4894, file: !213, line: 51, baseType: !87, size: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4894, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4894, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4894, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4894, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4894, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4894, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4894, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4894, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4894, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4894, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4894, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4894, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4894, file: !213, line: 70, baseType: !4910, size: 64, offset: 832)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4894, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4894, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4894, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4894, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4894, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4894, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4894, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4894, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4894, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4894, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4894, file: !213, line: 93, baseType: !4910, size: 64, offset: 1344)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4894, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4894, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4894, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4894, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4926 = !{!4927, !4928, !4929, !4930, !4931, !4932, !4936, !4938, !4939, !4944, !4947, !4948}
!4927 = !DILocalVariable(name: "filename", arg: 1, scope: !4889, file: !838, line: 46, type: !136)
!4928 = !DILocalVariable(name: "mode", arg: 2, scope: !4889, file: !838, line: 46, type: !136)
!4929 = !DILocalVariable(name: "open_direction", scope: !4889, file: !838, line: 54, type: !87)
!4930 = !DILocalVariable(name: "open_flags", scope: !4889, file: !838, line: 55, type: !87)
!4931 = !DILocalVariable(name: "open_flags_gnu", scope: !4889, file: !838, line: 57, type: !196)
!4932 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4889, file: !838, line: 59, type: !4933)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4934)
!4934 = !{!4935}
!4935 = !DISubrange(count: 81)
!4936 = !DILocalVariable(name: "p", scope: !4937, file: !838, line: 62, type: !136)
!4937 = distinct !DILexicalBlock(scope: !4889, file: !838, line: 61, column: 3)
!4938 = !DILocalVariable(name: "q", scope: !4937, file: !838, line: 64, type: !130)
!4939 = !DILocalVariable(name: "len", scope: !4940, file: !838, line: 128, type: !133)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !838, line: 127, column: 9)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !838, line: 68, column: 7)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !838, line: 67, column: 5)
!4943 = distinct !DILexicalBlock(scope: !4937, file: !838, line: 67, column: 5)
!4944 = !DILocalVariable(name: "fd", scope: !4945, file: !838, line: 199, type: !87)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !838, line: 198, column: 5)
!4946 = distinct !DILexicalBlock(scope: !4889, file: !838, line: 197, column: 7)
!4947 = !DILocalVariable(name: "fp", scope: !4945, file: !838, line: 204, type: !4892)
!4948 = !DILocalVariable(name: "saved_errno", scope: !4949, file: !838, line: 207, type: !87)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !838, line: 206, column: 9)
!4950 = distinct !DILexicalBlock(scope: !4945, file: !838, line: 205, column: 11)
!4951 = distinct !DIAssignID()
!4952 = !DILocation(line: 0, scope: !4889)
!4953 = !DILocation(line: 59, column: 3, scope: !4889)
!4954 = !DILocation(line: 0, scope: !4937)
!4955 = !DILocation(line: 67, column: 5, scope: !4937)
!4956 = !DILocation(line: 54, column: 7, scope: !4889)
!4957 = !DILocation(line: 67, column: 12, scope: !4942)
!4958 = !DILocation(line: 67, column: 5, scope: !4943)
!4959 = !DILocation(line: 74, column: 19, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !838, line: 74, column: 17)
!4961 = distinct !DILexicalBlock(scope: !4941, file: !838, line: 70, column: 11)
!4962 = !DILocation(line: 74, column: 17, scope: !4961)
!4963 = !DILocation(line: 75, column: 17, scope: !4960)
!4964 = !DILocation(line: 75, column: 20, scope: !4960)
!4965 = !DILocation(line: 75, column: 15, scope: !4960)
!4966 = !DILocation(line: 80, column: 24, scope: !4961)
!4967 = !DILocation(line: 82, column: 19, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4961, file: !838, line: 82, column: 17)
!4969 = !DILocation(line: 82, column: 17, scope: !4961)
!4970 = !DILocation(line: 83, column: 17, scope: !4968)
!4971 = !DILocation(line: 83, column: 20, scope: !4968)
!4972 = !DILocation(line: 83, column: 15, scope: !4968)
!4973 = !DILocation(line: 88, column: 24, scope: !4961)
!4974 = !DILocation(line: 90, column: 19, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4961, file: !838, line: 90, column: 17)
!4976 = !DILocation(line: 90, column: 17, scope: !4961)
!4977 = !DILocation(line: 91, column: 17, scope: !4975)
!4978 = !DILocation(line: 91, column: 20, scope: !4975)
!4979 = !DILocation(line: 91, column: 15, scope: !4975)
!4980 = !DILocation(line: 100, column: 19, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4961, file: !838, line: 100, column: 17)
!4982 = !DILocation(line: 100, column: 17, scope: !4961)
!4983 = !DILocation(line: 101, column: 17, scope: !4981)
!4984 = !DILocation(line: 101, column: 20, scope: !4981)
!4985 = !DILocation(line: 101, column: 15, scope: !4981)
!4986 = !DILocation(line: 107, column: 19, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4961, file: !838, line: 107, column: 17)
!4988 = !DILocation(line: 107, column: 17, scope: !4961)
!4989 = !DILocation(line: 108, column: 17, scope: !4987)
!4990 = !DILocation(line: 108, column: 20, scope: !4987)
!4991 = !DILocation(line: 108, column: 15, scope: !4987)
!4992 = !DILocation(line: 113, column: 24, scope: !4961)
!4993 = !DILocation(line: 115, column: 13, scope: !4961)
!4994 = !DILocation(line: 117, column: 24, scope: !4961)
!4995 = !DILocation(line: 119, column: 13, scope: !4961)
!4996 = !DILocation(line: 128, column: 24, scope: !4940)
!4997 = !DILocation(line: 0, scope: !4940)
!4998 = !DILocation(line: 129, column: 48, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4940, file: !838, line: 129, column: 15)
!5000 = !DILocation(line: 129, column: 15, scope: !4940)
!5001 = !DILocalVariable(name: "__dest", arg: 1, scope: !5002, file: !1278, line: 26, type: !4612)
!5002 = distinct !DISubprogram(name: "memcpy", scope: !1278, file: !1278, line: 26, type: !4610, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !5003)
!5003 = !{!5001, !5004, !5005}
!5004 = !DILocalVariable(name: "__src", arg: 2, scope: !5002, file: !1278, line: 26, type: !1083)
!5005 = !DILocalVariable(name: "__len", arg: 3, scope: !5002, file: !1278, line: 26, type: !133)
!5006 = !DILocation(line: 0, scope: !5002, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 131, column: 11, scope: !4940)
!5008 = !DILocation(line: 29, column: 10, scope: !5002, inlinedAt: !5007)
!5009 = !DILocation(line: 132, column: 13, scope: !4940)
!5010 = !DILocation(line: 135, column: 9, scope: !4941)
!5011 = !DILocation(line: 67, column: 25, scope: !4942)
!5012 = !DILocation(line: 67, column: 5, scope: !4942)
!5013 = distinct !{!5013, !4958, !5014, !986}
!5014 = !DILocation(line: 136, column: 7, scope: !4943)
!5015 = !DILocation(line: 138, column: 8, scope: !4937)
!5016 = !DILocation(line: 197, column: 7, scope: !4889)
!5017 = !DILocation(line: 199, column: 47, scope: !4945)
!5018 = !DILocation(line: 199, column: 16, scope: !4945)
!5019 = !DILocation(line: 0, scope: !4945)
!5020 = !DILocation(line: 201, column: 14, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4945, file: !838, line: 201, column: 11)
!5022 = !DILocation(line: 201, column: 11, scope: !4945)
!5023 = !DILocation(line: 204, column: 18, scope: !4945)
!5024 = !DILocation(line: 205, column: 14, scope: !4950)
!5025 = !DILocation(line: 205, column: 11, scope: !4945)
!5026 = !DILocation(line: 207, column: 29, scope: !4949)
!5027 = !DILocation(line: 0, scope: !4949)
!5028 = !DILocation(line: 208, column: 11, scope: !4949)
!5029 = !DILocation(line: 209, column: 17, scope: !4949)
!5030 = !DILocation(line: 210, column: 9, scope: !4949)
!5031 = !DILocalVariable(name: "filename", arg: 1, scope: !5032, file: !838, line: 30, type: !136)
!5032 = distinct !DISubprogram(name: "orig_fopen", scope: !838, file: !838, line: 30, type: !4890, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !5033)
!5033 = !{!5031, !5034}
!5034 = !DILocalVariable(name: "mode", arg: 2, scope: !5032, file: !838, line: 30, type: !136)
!5035 = !DILocation(line: 0, scope: !5032, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 219, column: 10, scope: !4889)
!5037 = !DILocation(line: 32, column: 10, scope: !5032, inlinedAt: !5036)
!5038 = !DILocation(line: 219, column: 3, scope: !4889)
!5039 = !DILocation(line: 220, column: 1, scope: !4889)
!5040 = !DISubprogram(name: "open", scope: !2296, file: !2296, line: 181, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!87, !136, !87, null}
!5043 = !DISubprogram(name: "fdopen", scope: !470, file: !470, line: 293, type: !5044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!4892, !87, !136}
!5046 = !DISubprogram(name: "close", scope: !2155, file: !2155, line: 358, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5047 = !DISubprogram(name: "fopen", scope: !470, file: !470, line: 258, type: !5048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!4892, !930, !930}
!5050 = distinct !DISubprogram(name: "close_stream", scope: !840, file: !840, line: 55, type: !5051, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !5087)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!87, !5053}
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !5055)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5056)
!5056 = !{!5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5055, file: !213, line: 51, baseType: !87, size: 32)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5055, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5055, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5055, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5055, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5055, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5055, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5055, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5055, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5055, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5055, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5055, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5055, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5055, file: !213, line: 70, baseType: !5071, size: 64, offset: 832)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5055, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5055, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5055, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5055, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5055, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5055, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5055, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5055, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5055, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5055, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5055, file: !213, line: 93, baseType: !5071, size: 64, offset: 1344)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5055, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5055, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5055, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5055, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5087 = !{!5088, !5089, !5091, !5092}
!5088 = !DILocalVariable(name: "stream", arg: 1, scope: !5050, file: !840, line: 55, type: !5053)
!5089 = !DILocalVariable(name: "some_pending", scope: !5050, file: !840, line: 57, type: !5090)
!5090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5091 = !DILocalVariable(name: "prev_fail", scope: !5050, file: !840, line: 58, type: !5090)
!5092 = !DILocalVariable(name: "fclose_fail", scope: !5050, file: !840, line: 59, type: !5090)
!5093 = !DILocation(line: 0, scope: !5050)
!5094 = !DILocation(line: 57, column: 30, scope: !5050)
!5095 = !DILocalVariable(name: "__stream", arg: 1, scope: !5096, file: !1293, line: 135, type: !5053)
!5096 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1293, file: !1293, line: 135, type: !5051, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !5097)
!5097 = !{!5095}
!5098 = !DILocation(line: 0, scope: !5096, inlinedAt: !5099)
!5099 = distinct !DILocation(line: 58, column: 27, scope: !5050)
!5100 = !DILocation(line: 137, column: 10, scope: !5096, inlinedAt: !5099)
!5101 = !DILocation(line: 58, column: 43, scope: !5050)
!5102 = !DILocation(line: 59, column: 29, scope: !5050)
!5103 = !DILocation(line: 59, column: 45, scope: !5050)
!5104 = !DILocation(line: 69, column: 17, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5050, file: !840, line: 69, column: 7)
!5106 = !DILocation(line: 57, column: 50, scope: !5050)
!5107 = !DILocation(line: 69, column: 33, scope: !5105)
!5108 = !DILocation(line: 69, column: 53, scope: !5105)
!5109 = !DILocation(line: 69, column: 59, scope: !5105)
!5110 = !DILocation(line: 69, column: 7, scope: !5050)
!5111 = !DILocation(line: 71, column: 11, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5105, file: !840, line: 70, column: 5)
!5113 = !DILocation(line: 72, column: 9, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5112, file: !840, line: 71, column: 11)
!5115 = !DILocation(line: 72, column: 15, scope: !5114)
!5116 = !DILocation(line: 77, column: 1, scope: !5050)
!5117 = !DISubprogram(name: "__fpending", scope: !2499, file: !2499, line: 75, type: !5118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!133, !5053}
!5120 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !748, file: !748, line: 100, type: !5121, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !5124)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!133, !2765, !136, !133, !5123}
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!5124 = !{!5125, !5126, !5127, !5128, !5129}
!5125 = !DILocalVariable(name: "pwc", arg: 1, scope: !5120, file: !748, line: 100, type: !2765)
!5126 = !DILocalVariable(name: "s", arg: 2, scope: !5120, file: !748, line: 100, type: !136)
!5127 = !DILocalVariable(name: "n", arg: 3, scope: !5120, file: !748, line: 100, type: !133)
!5128 = !DILocalVariable(name: "ps", arg: 4, scope: !5120, file: !748, line: 100, type: !5123)
!5129 = !DILocalVariable(name: "ret", scope: !5120, file: !748, line: 130, type: !133)
!5130 = !DILocation(line: 0, scope: !5120)
!5131 = !DILocation(line: 105, column: 9, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5120, file: !748, line: 105, column: 7)
!5133 = !DILocation(line: 105, column: 7, scope: !5120)
!5134 = !DILocation(line: 117, column: 10, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5120, file: !748, line: 117, column: 7)
!5136 = !DILocation(line: 117, column: 7, scope: !5120)
!5137 = !DILocation(line: 130, column: 16, scope: !5120)
!5138 = !DILocation(line: 135, column: 11, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5120, file: !748, line: 135, column: 7)
!5140 = !DILocation(line: 135, column: 25, scope: !5139)
!5141 = !DILocation(line: 135, column: 30, scope: !5139)
!5142 = !DILocation(line: 135, column: 7, scope: !5120)
!5143 = !DILocalVariable(name: "ps", arg: 1, scope: !5144, file: !2739, line: 1135, type: !5123)
!5144 = distinct !DISubprogram(name: "mbszero", scope: !2739, file: !2739, line: 1135, type: !5145, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !5147)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{null, !5123}
!5147 = !{!5143}
!5148 = !DILocation(line: 0, scope: !5144, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 137, column: 5, scope: !5139)
!5150 = !DILocalVariable(name: "__dest", arg: 1, scope: !5151, file: !1278, line: 57, type: !131)
!5151 = distinct !DISubprogram(name: "memset", scope: !1278, file: !1278, line: 57, type: !2748, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !5152)
!5152 = !{!5150, !5153, !5154}
!5153 = !DILocalVariable(name: "__ch", arg: 2, scope: !5151, file: !1278, line: 57, type: !87)
!5154 = !DILocalVariable(name: "__len", arg: 3, scope: !5151, file: !1278, line: 57, type: !133)
!5155 = !DILocation(line: 0, scope: !5151, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 1137, column: 3, scope: !5144, inlinedAt: !5149)
!5157 = !DILocation(line: 59, column: 10, scope: !5151, inlinedAt: !5156)
!5158 = !DILocation(line: 137, column: 5, scope: !5139)
!5159 = !DILocation(line: 138, column: 11, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5120, file: !748, line: 138, column: 7)
!5161 = !DILocation(line: 138, column: 7, scope: !5120)
!5162 = !DILocation(line: 139, column: 5, scope: !5160)
!5163 = !DILocation(line: 143, column: 26, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5120, file: !748, line: 143, column: 7)
!5165 = !DILocation(line: 143, column: 41, scope: !5164)
!5166 = !DILocation(line: 143, column: 7, scope: !5120)
!5167 = !DILocation(line: 145, column: 15, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !748, line: 145, column: 11)
!5169 = distinct !DILexicalBlock(scope: !5164, file: !748, line: 144, column: 5)
!5170 = !DILocation(line: 145, column: 11, scope: !5169)
!5171 = !DILocation(line: 146, column: 32, scope: !5168)
!5172 = !DILocation(line: 146, column: 16, scope: !5168)
!5173 = !DILocation(line: 146, column: 14, scope: !5168)
!5174 = !DILocation(line: 146, column: 9, scope: !5168)
!5175 = !DILocation(line: 286, column: 1, scope: !5120)
!5176 = !DISubprogram(name: "mbsinit", scope: !5177, file: !5177, line: 293, type: !5178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5177 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!87, !5180}
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!5182 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !842, file: !842, line: 27, type: !4253, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !5183)
!5183 = !{!5184, !5185, !5186, !5187}
!5184 = !DILocalVariable(name: "ptr", arg: 1, scope: !5182, file: !842, line: 27, type: !131)
!5185 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5182, file: !842, line: 27, type: !133)
!5186 = !DILocalVariable(name: "size", arg: 3, scope: !5182, file: !842, line: 27, type: !133)
!5187 = !DILocalVariable(name: "nbytes", scope: !5182, file: !842, line: 29, type: !133)
!5188 = !DILocation(line: 0, scope: !5182)
!5189 = !DILocation(line: 30, column: 7, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5182, file: !842, line: 30, column: 7)
!5191 = !DILocation(line: 30, column: 7, scope: !5182)
!5192 = !DILocation(line: 32, column: 7, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !842, line: 31, column: 5)
!5194 = !DILocation(line: 32, column: 13, scope: !5193)
!5195 = !DILocation(line: 33, column: 7, scope: !5193)
!5196 = !DILocalVariable(name: "ptr", arg: 1, scope: !5197, file: !4342, line: 2057, type: !131)
!5197 = distinct !DISubprogram(name: "rpl_realloc", scope: !4342, file: !4342, line: 2057, type: !4334, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !5198)
!5198 = !{!5196, !5199}
!5199 = !DILocalVariable(name: "size", arg: 2, scope: !5197, file: !4342, line: 2057, type: !133)
!5200 = !DILocation(line: 0, scope: !5197, inlinedAt: !5201)
!5201 = distinct !DILocation(line: 37, column: 10, scope: !5182)
!5202 = !DILocation(line: 2059, column: 24, scope: !5197, inlinedAt: !5201)
!5203 = !DILocation(line: 2059, column: 10, scope: !5197, inlinedAt: !5201)
!5204 = !DILocation(line: 37, column: 3, scope: !5182)
!5205 = !DILocation(line: 38, column: 1, scope: !5182)
!5206 = distinct !DISubprogram(name: "hard_locale", scope: !766, file: !766, line: 28, type: !5207, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!196, !87}
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "category", arg: 1, scope: !5206, file: !766, line: 28, type: !87)
!5211 = !DILocalVariable(name: "locale", scope: !5206, file: !766, line: 30, type: !5212)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5213)
!5213 = !{!5214}
!5214 = !DISubrange(count: 257)
!5215 = distinct !DIAssignID()
!5216 = !DILocation(line: 0, scope: !5206)
!5217 = !DILocation(line: 30, column: 3, scope: !5206)
!5218 = !DILocation(line: 32, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5206, file: !766, line: 32, column: 7)
!5220 = !DILocation(line: 32, column: 7, scope: !5206)
!5221 = !DILocalVariable(name: "__s1", arg: 1, scope: !5222, file: !952, line: 1359, type: !136)
!5222 = distinct !DISubprogram(name: "streq", scope: !952, file: !952, line: 1359, type: !953, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !5223)
!5223 = !{!5221, !5224}
!5224 = !DILocalVariable(name: "__s2", arg: 2, scope: !5222, file: !952, line: 1359, type: !136)
!5225 = !DILocation(line: 0, scope: !5222, inlinedAt: !5226)
!5226 = distinct !DILocation(line: 35, column: 9, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5206, file: !766, line: 35, column: 7)
!5228 = !DILocation(line: 1361, column: 11, scope: !5222, inlinedAt: !5226)
!5229 = !DILocation(line: 1361, column: 10, scope: !5222, inlinedAt: !5226)
!5230 = !DILocation(line: 35, column: 29, scope: !5227)
!5231 = !DILocation(line: 0, scope: !5222, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 35, column: 32, scope: !5227)
!5233 = !DILocation(line: 1361, column: 11, scope: !5222, inlinedAt: !5232)
!5234 = !DILocation(line: 1361, column: 10, scope: !5222, inlinedAt: !5232)
!5235 = !DILocation(line: 35, column: 7, scope: !5206)
!5236 = !DILocation(line: 46, column: 3, scope: !5206)
!5237 = !DILocation(line: 47, column: 1, scope: !5206)
!5238 = distinct !DISubprogram(name: "setlocale_null_r", scope: !846, file: !846, line: 154, type: !5239, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!87, !87, !130, !133}
!5241 = !{!5242, !5243, !5244}
!5242 = !DILocalVariable(name: "category", arg: 1, scope: !5238, file: !846, line: 154, type: !87)
!5243 = !DILocalVariable(name: "buf", arg: 2, scope: !5238, file: !846, line: 154, type: !130)
!5244 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5238, file: !846, line: 154, type: !133)
!5245 = !DILocation(line: 0, scope: !5238)
!5246 = !DILocation(line: 159, column: 10, scope: !5238)
!5247 = !DILocation(line: 159, column: 3, scope: !5238)
!5248 = distinct !DISubprogram(name: "setlocale_null", scope: !846, file: !846, line: 186, type: !5249, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !5251)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!136, !87}
!5251 = !{!5252}
!5252 = !DILocalVariable(name: "category", arg: 1, scope: !5248, file: !846, line: 186, type: !87)
!5253 = !DILocation(line: 0, scope: !5248)
!5254 = !DILocation(line: 189, column: 10, scope: !5248)
!5255 = !DILocation(line: 189, column: 3, scope: !5248)
!5256 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !848, file: !848, line: 35, type: !5249, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !5257)
!5257 = !{!5258, !5259}
!5258 = !DILocalVariable(name: "category", arg: 1, scope: !5256, file: !848, line: 35, type: !87)
!5259 = !DILocalVariable(name: "result", scope: !5256, file: !848, line: 37, type: !136)
!5260 = !DILocation(line: 0, scope: !5256)
!5261 = !DILocation(line: 37, column: 24, scope: !5256)
!5262 = !DILocation(line: 62, column: 3, scope: !5256)
!5263 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !848, file: !848, line: 66, type: !5239, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !5264)
!5264 = !{!5265, !5266, !5267, !5268, !5269}
!5265 = !DILocalVariable(name: "category", arg: 1, scope: !5263, file: !848, line: 66, type: !87)
!5266 = !DILocalVariable(name: "buf", arg: 2, scope: !5263, file: !848, line: 66, type: !130)
!5267 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5263, file: !848, line: 66, type: !133)
!5268 = !DILocalVariable(name: "result", scope: !5263, file: !848, line: 111, type: !136)
!5269 = !DILocalVariable(name: "length", scope: !5270, file: !848, line: 125, type: !133)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !848, line: 124, column: 5)
!5271 = distinct !DILexicalBlock(scope: !5263, file: !848, line: 113, column: 7)
!5272 = !DILocation(line: 0, scope: !5263)
!5273 = !DILocation(line: 0, scope: !5256, inlinedAt: !5274)
!5274 = distinct !DILocation(line: 111, column: 24, scope: !5263)
!5275 = !DILocation(line: 37, column: 24, scope: !5256, inlinedAt: !5274)
!5276 = !DILocation(line: 113, column: 14, scope: !5271)
!5277 = !DILocation(line: 113, column: 7, scope: !5263)
!5278 = !DILocation(line: 116, column: 19, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !848, line: 116, column: 11)
!5280 = distinct !DILexicalBlock(scope: !5271, file: !848, line: 114, column: 5)
!5281 = !DILocation(line: 116, column: 11, scope: !5280)
!5282 = !DILocation(line: 120, column: 16, scope: !5279)
!5283 = !DILocation(line: 120, column: 9, scope: !5279)
!5284 = !DILocation(line: 125, column: 23, scope: !5270)
!5285 = !DILocation(line: 0, scope: !5270)
!5286 = !DILocation(line: 126, column: 18, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5270, file: !848, line: 126, column: 11)
!5288 = !DILocation(line: 126, column: 11, scope: !5270)
!5289 = !DILocation(line: 128, column: 39, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5287, file: !848, line: 127, column: 9)
!5291 = !DILocalVariable(name: "__dest", arg: 1, scope: !5292, file: !1278, line: 26, type: !4612)
!5292 = distinct !DISubprogram(name: "memcpy", scope: !1278, file: !1278, line: 26, type: !4610, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !5293)
!5293 = !{!5291, !5294, !5295}
!5294 = !DILocalVariable(name: "__src", arg: 2, scope: !5292, file: !1278, line: 26, type: !1083)
!5295 = !DILocalVariable(name: "__len", arg: 3, scope: !5292, file: !1278, line: 26, type: !133)
!5296 = !DILocation(line: 0, scope: !5292, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 128, column: 11, scope: !5290)
!5298 = !DILocation(line: 29, column: 10, scope: !5292, inlinedAt: !5297)
!5299 = !DILocation(line: 129, column: 11, scope: !5290)
!5300 = !DILocation(line: 133, column: 23, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !848, line: 133, column: 15)
!5302 = distinct !DILexicalBlock(scope: !5287, file: !848, line: 132, column: 9)
!5303 = !DILocation(line: 133, column: 15, scope: !5302)
!5304 = !DILocation(line: 138, column: 44, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !848, line: 134, column: 13)
!5306 = !DILocation(line: 0, scope: !5292, inlinedAt: !5307)
!5307 = distinct !DILocation(line: 138, column: 15, scope: !5305)
!5308 = !DILocation(line: 29, column: 10, scope: !5292, inlinedAt: !5307)
!5309 = !DILocation(line: 139, column: 15, scope: !5305)
!5310 = !DILocation(line: 139, column: 32, scope: !5305)
!5311 = !DILocation(line: 140, column: 13, scope: !5305)
!5312 = !DILocation(line: 0, scope: !5271)
!5313 = !DILocation(line: 145, column: 1, scope: !5263)
