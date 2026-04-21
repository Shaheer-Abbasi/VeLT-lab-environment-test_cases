; ModuleID = 'src/base32.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.base32_decode_context = type { i32, [8 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [70 x i8] c"Base%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"base32\00", align 1, !dbg !17
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
@.str.66 = private unnamed_addr constant [32 x i8] c"auto_padding <= sizeof (padbuf)\00", align 1, !dbg !387
@.str.67 = private unnamed_addr constant [13 x i8] c"src/basenc.c\00", align 1, !dbg !392
@__PRETTY_FUNCTION__.decode_ctx_finalize = private unnamed_addr constant [85 x i8] c"_Bool decode_ctx_finalize(struct base32_decode_context *, char *restrict *, idx_t *)\00", align 1, !dbg !397
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !402
@.str.69 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !404
@.str.28 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !419
@Version = dso_local local_unnamed_addr global ptr @.str.28, align 8, !dbg !422
@base32_to_int = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1, !dbg !426
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 1, !dbg !432
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !452
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !465
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !457
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !459
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !461
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !463
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !467
@stderr = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !473
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !510
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !475
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !500
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !502
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !504
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !506
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !508
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !512
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !514
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !519
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !524
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !530
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !532
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !534
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !565
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !568
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !570
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !572
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !574
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !576
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !578
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !580
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !582
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !584
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 8, !dbg !586
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !597
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !611
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !647
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !654
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !613
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !656
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !601
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !616
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !618
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !620
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !622
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !624
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !660
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !663
@.str.2.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !665
@.str.3.105 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !667
@.str.4.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !669
@.str.5.107 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !671
@.str.6.108 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !676
@.str.7.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !681
@.str.8.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !683
@.str.9.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !685
@.str.10.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !690
@.str.11.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !692
@.str.12.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !697
@.str.13.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !699
@.str.14.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !704
@.str.15.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !709
@.str.16.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !714
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.123 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !719
@.str.18.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !721
@.str.19.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !723
@.str.20.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !725
@.str.21.127 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !727
@.str.22.128 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !729
@.str.23.129 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !731
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !736
@exit_failure = dso_local global i32 1, align 4, !dbg !744
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !750
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !753
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !755
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !757
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !760
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !775
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !778

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !865, metadata !DIExpression()), !dbg !866
  %2 = icmp eq i32 %0, 0, !dbg !867
  br i1 %2, label %8, label %3, !dbg !869

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !870, !tbaa !872
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !870
  %6 = load ptr, ptr @program_name, align 8, !dbg !870, !tbaa !872
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !870
  br label %41, !dbg !870

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !876
  %10 = load ptr, ptr @program_name, align 8, !dbg !876, !tbaa !872
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !876
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !878
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 32) #42, !dbg !878
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !879
  %15 = load ptr, ptr @stdout, align 8, !dbg !879, !tbaa !872
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !879
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #42, !dbg !883
  %18 = load ptr, ptr @stdout, align 8, !dbg !883, !tbaa !872
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !883
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !886
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !886
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #42, !dbg !887
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !887
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !888
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !888
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !889
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !889
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !890
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !890
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !891
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #42, !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !892, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !904, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr poison, metadata !904, metadata !DIExpression()), !dbg !909
  tail call void @emit_bug_reporting_address() #42, !dbg !911
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !912
  call void @llvm.dbg.value(metadata ptr %27, metadata !907, metadata !DIExpression()), !dbg !909
  %28 = icmp eq ptr %27, null, !dbg !913
  br i1 %28, label %36, label %29, !dbg !915

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #43, !dbg !916
  %31 = icmp eq i32 %30, 0, !dbg !916
  br i1 %31, label %36, label %32, !dbg !917

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #42, !dbg !918
  %34 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !872
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !918
  br label %36, !dbg !920

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !904, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !908, metadata !DIExpression()), !dbg !909
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #42, !dbg !921
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #42, !dbg !921
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #42, !dbg !922
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #42, !dbg !922
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !923
  unreachable, !dbg !923
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !924 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !928 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !933 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !936 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !939
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !940, !tbaa !941
  %3 = icmp eq i32 %2, -1, !dbg !943
  br i1 %3, label %4, label %16, !dbg !944

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #42, !dbg !945
  call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !946
  %6 = icmp eq ptr %5, null, !dbg !947
  br i1 %6, label %14, label %7, !dbg !948

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !949, !tbaa !950
  %9 = icmp eq i8 %8, 0, !dbg !949
  br i1 %9, label %14, label %10, !dbg !951

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !952, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !958, metadata !DIExpression()), !dbg !959
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #43, !dbg !961
  %12 = icmp eq i32 %11, 0, !dbg !962
  %13 = zext i1 %12 to i32, !dbg !951
  br label %14, !dbg !951

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !963, !tbaa !941
  br label %16, !dbg !964

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !965
  %18 = icmp eq i32 %17, 0, !dbg !965
  br i1 %18, label %22, label %19, !dbg !967

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !872
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !968
  br label %122, !dbg !970

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !939
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #43, !dbg !971
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !972
  call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !939
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !973
  call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !939
  %26 = icmp eq ptr %25, null, !dbg !974
  br i1 %26, label %54, label %27, !dbg !975

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !976
  br i1 %28, label %54, label %29, !dbg !977

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !978
  %30 = icmp ult ptr %24, %25, !dbg !979
  br i1 %30, label %31, label %52, !dbg !980

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !939
  %33 = load ptr, ptr %32, align 8, !tbaa !872
  br label %34, !dbg !980

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !978
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !981
  call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !978
  %38 = load i8, ptr %35, align 1, !dbg !981, !tbaa !950
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !981
  %41 = load i16, ptr %40, align 2, !dbg !981, !tbaa !982
  %42 = freeze i16 %41, !dbg !984
  %43 = lshr i16 %42, 13, !dbg !984
  %44 = and i16 %43, 1, !dbg !984
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !985
  call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !978
  %47 = icmp ult ptr %37, %25, !dbg !979
  %48 = icmp ult i64 %46, 2, !dbg !986
  %49 = select i1 %47, i1 %48, i1 false, !dbg !986
  br i1 %49, label %34, label %50, !dbg !980, !llvm.loop !987

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !989
  br i1 %51, label %52, label %54, !dbg !991

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !991

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !939
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr %55, metadata !198, metadata !DIExpression()), !dbg !939
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.27) #43, !dbg !992
  call void @llvm.dbg.value(metadata i64 %57, metadata !204, metadata !DIExpression()), !dbg !939
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !993
  call void @llvm.dbg.value(metadata ptr %58, metadata !205, metadata !DIExpression()), !dbg !939
  br label %59, !dbg !994

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !939
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr %60, metadata !205, metadata !DIExpression()), !dbg !939
  %62 = load i8, ptr %60, align 1, !dbg !995, !tbaa !950
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !996

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !997
  %65 = load i8, ptr %64, align 1, !dbg !1000, !tbaa !950
  %66 = icmp ne i8 %65, 45, !dbg !1001
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1002
  br label %68, !dbg !1002

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !939
  %70 = tail call ptr @__ctype_b_loc() #45, !dbg !1003
  %71 = load ptr, ptr %70, align 8, !dbg !1003, !tbaa !872
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1003
  %74 = load i16, ptr %73, align 2, !dbg !1003, !tbaa !982
  %75 = and i16 %74, 8192, !dbg !1003
  %76 = icmp eq i16 %75, 0, !dbg !1003
  br i1 %76, label %90, label %77, !dbg !1005

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1006
  br i1 %78, label %92, label %79, !dbg !1009

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1010
  %81 = load i8, ptr %80, align 1, !dbg !1010, !tbaa !950
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1010
  %84 = load i16, ptr %83, align 2, !dbg !1010, !tbaa !982
  %85 = and i16 %84, 8192, !dbg !1010
  %86 = icmp eq i16 %85, 0, !dbg !1010
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1011
  br i1 %89, label %90, label %92, !dbg !1011

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1012
  call void @llvm.dbg.value(metadata ptr %91, metadata !205, metadata !DIExpression()), !dbg !939
  br label %59, !dbg !994, !llvm.loop !1013

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1015
  %94 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !872
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !939
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #43, !dbg !1036
  %97 = icmp eq i32 %96, 0, !dbg !1036
  br i1 %97, label %101, label %98, !dbg !1038

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #43, !dbg !1039
  %100 = icmp eq i32 %99, 0, !dbg !1039
  br i1 %100, label %101, label %104, !dbg !1040

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1041
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #42, !dbg !1041
  br label %107, !dbg !1043

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1044
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #42, !dbg !1044
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !872
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %108), !dbg !1046
  %110 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !872
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %110), !dbg !1047
  %112 = ptrtoint ptr %60 to i64, !dbg !1048
  %113 = sub i64 %112, %93, !dbg !1048
  %114 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !872
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1048
  %116 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !872
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %116), !dbg !1049
  %118 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !872
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %118), !dbg !1050
  %120 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !872
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1051
  br label %122, !dbg !1052

122:                                              ; preds = %107, %19
  ret void, !dbg !1052
}

; Function Attrs: nounwind
declare !dbg !1053 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1057 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1061 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1063 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1066 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1069 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1072 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1075 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1081 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1082 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1088 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1093, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr %1, metadata !1094, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 0, metadata !1099, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 76, metadata !1100, metadata !DIExpression()), !dbg !1106
  %4 = load ptr, ptr %1, align 8, !dbg !1107, !tbaa !872
  tail call void @set_program_name(ptr noundef %4) #42, !dbg !1108
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #42, !dbg !1109
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #42, !dbg !1110
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #42, !dbg !1111
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1112
  br label %9, !dbg !1113

9:                                                ; preds = %16, %2
  %10 = phi i1 [ false, %2 ], [ true, %16 ]
  %11 = phi i1 [ false, %2 ], [ %14, %16 ]
  %12 = phi i64 [ 76, %2 ], [ %17, %16 ]
  br label %13, !dbg !1113

13:                                               ; preds = %9, %33
  %14 = phi i1 [ %11, %9 ], [ true, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %17, %33 ]
  br label %16, !dbg !1113

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1114
  call void @llvm.dbg.value(metadata i64 %17, metadata !1100, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 poison, metadata !1099, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 poison, metadata !1098, metadata !DIExpression()), !dbg !1106
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #42, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %18, metadata !1095, metadata !DIExpression()), !dbg !1106
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %9
    i32 119, label %19
    i32 105, label %33
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !1113, !llvm.loop !1116

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42, !dbg !1118
  %20 = load ptr, ptr @optarg, align 8, !dbg !1119, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %3, metadata !1101, metadata !DIExpression(DW_OP_deref)), !dbg !1120
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #42, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %21, metadata !1104, metadata !DIExpression()), !dbg !1120
  %22 = icmp ugt i32 %21, 1, !dbg !1122
  %23 = load i64, ptr %3, align 8
  call void @llvm.dbg.value(metadata i64 %23, metadata !1101, metadata !DIExpression()), !dbg !1120
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1124
  br i1 %25, label %26, label %30, !dbg !1124

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !1125
  %28 = load ptr, ptr @optarg, align 8, !dbg !1125, !tbaa !872
  %29 = call ptr @quote(ptr noundef %28) #42, !dbg !1125
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #42, !dbg !1125
  unreachable, !dbg !1125

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1126
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %32, metadata !1100, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !1128
  br label %16, !dbg !1129, !llvm.loop !1116

33:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !1099, metadata !DIExpression()), !dbg !1106
  br label %13, !dbg !1130, !llvm.loop !1116

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #46, !dbg !1131
  unreachable, !dbg !1131

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !872
  %37 = load ptr, ptr @Version, align 8, !dbg !1132, !tbaa !872
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #42, !dbg !1132
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #42, !dbg !1132
  call void @exit(i32 noundef 0) #44, !dbg !1132
  unreachable, !dbg !1132

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #46, !dbg !1133
  unreachable, !dbg !1133

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !1134, !tbaa !941
  %42 = sub nsw i32 %0, %41, !dbg !1136
  %43 = icmp sgt i32 %42, 1, !dbg !1137
  br i1 %43, label %44, label %52, !dbg !1138

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #42, !dbg !1139
  %46 = load i32, ptr @optind, align 4, !dbg !1139, !tbaa !941
  %47 = add nsw i32 %46, 1, !dbg !1139
  %48 = sext i32 %47 to i64, !dbg !1139
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48, !dbg !1139
  %50 = load ptr, ptr %49, align 8, !dbg !1139, !tbaa !872
  %51 = call ptr @quote(ptr noundef %50) #42, !dbg !1139
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #42, !dbg !1139
  call void @usage(i32 noundef 1) #46, !dbg !1141
  unreachable, !dbg !1141

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1142
  br i1 %53, label %54, label %58, !dbg !1144

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1145
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1145
  %57 = load ptr, ptr %56, align 8, !dbg !1145, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %57, metadata !1097, metadata !DIExpression()), !dbg !1106
  br label %58, !dbg !1146

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1147
  call void @llvm.dbg.value(metadata ptr %59, metadata !1097, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr %59, metadata !952, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !958, metadata !DIExpression()), !dbg !1148
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1151
  %61 = icmp eq i32 %60, 0, !dbg !1152
  br i1 %61, label %62, label %64, !dbg !1153

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1154, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %63, metadata !1096, metadata !DIExpression()), !dbg !1106
  br label %71, !dbg !1156

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #42, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %65, metadata !1096, metadata !DIExpression()), !dbg !1106
  %66 = icmp eq ptr %65, null, !dbg !1159
  br i1 %66, label %67, label %71, !dbg !1161

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #45, !dbg !1162
  %69 = load i32, ptr %68, align 4, !dbg !1162, !tbaa !941
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #42, !dbg !1162
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #42, !dbg !1162
  unreachable, !dbg !1162

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1163
  call void @llvm.dbg.value(metadata ptr %72, metadata !1096, metadata !DIExpression()), !dbg !1106
  call void @fadvise(ptr noundef %72, i32 noundef 2) #42, !dbg !1164
  %73 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !872
  br i1 %10, label %74, label %75, !dbg !1167

74:                                               ; preds = %71
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef %14) #46, !dbg !1168
  unreachable, !dbg !1168

75:                                               ; preds = %71
  call fastcc void @do_encode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i64 noundef %17) #46, !dbg !1169
  unreachable, !dbg !1169
}

; Function Attrs: nounwind
declare !dbg !1170 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1173 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1174 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1177 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1183 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef %3) unnamed_addr #0 !dbg !1187 {
  %5 = alloca [8 x i8], align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.base32_decode_context, align 4
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1191, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %1, metadata !1192, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %2, metadata !1193, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i1 %3, metadata !1194, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1219
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #42, !dbg !1220
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1198, metadata !DIExpression()), !dbg !1221
  %9 = tail call noalias nonnull dereferenceable(8192) ptr @xmalloc(i64 noundef 8192) #47, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %9, metadata !1195, metadata !DIExpression()), !dbg !1219
  %10 = tail call noalias nonnull dereferenceable(5120) ptr @xmalloc(i64 noundef 5120) #47, !dbg !1223
  call void @llvm.dbg.value(metadata ptr %10, metadata !1196, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %7, metadata !1224, metadata !DIExpression()), !dbg !1230
  store i32 0, ptr %7, align 4, !dbg !1232, !tbaa !1233
  br label %11, !dbg !1235

11:                                               ; preds = %58, %4
  %12 = phi i64 [ 0, %4 ], [ %59, %58 ], !dbg !1236
  call void @llvm.dbg.value(metadata i64 %12, metadata !1197, metadata !DIExpression()), !dbg !1219
  %13 = getelementptr inbounds i8, ptr %9, i64 %12, !dbg !1237
  %14 = sub nsw i64 8192, %12, !dbg !1237
  %15 = call i64 @fread_unlocked(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %14, ptr noundef %0), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %15, metadata !1206, metadata !DIExpression()), !dbg !1238
  %16 = icmp sgt i64 %15, 0
  %17 = and i1 %16, %3, !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, metadata !1208, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %15, metadata !1206, metadata !DIExpression()), !dbg !1238
  br i1 %17, label %18, label %43, !dbg !1239

18:                                               ; preds = %11, %37
  %19 = phi i64 [ %39, %37 ], [ 0, %11 ]
  %20 = phi i64 [ %38, %37 ], [ %15, %11 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1208, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %20, metadata !1206, metadata !DIExpression()), !dbg !1238
  %21 = add nsw i64 %19, %12, !dbg !1241
  %22 = getelementptr inbounds i8, ptr %9, i64 %21, !dbg !1245
  %23 = load i8, ptr %22, align 1, !dbg !1245, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %23, metadata !1246, metadata !DIExpression()), !dbg !1251
  %24 = zext i8 %23 to i64, !dbg !1253
  %25 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %24, !dbg !1254
  %26 = load i8, ptr %25, align 1, !dbg !1254, !tbaa !950
  %27 = icmp sgt i8 %26, -1, !dbg !1255
  %28 = icmp eq i8 %23, 61
  %29 = select i1 %27, i1 true, i1 %28, !dbg !1256
  call void @llvm.dbg.value(metadata i32 1, metadata !1257, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i32 1, metadata !1262, metadata !DIExpression()), !dbg !1263
  br i1 %29, label %30, label %32, !dbg !1256

30:                                               ; preds = %18
  %31 = add nsw i64 %19, 1, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %31, metadata !1208, metadata !DIExpression()), !dbg !1240
  br label %37, !dbg !1266

32:                                               ; preds = %18
  %33 = getelementptr inbounds i8, ptr %13, i64 %19, !dbg !1267
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1268
  %35 = add nsw i64 %20, -1, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %35, metadata !1206, metadata !DIExpression()), !dbg !1238
  %36 = sub nsw i64 %35, %19, !dbg !1270
  call void @llvm.dbg.value(metadata ptr %33, metadata !1271, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr %34, metadata !1277, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %36, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %33, ptr noundef nonnull align 1 %34, i64 noundef %36, i1 noundef false) #42, !dbg !1281
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i64 [ %20, %30 ], [ %35, %32 ], !dbg !1238
  %39 = phi i64 [ %31, %30 ], [ %19, %32 ], !dbg !1240
  call void @llvm.dbg.value(metadata i64 %39, metadata !1208, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %38, metadata !1206, metadata !DIExpression()), !dbg !1238
  %40 = icmp sgt i64 %38, 0, !dbg !1282
  %41 = icmp slt i64 %39, %38, !dbg !1283
  %42 = select i1 %40, i1 %41, i1 false, !dbg !1283
  br i1 %42, label %18, label %43, !dbg !1284, !llvm.loop !1285

43:                                               ; preds = %37, %11
  %44 = phi i64 [ %15, %11 ], [ %38, %37 ], !dbg !1287
  call void @llvm.dbg.value(metadata i64 %44, metadata !1206, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata !DIArgList(i64 %44, i64 %12), metadata !1197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %0, metadata !1288, metadata !DIExpression()), !dbg !1294
  %45 = load i32, ptr %0, align 8, !dbg !1297, !tbaa !1298
  %46 = and i32 %45, 32, !dbg !1301
  %47 = icmp eq i32 %46, 0, !dbg !1301
  br i1 %47, label %52, label %48, !dbg !1302

48:                                               ; preds = %43
  %49 = tail call ptr @__errno_location() #45, !dbg !1303
  %50 = load i32, ptr %49, align 4, !dbg !1303, !tbaa !941
  %51 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #42, !dbg !1303
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %50, ptr noundef %51) #42, !dbg !1303
  unreachable, !dbg !1303

52:                                               ; preds = %43
  %53 = add nsw i64 %44, %12, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %53, metadata !1197, metadata !DIExpression()), !dbg !1219
  %54 = icmp slt i64 %53, 8192, !dbg !1305
  %55 = and i32 %45, 16
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false, !dbg !1306
  call void @llvm.dbg.value(metadata ptr %0, metadata !1307, metadata !DIExpression()), !dbg !1310
  br i1 %57, label %58, label %60, !dbg !1306

58:                                               ; preds = %52, %156
  %59 = phi i64 [ %53, %52 ], [ 0, %156 ]
  br label %11, !dbg !1219, !llvm.loop !1312

60:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %53, metadata !1197, metadata !DIExpression()), !dbg !1219
  %61 = icmp eq i64 %53, 0, !dbg !1314
  br i1 %61, label %65, label %62, !dbg !1315

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !1316
  call void @llvm.dbg.value(metadata i64 5120, metadata !1212, metadata !DIExpression()), !dbg !1317
  store i64 5120, ptr %8, align 8, !dbg !1318, !tbaa !1319
  call void @llvm.dbg.value(metadata ptr %10, metadata !1196, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %8, metadata !1212, metadata !DIExpression(DW_OP_deref)), !dbg !1317
  %63 = call i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %53, ptr noundef nonnull %10, ptr noundef nonnull %8) #42, !dbg !1320
  call void @llvm.dbg.value(metadata i1 %63, metadata !1204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1236
  %64 = load i64, ptr %8, align 8, !dbg !1322, !tbaa !1319
  br label %95, !dbg !1323

65:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %0, metadata !1307, metadata !DIExpression()), !dbg !1324
  %66 = load i32, ptr %0, align 8, !dbg !1326, !tbaa !1298
  %67 = and i32 %66, 16, !dbg !1315
  %68 = icmp eq i32 %67, 0, !dbg !1315
  br i1 %68, label %156, label %69, !dbg !1327

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !1316
  call void @llvm.dbg.value(metadata i64 5120, metadata !1212, metadata !DIExpression()), !dbg !1317
  store i64 5120, ptr %8, align 8, !dbg !1318, !tbaa !1319
  call void @llvm.dbg.value(metadata ptr %8, metadata !1212, metadata !DIExpression(DW_OP_deref)), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %7, metadata !1328, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr undef, metadata !1334, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %8, metadata !1335, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %7, metadata !1343, metadata !DIExpression()), !dbg !1348
  %70 = load i32, ptr %7, align 4, !dbg !1351, !tbaa !1233
  %71 = icmp eq i32 %70, 0, !dbg !1352
  br i1 %71, label %94, label %72, !dbg !1353

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1336, metadata !DIExpression()), !dbg !1355
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %7, metadata !1343, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %70, metadata !1337, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %70, metadata !1257, metadata !DIExpression()), !dbg !1358
  %73 = srem i32 %70, 8, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %73, metadata !1262, metadata !DIExpression()), !dbg !1358
  %74 = icmp eq i32 %73, 0, !dbg !1361
  %75 = sub nsw i32 8, %73, !dbg !1361
  %76 = select i1 %74, i32 0, i32 %75, !dbg !1361
  %77 = zext i32 %76 to i64
  call void @llvm.dbg.value(metadata i64 %77, metadata !1338, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !1362
  call void @llvm.dbg.value(metadata i64 5120, metadata !1339, metadata !DIExpression()), !dbg !1341
  store i64 5120, ptr %6, align 8, !dbg !1363, !tbaa !1319
  %78 = icmp eq i32 %76, 0, !dbg !1364
  br i1 %78, label %89, label %79, !dbg !1366

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr %7, metadata !1367, metadata !DIExpression()), !dbg !1372
  %80 = add nsw i32 %70, -1, !dbg !1374
  %81 = sext i32 %80 to i64, !dbg !1375
  %82 = getelementptr inbounds %struct.base32_decode_context, ptr %7, i64 0, i32 1, i64 %81, !dbg !1375
  %83 = load i8, ptr %82, align 1, !dbg !1375, !tbaa !950
  %84 = icmp eq i8 %83, 61, !dbg !1376
  br i1 %84, label %89, label %85, !dbg !1377

85:                                               ; preds = %79
  %86 = icmp ult i32 %76, 9, !dbg !1378
  br i1 %86, label %87, label %126, !dbg !1382

87:                                               ; preds = %85
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %88 = call i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %77, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %88, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  br label %91, !dbg !1384

89:                                               ; preds = %79, %72
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %90 = call i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1385
  call void @llvm.dbg.value(metadata i1 %90, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i1 [ %90, %89 ], [ %88, %87 ]
  call void @llvm.dbg.value(metadata i1 %92, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  %93 = load i64, ptr %6, align 8, !dbg !1387, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %93, metadata !1339, metadata !DIExpression()), !dbg !1341
  store i64 %93, ptr %8, align 8, !dbg !1388, !tbaa !1319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !1389
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !1389
  br label %95

94:                                               ; preds = %69
  store i64 0, ptr %8, align 8, !dbg !1390, !tbaa !1319
  br label %95, !dbg !1392

95:                                               ; preds = %94, %91, %62
  %96 = phi i64 [ %64, %62 ], [ 0, %94 ], [ %93, %91 ], !dbg !1322
  %97 = phi i1 [ %63, %62 ], [ true, %94 ], [ %92, %91 ]
  call void @llvm.dbg.value(metadata i1 %97, metadata !1204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %96, metadata !1212, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %96, metadata !1212, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %10, metadata !1196, metadata !DIExpression()), !dbg !1219
  %98 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %96, ptr noundef %2), !dbg !1322
  %99 = load i64, ptr %8, align 8, !dbg !1393, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %99, metadata !1212, metadata !DIExpression()), !dbg !1317
  %100 = icmp ult i64 %98, %99, !dbg !1394
  br i1 %100, label %140, label %101, !dbg !1395

101:                                              ; preds = %95
  br i1 %97, label %102, label %150, !dbg !1396

102:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !1397
  br i1 %61, label %153, label %103

103:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %0, metadata !1307, metadata !DIExpression()), !dbg !1324
  %104 = load i32, ptr %0, align 8, !dbg !1326, !tbaa !1298
  %105 = and i32 %104, 16, !dbg !1315
  %106 = icmp eq i32 %105, 0, !dbg !1315
  br i1 %106, label %156, label %107, !dbg !1327

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42, !dbg !1316
  call void @llvm.dbg.value(metadata i64 5120, metadata !1212, metadata !DIExpression()), !dbg !1317
  store i64 5120, ptr %8, align 8, !dbg !1318, !tbaa !1319
  call void @llvm.dbg.value(metadata ptr %8, metadata !1212, metadata !DIExpression(DW_OP_deref)), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %7, metadata !1328, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr undef, metadata !1334, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %8, metadata !1335, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %7, metadata !1343, metadata !DIExpression()), !dbg !1348
  %108 = load i32, ptr %7, align 4, !dbg !1351, !tbaa !1233
  %109 = icmp eq i32 %108, 0, !dbg !1352
  br i1 %109, label %110, label %111, !dbg !1353

110:                                              ; preds = %107
  store i64 0, ptr %8, align 8, !dbg !1390, !tbaa !1319
  br label %134, !dbg !1392

111:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1336, metadata !DIExpression()), !dbg !1355
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %7, metadata !1343, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %108, metadata !1337, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %108, metadata !1257, metadata !DIExpression()), !dbg !1358
  %112 = srem i32 %108, 8, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %112, metadata !1262, metadata !DIExpression()), !dbg !1358
  %113 = icmp eq i32 %112, 0, !dbg !1361
  %114 = sub nsw i32 8, %112, !dbg !1361
  %115 = select i1 %113, i32 0, i32 %114, !dbg !1361
  %116 = zext i32 %115 to i64
  call void @llvm.dbg.value(metadata i64 %116, metadata !1338, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !1362
  call void @llvm.dbg.value(metadata i64 5120, metadata !1339, metadata !DIExpression()), !dbg !1341
  store i64 5120, ptr %6, align 8, !dbg !1363, !tbaa !1319
  %117 = icmp eq i32 %115, 0, !dbg !1364
  br i1 %117, label %129, label %118, !dbg !1366

118:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %7, metadata !1367, metadata !DIExpression()), !dbg !1372
  %119 = add nsw i32 %108, -1, !dbg !1374
  %120 = sext i32 %119 to i64, !dbg !1375
  %121 = getelementptr inbounds %struct.base32_decode_context, ptr %7, i64 0, i32 1, i64 %120, !dbg !1375
  %122 = load i8, ptr %121, align 1, !dbg !1375, !tbaa !950
  %123 = icmp eq i8 %122, 61, !dbg !1376
  br i1 %123, label %129, label %124, !dbg !1377

124:                                              ; preds = %118
  %125 = icmp ult i32 %115, 9, !dbg !1378
  br i1 %125, label %127, label %126, !dbg !1382

126:                                              ; preds = %85, %124
  call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__.decode_ctx_finalize) #44, !dbg !1378
  unreachable, !dbg !1378

127:                                              ; preds = %124
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %128 = call i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %116, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %128, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  br label %131, !dbg !1384

129:                                              ; preds = %118, %111
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %130 = call i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1385
  call void @llvm.dbg.value(metadata i1 %130, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i1 [ %130, %129 ], [ %128, %127 ]
  call void @llvm.dbg.value(metadata i1 %132, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  %133 = load i64, ptr %6, align 8, !dbg !1387, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %133, metadata !1339, metadata !DIExpression()), !dbg !1341
  store i64 %133, ptr %8, align 8, !dbg !1388, !tbaa !1319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !1389
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !1389
  br label %134

134:                                              ; preds = %131, %110
  %135 = phi i64 [ 0, %110 ], [ %133, %131 ], !dbg !1322
  %136 = phi i1 [ true, %110 ], [ %132, %131 ]
  call void @llvm.dbg.value(metadata i1 %136, metadata !1204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %135, metadata !1212, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %135, metadata !1212, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %10, metadata !1196, metadata !DIExpression()), !dbg !1219
  %137 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %135, ptr noundef %2), !dbg !1322
  %138 = load i64, ptr %8, align 8, !dbg !1393, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %138, metadata !1212, metadata !DIExpression()), !dbg !1317
  %139 = icmp ult i64 %137, %138, !dbg !1394
  br i1 %139, label %140, label %149, !dbg !1395

140:                                              ; preds = %95, %134
  %141 = tail call ptr @__errno_location() #45, !dbg !1398
  %142 = load i32, ptr %141, align 4, !dbg !1398, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %142, metadata !1401, metadata !DIExpression()), !dbg !1403
  %143 = load ptr, ptr @stdout, align 8, !dbg !1404, !tbaa !872
  %144 = call i32 @fflush_unlocked(ptr noundef %143) #42, !dbg !1404
  %145 = load ptr, ptr @stdout, align 8, !dbg !1405, !tbaa !872
  %146 = call i32 @fpurge(ptr noundef %145) #42, !dbg !1406
  %147 = load ptr, ptr @stdout, align 8, !dbg !1407, !tbaa !872
  call void @clearerr_unlocked(ptr noundef %147) #42, !dbg !1407
  %148 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1408
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %142, ptr noundef %148) #42, !dbg !1408
  unreachable, !dbg !1408

149:                                              ; preds = %134
  br i1 %136, label %152, label %150, !dbg !1396

150:                                              ; preds = %101, %149
  %151 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #42, !dbg !1409
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %151) #42, !dbg !1409
  unreachable, !dbg !1409

152:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42, !dbg !1397
  br label %153, !dbg !1411

153:                                              ; preds = %152, %102
  %154 = load i32, ptr %0, align 8, !dbg !1411, !tbaa !1298
  %155 = and i32 %154, 16, !dbg !1413
  br label %156

156:                                              ; preds = %65, %103, %153
  %157 = phi i32 [ %155, %153 ], [ 0, %103 ], [ 0, %65 ], !dbg !1413
  call void @llvm.dbg.value(metadata ptr %0, metadata !1307, metadata !DIExpression()), !dbg !1414
  %158 = icmp eq i32 %157, 0, !dbg !1413
  br i1 %158, label %58, label %159, !dbg !1415

159:                                              ; preds = %156
  call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #46, !dbg !1416
  unreachable, !dbg !1416
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1421, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %1, metadata !1422, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %2, metadata !1423, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %3, metadata !1424, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i64 0, metadata !1425, metadata !DIExpression()), !dbg !1431
  %5 = tail call noalias nonnull dereferenceable(30720) ptr @xmalloc(i64 noundef 30720) #47, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %5, metadata !1426, metadata !DIExpression()), !dbg !1431
  %6 = tail call noalias nonnull dereferenceable(49152) ptr @xmalloc(i64 noundef 49152) #47, !dbg !1433
  call void @llvm.dbg.value(metadata ptr %6, metadata !1427, metadata !DIExpression()), !dbg !1431
  %7 = icmp eq i64 %3, 0
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  br label %10, !dbg !1434

10:                                               ; preds = %96, %4
  %11 = phi i64 [ 0, %4 ], [ %92, %96 ], !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1428, metadata !DIExpression()), !dbg !1431
  br label %12, !dbg !1436

12:                                               ; preds = %21, %10
  %13 = phi i64 [ 0, %10 ], [ %17, %21 ], !dbg !1437
  call void @llvm.dbg.value(metadata i64 %13, metadata !1428, metadata !DIExpression()), !dbg !1431
  %14 = getelementptr inbounds i8, ptr %5, i64 %13, !dbg !1438
  %15 = sub nsw i64 30720, %13, !dbg !1438
  %16 = tail call i64 @fread_unlocked(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %15, ptr noundef %0), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %16, metadata !1429, metadata !DIExpression()), !dbg !1437
  %17 = add nsw i64 %16, %13, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %17, metadata !1428, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %0, metadata !1307, metadata !DIExpression()), !dbg !1441
  %18 = load i32, ptr %0, align 8, !dbg !1443, !tbaa !1298
  %19 = and i32 %18, 16, !dbg !1444
  %20 = icmp eq i32 %19, 0, !dbg !1444
  br i1 %20, label %21, label %26, !dbg !1445

21:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %0, metadata !1288, metadata !DIExpression()), !dbg !1446
  %22 = and i32 %18, 32, !dbg !1448
  %23 = icmp eq i32 %22, 0, !dbg !1448
  %24 = icmp slt i64 %17, 30720
  %25 = select i1 %23, i1 %24, i1 false, !dbg !1449
  br i1 %25, label %12, label %26, !dbg !1449, !llvm.loop !1450

26:                                               ; preds = %21, %12
  %27 = icmp sgt i64 %17, 0, !dbg !1452
  br i1 %27, label %28, label %91, !dbg !1454

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %17, 4, !dbg !1455
  %30 = udiv i64 %29, 5, !dbg !1455
  %31 = shl nuw nsw i64 %30, 3, !dbg !1455
  tail call void @base32_encode(ptr noundef nonnull %5, i64 noundef %17, ptr noundef nonnull %6, i64 noundef %31) #42, !dbg !1458
  call void @llvm.dbg.value(metadata ptr %6, metadata !1459, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %31, metadata !1464, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %3, metadata !1465, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata ptr undef, metadata !1466, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata ptr %2, metadata !1467, metadata !DIExpression()), !dbg !1487
  br i1 %7, label %32, label %45, !dbg !1489

32:                                               ; preds = %28
  %33 = load ptr, ptr @stdout, align 8, !dbg !1490, !tbaa !872
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1490
  %35 = icmp ult i64 %34, %31, !dbg !1491
  br i1 %35, label %36, label %91, !dbg !1492

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #45, !dbg !1493
  %38 = load i32, ptr %37, align 4, !dbg !1493, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %38, metadata !1401, metadata !DIExpression()), !dbg !1495
  %39 = load ptr, ptr @stdout, align 8, !dbg !1496, !tbaa !872
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #42, !dbg !1496
  %41 = load ptr, ptr @stdout, align 8, !dbg !1497, !tbaa !872
  %42 = tail call i32 @fpurge(ptr noundef %41) #42, !dbg !1498
  %43 = load ptr, ptr @stdout, align 8, !dbg !1499, !tbaa !872
  tail call void @clearerr_unlocked(ptr noundef %43) #42, !dbg !1499
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1500
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %44) #42, !dbg !1500
  unreachable, !dbg !1500

45:                                               ; preds = %28, %87
  %46 = phi i64 [ %88, %87 ], [ %11, %28 ], !dbg !1431
  %47 = phi i64 [ %89, %87 ], [ 0, %28 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1475, metadata !DIExpression()), !dbg !1501
  %48 = sub nsw i64 %3, %46, !dbg !1502
  %49 = sub nsw i64 %31, %47, !dbg !1502
  %50 = tail call i64 @llvm.smin.i64(i64 %48, i64 %49), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %50, metadata !1477, metadata !DIExpression()), !dbg !1503
  %51 = icmp eq i64 %50, 0, !dbg !1504
  br i1 %51, label %52, label %70, !dbg !1505

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 10, metadata !1506, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1512
  %53 = load ptr, ptr %8, align 8, !dbg !1516, !tbaa !1517
  %54 = load ptr, ptr %9, align 8, !dbg !1516, !tbaa !1518
  %55 = icmp ult ptr %53, %54, !dbg !1516
  br i1 %55, label %56, label %58, !dbg !1516, !prof !1519

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1516
  store ptr %57, ptr %8, align 8, !dbg !1516, !tbaa !1517
  store i8 10, ptr %53, align 1, !dbg !1516, !tbaa !950
  br label %87, !dbg !1520

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1516
  %60 = icmp eq i32 %59, -1, !dbg !1521
  br i1 %60, label %61, label %87, !dbg !1520

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #45, !dbg !1522
  %63 = load i32, ptr %62, align 4, !dbg !1522, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %63, metadata !1401, metadata !DIExpression()), !dbg !1524
  %64 = load ptr, ptr @stdout, align 8, !dbg !1525, !tbaa !872
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #42, !dbg !1525
  %66 = load ptr, ptr @stdout, align 8, !dbg !1526, !tbaa !872
  %67 = tail call i32 @fpurge(ptr noundef %66) #42, !dbg !1527
  %68 = load ptr, ptr @stdout, align 8, !dbg !1528, !tbaa !872
  tail call void @clearerr_unlocked(ptr noundef %68) #42, !dbg !1528
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1529
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #42, !dbg !1529
  unreachable, !dbg !1529

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1530, !tbaa !872
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1530
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1530
  %74 = icmp ult i64 %73, %50, !dbg !1531
  br i1 %74, label %75, label %84, !dbg !1532

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #45, !dbg !1533
  %77 = load i32, ptr %76, align 4, !dbg !1533, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %77, metadata !1401, metadata !DIExpression()), !dbg !1535
  %78 = load ptr, ptr @stdout, align 8, !dbg !1536, !tbaa !872
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #42, !dbg !1536
  %80 = load ptr, ptr @stdout, align 8, !dbg !1537, !tbaa !872
  %81 = tail call i32 @fpurge(ptr noundef %80) #42, !dbg !1538
  %82 = load ptr, ptr @stdout, align 8, !dbg !1539, !tbaa !872
  tail call void @clearerr_unlocked(ptr noundef %82) #42, !dbg !1539
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1540
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #42, !dbg !1540
  unreachable, !dbg !1540

84:                                               ; preds = %70
  %85 = add nsw i64 %50, %46, !dbg !1541
  %86 = add nsw i64 %50, %47, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %86, metadata !1475, metadata !DIExpression()), !dbg !1501
  br label %87

87:                                               ; preds = %56, %58, %84
  %88 = phi i64 [ %85, %84 ], [ 0, %58 ], [ 0, %56 ], !dbg !1543
  %89 = phi i64 [ %86, %84 ], [ %47, %58 ], [ %47, %56 ], !dbg !1501
  call void @llvm.dbg.value(metadata i64 %89, metadata !1475, metadata !DIExpression()), !dbg !1501
  %90 = icmp slt i64 %89, %31, !dbg !1544
  br i1 %90, label %45, label %91, !dbg !1545, !llvm.loop !1546

91:                                               ; preds = %87, %32, %26
  %92 = phi i64 [ %11, %26 ], [ %11, %32 ], [ %88, %87 ], !dbg !1435
  call void @llvm.dbg.value(metadata ptr %0, metadata !1307, metadata !DIExpression()), !dbg !1548
  %93 = load i32, ptr %0, align 8, !dbg !1550, !tbaa !1298
  %94 = and i32 %93, 16, !dbg !1551
  %95 = icmp eq i32 %94, 0, !dbg !1551
  br i1 %95, label %96, label %101, !dbg !1552

96:                                               ; preds = %91
  call void @llvm.dbg.value(metadata ptr %0, metadata !1288, metadata !DIExpression()), !dbg !1553
  %97 = and i32 %93, 32, !dbg !1555
  %98 = icmp eq i32 %97, 0, !dbg !1555
  %99 = icmp eq i64 %17, 30720
  %100 = select i1 %98, i1 %99, i1 false, !dbg !1556
  br i1 %100, label %10, label %101, !dbg !1556, !llvm.loop !1557

101:                                              ; preds = %96, %91
  %102 = icmp ne i64 %3, 0, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %92, metadata !1425, metadata !DIExpression()), !dbg !1431
  %103 = icmp sgt i64 %92, 0
  %104 = select i1 %102, i1 %103, i1 false, !dbg !1561
  br i1 %104, label %105, label %123, !dbg !1561

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 10, metadata !1506, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1562
  %106 = load ptr, ptr %8, align 8, !dbg !1564, !tbaa !1517
  %107 = load ptr, ptr %9, align 8, !dbg !1564, !tbaa !1518
  %108 = icmp ult ptr %106, %107, !dbg !1564
  br i1 %108, label %109, label %111, !dbg !1564, !prof !1519

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !1564
  store ptr %110, ptr %8, align 8, !dbg !1564, !tbaa !1517
  store i8 10, ptr %106, align 1, !dbg !1564, !tbaa !950
  br label %123, !dbg !1565

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1564
  %113 = icmp eq i32 %112, -1, !dbg !1566
  br i1 %113, label %114, label %123, !dbg !1565

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #45, !dbg !1567
  %116 = load i32, ptr %115, align 4, !dbg !1567, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %116, metadata !1401, metadata !DIExpression()), !dbg !1569
  %117 = load ptr, ptr @stdout, align 8, !dbg !1570, !tbaa !872
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #42, !dbg !1570
  %119 = load ptr, ptr @stdout, align 8, !dbg !1571, !tbaa !872
  %120 = tail call i32 @fpurge(ptr noundef %119) #42, !dbg !1572
  %121 = load ptr, ptr @stdout, align 8, !dbg !1573, !tbaa !872
  tail call void @clearerr_unlocked(ptr noundef %121) #42, !dbg !1573
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1574
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #42, !dbg !1574
  unreachable, !dbg !1574

123:                                              ; preds = %109, %111, %101
  call void @llvm.dbg.value(metadata ptr %0, metadata !1288, metadata !DIExpression()), !dbg !1575
  %124 = load i32, ptr %0, align 8, !dbg !1578, !tbaa !1298
  %125 = and i32 %124, 32, !dbg !1579
  %126 = icmp eq i32 %125, 0, !dbg !1579
  br i1 %126, label %131, label %127, !dbg !1580

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #45, !dbg !1581
  %129 = load i32, ptr %128, align 4, !dbg !1581, !tbaa !941
  %130 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #42, !dbg !1581
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %130) #42, !dbg !1581
  unreachable, !dbg !1581

131:                                              ; preds = %123
  tail call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #46, !dbg !1582
  unreachable, !dbg !1582
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1583 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1584 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1587 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !dbg !1590 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1594, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata ptr %1, metadata !1595, metadata !DIExpression()), !dbg !1596
  %3 = tail call i32 @rpl_fclose(ptr noundef %0) #42, !dbg !1597
  %4 = icmp eq i32 %3, 0, !dbg !1599
  br i1 %4, label %14, label %5, !dbg !1600

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %1, metadata !952, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !958, metadata !DIExpression()), !dbg !1601
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1605
  %7 = icmp eq i32 %6, 0, !dbg !1606
  %8 = tail call ptr @__errno_location() #45, !dbg !1607
  %9 = load i32, ptr %8, align 4, !dbg !1607, !tbaa !941
  br i1 %7, label %10, label %12, !dbg !1608

10:                                               ; preds = %5
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #42, !dbg !1609
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %11) #42, !dbg !1609
  unreachable, !dbg !1609

12:                                               ; preds = %5
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #42, !dbg !1610
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef nonnull @.str.21, ptr noundef %13) #42, !dbg !1610
  unreachable, !dbg !1610

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #44, !dbg !1611
  unreachable, !dbg !1611
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noreturn nounwind
declare !dbg !1612 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @isubase32(i8 noundef %0) local_unnamed_addr #12 !dbg !1616 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1618, metadata !DIExpression()), !dbg !1619
  %2 = zext i8 %0 to i64, !dbg !1620
  %3 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %2, !dbg !1621
  %4 = load i8, ptr %3, align 1, !dbg !1621, !tbaa !950
  %5 = icmp sgt i8 %4, -1, !dbg !1622
  ret i1 %5, !dbg !1623
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @isbase32(i8 noundef %0) local_unnamed_addr #12 !dbg !1624 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1628, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %0, metadata !1618, metadata !DIExpression()), !dbg !1630
  %2 = zext i8 %0 to i64, !dbg !1632
  %3 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %2, !dbg !1633
  %4 = load i8, ptr %3, align 1, !dbg !1633, !tbaa !950
  %5 = icmp sgt i8 %4, -1, !dbg !1634
  ret i1 %5, !dbg !1635
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @base32_decode_ctx_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1636 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1645, metadata !DIExpression()), !dbg !1646
  store i32 0, ptr %0, align 4, !dbg !1647, !tbaa !1233
  ret void, !dbg !1648
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @base32_encode(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !434 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !443, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %1, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %3, metadata !446, metadata !DIExpression()), !dbg !1649
  %5 = icmp ne i64 %1, 0, !dbg !1650
  %6 = icmp ne i64 %3, 0, !dbg !1651
  %7 = and i1 %5, %6, !dbg !1651
  br i1 %7, label %8, label %155, !dbg !1652

8:                                                ; preds = %4, %148
  %9 = phi i64 [ %146, %148 ], [ %3, %4 ]
  %10 = phi ptr [ %149, %148 ], [ %2, %4 ]
  %11 = phi i64 [ %151, %148 ], [ %1, %4 ]
  %12 = phi ptr [ %154, %148 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %12, metadata !443, metadata !DIExpression()), !dbg !1649
  %13 = load i8, ptr %12, align 1, !dbg !1653, !tbaa !950
  %14 = lshr i8 %13, 3
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %15, !dbg !1655
  %17 = load i8, ptr %16, align 1, !dbg !1655, !tbaa !950
  %18 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1656
  call void @llvm.dbg.value(metadata ptr %18, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %17, ptr %10, align 1, !dbg !1657, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %19 = icmp eq i64 %9, 1, !dbg !1658
  br i1 %19, label %159, label %20, !dbg !1660

20:                                               ; preds = %8
  %21 = zext i8 %13 to i64, !dbg !1661
  %22 = shl nuw nsw i64 %21, 2, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %23 = icmp eq i64 %11, 1, !dbg !1663
  br i1 %23, label %24, label %29, !dbg !1663

24:                                               ; preds = %20
  %25 = and i64 %22, 28, !dbg !1664
  %26 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %25, !dbg !1665
  %27 = load i8, ptr %26, align 1, !dbg !1665, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1649
  store i8 %27, ptr %18, align 1, !dbg !1666, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %28 = icmp eq i64 %9, 2, !dbg !1667
  br i1 %28, label %159, label %39, !dbg !1669

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1670
  %31 = load i8, ptr %30, align 1, !dbg !1670, !tbaa !950
  %32 = lshr i8 %31, 6
  %33 = zext i8 %32 to i64
  %34 = and i64 %22, 28, !dbg !1664
  %35 = or i64 %34, %33, !dbg !1664
  %36 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %35, !dbg !1665
  %37 = load i8, ptr %36, align 1, !dbg !1665, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1649
  store i8 %37, ptr %18, align 1, !dbg !1666, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %38 = icmp eq i64 %9, 2, !dbg !1667
  br i1 %38, label %159, label %42, !dbg !1669

39:                                               ; preds = %24
  %40 = getelementptr inbounds i8, ptr %10, i64 2, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %40, metadata !445, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %40, align 1, !dbg !1672, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %41 = icmp eq i64 %9, 3, !dbg !1673
  br i1 %41, label %159, label %70, !dbg !1675

42:                                               ; preds = %29
  %43 = getelementptr inbounds i8, ptr %10, i64 2, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %43, metadata !445, metadata !DIExpression()), !dbg !1649
  %44 = lshr i8 %31, 1
  %45 = and i8 %44, 31, !dbg !1676
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %46, !dbg !1677
  %48 = load i8, ptr %47, align 1, !dbg !1677, !tbaa !950
  %49 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %49, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %48, ptr %43, align 1, !dbg !1672, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %50 = icmp eq i64 %9, 3, !dbg !1673
  br i1 %50, label %159, label %51, !dbg !1675

51:                                               ; preds = %42
  %52 = zext i8 %31 to i64, !dbg !1679
  %53 = shl nuw nsw i64 %52, 4, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %54 = icmp eq i64 %11, 2, !dbg !1681
  br i1 %54, label %55, label %60, !dbg !1681

55:                                               ; preds = %51
  %56 = and i64 %53, 16, !dbg !1682
  %57 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %56, !dbg !1683
  %58 = load i8, ptr %57, align 1, !dbg !1683, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1649
  store i8 %58, ptr %49, align 1, !dbg !1684, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %59 = icmp eq i64 %9, 4, !dbg !1685
  br i1 %59, label %159, label %91, !dbg !1687

60:                                               ; preds = %51
  %61 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1688
  %62 = load i8, ptr %61, align 1, !dbg !1688, !tbaa !950
  %63 = lshr i8 %62, 4
  %64 = zext i8 %63 to i64
  %65 = and i64 %53, 16, !dbg !1682
  %66 = or i64 %65, %64, !dbg !1682
  %67 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %66, !dbg !1683
  %68 = load i8, ptr %67, align 1, !dbg !1683, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1649
  store i8 %68, ptr %49, align 1, !dbg !1684, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %69 = icmp eq i64 %9, 4, !dbg !1685
  br i1 %69, label %159, label %73, !dbg !1687

70:                                               ; preds = %39
  %71 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !1678
  call void @llvm.dbg.value(metadata i64 0, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %71, align 1, !dbg !1684, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %72 = icmp eq i64 %9, 4, !dbg !1685
  br i1 %72, label %159, label %91, !dbg !1687

73:                                               ; preds = %60
  %74 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1689
  %75 = load i8, ptr %74, align 1, !dbg !1689, !tbaa !950
  %76 = zext i8 %75 to i64, !dbg !1690
  %77 = shl nuw nsw i64 %76, 1, !dbg !1691
  %78 = add nsw i64 %11, -3, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %78, metadata !444, metadata !DIExpression()), !dbg !1649
  %79 = icmp eq i64 %78, 0, !dbg !1692
  br i1 %79, label %85, label %80, !dbg !1692

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %12, i64 3, !dbg !1693
  %82 = load i8, ptr %81, align 1, !dbg !1693, !tbaa !950
  %83 = lshr i8 %82, 7
  %84 = zext i8 %83 to i64
  br label %85, !dbg !1692

85:                                               ; preds = %73, %80
  %86 = phi i64 [ %84, %80 ], [ 0, %73 ], !dbg !1692
  %87 = add nuw nsw i64 %86, %77, !dbg !1694
  %88 = and i64 %87, 31, !dbg !1695
  %89 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %88, !dbg !1696
  %90 = load i8, ptr %89, align 1, !dbg !1696, !tbaa !950
  br label %91, !dbg !1697

91:                                               ; preds = %55, %70, %85
  %92 = phi i64 [ %78, %85 ], [ 0, %70 ], [ 0, %55 ], !dbg !1698
  %93 = phi i8 [ %90, %85 ], [ 61, %70 ], [ 61, %55 ]
  %94 = getelementptr inbounds i8, ptr %10, i64 4, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %92, metadata !444, metadata !DIExpression()), !dbg !1649
  %95 = getelementptr inbounds i8, ptr %10, i64 5, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %95, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %93, ptr %94, align 1, !dbg !1701, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %96 = icmp eq i64 %9, 5, !dbg !1702
  br i1 %96, label %159, label %97, !dbg !1704

97:                                               ; preds = %91
  %98 = icmp eq i64 %92, 0, !dbg !1705
  br i1 %98, label %99, label %101, !dbg !1705

99:                                               ; preds = %97
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %95, align 1, !dbg !1706, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %100 = icmp eq i64 %9, 6, !dbg !1707
  br i1 %100, label %159, label %131, !dbg !1709

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %12, i64 3, !dbg !1710
  %103 = load i8, ptr %102, align 1, !dbg !1710, !tbaa !950
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 31, !dbg !1711
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %106, !dbg !1712
  %108 = load i8, ptr %107, align 1, !dbg !1712, !tbaa !950
  %109 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %109, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %108, ptr %95, align 1, !dbg !1706, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %110 = icmp eq i64 %9, 6, !dbg !1707
  br i1 %110, label %159, label %111, !dbg !1709

111:                                              ; preds = %101
  %112 = zext i8 %103 to i64, !dbg !1714
  %113 = shl nuw nsw i64 %112, 3, !dbg !1715
  %114 = add nsw i64 %92, -1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %114, metadata !444, metadata !DIExpression()), !dbg !1649
  %115 = icmp eq i64 %114, 0, !dbg !1716
  br i1 %115, label %116, label %121, !dbg !1716

116:                                              ; preds = %111
  %117 = and i64 %113, 24, !dbg !1717
  %118 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %117, !dbg !1718
  %119 = load i8, ptr %118, align 1, !dbg !1718, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %114, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1649
  store i8 %119, ptr %109, align 1, !dbg !1719, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %120 = icmp eq i64 %9, 7, !dbg !1720
  br i1 %120, label %159, label %141, !dbg !1722

121:                                              ; preds = %111
  %122 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !1723
  %123 = load i8, ptr %122, align 1, !dbg !1723, !tbaa !950
  %124 = lshr i8 %123, 5
  %125 = zext i8 %124 to i64
  %126 = and i64 %113, 24, !dbg !1717
  %127 = or i64 %126, %125, !dbg !1717
  %128 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %127, !dbg !1718
  %129 = load i8, ptr %128, align 1, !dbg !1718, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %114, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1649
  store i8 %129, ptr %109, align 1, !dbg !1719, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %130 = icmp eq i64 %9, 7, !dbg !1720
  br i1 %130, label %159, label %134, !dbg !1722

131:                                              ; preds = %99
  %132 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %132, align 1, !dbg !1719, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %133 = icmp eq i64 %9, 7, !dbg !1720
  br i1 %133, label %159, label %141, !dbg !1722

134:                                              ; preds = %121
  %135 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !1724
  %136 = load i8, ptr %135, align 1, !dbg !1724, !tbaa !950
  %137 = and i8 %136, 31, !dbg !1725
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %138, !dbg !1726
  %140 = load i8, ptr %139, align 1, !dbg !1726, !tbaa !950
  br label %141, !dbg !1727

141:                                              ; preds = %116, %131, %134
  %142 = phi i1 [ false, %134 ], [ true, %131 ], [ true, %116 ]
  %143 = phi i64 [ %114, %134 ], [ 0, %131 ], [ 0, %116 ]
  %144 = phi i8 [ %140, %134 ], [ 61, %131 ], [ 61, %116 ]
  %145 = getelementptr inbounds i8, ptr %10, i64 7, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1649
  store i8 %144, ptr %145, align 1, !dbg !1729, !tbaa !950
  %146 = add nsw i64 %9, -8, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %146, metadata !446, metadata !DIExpression()), !dbg !1649
  %147 = icmp eq i64 %146, 0, !dbg !1730
  br i1 %147, label %159, label %148, !dbg !1732

148:                                              ; preds = %141
  %149 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %149, metadata !445, metadata !DIExpression()), !dbg !1649
  %150 = add nsw i64 %143, -1
  %151 = select i1 %142, i64 0, i64 %150, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %151, metadata !444, metadata !DIExpression()), !dbg !1649
  %152 = icmp eq i64 %151, 0, !dbg !1735
  %153 = select i1 %152, i64 0, i64 5, !dbg !1737
  %154 = getelementptr i8, ptr %12, i64 %153, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %146, metadata !446, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %154, metadata !443, metadata !DIExpression()), !dbg !1649
  br i1 %152, label %157, label %8, !dbg !1652, !llvm.loop !1738

155:                                              ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !446, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !1649
  %156 = icmp eq i64 %3, 0, !dbg !1740
  br i1 %156, label %159, label %157, !dbg !1742

157:                                              ; preds = %148, %155
  %158 = phi ptr [ %2, %155 ], [ %149, %148 ]
  store i8 0, ptr %158, align 1, !dbg !1743, !tbaa !950
  br label %159, !dbg !1744

159:                                              ; preds = %131, %101, %70, %42, %29, %8, %24, %39, %55, %91, %99, %116, %141, %60, %121, %157, %155
  ret void, !dbg !1745
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base32_encode_alloc(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #15 !dbg !1746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1750, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %1, metadata !1751, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata ptr %2, metadata !1752, metadata !DIExpression()), !dbg !1755
  %4 = sdiv i64 %1, 5, !dbg !1756
  %5 = mul i64 %4, 5
  %6 = sub i64 %1, %5
  %7 = icmp ne i64 %6, 0, !dbg !1757
  %8 = zext i1 %7 to i64
  %9 = add nsw i64 %4, %8, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %9, metadata !1753, metadata !DIExpression()), !dbg !1755
  %10 = icmp slt i64 %9, 0, !dbg !1759
  br i1 %10, label %11, label %13, !dbg !1759

11:                                               ; preds = %3
  %12 = icmp ult i64 %9, -1152921504606846976, !dbg !1759
  br i1 %12, label %18, label %15, !dbg !1759

13:                                               ; preds = %3
  %14 = icmp ugt i64 %9, 1152921504606846975, !dbg !1759
  br i1 %14, label %18, label %15, !dbg !1759

15:                                               ; preds = %13, %11
  call void @llvm.dbg.value(metadata i64 %9, metadata !1754, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !1755
  %16 = shl nsw i64 %9, 3, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %16, metadata !1754, metadata !DIExpression()), !dbg !1755
  %17 = icmp slt i64 %1, 0
  br i1 %17, label %18, label %19, !dbg !1761

18:                                               ; preds = %11, %13, %15
  store ptr null, ptr %2, align 8, !dbg !1762, !tbaa !872
  br label %24, !dbg !1764

19:                                               ; preds = %15
  %20 = or i64 %16, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %20, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %20, metadata !1766, metadata !DIExpression()), !dbg !1772
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #47, !dbg !1774
  store ptr %21, ptr %2, align 8, !dbg !1775, !tbaa !872
  %22 = icmp eq ptr %21, null, !dbg !1776
  br i1 %22, label %24, label %23, !dbg !1778

23:                                               ; preds = %19
  tail call void @base32_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %21, i64 noundef %20), !dbg !1779
  br label %24, !dbg !1780

24:                                               ; preds = %19, %23, %18
  %25 = phi i64 [ 0, %18 ], [ %16, %23 ], [ %20, %19 ], !dbg !1755
  ret i64 %25, !dbg !1781
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1782 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @base32_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #15 !dbg !1785 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1789, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %1, metadata !1790, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %2, metadata !1791, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %3, metadata !1792, metadata !DIExpression()), !dbg !1805
  store ptr %3, ptr %6, align 8, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1805
  %8 = icmp eq ptr %0, null, !dbg !1806
  call void @llvm.dbg.value(metadata i1 %8, metadata !1794, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1795, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()), !dbg !1805
  br i1 %8, label %13, label %9, !dbg !1807

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1808, !tbaa !1233
  call void @llvm.dbg.value(metadata i32 %10, metadata !1796, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %2, metadata !1791, metadata !DIExpression()), !dbg !1805
  %11 = icmp eq i64 %2, 0, !dbg !1811
  call void @llvm.dbg.value(metadata i1 %11, metadata !1795, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  %12 = icmp ne i32 %10, 0
  br label %13, !dbg !1812

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ]
  %15 = phi i1 [ %11, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1795, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 poison, metadata !1796, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #42, !dbg !1813
  %16 = load i64, ptr %4, align 8, !dbg !1814, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %16, metadata !1797, metadata !DIExpression()), !dbg !1805
  store i64 %16, ptr %7, align 8, !dbg !1815, !tbaa !1319
  %17 = or i1 %14, %15
  %18 = getelementptr inbounds %struct.base32_decode_context, ptr %0, i64 0, i32 1
  br label %19, !dbg !1816

19:                                               ; preds = %107, %13
  %20 = phi i64 [ %16, %13 ], [ %110, %107 ], !dbg !1817
  %21 = phi ptr [ %1, %13 ], [ %108, %107 ]
  %22 = phi i64 [ %2, %13 ], [ %109, %107 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !1797, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %20, metadata !1798, metadata !DIExpression()), !dbg !1818
  br i1 %17, label %32, label %23, !dbg !1819

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %20, metadata !1797, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %20, metadata !1798, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %21, metadata !1790, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %22, metadata !1791, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %6, metadata !1792, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %7, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  %24 = call fastcc i1 @decode_8(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1821
  br i1 %24, label %25, label %32, !dbg !1825

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %21, %23 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !1791, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %27, metadata !1790, metadata !DIExpression()), !dbg !1805
  %28 = getelementptr inbounds i8, ptr %27, i64 8, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %28, metadata !1790, metadata !DIExpression()), !dbg !1805
  %29 = add nsw i64 %26, -8, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %29, metadata !1791, metadata !DIExpression()), !dbg !1805
  %30 = load i64, ptr %7, align 8, !dbg !1828, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %30, metadata !1798, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %6, metadata !1792, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %7, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  %31 = call fastcc i1 @decode_8(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1821
  br i1 %31, label %25, label %32, !dbg !1825, !llvm.loop !1829

32:                                               ; preds = %25, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %28, %25 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %29, %25 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %30, %25 ], !dbg !1818
  call void @llvm.dbg.value(metadata i64 %35, metadata !1798, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %34, metadata !1791, metadata !DIExpression()), !dbg !1805
  %36 = icmp ne i64 %34, 0, !dbg !1832
  %37 = or i1 %15, %36, !dbg !1834
  br i1 %37, label %38, label %111, !dbg !1834

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 %34, metadata !1791, metadata !DIExpression()), !dbg !1805
  br i1 %36, label %39, label %46, !dbg !1835

39:                                               ; preds = %38
  call void @llvm.dbg.value(metadata ptr %33, metadata !1790, metadata !DIExpression()), !dbg !1805
  %40 = load i8, ptr %33, align 1, !dbg !1836, !tbaa !950
  %41 = icmp ne i8 %40, 10, !dbg !1837
  %42 = or i1 %8, %41, !dbg !1838
  br i1 %42, label %46, label %43, !dbg !1838

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %44, metadata !1790, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %34, metadata !1791, metadata !DIExpression()), !dbg !1805
  %45 = add nsw i64 %34, -1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %45, metadata !1791, metadata !DIExpression()), !dbg !1805
  br label %107, !dbg !1842

46:                                               ; preds = %39, %38
  %47 = load i64, ptr %7, align 8, !dbg !1843, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %47, metadata !1797, metadata !DIExpression()), !dbg !1805
  %48 = sub i64 %47, %35, !dbg !1844
  %49 = load ptr, ptr %6, align 8, !dbg !1845, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %49, metadata !1792, metadata !DIExpression()), !dbg !1805
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %50, metadata !1792, metadata !DIExpression()), !dbg !1805
  store ptr %50, ptr %6, align 8, !dbg !1845, !tbaa !872
  call void @llvm.dbg.value(metadata i64 %35, metadata !1797, metadata !DIExpression()), !dbg !1805
  store i64 %35, ptr %7, align 8, !dbg !1846, !tbaa !1319
  call void @llvm.dbg.value(metadata ptr %33, metadata !1790, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %34, metadata !1791, metadata !DIExpression()), !dbg !1805
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %51, metadata !1800, metadata !DIExpression()), !dbg !1848
  br i1 %8, label %89, label %52, !dbg !1849

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1850, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr undef, metadata !1856, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr %51, metadata !1857, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr undef, metadata !1858, metadata !DIExpression()), !dbg !1866
  %53 = load i32, ptr %0, align 4, !dbg !1869, !tbaa !1233, !noalias !1871
  switch i32 %53, label %62 [
    i32 8, label %54
    i32 0, label %55
  ], !dbg !1874

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1875, !tbaa !1233, !noalias !1871
  br label %55, !dbg !1876

55:                                               ; preds = %54, %52
  call void @llvm.dbg.value(metadata ptr %33, metadata !1859, metadata !DIExpression()), !dbg !1877
  %56 = icmp sgt i64 %34, 7, !dbg !1878
  br i1 %56, label %57, label %62, !dbg !1880

57:                                               ; preds = %55
  %58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 10, i64 noundef 8) #43, !dbg !1881
  %59 = icmp eq ptr %58, null, !dbg !1882
  br i1 %59, label %60, label %65, !dbg !1883

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %33, i64 8, !dbg !1884
  call void @llvm.dbg.value(metadata ptr %33, metadata !1804, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 8, metadata !1791, metadata !DIExpression()), !dbg !1805
  br label %98, !dbg !1886

62:                                               ; preds = %52, %55
  %63 = phi i32 [ 0, %55 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1862, metadata !DIExpression()), !dbg !1888
  %64 = icmp sgt i64 %34, 0, !dbg !1889
  br i1 %64, label %65, label %85, !dbg !1890

65:                                               ; preds = %57, %62
  %66 = phi i32 [ 0, %57 ], [ %63, %62 ]
  br label %67, !dbg !1891

67:                                               ; preds = %65, %75
  %68 = phi i32 [ %66, %65 ], [ %79, %75 ]
  %69 = phi ptr [ %33, %65 ], [ %72, %75 ]
  br label %70, !dbg !1891

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1862, metadata !DIExpression()), !dbg !1888
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1892
  call void @llvm.dbg.value(metadata ptr %72, metadata !1862, metadata !DIExpression()), !dbg !1888
  %73 = load i8, ptr %71, align 1, !dbg !1893, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %73, metadata !1864, metadata !DIExpression()), !dbg !1894
  %74 = icmp eq i8 %73, 10, !dbg !1895
  br i1 %74, label %83, label %75, !dbg !1891

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1, !dbg !1897
  store i32 %76, ptr %0, align 4, !dbg !1897, !tbaa !1233, !noalias !1871
  %77 = sext i32 %68 to i64, !dbg !1899
  %78 = getelementptr inbounds %struct.base32_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1899
  store i8 %73, ptr %78, align 1, !dbg !1900, !tbaa !950, !noalias !1871
  %79 = load i32, ptr %0, align 4, !dbg !1901, !tbaa !1233, !noalias !1871
  %80 = icmp ne i32 %79, 8, !dbg !1903
  %81 = icmp ult ptr %72, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1904
  call void @llvm.dbg.value(metadata ptr %72, metadata !1862, metadata !DIExpression()), !dbg !1888
  br i1 %82, label %67, label %85, !dbg !1904

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1862, metadata !DIExpression()), !dbg !1888
  %84 = icmp ult ptr %72, %51, !dbg !1889
  br i1 %84, label %70, label %85, !dbg !1890

85:                                               ; preds = %83, %75, %62
  %86 = phi i32 [ %63, %62 ], [ %68, %83 ], [ %79, %75 ], !dbg !1905
  %87 = phi ptr [ %33, %62 ], [ %72, %75 ], [ %72, %83 ], !dbg !1888
  call void @llvm.dbg.value(metadata ptr %87, metadata !1862, metadata !DIExpression()), !dbg !1888
  %88 = sext i32 %86 to i64, !dbg !1906
  br label %89

89:                                               ; preds = %85, %46
  %90 = phi ptr [ %33, %46 ], [ %87, %85 ]
  %91 = phi i64 [ %34, %46 ], [ %88, %85 ]
  %92 = phi ptr [ %33, %46 ], [ %18, %85 ], !dbg !1907
  call void @llvm.dbg.value(metadata ptr %92, metadata !1804, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %91, metadata !1791, metadata !DIExpression()), !dbg !1805
  %93 = icmp eq i64 %91, 0, !dbg !1908
  br i1 %93, label %111, label %94, !dbg !1909

94:                                               ; preds = %89
  %95 = icmp sgt i64 %91, 7, !dbg !1910
  %96 = or i1 %15, %95, !dbg !1886
  %97 = or i1 %8, %96, !dbg !1886
  br i1 %97, label %98, label %111, !dbg !1886

98:                                               ; preds = %60, %94
  %99 = phi ptr [ %61, %60 ], [ %90, %94 ]
  %100 = phi i64 [ 8, %60 ], [ %91, %94 ]
  %101 = phi ptr [ %33, %60 ], [ %92, %94 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1791, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %6, metadata !1792, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %7, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !1805
  %102 = call fastcc i1 @decode_8(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1911
  br i1 %102, label %103, label %111, !dbg !1913

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata ptr %90, metadata !1790, metadata !DIExpression()), !dbg !1805
  %104 = ptrtoint ptr %51 to i64, !dbg !1914
  %105 = ptrtoint ptr %99 to i64, !dbg !1914
  %106 = sub i64 %104, %105, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %106, metadata !1791, metadata !DIExpression()), !dbg !1805
  br label %107

107:                                              ; preds = %43, %103
  %108 = phi ptr [ %99, %103 ], [ %44, %43 ]
  %109 = phi i64 [ %106, %103 ], [ %45, %43 ]
  %110 = load i64, ptr %7, align 8, !dbg !1817, !tbaa !1319
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %89 ], [ true, %94 ], [ false, %98 ], [ true, %32 ]
  %113 = load i64, ptr %7, align 8, !dbg !1915, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %113, metadata !1797, metadata !DIExpression()), !dbg !1805
  %114 = load i64, ptr %4, align 8, !dbg !1916, !tbaa !1319
  %115 = sub nsw i64 %114, %113, !dbg !1916
  store i64 %115, ptr %4, align 8, !dbg !1916, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %109, metadata !1791, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #42, !dbg !1917
  ret i1 %112, !dbg !1918
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i1 @decode_8(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #17 !dbg !1919 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1923, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %1, metadata !1924, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr %2, metadata !1925, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr %3, metadata !1926, metadata !DIExpression()), !dbg !1928
  %5 = icmp slt i64 %1, 8, !dbg !1929
  br i1 %5, label %184, label %6, !dbg !1931

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1932, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %7, metadata !1628, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %7, metadata !1618, metadata !DIExpression()), !dbg !1936
  %8 = zext i8 %7 to i64, !dbg !1938
  %9 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %8, !dbg !1939
  %10 = load i8, ptr %9, align 1, !dbg !1939, !tbaa !950
  %11 = icmp sgt i8 %10, -1, !dbg !1940
  br i1 %11, label %12, label %184, !dbg !1941

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1942
  %14 = load i8, ptr %13, align 1, !dbg !1942, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %14, metadata !1628, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %14, metadata !1618, metadata !DIExpression()), !dbg !1945
  %15 = zext i8 %14 to i64, !dbg !1947
  %16 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %15, !dbg !1948
  %17 = load i8, ptr %16, align 1, !dbg !1948, !tbaa !950
  %18 = icmp sgt i8 %17, -1, !dbg !1949
  br i1 %18, label %19, label %184, !dbg !1950

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1951, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %20, metadata !1927, metadata !DIExpression()), !dbg !1928
  %21 = load i64, ptr %3, align 8, !dbg !1952, !tbaa !1319
  %22 = icmp eq i64 %21, 0, !dbg !1952
  br i1 %22, label %30, label %23, !dbg !1954

23:                                               ; preds = %19
  %24 = shl i8 %10, 3, !dbg !1955
  %25 = lshr i8 %17, 2, !dbg !1957
  %26 = or i8 %25, %24, !dbg !1958
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1959
  call void @llvm.dbg.value(metadata ptr %27, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %26, ptr %20, align 1, !dbg !1960, !tbaa !950
  %28 = load i64, ptr %3, align 8, !dbg !1961, !tbaa !1319
  %29 = add nsw i64 %28, -1, !dbg !1961
  store i64 %29, ptr %3, align 8, !dbg !1961, !tbaa !1319
  br label %30, !dbg !1962

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi ptr [ %27, %23 ], [ %20, %19 ], !dbg !1928
  call void @llvm.dbg.value(metadata ptr %32, metadata !1927, metadata !DIExpression()), !dbg !1928
  %33 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1963
  %34 = load i8, ptr %33, align 1, !dbg !1963, !tbaa !950
  %35 = icmp eq i8 %34, 61, !dbg !1965
  br i1 %35, label %36, label %59, !dbg !1966

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1967
  %38 = load i8, ptr %37, align 1, !dbg !1967, !tbaa !950
  %39 = icmp eq i8 %38, 61, !dbg !1970
  br i1 %39, label %40, label %181, !dbg !1971

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1972
  %42 = load i8, ptr %41, align 1, !dbg !1972, !tbaa !950
  %43 = icmp eq i8 %42, 61, !dbg !1973
  br i1 %43, label %44, label %181, !dbg !1974

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1975
  %46 = load i8, ptr %45, align 1, !dbg !1975, !tbaa !950
  %47 = icmp eq i8 %46, 61, !dbg !1976
  br i1 %47, label %48, label %181, !dbg !1977

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !1978
  %50 = load i8, ptr %49, align 1, !dbg !1978, !tbaa !950
  %51 = icmp eq i8 %50, 61, !dbg !1979
  br i1 %51, label %52, label %181, !dbg !1980

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !1981
  %54 = load i8, ptr %53, align 1, !dbg !1981, !tbaa !950
  %55 = icmp eq i8 %54, 61, !dbg !1982
  %56 = and i8 %17, 3
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false, !dbg !1983
  br i1 %58, label %179, label %181, !dbg !1983

59:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %34, metadata !1628, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %34, metadata !1618, metadata !DIExpression()), !dbg !1988
  %60 = zext i8 %34 to i64, !dbg !1990
  %61 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %60, !dbg !1991
  %62 = load i8, ptr %61, align 1, !dbg !1991, !tbaa !950
  %63 = icmp sgt i8 %62, -1, !dbg !1992
  br i1 %63, label %64, label %181, !dbg !1993

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1994
  %66 = load i8, ptr %65, align 1, !dbg !1994, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %66, metadata !1628, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 %66, metadata !1618, metadata !DIExpression()), !dbg !1997
  %67 = zext i8 %66 to i64, !dbg !1999
  %68 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %67, !dbg !2000
  %69 = load i8, ptr %68, align 1, !dbg !2000, !tbaa !950
  %70 = icmp sgt i8 %69, -1, !dbg !2001
  br i1 %70, label %71, label %181, !dbg !2002

71:                                               ; preds = %64
  %72 = icmp eq i64 %31, 0, !dbg !2003
  br i1 %72, label %82, label %73, !dbg !2005

73:                                               ; preds = %71
  %74 = shl i8 %17, 6, !dbg !2006
  %75 = shl nuw i8 %62, 1, !dbg !2008
  %76 = or i8 %75, %74, !dbg !2009
  %77 = lshr i8 %69, 4, !dbg !2010
  %78 = or i8 %76, %77, !dbg !2011
  %79 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !2012
  call void @llvm.dbg.value(metadata ptr %79, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %78, ptr %32, align 1, !dbg !2013, !tbaa !950
  %80 = load i64, ptr %3, align 8, !dbg !2014, !tbaa !1319
  %81 = add nsw i64 %80, -1, !dbg !2014
  store i64 %81, ptr %3, align 8, !dbg !2014, !tbaa !1319
  br label %82, !dbg !2015

82:                                               ; preds = %73, %71
  %83 = phi i64 [ %81, %73 ], [ 0, %71 ]
  %84 = phi ptr [ %79, %73 ], [ %32, %71 ], !dbg !1928
  call void @llvm.dbg.value(metadata ptr %84, metadata !1927, metadata !DIExpression()), !dbg !1928
  %85 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !2016
  %86 = load i8, ptr %85, align 1, !dbg !2016, !tbaa !950
  %87 = icmp eq i8 %86, 61, !dbg !2018
  br i1 %87, label %88, label %103, !dbg !2019

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !2020
  %90 = load i8, ptr %89, align 1, !dbg !2020, !tbaa !950
  %91 = icmp eq i8 %90, 61, !dbg !2023
  br i1 %91, label %92, label %181, !dbg !2024

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2025
  %94 = load i8, ptr %93, align 1, !dbg !2025, !tbaa !950
  %95 = icmp eq i8 %94, 61, !dbg !2026
  br i1 %95, label %96, label %181, !dbg !2027

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2028
  %98 = load i8, ptr %97, align 1, !dbg !2028, !tbaa !950
  %99 = icmp eq i8 %98, 61, !dbg !2029
  %100 = and i8 %66, -17
  %101 = icmp eq i8 %100, 65
  %102 = select i1 %99, i1 %101, i1 false, !dbg !2030
  br i1 %102, label %179, label %181, !dbg !2030

103:                                              ; preds = %82
  call void @llvm.dbg.value(metadata i8 %86, metadata !1628, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 %86, metadata !1618, metadata !DIExpression()), !dbg !2035
  %104 = zext i8 %86 to i64, !dbg !2037
  %105 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %104, !dbg !2038
  %106 = load i8, ptr %105, align 1, !dbg !2038, !tbaa !950
  %107 = icmp sgt i8 %106, -1, !dbg !2039
  br i1 %107, label %108, label %181, !dbg !2040

108:                                              ; preds = %103
  %109 = icmp eq i64 %83, 0, !dbg !2041
  br i1 %109, label %117, label %110, !dbg !2043

110:                                              ; preds = %108
  %111 = shl i8 %69, 4, !dbg !2044
  %112 = lshr i8 %106, 1, !dbg !2046
  %113 = or i8 %112, %111, !dbg !2047
  %114 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %114, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %113, ptr %84, align 1, !dbg !2049, !tbaa !950
  %115 = load i64, ptr %3, align 8, !dbg !2050, !tbaa !1319
  %116 = add nsw i64 %115, -1, !dbg !2050
  store i64 %116, ptr %3, align 8, !dbg !2050, !tbaa !1319
  br label %117, !dbg !2051

117:                                              ; preds = %110, %108
  %118 = phi i64 [ %116, %110 ], [ 0, %108 ]
  %119 = phi ptr [ %114, %110 ], [ %84, %108 ], !dbg !2052
  call void @llvm.dbg.value(metadata ptr %119, metadata !1927, metadata !DIExpression()), !dbg !1928
  %120 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !2053
  %121 = load i8, ptr %120, align 1, !dbg !2053, !tbaa !950
  %122 = icmp eq i8 %121, 61, !dbg !2055
  br i1 %122, label %123, label %134, !dbg !2056

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2057
  %125 = load i8, ptr %124, align 1, !dbg !2057, !tbaa !950
  %126 = icmp eq i8 %125, 61, !dbg !2060
  br i1 %126, label %127, label %181, !dbg !2061

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2062
  %129 = load i8, ptr %128, align 1, !dbg !2062, !tbaa !950
  %130 = icmp eq i8 %129, 61, !dbg !2063
  %131 = and i8 %106, 1
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %130, i1 %132, i1 false, !dbg !2064
  br i1 %133, label %179, label %181, !dbg !2064

134:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i8 %121, metadata !1628, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %121, metadata !1618, metadata !DIExpression()), !dbg !2069
  %135 = zext i8 %121 to i64, !dbg !2071
  %136 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %135, !dbg !2072
  %137 = load i8, ptr %136, align 1, !dbg !2072, !tbaa !950
  %138 = icmp sgt i8 %137, -1, !dbg !2073
  br i1 %138, label %139, label %181, !dbg !2074

139:                                              ; preds = %134
  %140 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2075
  %141 = load i8, ptr %140, align 1, !dbg !2075, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %141, metadata !1628, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %141, metadata !1618, metadata !DIExpression()), !dbg !2078
  %142 = zext i8 %141 to i64, !dbg !2080
  %143 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %142, !dbg !2081
  %144 = load i8, ptr %143, align 1, !dbg !2081, !tbaa !950
  %145 = icmp sgt i8 %144, -1, !dbg !2082
  br i1 %145, label %146, label %181, !dbg !2083

146:                                              ; preds = %139
  %147 = icmp eq i64 %118, 0, !dbg !2084
  br i1 %147, label %157, label %148, !dbg !2086

148:                                              ; preds = %146
  %149 = shl i8 %106, 7, !dbg !2087
  %150 = shl i8 %137, 2, !dbg !2089
  %151 = or i8 %150, %149, !dbg !2090
  %152 = lshr i8 %144, 3, !dbg !2091
  %153 = or i8 %151, %152, !dbg !2092
  %154 = getelementptr inbounds i8, ptr %119, i64 1, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %154, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %153, ptr %119, align 1, !dbg !2094, !tbaa !950
  %155 = load i64, ptr %3, align 8, !dbg !2095, !tbaa !1319
  %156 = add nsw i64 %155, -1, !dbg !2095
  store i64 %156, ptr %3, align 8, !dbg !2095, !tbaa !1319
  br label %157, !dbg !2096

157:                                              ; preds = %148, %146
  %158 = phi i64 [ %156, %148 ], [ 0, %146 ]
  %159 = phi ptr [ %154, %148 ], [ %119, %146 ], !dbg !2097
  call void @llvm.dbg.value(metadata ptr %159, metadata !1927, metadata !DIExpression()), !dbg !1928
  %160 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2098
  %161 = load i8, ptr %160, align 1, !dbg !2098, !tbaa !950
  %162 = icmp eq i8 %161, 61, !dbg !2100
  br i1 %162, label %176, label %163, !dbg !2101

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata i8 %161, metadata !1628, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %161, metadata !1618, metadata !DIExpression()), !dbg !2106
  %164 = zext i8 %161 to i64, !dbg !2108
  %165 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %164, !dbg !2109
  %166 = load i8, ptr %165, align 1, !dbg !2109, !tbaa !950
  %167 = icmp sgt i8 %166, -1, !dbg !2110
  br i1 %167, label %168, label %181, !dbg !2111

168:                                              ; preds = %163
  %169 = icmp eq i64 %158, 0, !dbg !2112
  br i1 %169, label %179, label %170, !dbg !2114

170:                                              ; preds = %168
  %171 = shl i8 %144, 5, !dbg !2115
  %172 = or i8 %166, %171, !dbg !2117
  %173 = getelementptr inbounds i8, ptr %159, i64 1, !dbg !2118
  call void @llvm.dbg.value(metadata ptr %173, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %172, ptr %159, align 1, !dbg !2119, !tbaa !950
  %174 = load i64, ptr %3, align 8, !dbg !2120, !tbaa !1319
  %175 = add nsw i64 %174, -1, !dbg !2120
  store i64 %175, ptr %3, align 8, !dbg !2120, !tbaa !1319
  br label %179, !dbg !2121

176:                                              ; preds = %157
  %177 = and i8 %144, 7, !dbg !2122
  %178 = icmp eq i8 %177, 0, !dbg !2122
  br i1 %178, label %179, label %181, !dbg !2125

179:                                              ; preds = %127, %96, %52, %170, %168, %176
  %180 = phi ptr [ %173, %170 ], [ %159, %168 ], [ %159, %176 ], [ %32, %52 ], [ %84, %96 ], [ %119, %127 ], !dbg !1928
  call void @llvm.dbg.value(metadata ptr %180, metadata !1927, metadata !DIExpression()), !dbg !1928
  br label %181, !dbg !2126

181:                                              ; preds = %176, %163, %139, %134, %127, %123, %103, %96, %92, %88, %64, %59, %52, %48, %44, %40, %36, %179
  %182 = phi ptr [ %180, %179 ], [ %32, %36 ], [ %32, %40 ], [ %32, %44 ], [ %32, %48 ], [ %32, %52 ], [ %32, %59 ], [ %32, %64 ], [ %84, %88 ], [ %84, %92 ], [ %84, %96 ], [ %84, %103 ], [ %119, %123 ], [ %119, %127 ], [ %119, %134 ], [ %119, %139 ], [ %159, %163 ], [ %159, %176 ]
  %183 = phi i1 [ true, %179 ], [ false, %36 ], [ false, %40 ], [ false, %44 ], [ false, %48 ], [ false, %52 ], [ false, %59 ], [ false, %64 ], [ false, %88 ], [ false, %92 ], [ false, %96 ], [ false, %103 ], [ false, %123 ], [ false, %127 ], [ false, %134 ], [ false, %139 ], [ false, %163 ], [ false, %176 ]
  store ptr %182, ptr %2, align 8, !dbg !1928, !tbaa !872
  br label %184, !dbg !2127

184:                                              ; preds = %181, %6, %12, %4
  %185 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %183, %181 ], !dbg !1928
  ret i1 %185, !dbg !2127
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2128 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i1 @base32_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #18 !dbg !2131 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %1, metadata !2136, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %2, metadata !2137, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %3, metadata !2138, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %4, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !2142
  %7 = ashr i64 %2, 3, !dbg !2143
  %8 = mul nsw i64 %7, 5, !dbg !2144
  %9 = add nsw i64 %8, 5, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %9, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i64 %9, ptr %6, align 8, !dbg !2145, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %9, metadata !1766, metadata !DIExpression()), !dbg !2146
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #47, !dbg !2148
  store ptr %10, ptr %3, align 8, !dbg !2149, !tbaa !872
  %11 = icmp eq ptr %10, null, !dbg !2150
  br i1 %11, label %20, label %12, !dbg !2152

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !2140, metadata !DIExpression(DW_OP_deref)), !dbg !2141
  %13 = call i1 @base32_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2153
  br i1 %13, label %16, label %14, !dbg !2155

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2156, !tbaa !872
  tail call void @free(ptr noundef %15) #42, !dbg !2158
  store ptr null, ptr %3, align 8, !dbg !2159, !tbaa !872
  br label %20, !dbg !2160

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2161
  br i1 %17, label %20, label %18, !dbg !2163

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2164, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %19, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i64 %19, ptr %4, align 8, !dbg !2165, !tbaa !1319
  br label %20, !dbg !2166

20:                                               ; preds = %16, %18, %5, %14
  %21 = phi i1 [ false, %14 ], [ true, %5 ], [ true, %18 ], [ true, %16 ], !dbg !2141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !2167
  ret i1 %21, !dbg !2167
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2168 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #20 !dbg !2171 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2173, metadata !DIExpression()), !dbg !2174
  store ptr %0, ptr @file_name, align 8, !dbg !2175, !tbaa !872
  ret void, !dbg !2176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #20 !dbg !2177 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2181, metadata !DIExpression()), !dbg !2182
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2183, !tbaa !2184
  ret void, !dbg !2186
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #18 !dbg !2187 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2192, !tbaa !872
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !2193
  %3 = icmp eq i32 %2, 0, !dbg !2194
  br i1 %3, label %22, label %4, !dbg !2195

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2196, !tbaa !2184, !range !2197, !noundef !881
  %6 = icmp eq i8 %5, 0, !dbg !2196
  br i1 %6, label %11, label %7, !dbg !2198

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !2199
  %9 = load i32, ptr %8, align 4, !dbg !2199, !tbaa !941
  %10 = icmp eq i32 %9, 32, !dbg !2200
  br i1 %10, label %22, label %11, !dbg !2201

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #42, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %12, metadata !2189, metadata !DIExpression()), !dbg !2203
  %13 = load ptr, ptr @file_name, align 8, !dbg !2204, !tbaa !872
  %14 = icmp eq ptr %13, null, !dbg !2204
  %15 = tail call ptr @__errno_location() #45, !dbg !2206
  %16 = load i32, ptr %15, align 4, !dbg !2206, !tbaa !941
  br i1 %14, label %19, label %17, !dbg !2207

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !2208
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #42, !dbg !2208
  br label %20, !dbg !2208

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #42, !dbg !2209
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2210, !tbaa !941
  tail call void @_exit(i32 noundef %21) #44, !dbg !2211
  unreachable, !dbg !2211

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2212, !tbaa !872
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !2214
  %25 = icmp eq i32 %24, 0, !dbg !2215
  br i1 %25, label %28, label %26, !dbg !2216

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2217, !tbaa !941
  tail call void @_exit(i32 noundef %27) #44, !dbg !2218
  unreachable, !dbg !2218

28:                                               ; preds = %22
  ret void, !dbg !2219
}

; Function Attrs: noreturn
declare !dbg !2220 void @_exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #22 !dbg !2222 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2226, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i32 %1, metadata !2227, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata ptr %2, metadata !2228, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2229, metadata !DIExpression()), !dbg !2231
  tail call fastcc void @flush_stdout(), !dbg !2232
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2233, !tbaa !872
  %7 = icmp eq ptr %6, null, !dbg !2233
  br i1 %7, label %9, label %8, !dbg !2235

8:                                                ; preds = %4
  tail call void %6() #42, !dbg !2236
  br label %13, !dbg !2236

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2237, !tbaa !872
  %11 = tail call ptr @getprogname() #43, !dbg !2237
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %11) #42, !dbg !2237
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !2239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2239, !tbaa.struct !2240
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !2239
  ret void, !dbg !2241
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #18 !dbg !2242 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2244, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 1, metadata !2246, metadata !DIExpression()), !dbg !2249
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !2252
  %2 = icmp slt i32 %1, 0, !dbg !2253
  br i1 %2, label %6, label %3, !dbg !2254

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2255, !tbaa !872
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !2255
  br label %6, !dbg !2255

6:                                                ; preds = %3, %0
  ret void, !dbg !2256
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #18 !dbg !2257 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %1, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %2, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2262, metadata !DIExpression()), !dbg !2264
  %7 = load ptr, ptr @stderr, align 8, !dbg !2265, !tbaa !872
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !2266, !noalias !2310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2314
  call void @llvm.dbg.value(metadata ptr %7, metadata !2306, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %2, metadata !2307, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2308, metadata !DIExpression()), !dbg !2316
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #42, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !2266, !noalias !2310
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2317, !tbaa !941
  %10 = add i32 %9, 1, !dbg !2317
  store i32 %10, ptr @error_message_count, align 4, !dbg !2317, !tbaa !941
  %11 = icmp eq i32 %1, 0, !dbg !2318
  br i1 %11, label %21, label %12, !dbg !2320

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2321, metadata !DIExpression()), !dbg !2329
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2325, metadata !DIExpression()), !dbg !2332
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !2333
  call void @llvm.dbg.value(metadata ptr %13, metadata !2324, metadata !DIExpression()), !dbg !2329
  %14 = icmp eq ptr %13, null, !dbg !2334
  br i1 %14, label %15, label %17, !dbg !2336

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #42, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %16, metadata !2324, metadata !DIExpression()), !dbg !2329
  br label %17, !dbg !2338

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2329
  call void @llvm.dbg.value(metadata ptr %18, metadata !2324, metadata !DIExpression()), !dbg !2329
  %19 = load ptr, ptr @stderr, align 8, !dbg !2339, !tbaa !872
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %18) #42, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !2340
  br label %21, !dbg !2341

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2342, !tbaa !872
  call void @llvm.dbg.value(metadata i32 10, metadata !2343, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %22, metadata !2348, metadata !DIExpression()), !dbg !2349
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2351
  %24 = load ptr, ptr %23, align 8, !dbg !2351, !tbaa !1517
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2351
  %26 = load ptr, ptr %25, align 8, !dbg !2351, !tbaa !1518
  %27 = icmp ult ptr %24, %26, !dbg !2351
  br i1 %27, label %30, label %28, !dbg !2351, !prof !1519

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #42, !dbg !2351
  br label %32, !dbg !2351

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2351
  store ptr %31, ptr %23, align 8, !dbg !2351, !tbaa !1517
  store i8 10, ptr %24, align 1, !dbg !2351, !tbaa !950
  br label %32, !dbg !2351

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2352, !tbaa !872
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #42, !dbg !2352
  %35 = icmp eq i32 %0, 0, !dbg !2353
  br i1 %35, label %37, label %36, !dbg !2355

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #44, !dbg !2356
  unreachable, !dbg !2356

37:                                               ; preds = %32
  ret void, !dbg !2357
}

declare !dbg !2358 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2361 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2364 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #18 !dbg !2368 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %2, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #42, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.va_start(ptr nonnull %4), !dbg !2379
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !2380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2380, !tbaa.struct !2240
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #48, !dbg !2380
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !2380
  call void @llvm.va_end(ptr nonnull %4), !dbg !2381
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #42, !dbg !2382
  ret void, !dbg !2382
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #22 !dbg !477 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !494, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %1, metadata !495, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata ptr %2, metadata !496, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %3, metadata !497, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata ptr %4, metadata !498, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %5, metadata !499, metadata !DIExpression()), !dbg !2384
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2385, !tbaa !941
  %9 = icmp eq i32 %8, 0, !dbg !2385
  br i1 %9, label %24, label %10, !dbg !2387

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2388, !tbaa !941
  %12 = icmp eq i32 %11, %3, !dbg !2391
  br i1 %12, label %13, label %23, !dbg !2392

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2393, !tbaa !872
  %15 = icmp eq ptr %14, %2, !dbg !2394
  br i1 %15, label %37, label %16, !dbg !2395

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2396
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2397
  br i1 %19, label %20, label %23, !dbg !2397

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2398
  %22 = icmp eq i32 %21, 0, !dbg !2399
  br i1 %22, label %37, label %23, !dbg !2400

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2401, !tbaa !872
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2402, !tbaa !941
  br label %24, !dbg !2403

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2404
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2405, !tbaa !872
  %26 = icmp eq ptr %25, null, !dbg !2405
  br i1 %26, label %28, label %27, !dbg !2407

27:                                               ; preds = %24
  tail call void %25() #42, !dbg !2408
  br label %32, !dbg !2408

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2409, !tbaa !872
  %30 = tail call ptr @getprogname() #43, !dbg !2409
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %30) #42, !dbg !2409
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2411, !tbaa !872
  %34 = icmp eq ptr %2, null, !dbg !2411
  %35 = select i1 %34, ptr @.str.3.58, ptr @.str.2.59, !dbg !2411
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #42, !dbg !2411
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42, !dbg !2412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2412, !tbaa.struct !2240
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2412
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42, !dbg !2412
  br label %37, !dbg !2413

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2413
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #18 !dbg !2414 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %2, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %3, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %4, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.va_start(ptr nonnull %6), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42, !dbg !2428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2428, !tbaa.struct !2240
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #48, !dbg !2428
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42, !dbg !2428
  call void @llvm.va_end(ptr nonnull %6), !dbg !2429
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !2430
  ret void, !dbg !2430
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #18 !dbg !2431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %1, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %2, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %3, metadata !2440, metadata !DIExpression()), !dbg !2441
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !2442
  ret void, !dbg !2443
}

; Function Attrs: nounwind
declare !dbg !2444 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #18 !dbg !2447 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1, metadata !2486, metadata !DIExpression()), !dbg !2487
  %3 = icmp eq ptr %0, null, !dbg !2488
  br i1 %3, label %7, label %4, !dbg !2490

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %5, metadata !2437, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 0, metadata !2438, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 0, metadata !2439, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %1, metadata !2440, metadata !DIExpression()), !dbg !2492
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !2494
  br label %7, !dbg !2495

7:                                                ; preds = %4, %2
  ret void, !dbg !2496
}

; Function Attrs: nofree nounwind
declare !dbg !2497 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !2500 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2538, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2542
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %2, metadata !2540, metadata !DIExpression()), !dbg !2542
  %3 = icmp slt i32 %2, 0, !dbg !2544
  br i1 %3, label %4, label %6, !dbg !2546

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2547
  br label %24, !dbg !2548

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2549
  %8 = icmp eq i32 %7, 0, !dbg !2549
  br i1 %8, label %13, label %9, !dbg !2551

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2552
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !2553
  %12 = icmp eq i64 %11, -1, !dbg !2554
  br i1 %12, label %16, label %13, !dbg !2555

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !2556
  %15 = icmp eq i32 %14, 0, !dbg !2556
  br i1 %15, label %16, label %18, !dbg !2557

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2541, metadata !DIExpression()), !dbg !2542
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %17, metadata !2541, metadata !DIExpression()), !dbg !2542
  br label %24, !dbg !2559

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !2560
  %20 = load i32, ptr %19, align 4, !dbg !2560, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %20, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2541, metadata !DIExpression()), !dbg !2542
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %21, metadata !2541, metadata !DIExpression()), !dbg !2542
  %22 = icmp eq i32 %20, 0, !dbg !2561
  br i1 %22, label %24, label %23, !dbg !2559

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2563, !tbaa !941
  call void @llvm.dbg.value(metadata i32 -1, metadata !2541, metadata !DIExpression()), !dbg !2542
  br label %24, !dbg !2565

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2542
  ret i32 %25, !dbg !2566
}

; Function Attrs: nofree nounwind
declare !dbg !2567 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2568 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2570 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #18 !dbg !2573 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2611, metadata !DIExpression()), !dbg !2612
  %2 = icmp eq ptr %0, null, !dbg !2613
  br i1 %2, label %6, label %3, !dbg !2615

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2616
  %5 = icmp eq i32 %4, 0, !dbg !2616
  br i1 %5, label %6, label %8, !dbg !2617

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2618
  br label %16, !dbg !2619

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2620, metadata !DIExpression()), !dbg !2625
  %9 = load i32, ptr %0, align 8, !dbg !2627, !tbaa !1298
  %10 = and i32 %9, 256, !dbg !2629
  %11 = icmp eq i32 %10, 0, !dbg !2629
  br i1 %11, label %14, label %12, !dbg !2630

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2631
  br label %14, !dbg !2631

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2632
  br label %16, !dbg !2633

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2612
  ret i32 %17, !dbg !2634
}

; Function Attrs: nofree nounwind
declare !dbg !2635 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !2636 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2674, metadata !DIExpression()), !dbg !2675
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2676
  ret i32 0, !dbg !2677
}

; Function Attrs: nounwind
declare !dbg !2678 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #18 !dbg !2681 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 %2, metadata !2721, metadata !DIExpression()), !dbg !2725
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2726
  %5 = load ptr, ptr %4, align 8, !dbg !2726, !tbaa !2727
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2728
  %7 = load ptr, ptr %6, align 8, !dbg !2728, !tbaa !2729
  %8 = icmp eq ptr %5, %7, !dbg !2730
  br i1 %8, label %9, label %27, !dbg !2731

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2732
  %11 = load ptr, ptr %10, align 8, !dbg !2732, !tbaa !1517
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2733
  %13 = load ptr, ptr %12, align 8, !dbg !2733, !tbaa !2734
  %14 = icmp eq ptr %11, %13, !dbg !2735
  br i1 %14, label %15, label %27, !dbg !2736

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2737
  %17 = load ptr, ptr %16, align 8, !dbg !2737, !tbaa !2738
  %18 = icmp eq ptr %17, null, !dbg !2739
  br i1 %18, label %19, label %27, !dbg !2740

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2741
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %21, metadata !2722, metadata !DIExpression()), !dbg !2743
  %22 = icmp eq i64 %21, -1, !dbg !2744
  br i1 %22, label %29, label %23, !dbg !2746

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2747, !tbaa !1298
  %25 = and i32 %24, -17, !dbg !2747
  store i32 %25, ptr %0, align 8, !dbg !2747, !tbaa !1298
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2748
  store i64 %21, ptr %26, align 8, !dbg !2749, !tbaa !2750
  br label %29, !dbg !2751

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2752
  br label %29, !dbg !2753

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2725
  ret i32 %30, !dbg !2754
}

; Function Attrs: nofree nounwind
declare !dbg !2755 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #24 !dbg !2758 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2761, !tbaa !872
  ret ptr %1, !dbg !2762
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #25 !dbg !2763 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2765, metadata !DIExpression()), !dbg !2768
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !2769
  call void @llvm.dbg.value(metadata ptr %2, metadata !2766, metadata !DIExpression()), !dbg !2768
  %3 = icmp eq ptr %2, null, !dbg !2770
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2770
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2770
  call void @llvm.dbg.value(metadata ptr %5, metadata !2767, metadata !DIExpression()), !dbg !2768
  %6 = ptrtoint ptr %5 to i64, !dbg !2771
  %7 = ptrtoint ptr %0 to i64, !dbg !2771
  %8 = sub i64 %6, %7, !dbg !2771
  %9 = icmp sgt i64 %8, 6, !dbg !2773
  br i1 %9, label %10, label %19, !dbg !2774

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2775
  call void @llvm.dbg.value(metadata ptr %11, metadata !2776, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 7, metadata !2782, metadata !DIExpression()), !dbg !2783
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2785
  %13 = icmp eq i32 %12, 0, !dbg !2786
  br i1 %13, label %14, label %19, !dbg !2787

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2765, metadata !DIExpression()), !dbg !2768
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #43, !dbg !2788
  %16 = icmp eq i32 %15, 0, !dbg !2791
  %17 = select i1 %16, i64 3, i64 0, !dbg !2792
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2792
  br label %19, !dbg !2792

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2768
  call void @llvm.dbg.value(metadata ptr %21, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %20, metadata !2765, metadata !DIExpression()), !dbg !2768
  store ptr %20, ptr @program_name, align 8, !dbg !2793, !tbaa !872
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2794, !tbaa !872
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2795, !tbaa !872
  ret void, !dbg !2796
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2797 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #18 !dbg !536 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !543, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %1, metadata !544, metadata !DIExpression()), !dbg !2798
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !2799
  call void @llvm.dbg.value(metadata ptr %5, metadata !545, metadata !DIExpression()), !dbg !2798
  %6 = icmp eq ptr %5, %0, !dbg !2800
  br i1 %6, label %7, label %14, !dbg !2802

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !2803
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !2804
  call void @llvm.dbg.declare(metadata ptr %4, metadata !551, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %4, metadata !2806, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata ptr %4, metadata !2815, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i64 8, metadata !2821, metadata !DIExpression()), !dbg !2822
  store i64 0, ptr %4, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata ptr %3, metadata !546, metadata !DIExpression(DW_OP_deref)), !dbg !2798
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !2825
  %9 = icmp eq i64 %8, 2, !dbg !2827
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !546, metadata !DIExpression()), !dbg !2798
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2828
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2798
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !2829
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !2829
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2798
  ret ptr %15, !dbg !2829
}

; Function Attrs: nounwind
declare !dbg !2830 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #18 !dbg !2836 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2841, metadata !DIExpression()), !dbg !2844
  %2 = tail call ptr @__errno_location() #45, !dbg !2845
  %3 = load i32, ptr %2, align 4, !dbg !2845, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %3, metadata !2842, metadata !DIExpression()), !dbg !2844
  %4 = icmp eq ptr %0, null, !dbg !2846
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2846
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #49, !dbg !2847
  call void @llvm.dbg.value(metadata ptr %6, metadata !2843, metadata !DIExpression()), !dbg !2844
  store i32 %3, ptr %2, align 4, !dbg !2848, !tbaa !941
  ret ptr %6, !dbg !2849
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #27 !dbg !2850 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2856, metadata !DIExpression()), !dbg !2857
  %2 = icmp eq ptr %0, null, !dbg !2858
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2858
  %4 = load i32, ptr %3, align 8, !dbg !2859, !tbaa !2860
  ret i32 %4, !dbg !2862
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #28 !dbg !2863 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %1, metadata !2868, metadata !DIExpression()), !dbg !2869
  %3 = icmp eq ptr %0, null, !dbg !2870
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2870
  store i32 %1, ptr %4, align 8, !dbg !2871, !tbaa !2860
  ret void, !dbg !2872
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #29 !dbg !2873 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2877, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %1, metadata !2878, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %2, metadata !2879, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %1, metadata !2880, metadata !DIExpression()), !dbg !2885
  %4 = icmp eq ptr %0, null, !dbg !2886
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2886
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2887
  %7 = lshr i8 %1, 5, !dbg !2888
  %8 = zext i8 %7 to i64, !dbg !2888
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2889
  call void @llvm.dbg.value(metadata ptr %9, metadata !2881, metadata !DIExpression()), !dbg !2885
  %10 = and i8 %1, 31, !dbg !2890
  %11 = zext i8 %10 to i32, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %11, metadata !2883, metadata !DIExpression()), !dbg !2885
  %12 = load i32, ptr %9, align 4, !dbg !2891, !tbaa !941
  %13 = lshr i32 %12, %11, !dbg !2892
  %14 = and i32 %13, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %14, metadata !2884, metadata !DIExpression()), !dbg !2885
  %15 = xor i32 %13, %2, !dbg !2894
  %16 = and i32 %15, 1, !dbg !2894
  %17 = shl nuw i32 %16, %11, !dbg !2895
  %18 = xor i32 %17, %12, !dbg !2896
  store i32 %18, ptr %9, align 4, !dbg !2896, !tbaa !941
  ret i32 %14, !dbg !2897
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #29 !dbg !2898 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 %1, metadata !2903, metadata !DIExpression()), !dbg !2905
  %3 = icmp eq ptr %0, null, !dbg !2906
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2908
  call void @llvm.dbg.value(metadata ptr %4, metadata !2902, metadata !DIExpression()), !dbg !2905
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2909
  %6 = load i32, ptr %5, align 4, !dbg !2909, !tbaa !2910
  call void @llvm.dbg.value(metadata i32 %6, metadata !2904, metadata !DIExpression()), !dbg !2905
  store i32 %1, ptr %5, align 4, !dbg !2911, !tbaa !2910
  ret i32 %6, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !2913 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata ptr %1, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !2920
  %4 = icmp eq ptr %0, null, !dbg !2921
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2923
  call void @llvm.dbg.value(metadata ptr %5, metadata !2917, metadata !DIExpression()), !dbg !2920
  store i32 10, ptr %5, align 8, !dbg !2924, !tbaa !2860
  %6 = icmp ne ptr %1, null, !dbg !2925
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2927
  br i1 %8, label %10, label %9, !dbg !2927

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !2928
  unreachable, !dbg !2928

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2929
  store ptr %1, ptr %11, align 8, !dbg !2930, !tbaa !2931
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2932
  store ptr %2, ptr %12, align 8, !dbg !2933, !tbaa !2934
  ret void, !dbg !2935
}

; Function Attrs: noreturn nounwind
declare !dbg !2936 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #18 !dbg !2937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %2, metadata !2943, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %3, metadata !2944, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %4, metadata !2945, metadata !DIExpression()), !dbg !2949
  %6 = icmp eq ptr %4, null, !dbg !2950
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2950
  call void @llvm.dbg.value(metadata ptr %7, metadata !2946, metadata !DIExpression()), !dbg !2949
  %8 = tail call ptr @__errno_location() #45, !dbg !2951
  %9 = load i32, ptr %8, align 4, !dbg !2951, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %9, metadata !2947, metadata !DIExpression()), !dbg !2949
  %10 = load i32, ptr %7, align 8, !dbg !2952, !tbaa !2860
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2953
  %12 = load i32, ptr %11, align 4, !dbg !2953, !tbaa !2910
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2954
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2955
  %15 = load ptr, ptr %14, align 8, !dbg !2955, !tbaa !2931
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2956
  %17 = load ptr, ptr %16, align 8, !dbg !2956, !tbaa !2934
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %18, metadata !2948, metadata !DIExpression()), !dbg !2949
  store i32 %9, ptr %8, align 4, !dbg !2958, !tbaa !941
  ret i64 %18, !dbg !2959
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #18 !dbg !2960 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %2, metadata !2968, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %3, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %4, metadata !2970, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %5, metadata !2971, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %6, metadata !2972, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %7, metadata !2973, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %8, metadata !2974, metadata !DIExpression()), !dbg !3028
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !3029
  %17 = icmp eq i64 %16, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i1 %17, metadata !2975, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr null, metadata !2978, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %5, metadata !2981, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2983, metadata !DIExpression()), !dbg !3028
  %18 = and i32 %5, 2, !dbg !3031
  %19 = icmp ne i32 %18, 0, !dbg !3031
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3031

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3032
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3033
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3034
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2983, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %34, metadata !2979, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %33, metadata !2978, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %32, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %31, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %30, metadata !2974, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %29, metadata !2973, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %28, metadata !2970, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.label(metadata !3021), !dbg !3035
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !3028
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
  ], !dbg !3036

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 5, metadata !2970, metadata !DIExpression()), !dbg !3028
  br label %102, !dbg !3037

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 5, metadata !2970, metadata !DIExpression()), !dbg !3028
  br i1 %36, label %102, label %42, !dbg !3037

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3038
  br i1 %43, label %102, label %44, !dbg !3042

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3038, !tbaa !950
  br label %102, !dbg !3038

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !630, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %28, metadata !631, metadata !DIExpression()), !dbg !3043
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #42, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %46, metadata !632, metadata !DIExpression()), !dbg !3043
  %47 = icmp eq ptr %46, @.str.11.92, !dbg !3048
  br i1 %47, label %48, label %57, !dbg !3050

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !3051
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %13, metadata !634, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %13, metadata !3054, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %13, metadata !3062, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 0, metadata !3065, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 8, metadata !3066, metadata !DIExpression()), !dbg !3067
  store i64 0, ptr %13, align 8, !dbg !3069
  call void @llvm.dbg.value(metadata ptr %12, metadata !633, metadata !DIExpression(DW_OP_deref)), !dbg !3043
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !3070
  %50 = icmp eq i64 %49, 3, !dbg !3072
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !633, metadata !DIExpression()), !dbg !3043
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3073
  %54 = icmp eq i32 %28, 9, !dbg !3073
  %55 = select i1 %54, ptr @.str.10.94, ptr @.str.12.95, !dbg !3073
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3073
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !3074
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !3074
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3043
  call void @llvm.dbg.value(metadata ptr %58, metadata !2973, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !630, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %28, metadata !631, metadata !DIExpression()), !dbg !3075
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #42, !dbg !3077
  call void @llvm.dbg.value(metadata ptr %59, metadata !632, metadata !DIExpression()), !dbg !3075
  %60 = icmp eq ptr %59, @.str.12.95, !dbg !3078
  br i1 %60, label %61, label %70, !dbg !3079

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !3080
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !3081
  call void @llvm.dbg.declare(metadata ptr %11, metadata !634, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr %11, metadata !3054, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %11, metadata !3062, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 0, metadata !3065, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 8, metadata !3066, metadata !DIExpression()), !dbg !3085
  store i64 0, ptr %11, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata ptr %10, metadata !633, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !3088
  %63 = icmp eq i64 %62, 3, !dbg !3089
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !633, metadata !DIExpression()), !dbg !3075
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3090
  %67 = icmp eq i32 %28, 9, !dbg !3090
  %68 = select i1 %67, ptr @.str.10.94, ptr @.str.12.95, !dbg !3090
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3090
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !3091
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !3091
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2974, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %71, metadata !2973, metadata !DIExpression()), !dbg !3028
  br i1 %36, label %88, label %73, !dbg !3092

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2985, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !2976, metadata !DIExpression()), !dbg !3028
  %74 = load i8, ptr %71, align 1, !dbg !3094, !tbaa !950
  %75 = icmp eq i8 %74, 0, !dbg !3096
  br i1 %75, label %88, label %76, !dbg !3096

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2985, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %79, metadata !2976, metadata !DIExpression()), !dbg !3028
  %80 = icmp ult i64 %79, %39, !dbg !3097
  br i1 %80, label %81, label %83, !dbg !3100

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3097
  store i8 %77, ptr %82, align 1, !dbg !3097, !tbaa !950
  br label %83, !dbg !3097

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %84, metadata !2976, metadata !DIExpression()), !dbg !3028
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3101
  call void @llvm.dbg.value(metadata ptr %85, metadata !2985, metadata !DIExpression()), !dbg !3093
  %86 = load i8, ptr %85, align 1, !dbg !3094, !tbaa !950
  %87 = icmp eq i8 %86, 0, !dbg !3096
  br i1 %87, label %88, label %76, !dbg !3096, !llvm.loop !3102

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3104
  call void @llvm.dbg.value(metadata i64 %89, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %72, metadata !2978, metadata !DIExpression()), !dbg !3028
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #43, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %90, metadata !2979, metadata !DIExpression()), !dbg !3028
  br label %102, !dbg !3106

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3028
  br label %93, !dbg !3107

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3028
  br i1 %36, label %102, label %96, !dbg !3108

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 2, metadata !2970, metadata !DIExpression()), !dbg !3028
  br label %102, !dbg !3109

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 2, metadata !2970, metadata !DIExpression()), !dbg !3028
  br i1 %36, label %102, label %96, !dbg !3109

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3110
  br i1 %98, label %102, label %99, !dbg !3114

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3110, !tbaa !950
  br label %102, !dbg !3110

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2981, metadata !DIExpression()), !dbg !3028
  br label %102, !dbg !3115

101:                                              ; preds = %27
  call void @abort() #44, !dbg !3116
  unreachable, !dbg !3116

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3104
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.94, %42 ], [ @.str.10.94, %44 ], [ @.str.10.94, %41 ], [ %33, %27 ], [ @.str.12.95, %96 ], [ @.str.12.95, %99 ], [ @.str.12.95, %95 ], [ @.str.10.94, %40 ], [ @.str.12.95, %93 ], [ @.str.12.95, %92 ], !dbg !3028
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3028
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %108, metadata !2979, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %107, metadata !2978, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %106, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %105, metadata !2974, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %104, metadata !2973, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %103, metadata !2970, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2990, metadata !DIExpression()), !dbg !3117
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
  br label %122, !dbg !3118

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3104
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3032
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3119
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %129, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2983, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %125, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %124, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %123, metadata !2969, metadata !DIExpression()), !dbg !3028
  %131 = icmp eq i64 %123, -1, !dbg !3120
  br i1 %131, label %132, label %136, !dbg !3121

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3122
  %134 = load i8, ptr %133, align 1, !dbg !3122, !tbaa !950
  %135 = icmp eq i8 %134, 0, !dbg !3123
  br i1 %135, label %579, label %138, !dbg !3124

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3125
  br i1 %137, label %579, label %138, !dbg !3124

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2992, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 0, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 0, metadata !2996, metadata !DIExpression()), !dbg !3126
  br i1 %114, label %139, label %152, !dbg !3127

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3129
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3130
  br i1 %141, label %142, label %144, !dbg !3130

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %143, metadata !2969, metadata !DIExpression()), !dbg !3028
  br label %144, !dbg !3132

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3132
  call void @llvm.dbg.value(metadata i64 %145, metadata !2969, metadata !DIExpression()), !dbg !3028
  %146 = icmp ugt i64 %140, %145, !dbg !3133
  br i1 %146, label %152, label %147, !dbg !3134

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %148, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %107, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %108, metadata !3140, metadata !DIExpression()), !dbg !3141
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3143
  %150 = icmp eq i32 %149, 0, !dbg !3144
  %151 = and i1 %150, %110, !dbg !3145
  br i1 %151, label %630, label %152, !dbg !3145

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2992, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %153, metadata !2969, metadata !DIExpression()), !dbg !3028
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3146
  %156 = load i8, ptr %155, align 1, !dbg !3146, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %156, metadata !2997, metadata !DIExpression()), !dbg !3126
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
  ], !dbg !3147

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3148

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3149

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2995, metadata !DIExpression()), !dbg !3126
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3153
  br i1 %160, label %177, label %161, !dbg !3153

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3155
  br i1 %162, label %163, label %165, !dbg !3159

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3155
  store i8 39, ptr %164, align 1, !dbg !3155, !tbaa !950
  br label %165, !dbg !3155

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %166, metadata !2976, metadata !DIExpression()), !dbg !3028
  %167 = icmp ult i64 %166, %130, !dbg !3160
  br i1 %167, label %168, label %170, !dbg !3163

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3160
  store i8 36, ptr %169, align 1, !dbg !3160, !tbaa !950
  br label %170, !dbg !3160

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %171, metadata !2976, metadata !DIExpression()), !dbg !3028
  %172 = icmp ult i64 %171, %130, !dbg !3164
  br i1 %172, label %173, label %175, !dbg !3167

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3164
  store i8 39, ptr %174, align 1, !dbg !3164, !tbaa !950
  br label %175, !dbg !3164

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %176, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2984, metadata !DIExpression()), !dbg !3028
  br label %177, !dbg !3168

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3028
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %178, metadata !2976, metadata !DIExpression()), !dbg !3028
  %180 = icmp ult i64 %178, %130, !dbg !3169
  br i1 %180, label %181, label %183, !dbg !3172

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3169
  store i8 92, ptr %182, align 1, !dbg !3169, !tbaa !950
  br label %183, !dbg !3169

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %184, metadata !2976, metadata !DIExpression()), !dbg !3028
  br i1 %111, label %185, label %482, !dbg !3173

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3175
  %187 = icmp ult i64 %186, %153, !dbg !3176
  br i1 %187, label %188, label %439, !dbg !3177

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3178
  %190 = load i8, ptr %189, align 1, !dbg !3178, !tbaa !950
  %191 = add i8 %190, -48, !dbg !3179
  %192 = icmp ult i8 %191, 10, !dbg !3179
  br i1 %192, label %193, label %439, !dbg !3179

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3180
  br i1 %194, label %195, label %197, !dbg !3184

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3180
  store i8 48, ptr %196, align 1, !dbg !3180, !tbaa !950
  br label %197, !dbg !3180

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %198, metadata !2976, metadata !DIExpression()), !dbg !3028
  %199 = icmp ult i64 %198, %130, !dbg !3185
  br i1 %199, label %200, label %202, !dbg !3188

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3185
  store i8 48, ptr %201, align 1, !dbg !3185, !tbaa !950
  br label %202, !dbg !3185

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %203, metadata !2976, metadata !DIExpression()), !dbg !3028
  br label %439, !dbg !3189

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3190

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3191

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3192

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3194

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3196
  %210 = icmp ult i64 %209, %153, !dbg !3197
  br i1 %210, label %211, label %439, !dbg !3198

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3199
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3200
  %214 = load i8, ptr %213, align 1, !dbg !3200, !tbaa !950
  %215 = icmp eq i8 %214, 63, !dbg !3201
  br i1 %215, label %216, label %439, !dbg !3202

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3203
  %218 = load i8, ptr %217, align 1, !dbg !3203, !tbaa !950
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
  ], !dbg !3204

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3205

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %209, metadata !2990, metadata !DIExpression()), !dbg !3117
  %221 = icmp ult i64 %124, %130, !dbg !3207
  br i1 %221, label %222, label %224, !dbg !3210

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3207
  store i8 63, ptr %223, align 1, !dbg !3207, !tbaa !950
  br label %224, !dbg !3207

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %225, metadata !2976, metadata !DIExpression()), !dbg !3028
  %226 = icmp ult i64 %225, %130, !dbg !3211
  br i1 %226, label %227, label %229, !dbg !3214

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3211
  store i8 34, ptr %228, align 1, !dbg !3211, !tbaa !950
  br label %229, !dbg !3211

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %230, metadata !2976, metadata !DIExpression()), !dbg !3028
  %231 = icmp ult i64 %230, %130, !dbg !3215
  br i1 %231, label %232, label %234, !dbg !3218

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3215
  store i8 34, ptr %233, align 1, !dbg !3215, !tbaa !950
  br label %234, !dbg !3215

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %235, metadata !2976, metadata !DIExpression()), !dbg !3028
  %236 = icmp ult i64 %235, %130, !dbg !3219
  br i1 %236, label %237, label %239, !dbg !3222

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3219
  store i8 63, ptr %238, align 1, !dbg !3219, !tbaa !950
  br label %239, !dbg !3219

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %240, metadata !2976, metadata !DIExpression()), !dbg !3028
  br label %439, !dbg !3223

241:                                              ; preds = %152
  br label %251, !dbg !3224

242:                                              ; preds = %152
  br label %251, !dbg !3225

243:                                              ; preds = %152
  br label %249, !dbg !3226

244:                                              ; preds = %152
  br label %249, !dbg !3227

245:                                              ; preds = %152
  br label %251, !dbg !3228

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3229

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3230

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3233

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3235
  call void @llvm.dbg.label(metadata !3022), !dbg !3236
  br i1 %119, label %621, label %251, !dbg !3237

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3235
  call void @llvm.dbg.label(metadata !3024), !dbg !3239
  br i1 %109, label %493, label %450, !dbg !3240

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3241

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3242, !tbaa !950
  %256 = icmp eq i8 %255, 0, !dbg !3244
  br i1 %256, label %257, label %439, !dbg !3245

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3246
  br i1 %258, label %259, label %439, !dbg !3248

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2996, metadata !DIExpression()), !dbg !3126
  br label %260, !dbg !3249

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2996, metadata !DIExpression()), !dbg !3126
  br i1 %116, label %262, label %439, !dbg !3250

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3252

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2996, metadata !DIExpression()), !dbg !3126
  br i1 %116, label %264, label %439, !dbg !3253

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3254

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3257
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3259
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3259
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %270, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %269, metadata !2977, metadata !DIExpression()), !dbg !3028
  %271 = icmp ult i64 %124, %270, !dbg !3260
  br i1 %271, label %272, label %274, !dbg !3263

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3260
  store i8 39, ptr %273, align 1, !dbg !3260, !tbaa !950
  br label %274, !dbg !3260

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %275, metadata !2976, metadata !DIExpression()), !dbg !3028
  %276 = icmp ult i64 %275, %270, !dbg !3264
  br i1 %276, label %277, label %279, !dbg !3267

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3264
  store i8 92, ptr %278, align 1, !dbg !3264, !tbaa !950
  br label %279, !dbg !3264

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %280, metadata !2976, metadata !DIExpression()), !dbg !3028
  %281 = icmp ult i64 %280, %270, !dbg !3268
  br i1 %281, label %282, label %284, !dbg !3271

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3268
  store i8 39, ptr %283, align 1, !dbg !3268, !tbaa !950
  br label %284, !dbg !3268

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %285, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !3028
  br label %439, !dbg !3272

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3273

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2998, metadata !DIExpression()), !dbg !3274
  %288 = tail call ptr @__ctype_b_loc() #45, !dbg !3275
  %289 = load ptr, ptr %288, align 8, !dbg !3275, !tbaa !872
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3275
  %292 = load i16, ptr %291, align 2, !dbg !3275, !tbaa !982
  %293 = and i16 %292, 16384, !dbg !3275
  %294 = icmp ne i16 %293, 0, !dbg !3277
  call void @llvm.dbg.value(metadata i1 %294, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3274
  br label %337, !dbg !3278

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3279
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3002, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %14, metadata !3054, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr %14, metadata !3062, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 0, metadata !3065, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 8, metadata !3066, metadata !DIExpression()), !dbg !3283
  store i64 0, ptr %14, align 8, !dbg !3285
  call void @llvm.dbg.value(metadata i64 0, metadata !2998, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 1, metadata !3001, metadata !DIExpression()), !dbg !3274
  %296 = icmp eq i64 %153, -1, !dbg !3286
  br i1 %296, label %297, label %299, !dbg !3288

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %298, metadata !2969, metadata !DIExpression()), !dbg !3028
  br label %299, !dbg !3290

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3126
  call void @llvm.dbg.value(metadata i64 %300, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3291
  %301 = sub i64 %300, %129, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %15, metadata !3005, metadata !DIExpression(DW_OP_deref)), !dbg !3293
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #42, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %302, metadata !3009, metadata !DIExpression()), !dbg !3293
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3295

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2998, metadata !DIExpression()), !dbg !3274
  %304 = icmp ugt i64 %300, %129, !dbg !3296
  br i1 %304, label %306, label %332, !dbg !3298

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3274
  br label %332, !dbg !3299

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2998, metadata !DIExpression()), !dbg !3274
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3301
  %310 = load i8, ptr %309, align 1, !dbg !3301, !tbaa !950
  %311 = icmp eq i8 %310, 0, !dbg !3298
  br i1 %311, label %332, label %312, !dbg !3302

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %313, metadata !2998, metadata !DIExpression()), !dbg !3274
  %314 = add i64 %313, %129, !dbg !3304
  %315 = icmp eq i64 %313, %301, !dbg !3296
  br i1 %315, label %332, label %306, !dbg !3298, !llvm.loop !3305

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3306
  %319 = and i1 %318, %110, !dbg !3306
  call void @llvm.dbg.value(metadata i64 1, metadata !3010, metadata !DIExpression()), !dbg !3307
  br i1 %319, label %320, label %328, !dbg !3306

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3010, metadata !DIExpression()), !dbg !3307
  %322 = add i64 %321, %129, !dbg !3308
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3310
  %324 = load i8, ptr %323, align 1, !dbg !3310, !tbaa !950
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3311

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %326, metadata !3010, metadata !DIExpression()), !dbg !3307
  %327 = icmp eq i64 %326, %302, !dbg !3313
  br i1 %327, label %328, label %320, !dbg !3314, !llvm.loop !3315

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3317, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %329, metadata !3005, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 %329, metadata !3319, metadata !DIExpression()), !dbg !3327
  %330 = call i32 @iswprint(i32 noundef %329) #42, !dbg !3329
  %331 = icmp ne i32 %330, 0, !dbg !3330
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %302, metadata !2998, metadata !DIExpression()), !dbg !3274
  br label %332, !dbg !3331

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %333, metadata !2998, metadata !DIExpression()), !dbg !3274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3333
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 0, metadata !2998, metadata !DIExpression()), !dbg !3274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3333
  call void @llvm.dbg.label(metadata !3027), !dbg !3334
  %336 = select i1 %109, i32 4, i32 2, !dbg !3335
  br label %626, !dbg !3335

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3126
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3337
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %339, metadata !2998, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %338, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i1 %340, metadata !2996, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3126
  %341 = icmp ult i64 %339, 2, !dbg !3338
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3339
  br i1 %343, label %439, label %344, !dbg !3339

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %345, metadata !3018, metadata !DIExpression()), !dbg !3341
  br label %346, !dbg !3342

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3028
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3117
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3343
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3126
  call void @llvm.dbg.value(metadata i8 %352, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %351, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2992, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %349, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %347, metadata !2976, metadata !DIExpression()), !dbg !3028
  br i1 %342, label %397, label %353, !dbg !3344

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3349

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2995, metadata !DIExpression()), !dbg !3126
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3352
  br i1 %355, label %372, label %356, !dbg !3352

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3354
  br i1 %357, label %358, label %360, !dbg !3358

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3354
  store i8 39, ptr %359, align 1, !dbg !3354, !tbaa !950
  br label %360, !dbg !3354

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3358
  call void @llvm.dbg.value(metadata i64 %361, metadata !2976, metadata !DIExpression()), !dbg !3028
  %362 = icmp ult i64 %361, %130, !dbg !3359
  br i1 %362, label %363, label %365, !dbg !3362

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3359
  store i8 36, ptr %364, align 1, !dbg !3359, !tbaa !950
  br label %365, !dbg !3359

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %366, metadata !2976, metadata !DIExpression()), !dbg !3028
  %367 = icmp ult i64 %366, %130, !dbg !3363
  br i1 %367, label %368, label %370, !dbg !3366

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3363
  store i8 39, ptr %369, align 1, !dbg !3363, !tbaa !950
  br label %370, !dbg !3363

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %371, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2984, metadata !DIExpression()), !dbg !3028
  br label %372, !dbg !3367

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3028
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %373, metadata !2976, metadata !DIExpression()), !dbg !3028
  %375 = icmp ult i64 %373, %130, !dbg !3368
  br i1 %375, label %376, label %378, !dbg !3371

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3368
  store i8 92, ptr %377, align 1, !dbg !3368, !tbaa !950
  br label %378, !dbg !3368

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %379, metadata !2976, metadata !DIExpression()), !dbg !3028
  %380 = icmp ult i64 %379, %130, !dbg !3372
  br i1 %380, label %381, label %385, !dbg !3375

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3372
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3372
  store i8 %383, ptr %384, align 1, !dbg !3372, !tbaa !950
  br label %385, !dbg !3372

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %386, metadata !2976, metadata !DIExpression()), !dbg !3028
  %387 = icmp ult i64 %386, %130, !dbg !3376
  br i1 %387, label %388, label %393, !dbg !3379

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3376
  %391 = or i8 %390, 48, !dbg !3376
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3376
  store i8 %391, ptr %392, align 1, !dbg !3376, !tbaa !950
  br label %393, !dbg !3376

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %394, metadata !2976, metadata !DIExpression()), !dbg !3028
  %395 = and i8 %352, 7, !dbg !3380
  %396 = or i8 %395, 48, !dbg !3381
  call void @llvm.dbg.value(metadata i8 %396, metadata !2997, metadata !DIExpression()), !dbg !3126
  br label %404, !dbg !3382

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3383

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3384
  br i1 %399, label %400, label %402, !dbg !3389

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3384
  store i8 92, ptr %401, align 1, !dbg !3384, !tbaa !950
  br label %402, !dbg !3384

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %403, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !2992, metadata !DIExpression()), !dbg !3126
  br label %404, !dbg !3390

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3028
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3126
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3126
  call void @llvm.dbg.value(metadata i8 %409, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %408, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2992, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %405, metadata !2976, metadata !DIExpression()), !dbg !3028
  %410 = add i64 %349, 1, !dbg !3391
  %411 = icmp ugt i64 %345, %410, !dbg !3393
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3394

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3395
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3395
  br i1 %415, label %416, label %427, !dbg !3395

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3398
  br i1 %417, label %418, label %420, !dbg !3402

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3398
  store i8 39, ptr %419, align 1, !dbg !3398, !tbaa !950
  br label %420, !dbg !3398

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %421, metadata !2976, metadata !DIExpression()), !dbg !3028
  %422 = icmp ult i64 %421, %130, !dbg !3403
  br i1 %422, label %423, label %425, !dbg !3406

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3403
  store i8 39, ptr %424, align 1, !dbg !3403, !tbaa !950
  br label %425, !dbg !3403

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %426, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !3028
  br label %427, !dbg !3407

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3408
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %428, metadata !2976, metadata !DIExpression()), !dbg !3028
  %430 = icmp ult i64 %428, %130, !dbg !3409
  br i1 %430, label %431, label %433, !dbg !3412

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3409
  store i8 %409, ptr %432, align 1, !dbg !3409, !tbaa !950
  br label %433, !dbg !3409

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %434, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %410, metadata !2990, metadata !DIExpression()), !dbg !3117
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3413
  %436 = load i8, ptr %435, align 1, !dbg !3413, !tbaa !950
  call void @llvm.dbg.value(metadata i8 %436, metadata !2997, metadata !DIExpression()), !dbg !3126
  br label %346, !dbg !3414, !llvm.loop !3415

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i1 %340, metadata !2996, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %408, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2992, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %349, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %405, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %338, metadata !2969, metadata !DIExpression()), !dbg !3028
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3418
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3028
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3032
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3117
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3126
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %448, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2996, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2992, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %445, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %442, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %441, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %440, metadata !2969, metadata !DIExpression()), !dbg !3028
  br i1 %112, label %461, label %450, !dbg !3419

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
  br i1 %121, label %462, label %482, !dbg !3421

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3422

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
  %473 = lshr i8 %464, 5, !dbg !3423
  %474 = zext i8 %473 to i64, !dbg !3423
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3424
  %476 = load i32, ptr %475, align 4, !dbg !3424, !tbaa !941
  %477 = and i8 %464, 31, !dbg !3425
  %478 = zext i8 %477 to i32, !dbg !3425
  %479 = shl nuw i32 1, %478, !dbg !3426
  %480 = and i32 %476, %479, !dbg !3426
  %481 = icmp eq i32 %480, 0, !dbg !3426
  br i1 %481, label %482, label %493, !dbg !3427

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
  br i1 %154, label %493, label %529, !dbg !3428

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3418
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3028
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3032
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3429
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3126
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %501, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2996, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %499, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %496, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %495, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %494, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.label(metadata !3025), !dbg !3430
  br i1 %110, label %621, label %503, !dbg !3431

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2995, metadata !DIExpression()), !dbg !3126
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3433
  br i1 %504, label %521, label %505, !dbg !3433

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3435
  br i1 %506, label %507, label %509, !dbg !3439

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3435
  store i8 39, ptr %508, align 1, !dbg !3435, !tbaa !950
  br label %509, !dbg !3435

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %510, metadata !2976, metadata !DIExpression()), !dbg !3028
  %511 = icmp ult i64 %510, %502, !dbg !3440
  br i1 %511, label %512, label %514, !dbg !3443

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3440
  store i8 36, ptr %513, align 1, !dbg !3440, !tbaa !950
  br label %514, !dbg !3440

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %515, metadata !2976, metadata !DIExpression()), !dbg !3028
  %516 = icmp ult i64 %515, %502, !dbg !3444
  br i1 %516, label %517, label %519, !dbg !3447

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3444
  store i8 39, ptr %518, align 1, !dbg !3444, !tbaa !950
  br label %519, !dbg !3444

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %520, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2984, metadata !DIExpression()), !dbg !3028
  br label %521, !dbg !3448

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3126
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %522, metadata !2976, metadata !DIExpression()), !dbg !3028
  %524 = icmp ult i64 %522, %502, !dbg !3449
  br i1 %524, label %525, label %527, !dbg !3452

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3449
  store i8 92, ptr %526, align 1, !dbg !3449, !tbaa !950
  br label %527, !dbg !3449

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %502, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %501, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2996, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %499, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %496, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %528, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %494, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.label(metadata !3026), !dbg !3453
  br label %553, !dbg !3454

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3418
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3028
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3032
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3429
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3457
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %538, metadata !2997, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2996, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 poison, metadata !2995, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %535, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %532, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %531, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %530, metadata !2969, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.label(metadata !3026), !dbg !3453
  %540 = xor i1 %534, true, !dbg !3454
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3454
  br i1 %541, label %553, label %542, !dbg !3454

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3458
  br i1 %543, label %544, label %546, !dbg !3462

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3458
  store i8 39, ptr %545, align 1, !dbg !3458, !tbaa !950
  br label %546, !dbg !3458

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %547, metadata !2976, metadata !DIExpression()), !dbg !3028
  %548 = icmp ult i64 %547, %539, !dbg !3463
  br i1 %548, label %549, label %551, !dbg !3466

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3463
  store i8 39, ptr %550, align 1, !dbg !3463, !tbaa !950
  br label %551, !dbg !3463

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %552, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !3028
  br label %553, !dbg !3467

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3126
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %561, metadata !2976, metadata !DIExpression()), !dbg !3028
  %563 = icmp ult i64 %561, %554, !dbg !3468
  br i1 %563, label %564, label %566, !dbg !3471

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3468
  store i8 %555, ptr %565, align 1, !dbg !3468, !tbaa !950
  br label %566, !dbg !3468

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %567, metadata !2976, metadata !DIExpression()), !dbg !3028
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3472
  call void @llvm.dbg.value(metadata i8 poison, metadata !2983, metadata !DIExpression()), !dbg !3028
  br label %569, !dbg !3473

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3418
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3028
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3032
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3429
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %576, metadata !2990, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 poison, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2983, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %572, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %571, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %570, metadata !2969, metadata !DIExpression()), !dbg !3028
  %578 = add i64 %576, 1, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %578, metadata !2990, metadata !DIExpression()), !dbg !3117
  br label %122, !dbg !3475, !llvm.loop !3476

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2967, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2983, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 poison, metadata !2982, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %125, metadata !2977, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %124, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %123, metadata !2969, metadata !DIExpression()), !dbg !3028
  %580 = icmp ne i64 %124, 0, !dbg !3478
  %581 = xor i1 %110, true, !dbg !3480
  %582 = or i1 %580, %581, !dbg !3480
  %583 = or i1 %582, %111, !dbg !3480
  br i1 %583, label %584, label %621, !dbg !3480

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3481
  %586 = xor i1 %126, true, !dbg !3481
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3481
  br i1 %587, label %595, label %588, !dbg !3481

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3483

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3485
  br label %636, !dbg !3487

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3488
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3490
  br i1 %594, label %27, label %595, !dbg !3490

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3491
  %598 = or i1 %597, %596, !dbg !3493
  br i1 %598, label %614, label %599, !dbg !3493

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2978, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %124, metadata !2976, metadata !DIExpression()), !dbg !3028
  %600 = load i8, ptr %107, align 1, !dbg !3494, !tbaa !950
  %601 = icmp eq i8 %600, 0, !dbg !3497
  br i1 %601, label %614, label %602, !dbg !3497

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2978, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %605, metadata !2976, metadata !DIExpression()), !dbg !3028
  %606 = icmp ult i64 %605, %130, !dbg !3498
  br i1 %606, label %607, label %609, !dbg !3501

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3498
  store i8 %603, ptr %608, align 1, !dbg !3498, !tbaa !950
  br label %609, !dbg !3498

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i64 %610, metadata !2976, metadata !DIExpression()), !dbg !3028
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3502
  call void @llvm.dbg.value(metadata ptr %611, metadata !2978, metadata !DIExpression()), !dbg !3028
  %612 = load i8, ptr %611, align 1, !dbg !3494, !tbaa !950
  %613 = icmp eq i8 %612, 0, !dbg !3497
  br i1 %613, label %614, label %602, !dbg !3497, !llvm.loop !3503

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3104
  call void @llvm.dbg.value(metadata i64 %615, metadata !2976, metadata !DIExpression()), !dbg !3028
  %616 = icmp ult i64 %615, %130, !dbg !3505
  br i1 %616, label %617, label %636, !dbg !3507

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3508
  store i8 0, ptr %618, align 1, !dbg !3509, !tbaa !950
  br label %636, !dbg !3508

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3027), !dbg !3334
  %620 = icmp eq i32 %103, 2, !dbg !3510
  br i1 %620, label %626, label %630, !dbg !3335

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3027), !dbg !3334
  %624 = icmp eq i32 %103, 2, !dbg !3510
  %625 = select i1 %109, i32 4, i32 2, !dbg !3335
  br i1 %624, label %626, label %630, !dbg !3335

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3335

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2970, metadata !DIExpression()), !dbg !3028
  %634 = and i32 %5, -3, !dbg !3511
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3512
  br label %636, !dbg !3513

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3514
}

; Function Attrs: nounwind
declare !dbg !3515 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3518 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3521 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !3523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3527, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %2, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr null, metadata !3537, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %2, metadata !3538, metadata !DIExpression()), !dbg !3544
  %4 = icmp eq ptr %2, null, !dbg !3546
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3546
  call void @llvm.dbg.value(metadata ptr %5, metadata !3539, metadata !DIExpression()), !dbg !3544
  %6 = tail call ptr @__errno_location() #45, !dbg !3547
  %7 = load i32, ptr %6, align 4, !dbg !3547, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %7, metadata !3540, metadata !DIExpression()), !dbg !3544
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3548
  %9 = load i32, ptr %8, align 4, !dbg !3548, !tbaa !2910
  %10 = or i32 %9, 1, !dbg !3549
  call void @llvm.dbg.value(metadata i32 %10, metadata !3541, metadata !DIExpression()), !dbg !3544
  %11 = load i32, ptr %5, align 8, !dbg !3550, !tbaa !2860
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3551
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3552
  %14 = load ptr, ptr %13, align 8, !dbg !3552, !tbaa !2931
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3553
  %16 = load ptr, ptr %15, align 8, !dbg !3553, !tbaa !2934
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3554
  %18 = add i64 %17, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %18, metadata !3542, metadata !DIExpression()), !dbg !3544
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3556
  call void @llvm.dbg.value(metadata ptr %19, metadata !3543, metadata !DIExpression()), !dbg !3544
  %20 = load i32, ptr %5, align 8, !dbg !3557, !tbaa !2860
  %21 = load ptr, ptr %13, align 8, !dbg !3558, !tbaa !2931
  %22 = load ptr, ptr %15, align 8, !dbg !3559, !tbaa !2934
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3560
  store i32 %7, ptr %6, align 4, !dbg !3561, !tbaa !941
  ret ptr %19, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #18 !dbg !3532 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr %3, metadata !3538, metadata !DIExpression()), !dbg !3563
  %5 = icmp eq ptr %3, null, !dbg !3564
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %6, metadata !3539, metadata !DIExpression()), !dbg !3563
  %7 = tail call ptr @__errno_location() #45, !dbg !3565
  %8 = load i32, ptr %7, align 4, !dbg !3565, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %8, metadata !3540, metadata !DIExpression()), !dbg !3563
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3566
  %10 = load i32, ptr %9, align 4, !dbg !3566, !tbaa !2910
  %11 = icmp eq ptr %2, null, !dbg !3567
  %12 = zext i1 %11 to i32, !dbg !3567
  %13 = or i32 %10, %12, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %13, metadata !3541, metadata !DIExpression()), !dbg !3563
  %14 = load i32, ptr %6, align 8, !dbg !3569, !tbaa !2860
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3570
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3571
  %17 = load ptr, ptr %16, align 8, !dbg !3571, !tbaa !2931
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3572
  %19 = load ptr, ptr %18, align 8, !dbg !3572, !tbaa !2934
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3573
  %21 = add i64 %20, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %21, metadata !3542, metadata !DIExpression()), !dbg !3563
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3575
  call void @llvm.dbg.value(metadata ptr %22, metadata !3543, metadata !DIExpression()), !dbg !3563
  %23 = load i32, ptr %6, align 8, !dbg !3576, !tbaa !2860
  %24 = load ptr, ptr %16, align 8, !dbg !3577, !tbaa !2931
  %25 = load ptr, ptr %18, align 8, !dbg !3578, !tbaa !2934
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3579
  store i32 %8, ptr %7, align 4, !dbg !3580, !tbaa !941
  br i1 %11, label %28, label %27, !dbg !3581

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3582, !tbaa !1319
  br label %28, !dbg !3584

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3585
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #18 !dbg !3586 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3591, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %1, metadata !3588, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 1, metadata !3589, metadata !DIExpression()), !dbg !3593
  %2 = load i32, ptr @nslots, align 4, !tbaa !941
  call void @llvm.dbg.value(metadata i32 1, metadata !3589, metadata !DIExpression()), !dbg !3593
  %3 = icmp sgt i32 %2, 1, !dbg !3594
  br i1 %3, label %4, label %6, !dbg !3596

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3594
  br label %10, !dbg !3596

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3597
  %8 = load ptr, ptr %7, align 8, !dbg !3597, !tbaa !3599
  %9 = icmp eq ptr %8, @slot0, !dbg !3601
  br i1 %9, label %17, label %16, !dbg !3602

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3589, metadata !DIExpression()), !dbg !3593
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3603
  %13 = load ptr, ptr %12, align 8, !dbg !3603, !tbaa !3599
  tail call void @free(ptr noundef %13) #42, !dbg !3604
  %14 = add nuw nsw i64 %11, 1, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %14, metadata !3589, metadata !DIExpression()), !dbg !3593
  %15 = icmp eq i64 %14, %5, !dbg !3594
  br i1 %15, label %6, label %10, !dbg !3596, !llvm.loop !3606

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3608
  store i64 256, ptr @slotvec0, align 8, !dbg !3610, !tbaa !3611
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3612, !tbaa !3599
  br label %17, !dbg !3613

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3614
  br i1 %18, label %20, label %19, !dbg !3616

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3617
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3619, !tbaa !872
  br label %20, !dbg !3620

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3621, !tbaa !941
  ret void, !dbg !3622
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 !dbg !3623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %1, metadata !3626, metadata !DIExpression()), !dbg !3627
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3628
  ret ptr %3, !dbg !3629
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #18 !dbg !3630 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3634, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %1, metadata !3635, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %2, metadata !3636, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %3, metadata !3637, metadata !DIExpression()), !dbg !3650
  %6 = tail call ptr @__errno_location() #45, !dbg !3651
  %7 = load i32, ptr %6, align 4, !dbg !3651, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %7, metadata !3638, metadata !DIExpression()), !dbg !3650
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3652, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %8, metadata !3639, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3640, metadata !DIExpression()), !dbg !3650
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3653
  br i1 %9, label %10, label %11, !dbg !3653

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !3655
  unreachable, !dbg !3655

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3656, !tbaa !941
  %13 = icmp sgt i32 %12, %0, !dbg !3657
  br i1 %13, label %32, label %14, !dbg !3658

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3659
  call void @llvm.dbg.value(metadata i1 %15, metadata !3641, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3660
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !3661
  %16 = sext i32 %12 to i64, !dbg !3662
  call void @llvm.dbg.value(metadata i64 %16, metadata !3644, metadata !DIExpression()), !dbg !3660
  store i64 %16, ptr %5, align 8, !dbg !3663, !tbaa !1319
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3664
  %18 = add nuw nsw i32 %0, 1, !dbg !3665
  %19 = sub i32 %18, %12, !dbg !3666
  %20 = sext i32 %19 to i64, !dbg !3667
  call void @llvm.dbg.value(metadata ptr %5, metadata !3644, metadata !DIExpression(DW_OP_deref)), !dbg !3660
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !3668
  call void @llvm.dbg.value(metadata ptr %21, metadata !3639, metadata !DIExpression()), !dbg !3650
  store ptr %21, ptr @slotvec, align 8, !dbg !3669, !tbaa !872
  br i1 %15, label %22, label %23, !dbg !3670

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3671, !tbaa.struct !3673
  br label %23, !dbg !3674

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3675, !tbaa !941
  %25 = sext i32 %24 to i64, !dbg !3676
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3676
  %27 = load i64, ptr %5, align 8, !dbg !3677, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %27, metadata !3644, metadata !DIExpression()), !dbg !3660
  %28 = sub nsw i64 %27, %25, !dbg !3678
  %29 = shl i64 %28, 4, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %26, metadata !3062, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 0, metadata !3065, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %29, metadata !3066, metadata !DIExpression()), !dbg !3680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !3682
  %30 = load i64, ptr %5, align 8, !dbg !3683, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %30, metadata !3644, metadata !DIExpression()), !dbg !3660
  %31 = trunc i64 %30 to i32, !dbg !3683
  store i32 %31, ptr @nslots, align 4, !dbg !3684, !tbaa !941
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !3685
  br label %32, !dbg !3686

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3650
  call void @llvm.dbg.value(metadata ptr %33, metadata !3639, metadata !DIExpression()), !dbg !3650
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3687
  %36 = load i64, ptr %35, align 8, !dbg !3688, !tbaa !3611
  call void @llvm.dbg.value(metadata i64 %36, metadata !3645, metadata !DIExpression()), !dbg !3689
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3690
  %38 = load ptr, ptr %37, align 8, !dbg !3690, !tbaa !3599
  call void @llvm.dbg.value(metadata ptr %38, metadata !3647, metadata !DIExpression()), !dbg !3689
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3691
  %40 = load i32, ptr %39, align 4, !dbg !3691, !tbaa !2910
  %41 = or i32 %40, 1, !dbg !3692
  call void @llvm.dbg.value(metadata i32 %41, metadata !3648, metadata !DIExpression()), !dbg !3689
  %42 = load i32, ptr %3, align 8, !dbg !3693, !tbaa !2860
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3694
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3695
  %45 = load ptr, ptr %44, align 8, !dbg !3695, !tbaa !2931
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3696
  %47 = load ptr, ptr %46, align 8, !dbg !3696, !tbaa !2934
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %48, metadata !3649, metadata !DIExpression()), !dbg !3689
  %49 = icmp ugt i64 %36, %48, !dbg !3698
  br i1 %49, label %60, label %50, !dbg !3700

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %51, metadata !3645, metadata !DIExpression()), !dbg !3689
  store i64 %51, ptr %35, align 8, !dbg !3703, !tbaa !3611
  %52 = icmp eq ptr %38, @slot0, !dbg !3704
  br i1 %52, label %54, label %53, !dbg !3706

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !3707
  br label %54, !dbg !3707

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3708
  call void @llvm.dbg.value(metadata ptr %55, metadata !3647, metadata !DIExpression()), !dbg !3689
  store ptr %55, ptr %37, align 8, !dbg !3709, !tbaa !3599
  %56 = load i32, ptr %3, align 8, !dbg !3710, !tbaa !2860
  %57 = load ptr, ptr %44, align 8, !dbg !3711, !tbaa !2931
  %58 = load ptr, ptr %46, align 8, !dbg !3712, !tbaa !2934
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3713
  br label %60, !dbg !3714

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3689
  call void @llvm.dbg.value(metadata ptr %61, metadata !3647, metadata !DIExpression()), !dbg !3689
  store i32 %7, ptr %6, align 4, !dbg !3715, !tbaa !941
  ret ptr %61, !dbg !3716
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #30

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %2, metadata !3723, metadata !DIExpression()), !dbg !3724
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3725
  ret ptr %4, !dbg !3726
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #18 !dbg !3727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3731
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3733
  ret ptr %2, !dbg !3734
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3739, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %1, metadata !3740, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3721, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3742
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3744
  ret ptr %3, !dbg !3745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !3746 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3750, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 %1, metadata !3751, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %2, metadata !3752, metadata !DIExpression()), !dbg !3754
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3755
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3753, metadata !DIExpression()), !dbg !3756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757), !dbg !3760
  call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3766, metadata !DIExpression()), !dbg !3769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3769, !alias.scope !3757
  %5 = icmp eq i32 %1, 10, !dbg !3770
  br i1 %5, label %6, label %7, !dbg !3772

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3773, !noalias !3757
  unreachable, !dbg !3773

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3774, !tbaa !2860, !alias.scope !3757
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3775
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3776
  ret ptr %8, !dbg !3777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #18 !dbg !3778 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 %1, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %2, metadata !3784, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %3, metadata !3785, metadata !DIExpression()), !dbg !3787
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3788
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3786, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3790), !dbg !3793
  call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3766, metadata !DIExpression()), !dbg !3796
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3796, !alias.scope !3790
  %6 = icmp eq i32 %1, 10, !dbg !3797
  br i1 %6, label %7, label %8, !dbg !3798

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3799, !noalias !3790
  unreachable, !dbg !3799

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3800, !tbaa !2860, !alias.scope !3790
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3801
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3802
  ret ptr %9, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 !dbg !3804 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %1, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 0, metadata !3750, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 %0, metadata !3751, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %1, metadata !3752, metadata !DIExpression()), !dbg !3811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3753, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3815), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3766, metadata !DIExpression()), !dbg !3821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3821, !alias.scope !3815
  %4 = icmp eq i32 %0, 10, !dbg !3822
  br i1 %4, label %5, label %6, !dbg !3823

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !3824, !noalias !3815
  unreachable, !dbg !3824

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3825, !tbaa !2860, !alias.scope !3815
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3826
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3827
  ret ptr %7, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3829 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3833, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %1, metadata !3834, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %2, metadata !3835, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 0, metadata !3782, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %0, metadata !3783, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata ptr %1, metadata !3784, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %2, metadata !3785, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3839
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3786, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3841), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3766, metadata !DIExpression()), !dbg !3847
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3847, !alias.scope !3841
  %5 = icmp eq i32 %0, 10, !dbg !3848
  br i1 %5, label %6, label %7, !dbg !3849

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3850, !noalias !3841
  unreachable, !dbg !3850

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3851, !tbaa !2860, !alias.scope !3841
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3852
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3853
  ret ptr %8, !dbg !3854
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #18 !dbg !3855 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3859, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %1, metadata !3860, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8 %2, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3864
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3866, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %4, metadata !2877, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8 %2, metadata !2878, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 1, metadata !2879, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8 %2, metadata !2880, metadata !DIExpression()), !dbg !3868
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3870
  %6 = lshr i8 %2, 5, !dbg !3871
  %7 = zext i8 %6 to i64, !dbg !3871
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3872
  call void @llvm.dbg.value(metadata ptr %8, metadata !2881, metadata !DIExpression()), !dbg !3868
  %9 = and i8 %2, 31, !dbg !3873
  %10 = zext i8 %9 to i32, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %10, metadata !2883, metadata !DIExpression()), !dbg !3868
  %11 = load i32, ptr %8, align 4, !dbg !3874, !tbaa !941
  %12 = lshr i32 %11, %10, !dbg !3875
  call void @llvm.dbg.value(metadata i32 %12, metadata !2884, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3868
  %13 = and i32 %12, 1, !dbg !3876
  %14 = xor i32 %13, 1, !dbg !3876
  %15 = shl nuw i32 %14, %10, !dbg !3877
  %16 = xor i32 %15, %11, !dbg !3878
  store i32 %16, ptr %8, align 4, !dbg !3878, !tbaa !941
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3879
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3880
  ret ptr %17, !dbg !3881
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #18 !dbg !3882 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3886, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i8 %1, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %0, metadata !3859, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 -1, metadata !3860, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i8 %1, metadata !3861, metadata !DIExpression()), !dbg !3889
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3891
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3862, metadata !DIExpression()), !dbg !3892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3893, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %3, metadata !2877, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i8 %1, metadata !2878, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i32 1, metadata !2879, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i8 %1, metadata !2880, metadata !DIExpression()), !dbg !3894
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3896
  %5 = lshr i8 %1, 5, !dbg !3897
  %6 = zext i8 %5 to i64, !dbg !3897
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %7, metadata !2881, metadata !DIExpression()), !dbg !3894
  %8 = and i8 %1, 31, !dbg !3899
  %9 = zext i8 %8 to i32, !dbg !3899
  call void @llvm.dbg.value(metadata i32 %9, metadata !2883, metadata !DIExpression()), !dbg !3894
  %10 = load i32, ptr %7, align 4, !dbg !3900, !tbaa !941
  %11 = lshr i32 %10, %9, !dbg !3901
  call void @llvm.dbg.value(metadata i32 %11, metadata !2884, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3894
  %12 = and i32 %11, 1, !dbg !3902
  %13 = xor i32 %12, 1, !dbg !3902
  %14 = shl nuw i32 %13, %9, !dbg !3903
  %15 = xor i32 %14, %10, !dbg !3904
  store i32 %15, ptr %7, align 4, !dbg !3904, !tbaa !941
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3905
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3906
  ret ptr %16, !dbg !3907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #18 !dbg !3908 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %0, metadata !3886, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8 58, metadata !3887, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr %0, metadata !3859, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 -1, metadata !3860, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8 58, metadata !3861, metadata !DIExpression()), !dbg !3914
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !3916
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3862, metadata !DIExpression()), !dbg !3917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3918, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8 58, metadata !2878, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 1, metadata !2879, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8 58, metadata !2880, metadata !DIExpression()), !dbg !3919
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3921
  call void @llvm.dbg.value(metadata ptr %3, metadata !2881, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 26, metadata !2883, metadata !DIExpression()), !dbg !3919
  %4 = load i32, ptr %3, align 4, !dbg !3922, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %4, metadata !2884, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3919
  %5 = or i32 %4, 67108864, !dbg !3923
  store i32 %5, ptr %3, align 4, !dbg !3923, !tbaa !941
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3924
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !3925
  ret ptr %6, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3927 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3929, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %1, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %0, metadata !3859, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %1, metadata !3860, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8 58, metadata !3861, metadata !DIExpression()), !dbg !3932
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3934
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3862, metadata !DIExpression()), !dbg !3935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3936, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %3, metadata !2877, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 58, metadata !2878, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 1, metadata !2879, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 58, metadata !2880, metadata !DIExpression()), !dbg !3937
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3939
  call void @llvm.dbg.value(metadata ptr %4, metadata !2881, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 26, metadata !2883, metadata !DIExpression()), !dbg !3937
  %5 = load i32, ptr %4, align 4, !dbg !3940, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %5, metadata !2884, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3937
  %6 = or i32 %5, 67108864, !dbg !3941
  store i32 %6, ptr %4, align 4, !dbg !3941, !tbaa !941
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3942
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3943
  ret ptr %7, !dbg !3944
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !3945 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3951
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 %1, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata ptr %2, metadata !3949, metadata !DIExpression()), !dbg !3953
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3954
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 0, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3956
  %5 = icmp eq i32 %1, 10, !dbg !3957
  br i1 %5, label %6, label %7, !dbg !3958

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3959, !noalias !3960
  unreachable, !dbg !3959

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3956
  store i32 %1, ptr %4, align 8, !dbg !3963, !tbaa.struct !3867
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3963
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %4, metadata !2877, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8 58, metadata !2878, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 1, metadata !2879, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8 58, metadata !2880, metadata !DIExpression()), !dbg !3964
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %9, metadata !2881, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 26, metadata !2883, metadata !DIExpression()), !dbg !3964
  %10 = load i32, ptr %9, align 4, !dbg !3967, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %10, metadata !2884, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3964
  %11 = or i32 %10, 67108864, !dbg !3968
  store i32 %11, ptr %9, align 4, !dbg !3968, !tbaa !941
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3969
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3970
  ret ptr %12, !dbg !3971
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !3972 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3976, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr %1, metadata !3977, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr %2, metadata !3978, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr %3, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %1, metadata !3986, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %2, metadata !3987, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %3, metadata !3988, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 -1, metadata !3989, metadata !DIExpression()), !dbg !3991
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3993
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3990, metadata !DIExpression()), !dbg !3994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3995, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %5, metadata !2917, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %1, metadata !2918, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %5, metadata !2917, metadata !DIExpression()), !dbg !3996
  store i32 10, ptr %5, align 8, !dbg !3998, !tbaa !2860
  %6 = icmp ne ptr %1, null, !dbg !3999
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4000
  br i1 %8, label %10, label %9, !dbg !4000

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4001
  unreachable, !dbg !4001

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4002
  store ptr %1, ptr %11, align 8, !dbg !4003, !tbaa !2931
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4004
  store ptr %2, ptr %12, align 8, !dbg !4005, !tbaa !2934
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4006
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4007
  ret ptr %13, !dbg !4008
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #18 !dbg !3982 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %1, metadata !3986, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %2, metadata !3987, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %3, metadata !3988, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %4, metadata !3989, metadata !DIExpression()), !dbg !4009
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !4010
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3990, metadata !DIExpression()), !dbg !4011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4012, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %6, metadata !2917, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr %1, metadata !2918, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr %6, metadata !2917, metadata !DIExpression()), !dbg !4013
  store i32 10, ptr %6, align 8, !dbg !4015, !tbaa !2860
  %7 = icmp ne ptr %1, null, !dbg !4016
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4017
  br i1 %9, label %11, label %10, !dbg !4017

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !4018
  unreachable, !dbg !4018

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4019
  store ptr %1, ptr %12, align 8, !dbg !4020, !tbaa !2931
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4021
  store ptr %2, ptr %13, align 8, !dbg !4022, !tbaa !2934
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4023
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !4024
  ret ptr %14, !dbg !4025
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !4026 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4030, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %1, metadata !4031, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %2, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 0, metadata !3976, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %1, metadata !3978, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %2, metadata !3979, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 0, metadata !3981, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %1, metadata !3987, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %2, metadata !3988, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 -1, metadata !3989, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4038
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3990, metadata !DIExpression()), !dbg !4039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4040, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %4, metadata !2917, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !2918, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %1, metadata !2919, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %4, metadata !2917, metadata !DIExpression()), !dbg !4041
  store i32 10, ptr %4, align 8, !dbg !4043, !tbaa !2860
  %5 = icmp ne ptr %0, null, !dbg !4044
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4045
  br i1 %7, label %9, label %8, !dbg !4045

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !4046
  unreachable, !dbg !4046

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4047
  store ptr %0, ptr %10, align 8, !dbg !4048, !tbaa !2931
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4049
  store ptr %1, ptr %11, align 8, !dbg !4050, !tbaa !2934
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4051
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4052
  ret ptr %12, !dbg !4053
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #18 !dbg !4054 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4058, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %1, metadata !4059, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %2, metadata !4060, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %3, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i32 0, metadata !3981, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata ptr %1, metadata !3987, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata ptr %2, metadata !3988, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i64 %3, metadata !3989, metadata !DIExpression()), !dbg !4063
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !4065
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3990, metadata !DIExpression()), !dbg !4066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4067, !tbaa.struct !3867
  call void @llvm.dbg.value(metadata ptr %5, metadata !2917, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %0, metadata !2918, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %1, metadata !2919, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %5, metadata !2917, metadata !DIExpression()), !dbg !4068
  store i32 10, ptr %5, align 8, !dbg !4070, !tbaa !2860
  %6 = icmp ne ptr %0, null, !dbg !4071
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4072
  br i1 %8, label %10, label %9, !dbg !4072

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4073
  unreachable, !dbg !4073

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4074
  store ptr %0, ptr %11, align 8, !dbg !4075, !tbaa !2931
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4076
  store ptr %1, ptr %12, align 8, !dbg !4077, !tbaa !2934
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4078
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4079
  ret ptr %13, !dbg !4080
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !4081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %1, metadata !4086, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %2, metadata !4087, metadata !DIExpression()), !dbg !4088
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4089
  ret ptr %4, !dbg !4090
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !4091 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %1, metadata !4096, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 0, metadata !4085, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !4086, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4087, metadata !DIExpression()), !dbg !4098
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4100
  ret ptr %3, !dbg !4101
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 !dbg !4102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr %1, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %1, metadata !4086, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 -1, metadata !4087, metadata !DIExpression()), !dbg !4109
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4111
  ret ptr %3, !dbg !4112
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #18 !dbg !4113 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4106, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 0, metadata !4085, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %0, metadata !4086, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 -1, metadata !4087, metadata !DIExpression()), !dbg !4121
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4123
  ret ptr %2, !dbg !4124
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #18 !dbg !4125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %1, metadata !4165, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %2, metadata !4166, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %3, metadata !4167, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %4, metadata !4168, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %5, metadata !4169, metadata !DIExpression()), !dbg !4170
  %7 = icmp eq ptr %1, null, !dbg !4171
  br i1 %7, label %10, label %8, !dbg !4173

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4174
  br label %12, !dbg !4174

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #42, !dbg !4175
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #42, !dbg !4176
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4176
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4177
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #42, !dbg !4178
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #42, !dbg !4178
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4179
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
  ], !dbg !4180

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #42, !dbg !4181
  %21 = load ptr, ptr %4, align 8, !dbg !4181, !tbaa !872
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4181
  br label %147, !dbg !4183

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #42, !dbg !4184
  %25 = load ptr, ptr %4, align 8, !dbg !4184, !tbaa !872
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4184
  %27 = load ptr, ptr %26, align 8, !dbg !4184, !tbaa !872
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4184
  br label %147, !dbg !4185

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #42, !dbg !4186
  %31 = load ptr, ptr %4, align 8, !dbg !4186, !tbaa !872
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4186
  %33 = load ptr, ptr %32, align 8, !dbg !4186, !tbaa !872
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4186
  %35 = load ptr, ptr %34, align 8, !dbg !4186, !tbaa !872
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4186
  br label %147, !dbg !4187

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #42, !dbg !4188
  %39 = load ptr, ptr %4, align 8, !dbg !4188, !tbaa !872
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4188
  %41 = load ptr, ptr %40, align 8, !dbg !4188, !tbaa !872
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4188
  %43 = load ptr, ptr %42, align 8, !dbg !4188, !tbaa !872
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4188
  %45 = load ptr, ptr %44, align 8, !dbg !4188, !tbaa !872
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4188
  br label %147, !dbg !4189

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #42, !dbg !4190
  %49 = load ptr, ptr %4, align 8, !dbg !4190, !tbaa !872
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4190
  %51 = load ptr, ptr %50, align 8, !dbg !4190, !tbaa !872
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4190
  %53 = load ptr, ptr %52, align 8, !dbg !4190, !tbaa !872
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4190
  %55 = load ptr, ptr %54, align 8, !dbg !4190, !tbaa !872
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4190
  %57 = load ptr, ptr %56, align 8, !dbg !4190, !tbaa !872
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4190
  br label %147, !dbg !4191

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #42, !dbg !4192
  %61 = load ptr, ptr %4, align 8, !dbg !4192, !tbaa !872
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4192
  %63 = load ptr, ptr %62, align 8, !dbg !4192, !tbaa !872
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4192
  %65 = load ptr, ptr %64, align 8, !dbg !4192, !tbaa !872
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4192
  %67 = load ptr, ptr %66, align 8, !dbg !4192, !tbaa !872
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4192
  %69 = load ptr, ptr %68, align 8, !dbg !4192, !tbaa !872
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4192
  %71 = load ptr, ptr %70, align 8, !dbg !4192, !tbaa !872
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4192
  br label %147, !dbg !4193

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #42, !dbg !4194
  %75 = load ptr, ptr %4, align 8, !dbg !4194, !tbaa !872
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4194
  %77 = load ptr, ptr %76, align 8, !dbg !4194, !tbaa !872
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4194
  %79 = load ptr, ptr %78, align 8, !dbg !4194, !tbaa !872
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4194
  %81 = load ptr, ptr %80, align 8, !dbg !4194, !tbaa !872
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4194
  %83 = load ptr, ptr %82, align 8, !dbg !4194, !tbaa !872
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4194
  %85 = load ptr, ptr %84, align 8, !dbg !4194, !tbaa !872
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4194
  %87 = load ptr, ptr %86, align 8, !dbg !4194, !tbaa !872
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4194
  br label %147, !dbg !4195

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #42, !dbg !4196
  %91 = load ptr, ptr %4, align 8, !dbg !4196, !tbaa !872
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4196
  %93 = load ptr, ptr %92, align 8, !dbg !4196, !tbaa !872
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4196
  %95 = load ptr, ptr %94, align 8, !dbg !4196, !tbaa !872
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4196
  %97 = load ptr, ptr %96, align 8, !dbg !4196, !tbaa !872
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4196
  %99 = load ptr, ptr %98, align 8, !dbg !4196, !tbaa !872
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4196
  %101 = load ptr, ptr %100, align 8, !dbg !4196, !tbaa !872
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4196
  %103 = load ptr, ptr %102, align 8, !dbg !4196, !tbaa !872
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4196
  %105 = load ptr, ptr %104, align 8, !dbg !4196, !tbaa !872
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4196
  br label %147, !dbg !4197

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #42, !dbg !4198
  %109 = load ptr, ptr %4, align 8, !dbg !4198, !tbaa !872
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4198
  %111 = load ptr, ptr %110, align 8, !dbg !4198, !tbaa !872
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4198
  %113 = load ptr, ptr %112, align 8, !dbg !4198, !tbaa !872
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4198
  %115 = load ptr, ptr %114, align 8, !dbg !4198, !tbaa !872
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4198
  %117 = load ptr, ptr %116, align 8, !dbg !4198, !tbaa !872
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4198
  %119 = load ptr, ptr %118, align 8, !dbg !4198, !tbaa !872
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4198
  %121 = load ptr, ptr %120, align 8, !dbg !4198, !tbaa !872
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4198
  %123 = load ptr, ptr %122, align 8, !dbg !4198, !tbaa !872
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4198
  %125 = load ptr, ptr %124, align 8, !dbg !4198, !tbaa !872
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4198
  br label %147, !dbg !4199

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #42, !dbg !4200
  %129 = load ptr, ptr %4, align 8, !dbg !4200, !tbaa !872
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4200
  %131 = load ptr, ptr %130, align 8, !dbg !4200, !tbaa !872
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4200
  %133 = load ptr, ptr %132, align 8, !dbg !4200, !tbaa !872
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4200
  %135 = load ptr, ptr %134, align 8, !dbg !4200, !tbaa !872
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4200
  %137 = load ptr, ptr %136, align 8, !dbg !4200, !tbaa !872
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4200
  %139 = load ptr, ptr %138, align 8, !dbg !4200, !tbaa !872
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4200
  %141 = load ptr, ptr %140, align 8, !dbg !4200, !tbaa !872
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4200
  %143 = load ptr, ptr %142, align 8, !dbg !4200, !tbaa !872
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4200
  %145 = load ptr, ptr %144, align 8, !dbg !4200, !tbaa !872
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4200
  br label %147, !dbg !4201

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4202
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #18 !dbg !4203 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4207, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %1, metadata !4208, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %3, metadata !4210, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %4, metadata !4211, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 0, metadata !4212, metadata !DIExpression()), !dbg !4213
  br label %6, !dbg !4214

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4216
  call void @llvm.dbg.value(metadata i64 %7, metadata !4212, metadata !DIExpression()), !dbg !4213
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4217
  %9 = load ptr, ptr %8, align 8, !dbg !4217, !tbaa !872
  %10 = icmp eq ptr %9, null, !dbg !4219
  %11 = add i64 %7, 1, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %11, metadata !4212, metadata !DIExpression()), !dbg !4213
  br i1 %10, label %12, label %6, !dbg !4219, !llvm.loop !4221

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4223
  ret void, !dbg !4224
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #18 !dbg !4225 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4240, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %1, metadata !4241, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %2, metadata !4242, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %3, metadata !4243, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4244, metadata !DIExpression()), !dbg !4249
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4246, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 0, metadata !4245, metadata !DIExpression()), !dbg !4248
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4245, metadata !DIExpression()), !dbg !4248
  %10 = icmp sgt i32 %9, -1, !dbg !4252
  br i1 %10, label %18, label %11, !dbg !4252

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4252
  store i32 %12, ptr %7, align 8, !dbg !4252
  %13 = icmp ult i32 %9, -7, !dbg !4252
  br i1 %13, label %14, label %18, !dbg !4252

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4252
  %16 = sext i32 %9 to i64, !dbg !4252
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4252
  br label %22, !dbg !4252

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4252
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4252
  store ptr %21, ptr %4, align 8, !dbg !4252
  br label %22, !dbg !4252

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4252
  %25 = load ptr, ptr %24, align 8, !dbg !4252
  store ptr %25, ptr %6, align 8, !dbg !4255, !tbaa !872
  %26 = icmp eq ptr %25, null, !dbg !4256
  br i1 %26, label %197, label %27, !dbg !4257

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 1, metadata !4245, metadata !DIExpression()), !dbg !4248
  %28 = icmp sgt i32 %23, -1, !dbg !4252
  br i1 %28, label %36, label %29, !dbg !4252

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4252
  store i32 %30, ptr %7, align 8, !dbg !4252
  %31 = icmp ult i32 %23, -7, !dbg !4252
  br i1 %31, label %32, label %36, !dbg !4252

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4252
  %34 = sext i32 %23 to i64, !dbg !4252
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4252
  br label %40, !dbg !4252

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4252
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4252
  store ptr %39, ptr %4, align 8, !dbg !4252
  br label %40, !dbg !4252

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4252
  %43 = load ptr, ptr %42, align 8, !dbg !4252
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4258
  store ptr %43, ptr %44, align 8, !dbg !4255, !tbaa !872
  %45 = icmp eq ptr %43, null, !dbg !4256
  br i1 %45, label %197, label %46, !dbg !4257

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 2, metadata !4245, metadata !DIExpression()), !dbg !4248
  %47 = icmp sgt i32 %41, -1, !dbg !4252
  br i1 %47, label %55, label %48, !dbg !4252

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4252
  store i32 %49, ptr %7, align 8, !dbg !4252
  %50 = icmp ult i32 %41, -7, !dbg !4252
  br i1 %50, label %51, label %55, !dbg !4252

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4252
  %53 = sext i32 %41 to i64, !dbg !4252
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4252
  br label %59, !dbg !4252

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4252
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4252
  store ptr %58, ptr %4, align 8, !dbg !4252
  br label %59, !dbg !4252

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4252
  %62 = load ptr, ptr %61, align 8, !dbg !4252
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4258
  store ptr %62, ptr %63, align 8, !dbg !4255, !tbaa !872
  %64 = icmp eq ptr %62, null, !dbg !4256
  br i1 %64, label %197, label %65, !dbg !4257

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 3, metadata !4245, metadata !DIExpression()), !dbg !4248
  %66 = icmp sgt i32 %60, -1, !dbg !4252
  br i1 %66, label %74, label %67, !dbg !4252

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4252
  store i32 %68, ptr %7, align 8, !dbg !4252
  %69 = icmp ult i32 %60, -7, !dbg !4252
  br i1 %69, label %70, label %74, !dbg !4252

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4252
  %72 = sext i32 %60 to i64, !dbg !4252
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4252
  br label %78, !dbg !4252

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4252
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4252
  store ptr %77, ptr %4, align 8, !dbg !4252
  br label %78, !dbg !4252

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4252
  %81 = load ptr, ptr %80, align 8, !dbg !4252
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4258
  store ptr %81, ptr %82, align 8, !dbg !4255, !tbaa !872
  %83 = icmp eq ptr %81, null, !dbg !4256
  br i1 %83, label %197, label %84, !dbg !4257

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 4, metadata !4245, metadata !DIExpression()), !dbg !4248
  %85 = icmp sgt i32 %79, -1, !dbg !4252
  br i1 %85, label %93, label %86, !dbg !4252

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4252
  store i32 %87, ptr %7, align 8, !dbg !4252
  %88 = icmp ult i32 %79, -7, !dbg !4252
  br i1 %88, label %89, label %93, !dbg !4252

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4252
  %91 = sext i32 %79 to i64, !dbg !4252
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4252
  br label %97, !dbg !4252

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4252
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4252
  store ptr %96, ptr %4, align 8, !dbg !4252
  br label %97, !dbg !4252

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4252
  %100 = load ptr, ptr %99, align 8, !dbg !4252
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4258
  store ptr %100, ptr %101, align 8, !dbg !4255, !tbaa !872
  %102 = icmp eq ptr %100, null, !dbg !4256
  br i1 %102, label %197, label %103, !dbg !4257

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 5, metadata !4245, metadata !DIExpression()), !dbg !4248
  %104 = icmp sgt i32 %98, -1, !dbg !4252
  br i1 %104, label %112, label %105, !dbg !4252

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4252
  store i32 %106, ptr %7, align 8, !dbg !4252
  %107 = icmp ult i32 %98, -7, !dbg !4252
  br i1 %107, label %108, label %112, !dbg !4252

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4252
  %110 = sext i32 %98 to i64, !dbg !4252
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4252
  br label %116, !dbg !4252

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4252
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4252
  store ptr %115, ptr %4, align 8, !dbg !4252
  br label %116, !dbg !4252

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4252
  %119 = load ptr, ptr %118, align 8, !dbg !4252
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4258
  store ptr %119, ptr %120, align 8, !dbg !4255, !tbaa !872
  %121 = icmp eq ptr %119, null, !dbg !4256
  br i1 %121, label %197, label %122, !dbg !4257

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 6, metadata !4245, metadata !DIExpression()), !dbg !4248
  %123 = icmp sgt i32 %117, -1, !dbg !4252
  br i1 %123, label %131, label %124, !dbg !4252

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4252
  store i32 %125, ptr %7, align 8, !dbg !4252
  %126 = icmp ult i32 %117, -7, !dbg !4252
  br i1 %126, label %127, label %131, !dbg !4252

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4252
  %129 = sext i32 %117 to i64, !dbg !4252
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4252
  br label %135, !dbg !4252

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4252
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4252
  store ptr %134, ptr %4, align 8, !dbg !4252
  br label %135, !dbg !4252

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4252
  %138 = load ptr, ptr %137, align 8, !dbg !4252
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4258
  store ptr %138, ptr %139, align 8, !dbg !4255, !tbaa !872
  %140 = icmp eq ptr %138, null, !dbg !4256
  br i1 %140, label %197, label %141, !dbg !4257

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 7, metadata !4245, metadata !DIExpression()), !dbg !4248
  %142 = icmp sgt i32 %136, -1, !dbg !4252
  br i1 %142, label %150, label %143, !dbg !4252

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4252
  store i32 %144, ptr %7, align 8, !dbg !4252
  %145 = icmp ult i32 %136, -7, !dbg !4252
  br i1 %145, label %146, label %150, !dbg !4252

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4252
  %148 = sext i32 %136 to i64, !dbg !4252
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4252
  br label %154, !dbg !4252

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4252
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4252
  store ptr %153, ptr %4, align 8, !dbg !4252
  br label %154, !dbg !4252

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4252
  %157 = load ptr, ptr %156, align 8, !dbg !4252
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4258
  store ptr %157, ptr %158, align 8, !dbg !4255, !tbaa !872
  %159 = icmp eq ptr %157, null, !dbg !4256
  br i1 %159, label %197, label %160, !dbg !4257

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 8, metadata !4245, metadata !DIExpression()), !dbg !4248
  %161 = icmp sgt i32 %155, -1, !dbg !4252
  br i1 %161, label %169, label %162, !dbg !4252

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4252
  store i32 %163, ptr %7, align 8, !dbg !4252
  %164 = icmp ult i32 %155, -7, !dbg !4252
  br i1 %164, label %165, label %169, !dbg !4252

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4252
  %167 = sext i32 %155 to i64, !dbg !4252
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4252
  br label %173, !dbg !4252

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4252
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4252
  store ptr %172, ptr %4, align 8, !dbg !4252
  br label %173, !dbg !4252

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4252
  %176 = load ptr, ptr %175, align 8, !dbg !4252
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4258
  store ptr %176, ptr %177, align 8, !dbg !4255, !tbaa !872
  %178 = icmp eq ptr %176, null, !dbg !4256
  br i1 %178, label %197, label %179, !dbg !4257

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 9, metadata !4245, metadata !DIExpression()), !dbg !4248
  %180 = icmp sgt i32 %174, -1, !dbg !4252
  br i1 %180, label %188, label %181, !dbg !4252

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4252
  store i32 %182, ptr %7, align 8, !dbg !4252
  %183 = icmp ult i32 %174, -7, !dbg !4252
  br i1 %183, label %184, label %188, !dbg !4252

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4252
  %186 = sext i32 %174 to i64, !dbg !4252
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4252
  br label %191, !dbg !4252

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4252
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4252
  store ptr %190, ptr %4, align 8, !dbg !4252
  br label %191, !dbg !4252

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4252
  %193 = load ptr, ptr %192, align 8, !dbg !4252
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4258
  store ptr %193, ptr %194, align 8, !dbg !4255, !tbaa !872
  %195 = icmp eq ptr %193, null, !dbg !4256
  %196 = select i1 %195, i64 9, i64 10, !dbg !4257
  br label %197, !dbg !4257

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4259
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4260
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4261
  ret void, !dbg !4261
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #18 !dbg !4262 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4266, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %1, metadata !4267, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %3, metadata !4269, metadata !DIExpression()), !dbg !4271
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !4272
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4270, metadata !DIExpression()), !dbg !4273
  call void @llvm.va_start(ptr nonnull %5), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !4275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4275, !tbaa.struct !2240
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4275
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !4275
  call void @llvm.va_end(ptr nonnull %5), !dbg !4276
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !4277
  ret void, !dbg !4277
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #18 !dbg !4278 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4279, !tbaa !872
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4279
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #42, !dbg !4280
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #42, !dbg !4280
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #42, !dbg !4281
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #42, !dbg !4281
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #42, !dbg !4282
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #42, !dbg !4282
  ret void, !dbg !4283
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4284 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4289, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %2, metadata !4291, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr %0, metadata !4293, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %2, metadata !4297, metadata !DIExpression()), !dbg !4298
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4300
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4306
  %5 = icmp eq ptr %4, null, !dbg !4308
  br i1 %5, label %6, label %7, !dbg !4310

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4311
  unreachable, !dbg !4311

7:                                                ; preds = %3
  ret ptr %4, !dbg !4312
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4293, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %2, metadata !4297, metadata !DIExpression()), !dbg !4313
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4315
  %5 = icmp eq ptr %4, null, !dbg !4317
  br i1 %5, label %6, label %7, !dbg !4318

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4319
  unreachable, !dbg !4319

7:                                                ; preds = %3
  ret ptr %4, !dbg !4320
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4321 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4323, metadata !DIExpression()), !dbg !4324
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4325
  call void @llvm.dbg.value(metadata ptr %2, metadata !4301, metadata !DIExpression()), !dbg !4326
  %3 = icmp eq ptr %2, null, !dbg !4328
  br i1 %3, label %4, label %5, !dbg !4329

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4330
  unreachable, !dbg !4330

5:                                                ; preds = %1
  ret ptr %2, !dbg !4331
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4332 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4334, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %0, metadata !4336, metadata !DIExpression()), !dbg !4339
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4341
  call void @llvm.dbg.value(metadata ptr %2, metadata !4301, metadata !DIExpression()), !dbg !4342
  %3 = icmp eq ptr %2, null, !dbg !4344
  br i1 %3, label %4, label %5, !dbg !4345

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4346
  unreachable, !dbg !4346

5:                                                ; preds = %1
  ret ptr %2, !dbg !4347
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4348 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 %0, metadata !4323, metadata !DIExpression()), !dbg !4354
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4356
  call void @llvm.dbg.value(metadata ptr %2, metadata !4301, metadata !DIExpression()), !dbg !4357
  %3 = icmp eq ptr %2, null, !dbg !4359
  br i1 %3, label %4, label %5, !dbg !4360

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4361
  unreachable, !dbg !4361

5:                                                ; preds = %1
  ret ptr %2, !dbg !4362
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4363 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4367, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %1, metadata !4368, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %1, metadata !4374, metadata !DIExpression()), !dbg !4375
  %3 = icmp eq i64 %1, 0, !dbg !4377
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4377
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4378
  call void @llvm.dbg.value(metadata ptr %5, metadata !4301, metadata !DIExpression()), !dbg !4379
  %6 = icmp eq ptr %5, null, !dbg !4381
  br i1 %6, label %7, label %8, !dbg !4382

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4383
  unreachable, !dbg !4383

8:                                                ; preds = %2
  ret ptr %5, !dbg !4384
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4385 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4386 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4390, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %1, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i64 %1, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %1, metadata !4374, metadata !DIExpression()), !dbg !4399
  %3 = icmp eq i64 %1, 0, !dbg !4401
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4401
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4402
  call void @llvm.dbg.value(metadata ptr %5, metadata !4301, metadata !DIExpression()), !dbg !4403
  %6 = icmp eq ptr %5, null, !dbg !4405
  br i1 %6, label %7, label %8, !dbg !4406

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4407
  unreachable, !dbg !4407

8:                                                ; preds = %2
  ret ptr %5, !dbg !4408
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4409 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4413, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64 %1, metadata !4414, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64 %2, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata ptr %0, metadata !4417, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %1, metadata !4420, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %2, metadata !4421, metadata !DIExpression()), !dbg !4422
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4424
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4425
  %5 = icmp eq ptr %4, null, !dbg !4427
  br i1 %5, label %6, label %7, !dbg !4428

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4429
  unreachable, !dbg !4429

7:                                                ; preds = %3
  ret ptr %4, !dbg !4430
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4431 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4435, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64 %1, metadata !4436, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata ptr null, metadata !4293, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %0, metadata !4296, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %1, metadata !4297, metadata !DIExpression()), !dbg !4438
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4440
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4441
  %4 = icmp eq ptr %3, null, !dbg !4443
  br i1 %4, label %5, label %6, !dbg !4444

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4445
  unreachable, !dbg !4445

6:                                                ; preds = %2
  ret ptr %3, !dbg !4446
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4447 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4451, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %1, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata ptr null, metadata !4413, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %0, metadata !4414, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4415, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata ptr null, metadata !4417, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %0, metadata !4420, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %1, metadata !4421, metadata !DIExpression()), !dbg !4456
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4459
  %4 = icmp eq ptr %3, null, !dbg !4461
  br i1 %4, label %5, label %6, !dbg !4462

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4463
  unreachable, !dbg !4463

6:                                                ; preds = %2
  ret ptr %3, !dbg !4464
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #18 !dbg !4465 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4469, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata ptr %1, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata ptr %0, metadata !809, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 1, metadata !811, metadata !DIExpression()), !dbg !4472
  %3 = load i64, ptr %1, align 8, !dbg !4474, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %3, metadata !812, metadata !DIExpression()), !dbg !4472
  %4 = icmp eq ptr %0, null, !dbg !4475
  br i1 %4, label %5, label %8, !dbg !4477

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4478
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4481
  br label %15, !dbg !4481

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4482
  %10 = add nuw i64 %9, 1, !dbg !4482
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4482
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4482
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4482
  call void @llvm.dbg.value(metadata i64 %13, metadata !812, metadata !DIExpression()), !dbg !4472
  br i1 %12, label %14, label %15, !dbg !4485

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4486
  unreachable, !dbg !4486

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4472
  call void @llvm.dbg.value(metadata i64 %16, metadata !812, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr %0, metadata !4293, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %16, metadata !4296, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 1, metadata !4297, metadata !DIExpression()), !dbg !4487
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4489
  call void @llvm.dbg.value(metadata ptr %17, metadata !4301, metadata !DIExpression()), !dbg !4490
  %18 = icmp eq ptr %17, null, !dbg !4492
  br i1 %18, label %19, label %20, !dbg !4493

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4494
  unreachable, !dbg !4494

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !809, metadata !DIExpression()), !dbg !4472
  store i64 %16, ptr %1, align 8, !dbg !4495, !tbaa !1319
  ret ptr %17, !dbg !4496
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !804 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !809, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %2, metadata !811, metadata !DIExpression()), !dbg !4497
  %4 = load i64, ptr %1, align 8, !dbg !4498, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %4, metadata !812, metadata !DIExpression()), !dbg !4497
  %5 = icmp eq ptr %0, null, !dbg !4499
  br i1 %5, label %6, label %13, !dbg !4500

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4501
  br i1 %7, label %8, label %20, !dbg !4502

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %9, metadata !812, metadata !DIExpression()), !dbg !4497
  %10 = icmp ugt i64 %2, 128, !dbg !4505
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %12, metadata !812, metadata !DIExpression()), !dbg !4497
  br label %20, !dbg !4507

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4508
  %15 = add nuw i64 %14, 1, !dbg !4508
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4508
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4508
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %18, metadata !812, metadata !DIExpression()), !dbg !4497
  br i1 %17, label %19, label %20, !dbg !4509

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4510
  unreachable, !dbg !4510

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4497
  call void @llvm.dbg.value(metadata i64 %21, metadata !812, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %0, metadata !4293, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %21, metadata !4296, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %2, metadata !4297, metadata !DIExpression()), !dbg !4511
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4513
  call void @llvm.dbg.value(metadata ptr %22, metadata !4301, metadata !DIExpression()), !dbg !4514
  %23 = icmp eq ptr %22, null, !dbg !4516
  br i1 %23, label %24, label %25, !dbg !4517

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4518
  unreachable, !dbg !4518

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !809, metadata !DIExpression()), !dbg !4497
  store i64 %21, ptr %1, align 8, !dbg !4519, !tbaa !1319
  ret ptr %22, !dbg !4520
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #18 !dbg !816 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !821, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata ptr %1, metadata !822, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %2, metadata !823, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %3, metadata !824, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %4, metadata !825, metadata !DIExpression()), !dbg !4521
  %6 = load i64, ptr %1, align 8, !dbg !4522, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %6, metadata !826, metadata !DIExpression()), !dbg !4521
  %7 = ashr i64 %6, 1, !dbg !4523
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4523
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4523
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4523
  call void @llvm.dbg.value(metadata i64 %10, metadata !827, metadata !DIExpression()), !dbg !4521
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %11, metadata !827, metadata !DIExpression()), !dbg !4521
  %12 = icmp sgt i64 %3, -1, !dbg !4526
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4528
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %15, metadata !827, metadata !DIExpression()), !dbg !4521
  %16 = icmp slt i64 %4, 0, !dbg !4529
  br i1 %16, label %17, label %30, !dbg !4529

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4529
  br i1 %18, label %19, label %24, !dbg !4529

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4529
  %21 = udiv i64 9223372036854775807, %20, !dbg !4529
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4529
  br i1 %23, label %46, label %43, !dbg !4529

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4529
  br i1 %25, label %43, label %26, !dbg !4529

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4529
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4529
  %29 = icmp ult i64 %28, %15, !dbg !4529
  br i1 %29, label %46, label %43, !dbg !4529

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4529
  br i1 %31, label %43, label %32, !dbg !4529

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4529
  br i1 %33, label %34, label %40, !dbg !4529

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4529
  br i1 %35, label %43, label %36, !dbg !4529

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4529
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4529
  %39 = icmp ult i64 %38, %4, !dbg !4529
  br i1 %39, label %46, label %43, !dbg !4529

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4529
  br i1 %42, label %46, label %43, !dbg !4529

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !828, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4521
  %44 = mul i64 %15, %4, !dbg !4529
  call void @llvm.dbg.value(metadata i64 %44, metadata !828, metadata !DIExpression()), !dbg !4521
  %45 = icmp slt i64 %44, 128, !dbg !4529
  br i1 %45, label %46, label %52, !dbg !4529

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !829, metadata !DIExpression()), !dbg !4521
  %48 = sdiv i64 %47, %4, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %48, metadata !827, metadata !DIExpression()), !dbg !4521
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4533
  call void @llvm.dbg.value(metadata i64 %51, metadata !828, metadata !DIExpression()), !dbg !4521
  br label %52, !dbg !4534

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4521
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4521
  call void @llvm.dbg.value(metadata i64 %54, metadata !828, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %53, metadata !827, metadata !DIExpression()), !dbg !4521
  %55 = icmp eq ptr %0, null, !dbg !4535
  br i1 %55, label %56, label %57, !dbg !4537

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4538, !tbaa !1319
  br label %57, !dbg !4539

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4540
  %59 = icmp slt i64 %58, %2, !dbg !4542
  br i1 %59, label %60, label %97, !dbg !4543

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4544
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4544
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4544
  call void @llvm.dbg.value(metadata i64 %63, metadata !827, metadata !DIExpression()), !dbg !4521
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4545
  br i1 %66, label %96, label %67, !dbg !4545

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4546

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4546
  br i1 %69, label %70, label %75, !dbg !4546

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4546
  %72 = udiv i64 9223372036854775807, %71, !dbg !4546
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4546
  br i1 %74, label %96, label %94, !dbg !4546

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4546
  br i1 %76, label %94, label %77, !dbg !4546

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4546
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4546
  %80 = icmp ult i64 %79, %63, !dbg !4546
  br i1 %80, label %96, label %94, !dbg !4546

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4546
  br i1 %82, label %94, label %83, !dbg !4546

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4546
  br i1 %84, label %85, label %91, !dbg !4546

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4546
  br i1 %86, label %94, label %87, !dbg !4546

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4546
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4546
  %90 = icmp ult i64 %89, %4, !dbg !4546
  br i1 %90, label %96, label %94, !dbg !4546

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4546
  br i1 %93, label %96, label %94, !dbg !4546

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !828, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4521
  %95 = mul i64 %63, %4, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %95, metadata !828, metadata !DIExpression()), !dbg !4521
  br label %97, !dbg !4547

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #44, !dbg !4548
  unreachable, !dbg !4548

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4521
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4521
  call void @llvm.dbg.value(metadata i64 %99, metadata !828, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %98, metadata !827, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata ptr %0, metadata !4367, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %99, metadata !4368, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %99, metadata !4374, metadata !DIExpression()), !dbg !4551
  %100 = icmp eq i64 %99, 0, !dbg !4553
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4553
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #49, !dbg !4554
  call void @llvm.dbg.value(metadata ptr %102, metadata !4301, metadata !DIExpression()), !dbg !4555
  %103 = icmp eq ptr %102, null, !dbg !4557
  br i1 %103, label %104, label %105, !dbg !4558

104:                                              ; preds = %97
  tail call void @xalloc_die() #44, !dbg !4559
  unreachable, !dbg !4559

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !821, metadata !DIExpression()), !dbg !4521
  store i64 %98, ptr %1, align 8, !dbg !4560, !tbaa !1319
  ret ptr %102, !dbg !4561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4562 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4564, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %0, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 1, metadata !4569, metadata !DIExpression()), !dbg !4570
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4572
  call void @llvm.dbg.value(metadata ptr %2, metadata !4301, metadata !DIExpression()), !dbg !4573
  %3 = icmp eq ptr %2, null, !dbg !4575
  br i1 %3, label %4, label %5, !dbg !4576

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4577
  unreachable, !dbg !4577

5:                                                ; preds = %1
  ret ptr %2, !dbg !4578
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4579 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4567 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4566, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %1, metadata !4569, metadata !DIExpression()), !dbg !4580
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4581
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4582
  %4 = icmp eq ptr %3, null, !dbg !4584
  br i1 %4, label %5, label %6, !dbg !4585

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4586
  unreachable, !dbg !4586

6:                                                ; preds = %2
  ret ptr %3, !dbg !4587
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4588 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4590, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %0, metadata !4592, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 1, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 %0, metadata !4598, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 1, metadata !4601, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 %0, metadata !4598, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 1, metadata !4601, metadata !DIExpression()), !dbg !4602
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4604
  call void @llvm.dbg.value(metadata ptr %2, metadata !4301, metadata !DIExpression()), !dbg !4605
  %3 = icmp eq ptr %2, null, !dbg !4607
  br i1 %3, label %4, label %5, !dbg !4608

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4609
  unreachable, !dbg !4609

5:                                                ; preds = %1
  ret ptr %2, !dbg !4610
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4593 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4592, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %1, metadata !4595, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %0, metadata !4598, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %1, metadata !4601, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %0, metadata !4598, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %1, metadata !4601, metadata !DIExpression()), !dbg !4612
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4614
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4615
  %4 = icmp eq ptr %3, null, !dbg !4617
  br i1 %4, label %5, label %6, !dbg !4618

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4619
  unreachable, !dbg !4619

6:                                                ; preds = %2
  ret ptr %3, !dbg !4620
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4621 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %1, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %1, metadata !4323, metadata !DIExpression()), !dbg !4628
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4630
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4631
  %4 = icmp eq ptr %3, null, !dbg !4633
  br i1 %4, label %5, label %6, !dbg !4634

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4635
  unreachable, !dbg !4635

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4636, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %1, metadata !4643, metadata !DIExpression()), !dbg !4644
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4646
  ret ptr %3, !dbg !4647
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4648 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4652, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata i64 %1, metadata !4653, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata i64 %1, metadata !4334, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4336, metadata !DIExpression()), !dbg !4657
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4659
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4660
  %4 = icmp eq ptr %3, null, !dbg !4662
  br i1 %4, label %5, label %6, !dbg !4663

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4664
  unreachable, !dbg !4664

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4636, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i64 %1, metadata !4643, metadata !DIExpression()), !dbg !4665
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4667
  ret ptr %3, !dbg !4668
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #18 !dbg !4669 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4673, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %1, metadata !4674, metadata !DIExpression()), !dbg !4676
  %3 = add nsw i64 %1, 1, !dbg !4677
  call void @llvm.dbg.value(metadata i64 %3, metadata !4334, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %3, metadata !4336, metadata !DIExpression()), !dbg !4680
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4682
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4683
  %5 = icmp eq ptr %4, null, !dbg !4685
  br i1 %5, label %6, label %7, !dbg !4686

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4687
  unreachable, !dbg !4687

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4675, metadata !DIExpression()), !dbg !4676
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4688
  store i8 0, ptr %8, align 1, !dbg !4689, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %4, metadata !4636, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata i64 %1, metadata !4643, metadata !DIExpression()), !dbg !4690
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4692
  ret ptr %4, !dbg !4693
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !dbg !4694 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4696, metadata !DIExpression()), !dbg !4697
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !4698
  %3 = add i64 %2, 1, !dbg !4699
  call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %3, metadata !4626, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %3, metadata !4323, metadata !DIExpression()), !dbg !4702
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4704
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4705
  %5 = icmp eq ptr %4, null, !dbg !4707
  br i1 %5, label %6, label %7, !dbg !4708

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4709
  unreachable, !dbg !4709

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4636, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %3, metadata !4643, metadata !DIExpression()), !dbg !4710
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !4712
  ret ptr %4, !dbg !4713
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4714 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4719, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %1, metadata !4716, metadata !DIExpression()), !dbg !4720
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #42, !dbg !4719
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #42, !dbg !4719
  %3 = icmp eq i32 %1, 0, !dbg !4719
  tail call void @llvm.assume(i1 %3), !dbg !4719
  tail call void @abort() #44, !dbg !4721
  unreachable, !dbg !4721
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #18 !dbg !4722 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4728, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata ptr %1, metadata !4729, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %2, metadata !4730, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata ptr %3, metadata !4731, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata ptr %4, metadata !4732, metadata !DIExpression()), !dbg !4742
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !4743
  %7 = icmp eq ptr %1, null, !dbg !4744
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4744
  call void @llvm.dbg.value(metadata ptr %8, metadata !4734, metadata !DIExpression()), !dbg !4742
  %9 = tail call ptr @__errno_location() #45, !dbg !4745
  store i32 0, ptr %9, align 4, !dbg !4746, !tbaa !941
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #42, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %10, metadata !4735, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 0, metadata !4736, metadata !DIExpression()), !dbg !4742
  %11 = load ptr, ptr %8, align 8, !dbg !4748, !tbaa !872
  %12 = icmp eq ptr %11, %0, !dbg !4750
  br i1 %12, label %13, label %22, !dbg !4751

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4752
  br i1 %14, label %990, label %15, !dbg !4755

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4756, !tbaa !950
  %17 = icmp eq i8 %16, 0, !dbg !4756
  br i1 %17, label %990, label %18, !dbg !4757

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !4756
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #43, !dbg !4758
  %21 = icmp eq ptr %20, null, !dbg !4758
  br i1 %21, label %990, label %29, !dbg !4759

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4760, !tbaa !941
  switch i32 %23, label %990 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4762

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !4736, metadata !DIExpression()), !dbg !4742
  br label %25, !dbg !4763

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4742
  call void @llvm.dbg.value(metadata i32 %26, metadata !4736, metadata !DIExpression()), !dbg !4742
  %27 = icmp eq ptr %4, null, !dbg !4765
  br i1 %27, label %28, label %29, !dbg !4767

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !4735, metadata !DIExpression()), !dbg !4742
  store i64 %10, ptr %3, align 8, !dbg !4768, !tbaa !1319
  br label %990, !dbg !4770

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4771, !tbaa !950
  %33 = icmp eq i8 %32, 0, !dbg !4772
  br i1 %33, label %987, label %34, !dbg !4773

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !4771
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #43, !dbg !4774
  %37 = icmp eq ptr %36, null, !dbg !4774
  br i1 %37, label %38, label %40, !dbg !4776

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %10, metadata !4735, metadata !DIExpression()), !dbg !4742
  store i64 %31, ptr %3, align 8, !dbg !4777, !tbaa !1319
  %39 = or i32 %30, 2, !dbg !4779
  br label %990, !dbg !4780

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 1024, metadata !4737, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 1, metadata !4740, metadata !DIExpression()), !dbg !4781
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
  ], !dbg !4782

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #43, !dbg !4783
  %43 = icmp eq ptr %42, null, !dbg !4783
  br i1 %43, label %53, label %44, !dbg !4786

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4787
  %46 = load i8, ptr %45, align 1, !dbg !4787, !tbaa !950
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4788

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4789
  %49 = load i8, ptr %48, align 1, !dbg !4789, !tbaa !950
  %50 = icmp eq i8 %49, 66, !dbg !4792
  %51 = select i1 %50, i64 3, i64 1, !dbg !4793
  br label %53, !dbg !4793

52:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !4737, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 2, metadata !4740, metadata !DIExpression()), !dbg !4781
  br label %53, !dbg !4794

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ]
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4740, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 poison, metadata !4737, metadata !DIExpression()), !dbg !4781
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
  ], !dbg !4795

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 7, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 6, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %57 = icmp slt i64 %31, 0, !dbg !4816
  br i1 %57, label %864, label %870, !dbg !4816

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 8, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 7, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %59 = icmp slt i64 %31, 0, !dbg !4822
  br i1 %59, label %736, label %742, !dbg !4822

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 9, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 8, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %61 = icmp slt i64 %31, 0, !dbg !4827
  br i1 %61, label %517, label %523, !dbg !4827

62:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 10, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 9, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %63 = icmp slt i64 %31, 0, !dbg !4832
  br i1 %63, label %357, label %363, !dbg !4832

64:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 5, metadata !4803, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 4, metadata !4803, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4835
  %65 = icmp slt i64 %31, 0, !dbg !4837
  br i1 %65, label %277, label %283, !dbg !4837

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 6, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 5, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4840
  %67 = icmp slt i64 %31, 0, !dbg !4842
  br i1 %67, label %84, label %90, !dbg !4842

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 512, metadata !4812, metadata !DIExpression()), !dbg !4843
  %69 = icmp slt i64 %31, 0, !dbg !4845
  br i1 %69, label %70, label %72, !dbg !4845

70:                                               ; preds = %68
  %71 = icmp ult i64 %31, -18014398509481984, !dbg !4845
  br i1 %71, label %976, label %74, !dbg !4845

72:                                               ; preds = %68
  %73 = icmp ugt i64 %31, 18014398509481983, !dbg !4845
  br i1 %73, label %976, label %74, !dbg !4845

74:                                               ; preds = %70, %72
  %75 = shl nsw i64 %31, 9, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %75, metadata !4813, metadata !DIExpression()), !dbg !4843
  br label %976, !dbg !4846

76:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i32 1024, metadata !4812, metadata !DIExpression()), !dbg !4847
  %77 = icmp slt i64 %31, 0, !dbg !4849
  br i1 %77, label %78, label %80, !dbg !4849

78:                                               ; preds = %76
  %79 = icmp ult i64 %31, -9007199254740992, !dbg !4849
  br i1 %79, label %976, label %82, !dbg !4849

80:                                               ; preds = %76
  %81 = icmp ugt i64 %31, 9007199254740991, !dbg !4849
  br i1 %81, label %976, label %82, !dbg !4849

82:                                               ; preds = %78, %80
  %83 = shl nsw i64 %31, 10, !dbg !4849
  call void @llvm.dbg.value(metadata i64 %83, metadata !4813, metadata !DIExpression()), !dbg !4847
  br label %976, !dbg !4850

84:                                               ; preds = %66
  %85 = icmp eq i64 %31, -1, !dbg !4842
  br i1 %85, label %93, label %86, !dbg !4842

86:                                               ; preds = %84
  %87 = sub i64 0, %31, !dbg !4842
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4842
  %89 = icmp ult i64 %88, %54, !dbg !4842
  br i1 %89, label %101, label %93, !dbg !4842

90:                                               ; preds = %66
  %91 = udiv i64 9223372036854775807, %54, !dbg !4842
  %92 = icmp ult i64 %91, %31, !dbg !4842
  br i1 %92, label %96, label %93, !dbg !4842

93:                                               ; preds = %84, %86, %90
  %94 = mul i64 %31, %54, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %94, metadata !4813, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 4, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4840
  %95 = icmp slt i64 %94, 0, !dbg !4842
  br i1 %95, label %101, label %96, !dbg !4842

96:                                               ; preds = %90, %93
  %97 = phi i32 [ 0, %93 ], [ 1, %90 ]
  %98 = phi i64 [ %94, %93 ], [ 9223372036854775807, %90 ]
  %99 = udiv i64 9223372036854775807, %54, !dbg !4842
  %100 = icmp ult i64 %99, %98, !dbg !4842
  br i1 %100, label %112, label %107, !dbg !4842

101:                                              ; preds = %86, %93
  %102 = phi i32 [ 0, %93 ], [ 1, %86 ]
  %103 = phi i64 [ %94, %93 ], [ -9223372036854775808, %86 ]
  %104 = sub i64 0, %103, !dbg !4842
  %105 = udiv i64 -9223372036854775808, %104, !dbg !4842
  %106 = icmp ult i64 %105, %54, !dbg !4842
  br i1 %106, label %117, label %107, !dbg !4842

107:                                              ; preds = %96, %101
  %108 = phi i32 [ %102, %101 ], [ %97, %96 ]
  %109 = phi i64 [ %103, %101 ], [ %98, %96 ]
  %110 = mul i64 %109, %54, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %110, metadata !4813, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %108, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4840
  %111 = icmp slt i64 %110, 0, !dbg !4842
  br i1 %111, label %117, label %112, !dbg !4842

112:                                              ; preds = %96, %107
  %113 = phi i32 [ %108, %107 ], [ 1, %96 ]
  %114 = phi i64 [ %110, %107 ], [ 9223372036854775807, %96 ]
  %115 = udiv i64 9223372036854775807, %54, !dbg !4842
  %116 = icmp ult i64 %115, %114, !dbg !4842
  br i1 %116, label %128, label %123, !dbg !4842

117:                                              ; preds = %101, %107
  %118 = phi i32 [ %108, %107 ], [ 1, %101 ]
  %119 = phi i64 [ %110, %107 ], [ -9223372036854775808, %101 ]
  %120 = sub i64 0, %119, !dbg !4842
  %121 = udiv i64 -9223372036854775808, %120, !dbg !4842
  %122 = icmp ult i64 %121, %54, !dbg !4842
  br i1 %122, label %133, label %123, !dbg !4842

123:                                              ; preds = %112, %117
  %124 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %125 = phi i64 [ %119, %117 ], [ %114, %112 ]
  %126 = mul i64 %125, %54, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %126, metadata !4813, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %124, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4840
  %127 = icmp slt i64 %126, 0, !dbg !4842
  br i1 %127, label %133, label %128, !dbg !4842

128:                                              ; preds = %112, %123
  %129 = phi i32 [ %124, %123 ], [ 1, %112 ]
  %130 = phi i64 [ %126, %123 ], [ 9223372036854775807, %112 ]
  %131 = udiv i64 9223372036854775807, %54, !dbg !4842
  %132 = icmp ult i64 %131, %130, !dbg !4842
  br i1 %132, label %144, label %139, !dbg !4842

133:                                              ; preds = %117, %123
  %134 = phi i32 [ %124, %123 ], [ 1, %117 ]
  %135 = phi i64 [ %126, %123 ], [ -9223372036854775808, %117 ]
  %136 = sub i64 0, %135, !dbg !4842
  %137 = udiv i64 -9223372036854775808, %136, !dbg !4842
  %138 = icmp ult i64 %137, %54, !dbg !4842
  br i1 %138, label %149, label %139, !dbg !4842

139:                                              ; preds = %128, %133
  %140 = phi i32 [ %134, %133 ], [ %129, %128 ]
  %141 = phi i64 [ %135, %133 ], [ %130, %128 ]
  %142 = mul i64 %141, %54, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %142, metadata !4813, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %140, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4840
  %143 = icmp slt i64 %142, 0, !dbg !4842
  br i1 %143, label %149, label %144, !dbg !4842

144:                                              ; preds = %128, %139
  %145 = phi i32 [ %140, %139 ], [ 1, %128 ]
  %146 = phi i64 [ %142, %139 ], [ 9223372036854775807, %128 ]
  %147 = udiv i64 9223372036854775807, %54, !dbg !4842
  %148 = icmp ult i64 %147, %146, !dbg !4842
  br i1 %148, label %160, label %155, !dbg !4842

149:                                              ; preds = %133, %139
  %150 = phi i32 [ %140, %139 ], [ 1, %133 ]
  %151 = phi i64 [ %142, %139 ], [ -9223372036854775808, %133 ]
  %152 = sub i64 0, %151, !dbg !4842
  %153 = udiv i64 -9223372036854775808, %152, !dbg !4842
  %154 = icmp ult i64 %153, %54, !dbg !4842
  br i1 %154, label %165, label %155, !dbg !4842

155:                                              ; preds = %144, %149
  %156 = phi i32 [ %150, %149 ], [ %145, %144 ]
  %157 = phi i64 [ %151, %149 ], [ %146, %144 ]
  %158 = mul i64 %157, %54, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %158, metadata !4813, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %156, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4840
  %159 = icmp slt i64 %158, 0, !dbg !4842
  br i1 %159, label %165, label %160, !dbg !4842

160:                                              ; preds = %144, %155
  %161 = phi i32 [ %156, %155 ], [ 1, %144 ]
  %162 = phi i64 [ %158, %155 ], [ 9223372036854775807, %144 ]
  %163 = udiv i64 9223372036854775807, %54, !dbg !4842
  %164 = icmp ult i64 %163, %162, !dbg !4842
  br i1 %164, label %175, label %171, !dbg !4842

165:                                              ; preds = %149, %155
  %166 = phi i32 [ %156, %155 ], [ 1, %149 ]
  %167 = phi i64 [ %158, %155 ], [ -9223372036854775808, %149 ]
  %168 = sub i64 0, %167, !dbg !4842
  %169 = udiv i64 -9223372036854775808, %168, !dbg !4842
  %170 = icmp ult i64 %169, %54, !dbg !4842
  br i1 %170, label %175, label %171, !dbg !4842

171:                                              ; preds = %165, %160
  %172 = phi i32 [ %166, %165 ], [ %161, %160 ]
  %173 = phi i64 [ %167, %165 ], [ %162, %160 ]
  %174 = mul i64 %173, %54, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %174, metadata !4813, metadata !DIExpression()), !dbg !4840
  br label %175, !dbg !4851

175:                                              ; preds = %171, %165, %160
  %176 = phi i32 [ %172, %171 ], [ %161, %160 ], [ %166, %165 ]
  %177 = phi i64 [ %174, %171 ], [ 9223372036854775807, %160 ], [ -9223372036854775808, %165 ], !dbg !4840
  %178 = phi i32 [ 0, %171 ], [ 1, %160 ], [ 1, %165 ], !dbg !4840
  %179 = or i32 %178, %176, !dbg !4852
  call void @llvm.dbg.value(metadata i32 %179, metadata !4796, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4838
  br label %976, !dbg !4853

180:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4801, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 poison, metadata !4802, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4856
  %181 = icmp slt i64 %31, 0, !dbg !4858
  br i1 %181, label %182, label %188, !dbg !4858

182:                                              ; preds = %180
  %183 = icmp eq i64 %31, -1, !dbg !4858
  br i1 %183, label %191, label %184, !dbg !4858

184:                                              ; preds = %182
  %185 = sub i64 0, %31, !dbg !4858
  %186 = udiv i64 -9223372036854775808, %185, !dbg !4858
  %187 = icmp ult i64 %186, %54, !dbg !4858
  br i1 %187, label %199, label %191, !dbg !4858

188:                                              ; preds = %180
  %189 = udiv i64 9223372036854775807, %54, !dbg !4858
  %190 = icmp ult i64 %189, %31, !dbg !4858
  br i1 %190, label %194, label %191, !dbg !4858

191:                                              ; preds = %182, %184, %188
  %192 = mul i64 %31, %54, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %192, metadata !4813, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4856
  %193 = icmp slt i64 %192, 0, !dbg !4858
  br i1 %193, label %199, label %194, !dbg !4858

194:                                              ; preds = %188, %191
  %195 = phi i32 [ 0, %191 ], [ 1, %188 ]
  %196 = phi i64 [ %192, %191 ], [ 9223372036854775807, %188 ]
  %197 = udiv i64 9223372036854775807, %54, !dbg !4858
  %198 = icmp ult i64 %197, %196, !dbg !4858
  br i1 %198, label %210, label %205, !dbg !4858

199:                                              ; preds = %184, %191
  %200 = phi i32 [ 0, %191 ], [ 1, %184 ]
  %201 = phi i64 [ %192, %191 ], [ -9223372036854775808, %184 ]
  %202 = sub i64 0, %201, !dbg !4858
  %203 = udiv i64 -9223372036854775808, %202, !dbg !4858
  %204 = icmp ult i64 %203, %54, !dbg !4858
  br i1 %204, label %215, label %205, !dbg !4858

205:                                              ; preds = %194, %199
  %206 = phi i32 [ %200, %199 ], [ %195, %194 ]
  %207 = phi i64 [ %201, %199 ], [ %196, %194 ]
  %208 = mul i64 %207, %54, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %208, metadata !4813, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 %206, metadata !4796, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4856
  %209 = icmp slt i64 %208, 0, !dbg !4858
  br i1 %209, label %215, label %210, !dbg !4858

210:                                              ; preds = %194, %205
  %211 = phi i32 [ %206, %205 ], [ 1, %194 ]
  %212 = phi i64 [ %208, %205 ], [ 9223372036854775807, %194 ]
  %213 = udiv i64 9223372036854775807, %54, !dbg !4858
  %214 = icmp ult i64 %213, %212, !dbg !4858
  br i1 %214, label %225, label %221, !dbg !4858

215:                                              ; preds = %199, %205
  %216 = phi i32 [ %206, %205 ], [ 1, %199 ]
  %217 = phi i64 [ %208, %205 ], [ -9223372036854775808, %199 ]
  %218 = sub i64 0, %217, !dbg !4858
  %219 = udiv i64 -9223372036854775808, %218, !dbg !4858
  %220 = icmp ult i64 %219, %54, !dbg !4858
  br i1 %220, label %225, label %221, !dbg !4858

221:                                              ; preds = %215, %210
  %222 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %223 = phi i64 [ %217, %215 ], [ %212, %210 ]
  %224 = mul i64 %223, %54, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %224, metadata !4813, metadata !DIExpression()), !dbg !4856
  br label %225, !dbg !4859

225:                                              ; preds = %221, %215, %210
  %226 = phi i32 [ %222, %221 ], [ %211, %210 ], [ %216, %215 ]
  %227 = phi i64 [ %224, %221 ], [ 9223372036854775807, %210 ], [ -9223372036854775808, %215 ], !dbg !4856
  %228 = phi i32 [ 0, %221 ], [ 1, %210 ], [ 1, %215 ], !dbg !4856
  %229 = or i32 %228, %226, !dbg !4860
  call void @llvm.dbg.value(metadata i32 %229, metadata !4796, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4854
  br label %976, !dbg !4853

230:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4801, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i32 poison, metadata !4802, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4863
  %231 = icmp slt i64 %31, 0, !dbg !4865
  br i1 %231, label %232, label %238, !dbg !4865

232:                                              ; preds = %230
  %233 = icmp eq i64 %31, -1, !dbg !4865
  br i1 %233, label %241, label %234, !dbg !4865

234:                                              ; preds = %232
  %235 = sub i64 0, %31, !dbg !4865
  %236 = udiv i64 -9223372036854775808, %235, !dbg !4865
  %237 = icmp ult i64 %236, %54, !dbg !4865
  br i1 %237, label %976, label %241, !dbg !4865

238:                                              ; preds = %230
  %239 = udiv i64 9223372036854775807, %54, !dbg !4865
  %240 = icmp ult i64 %239, %31, !dbg !4865
  br i1 %240, label %976, label %241, !dbg !4865

241:                                              ; preds = %238, %234, %232
  %242 = mul i64 %31, %54, !dbg !4865
  call void @llvm.dbg.value(metadata i64 %242, metadata !4813, metadata !DIExpression()), !dbg !4863
  br label %976, !dbg !4866

243:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4801, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 poison, metadata !4802, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4869
  %244 = icmp slt i64 %31, 0, !dbg !4871
  br i1 %244, label %245, label %251, !dbg !4871

245:                                              ; preds = %243
  %246 = icmp eq i64 %31, -1, !dbg !4871
  br i1 %246, label %254, label %247, !dbg !4871

247:                                              ; preds = %245
  %248 = sub i64 0, %31, !dbg !4871
  %249 = udiv i64 -9223372036854775808, %248, !dbg !4871
  %250 = icmp ult i64 %249, %54, !dbg !4871
  br i1 %250, label %262, label %254, !dbg !4871

251:                                              ; preds = %243
  %252 = udiv i64 9223372036854775807, %54, !dbg !4871
  %253 = icmp ult i64 %252, %31, !dbg !4871
  br i1 %253, label %257, label %254, !dbg !4871

254:                                              ; preds = %245, %247, %251
  %255 = mul i64 %31, %54, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %255, metadata !4813, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4869
  %256 = icmp slt i64 %255, 0, !dbg !4871
  br i1 %256, label %262, label %257, !dbg !4871

257:                                              ; preds = %251, %254
  %258 = phi i32 [ 0, %254 ], [ 1, %251 ]
  %259 = phi i64 [ %255, %254 ], [ 9223372036854775807, %251 ]
  %260 = udiv i64 9223372036854775807, %54, !dbg !4871
  %261 = icmp ult i64 %260, %259, !dbg !4871
  br i1 %261, label %272, label %268, !dbg !4871

262:                                              ; preds = %247, %254
  %263 = phi i32 [ 0, %254 ], [ 1, %247 ]
  %264 = phi i64 [ %255, %254 ], [ -9223372036854775808, %247 ]
  %265 = sub i64 0, %264, !dbg !4871
  %266 = udiv i64 -9223372036854775808, %265, !dbg !4871
  %267 = icmp ult i64 %266, %54, !dbg !4871
  br i1 %267, label %272, label %268, !dbg !4871

268:                                              ; preds = %262, %257
  %269 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %270 = phi i64 [ %264, %262 ], [ %259, %257 ]
  %271 = mul i64 %270, %54, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %271, metadata !4813, metadata !DIExpression()), !dbg !4869
  br label %272, !dbg !4872

272:                                              ; preds = %268, %262, %257
  %273 = phi i32 [ %269, %268 ], [ %258, %257 ], [ %263, %262 ]
  %274 = phi i64 [ %271, %268 ], [ 9223372036854775807, %257 ], [ -9223372036854775808, %262 ], !dbg !4869
  %275 = phi i32 [ 0, %268 ], [ 1, %257 ], [ 1, %262 ], !dbg !4869
  %276 = or i32 %275, %273, !dbg !4873
  call void @llvm.dbg.value(metadata i32 %276, metadata !4796, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4867
  br label %976, !dbg !4853

277:                                              ; preds = %64
  %278 = icmp eq i64 %31, -1, !dbg !4837
  br i1 %278, label %286, label %279, !dbg !4837

279:                                              ; preds = %277
  %280 = sub i64 0, %31, !dbg !4837
  %281 = udiv i64 -9223372036854775808, %280, !dbg !4837
  %282 = icmp ult i64 %281, %54, !dbg !4837
  br i1 %282, label %294, label %286, !dbg !4837

283:                                              ; preds = %64
  %284 = udiv i64 9223372036854775807, %54, !dbg !4837
  %285 = icmp ult i64 %284, %31, !dbg !4837
  br i1 %285, label %289, label %286, !dbg !4837

286:                                              ; preds = %277, %279, %283
  %287 = mul i64 %31, %54, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %287, metadata !4813, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4835
  %288 = icmp slt i64 %287, 0, !dbg !4837
  br i1 %288, label %294, label %289, !dbg !4837

289:                                              ; preds = %283, %286
  %290 = phi i32 [ 0, %286 ], [ 1, %283 ]
  %291 = phi i64 [ %287, %286 ], [ 9223372036854775807, %283 ]
  %292 = udiv i64 9223372036854775807, %54, !dbg !4837
  %293 = icmp ult i64 %292, %291, !dbg !4837
  br i1 %293, label %305, label %300, !dbg !4837

294:                                              ; preds = %279, %286
  %295 = phi i32 [ 0, %286 ], [ 1, %279 ]
  %296 = phi i64 [ %287, %286 ], [ -9223372036854775808, %279 ]
  %297 = sub i64 0, %296, !dbg !4837
  %298 = udiv i64 -9223372036854775808, %297, !dbg !4837
  %299 = icmp ult i64 %298, %54, !dbg !4837
  br i1 %299, label %310, label %300, !dbg !4837

300:                                              ; preds = %289, %294
  %301 = phi i32 [ %295, %294 ], [ %290, %289 ]
  %302 = phi i64 [ %296, %294 ], [ %291, %289 ]
  %303 = mul i64 %302, %54, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %303, metadata !4813, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 %301, metadata !4796, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4835
  %304 = icmp slt i64 %303, 0, !dbg !4837
  br i1 %304, label %310, label %305, !dbg !4837

305:                                              ; preds = %289, %300
  %306 = phi i32 [ %301, %300 ], [ 1, %289 ]
  %307 = phi i64 [ %303, %300 ], [ 9223372036854775807, %289 ]
  %308 = udiv i64 9223372036854775807, %54, !dbg !4837
  %309 = icmp ult i64 %308, %307, !dbg !4837
  br i1 %309, label %321, label %316, !dbg !4837

310:                                              ; preds = %294, %300
  %311 = phi i32 [ %301, %300 ], [ 1, %294 ]
  %312 = phi i64 [ %303, %300 ], [ -9223372036854775808, %294 ]
  %313 = sub i64 0, %312, !dbg !4837
  %314 = udiv i64 -9223372036854775808, %313, !dbg !4837
  %315 = icmp ult i64 %314, %54, !dbg !4837
  br i1 %315, label %326, label %316, !dbg !4837

316:                                              ; preds = %305, %310
  %317 = phi i32 [ %311, %310 ], [ %306, %305 ]
  %318 = phi i64 [ %312, %310 ], [ %307, %305 ]
  %319 = mul i64 %318, %54, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %319, metadata !4813, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 %317, metadata !4796, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4835
  %320 = icmp slt i64 %319, 0, !dbg !4837
  br i1 %320, label %326, label %321, !dbg !4837

321:                                              ; preds = %305, %316
  %322 = phi i32 [ %317, %316 ], [ 1, %305 ]
  %323 = phi i64 [ %319, %316 ], [ 9223372036854775807, %305 ]
  %324 = udiv i64 9223372036854775807, %54, !dbg !4837
  %325 = icmp ult i64 %324, %323, !dbg !4837
  br i1 %325, label %337, label %332, !dbg !4837

326:                                              ; preds = %310, %316
  %327 = phi i32 [ %317, %316 ], [ 1, %310 ]
  %328 = phi i64 [ %319, %316 ], [ -9223372036854775808, %310 ]
  %329 = sub i64 0, %328, !dbg !4837
  %330 = udiv i64 -9223372036854775808, %329, !dbg !4837
  %331 = icmp ult i64 %330, %54, !dbg !4837
  br i1 %331, label %342, label %332, !dbg !4837

332:                                              ; preds = %321, %326
  %333 = phi i32 [ %327, %326 ], [ %322, %321 ]
  %334 = phi i64 [ %328, %326 ], [ %323, %321 ]
  %335 = mul i64 %334, %54, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %335, metadata !4813, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 %333, metadata !4796, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4835
  %336 = icmp slt i64 %335, 0, !dbg !4837
  br i1 %336, label %342, label %337, !dbg !4837

337:                                              ; preds = %321, %332
  %338 = phi i32 [ %333, %332 ], [ 1, %321 ]
  %339 = phi i64 [ %335, %332 ], [ 9223372036854775807, %321 ]
  %340 = udiv i64 9223372036854775807, %54, !dbg !4837
  %341 = icmp ult i64 %340, %339, !dbg !4837
  br i1 %341, label %352, label %348, !dbg !4837

342:                                              ; preds = %326, %332
  %343 = phi i32 [ %333, %332 ], [ 1, %326 ]
  %344 = phi i64 [ %335, %332 ], [ -9223372036854775808, %326 ]
  %345 = sub i64 0, %344, !dbg !4837
  %346 = udiv i64 -9223372036854775808, %345, !dbg !4837
  %347 = icmp ult i64 %346, %54, !dbg !4837
  br i1 %347, label %352, label %348, !dbg !4837

348:                                              ; preds = %342, %337
  %349 = phi i32 [ %343, %342 ], [ %338, %337 ]
  %350 = phi i64 [ %344, %342 ], [ %339, %337 ]
  %351 = mul i64 %350, %54, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %351, metadata !4813, metadata !DIExpression()), !dbg !4835
  br label %352, !dbg !4874

352:                                              ; preds = %348, %342, %337
  %353 = phi i32 [ %349, %348 ], [ %338, %337 ], [ %343, %342 ]
  %354 = phi i64 [ %351, %348 ], [ 9223372036854775807, %337 ], [ -9223372036854775808, %342 ], !dbg !4835
  %355 = phi i32 [ 0, %348 ], [ 1, %337 ], [ 1, %342 ], !dbg !4835
  %356 = or i32 %355, %353, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %356, metadata !4796, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4833
  br label %976, !dbg !4853

357:                                              ; preds = %62
  %358 = icmp eq i64 %31, -1, !dbg !4832
  br i1 %358, label %366, label %359, !dbg !4832

359:                                              ; preds = %357
  %360 = sub i64 0, %31, !dbg !4832
  %361 = udiv i64 -9223372036854775808, %360, !dbg !4832
  %362 = icmp ult i64 %361, %54, !dbg !4832
  br i1 %362, label %374, label %366, !dbg !4832

363:                                              ; preds = %62
  %364 = udiv i64 9223372036854775807, %54, !dbg !4832
  %365 = icmp ult i64 %364, %31, !dbg !4832
  br i1 %365, label %369, label %366, !dbg !4832

366:                                              ; preds = %357, %359, %363
  %367 = mul i64 %31, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %367, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 8, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %368 = icmp slt i64 %367, 0, !dbg !4832
  br i1 %368, label %374, label %369, !dbg !4832

369:                                              ; preds = %363, %366
  %370 = phi i32 [ 0, %366 ], [ 1, %363 ]
  %371 = phi i64 [ %367, %366 ], [ 9223372036854775807, %363 ]
  %372 = udiv i64 9223372036854775807, %54, !dbg !4832
  %373 = icmp ult i64 %372, %371, !dbg !4832
  br i1 %373, label %385, label %380, !dbg !4832

374:                                              ; preds = %359, %366
  %375 = phi i32 [ 0, %366 ], [ 1, %359 ]
  %376 = phi i64 [ %367, %366 ], [ -9223372036854775808, %359 ]
  %377 = sub i64 0, %376, !dbg !4832
  %378 = udiv i64 -9223372036854775808, %377, !dbg !4832
  %379 = icmp ult i64 %378, %54, !dbg !4832
  br i1 %379, label %390, label %380, !dbg !4832

380:                                              ; preds = %369, %374
  %381 = phi i32 [ %375, %374 ], [ %370, %369 ]
  %382 = phi i64 [ %376, %374 ], [ %371, %369 ]
  %383 = mul i64 %382, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %383, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %381, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 7, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %384 = icmp slt i64 %383, 0, !dbg !4832
  br i1 %384, label %390, label %385, !dbg !4832

385:                                              ; preds = %369, %380
  %386 = phi i32 [ %381, %380 ], [ 1, %369 ]
  %387 = phi i64 [ %383, %380 ], [ 9223372036854775807, %369 ]
  %388 = udiv i64 9223372036854775807, %54, !dbg !4832
  %389 = icmp ult i64 %388, %387, !dbg !4832
  br i1 %389, label %401, label %396, !dbg !4832

390:                                              ; preds = %374, %380
  %391 = phi i32 [ %381, %380 ], [ 1, %374 ]
  %392 = phi i64 [ %383, %380 ], [ -9223372036854775808, %374 ]
  %393 = sub i64 0, %392, !dbg !4832
  %394 = udiv i64 -9223372036854775808, %393, !dbg !4832
  %395 = icmp ult i64 %394, %54, !dbg !4832
  br i1 %395, label %406, label %396, !dbg !4832

396:                                              ; preds = %385, %390
  %397 = phi i32 [ %391, %390 ], [ %386, %385 ]
  %398 = phi i64 [ %392, %390 ], [ %387, %385 ]
  %399 = mul i64 %398, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %399, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %397, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 6, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %400 = icmp slt i64 %399, 0, !dbg !4832
  br i1 %400, label %406, label %401, !dbg !4832

401:                                              ; preds = %385, %396
  %402 = phi i32 [ %397, %396 ], [ 1, %385 ]
  %403 = phi i64 [ %399, %396 ], [ 9223372036854775807, %385 ]
  %404 = udiv i64 9223372036854775807, %54, !dbg !4832
  %405 = icmp ult i64 %404, %403, !dbg !4832
  br i1 %405, label %417, label %412, !dbg !4832

406:                                              ; preds = %390, %396
  %407 = phi i32 [ %397, %396 ], [ 1, %390 ]
  %408 = phi i64 [ %399, %396 ], [ -9223372036854775808, %390 ]
  %409 = sub i64 0, %408, !dbg !4832
  %410 = udiv i64 -9223372036854775808, %409, !dbg !4832
  %411 = icmp ult i64 %410, %54, !dbg !4832
  br i1 %411, label %422, label %412, !dbg !4832

412:                                              ; preds = %401, %406
  %413 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %414 = phi i64 [ %408, %406 ], [ %403, %401 ]
  %415 = mul i64 %414, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %415, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %413, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 5, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %416 = icmp slt i64 %415, 0, !dbg !4832
  br i1 %416, label %422, label %417, !dbg !4832

417:                                              ; preds = %401, %412
  %418 = phi i32 [ %413, %412 ], [ 1, %401 ]
  %419 = phi i64 [ %415, %412 ], [ 9223372036854775807, %401 ]
  %420 = udiv i64 9223372036854775807, %54, !dbg !4832
  %421 = icmp ult i64 %420, %419, !dbg !4832
  br i1 %421, label %433, label %428, !dbg !4832

422:                                              ; preds = %406, %412
  %423 = phi i32 [ %413, %412 ], [ 1, %406 ]
  %424 = phi i64 [ %415, %412 ], [ -9223372036854775808, %406 ]
  %425 = sub i64 0, %424, !dbg !4832
  %426 = udiv i64 -9223372036854775808, %425, !dbg !4832
  %427 = icmp ult i64 %426, %54, !dbg !4832
  br i1 %427, label %438, label %428, !dbg !4832

428:                                              ; preds = %417, %422
  %429 = phi i32 [ %423, %422 ], [ %418, %417 ]
  %430 = phi i64 [ %424, %422 ], [ %419, %417 ]
  %431 = mul i64 %430, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %431, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %429, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 4, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %432 = icmp slt i64 %431, 0, !dbg !4832
  br i1 %432, label %438, label %433, !dbg !4832

433:                                              ; preds = %417, %428
  %434 = phi i32 [ %429, %428 ], [ 1, %417 ]
  %435 = phi i64 [ %431, %428 ], [ 9223372036854775807, %417 ]
  %436 = udiv i64 9223372036854775807, %54, !dbg !4832
  %437 = icmp ult i64 %436, %435, !dbg !4832
  br i1 %437, label %449, label %444, !dbg !4832

438:                                              ; preds = %422, %428
  %439 = phi i32 [ %429, %428 ], [ 1, %422 ]
  %440 = phi i64 [ %431, %428 ], [ -9223372036854775808, %422 ]
  %441 = sub i64 0, %440, !dbg !4832
  %442 = udiv i64 -9223372036854775808, %441, !dbg !4832
  %443 = icmp ult i64 %442, %54, !dbg !4832
  br i1 %443, label %454, label %444, !dbg !4832

444:                                              ; preds = %433, %438
  %445 = phi i32 [ %439, %438 ], [ %434, %433 ]
  %446 = phi i64 [ %440, %438 ], [ %435, %433 ]
  %447 = mul i64 %446, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %447, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %445, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %448 = icmp slt i64 %447, 0, !dbg !4832
  br i1 %448, label %454, label %449, !dbg !4832

449:                                              ; preds = %433, %444
  %450 = phi i32 [ %445, %444 ], [ 1, %433 ]
  %451 = phi i64 [ %447, %444 ], [ 9223372036854775807, %433 ]
  %452 = udiv i64 9223372036854775807, %54, !dbg !4832
  %453 = icmp ult i64 %452, %451, !dbg !4832
  br i1 %453, label %465, label %460, !dbg !4832

454:                                              ; preds = %438, %444
  %455 = phi i32 [ %445, %444 ], [ 1, %438 ]
  %456 = phi i64 [ %447, %444 ], [ -9223372036854775808, %438 ]
  %457 = sub i64 0, %456, !dbg !4832
  %458 = udiv i64 -9223372036854775808, %457, !dbg !4832
  %459 = icmp ult i64 %458, %54, !dbg !4832
  br i1 %459, label %470, label %460, !dbg !4832

460:                                              ; preds = %449, %454
  %461 = phi i32 [ %455, %454 ], [ %450, %449 ]
  %462 = phi i64 [ %456, %454 ], [ %451, %449 ]
  %463 = mul i64 %462, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %463, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %461, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %464 = icmp slt i64 %463, 0, !dbg !4832
  br i1 %464, label %470, label %465, !dbg !4832

465:                                              ; preds = %449, %460
  %466 = phi i32 [ %461, %460 ], [ 1, %449 ]
  %467 = phi i64 [ %463, %460 ], [ 9223372036854775807, %449 ]
  %468 = udiv i64 9223372036854775807, %54, !dbg !4832
  %469 = icmp ult i64 %468, %467, !dbg !4832
  br i1 %469, label %481, label %476, !dbg !4832

470:                                              ; preds = %454, %460
  %471 = phi i32 [ %461, %460 ], [ 1, %454 ]
  %472 = phi i64 [ %463, %460 ], [ -9223372036854775808, %454 ]
  %473 = sub i64 0, %472, !dbg !4832
  %474 = udiv i64 -9223372036854775808, %473, !dbg !4832
  %475 = icmp ult i64 %474, %54, !dbg !4832
  br i1 %475, label %486, label %476, !dbg !4832

476:                                              ; preds = %465, %470
  %477 = phi i32 [ %471, %470 ], [ %466, %465 ]
  %478 = phi i64 [ %472, %470 ], [ %467, %465 ]
  %479 = mul i64 %478, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %479, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %477, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %480 = icmp slt i64 %479, 0, !dbg !4832
  br i1 %480, label %486, label %481, !dbg !4832

481:                                              ; preds = %465, %476
  %482 = phi i32 [ %477, %476 ], [ 1, %465 ]
  %483 = phi i64 [ %479, %476 ], [ 9223372036854775807, %465 ]
  %484 = udiv i64 9223372036854775807, %54, !dbg !4832
  %485 = icmp ult i64 %484, %483, !dbg !4832
  br i1 %485, label %497, label %492, !dbg !4832

486:                                              ; preds = %470, %476
  %487 = phi i32 [ %477, %476 ], [ 1, %470 ]
  %488 = phi i64 [ %479, %476 ], [ -9223372036854775808, %470 ]
  %489 = sub i64 0, %488, !dbg !4832
  %490 = udiv i64 -9223372036854775808, %489, !dbg !4832
  %491 = icmp ult i64 %490, %54, !dbg !4832
  br i1 %491, label %502, label %492, !dbg !4832

492:                                              ; preds = %481, %486
  %493 = phi i32 [ %487, %486 ], [ %482, %481 ]
  %494 = phi i64 [ %488, %486 ], [ %483, %481 ]
  %495 = mul i64 %494, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %495, metadata !4813, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %493, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4830
  %496 = icmp slt i64 %495, 0, !dbg !4832
  br i1 %496, label %502, label %497, !dbg !4832

497:                                              ; preds = %481, %492
  %498 = phi i32 [ %493, %492 ], [ 1, %481 ]
  %499 = phi i64 [ %495, %492 ], [ 9223372036854775807, %481 ]
  %500 = udiv i64 9223372036854775807, %54, !dbg !4832
  %501 = icmp ult i64 %500, %499, !dbg !4832
  br i1 %501, label %512, label %508, !dbg !4832

502:                                              ; preds = %486, %492
  %503 = phi i32 [ %493, %492 ], [ 1, %486 ]
  %504 = phi i64 [ %495, %492 ], [ -9223372036854775808, %486 ]
  %505 = sub i64 0, %504, !dbg !4832
  %506 = udiv i64 -9223372036854775808, %505, !dbg !4832
  %507 = icmp ult i64 %506, %54, !dbg !4832
  br i1 %507, label %512, label %508, !dbg !4832

508:                                              ; preds = %502, %497
  %509 = phi i32 [ %503, %502 ], [ %498, %497 ]
  %510 = phi i64 [ %504, %502 ], [ %499, %497 ]
  %511 = mul i64 %510, %54, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %511, metadata !4813, metadata !DIExpression()), !dbg !4830
  br label %512, !dbg !4876

512:                                              ; preds = %508, %502, %497
  %513 = phi i32 [ %509, %508 ], [ %498, %497 ], [ %503, %502 ]
  %514 = phi i64 [ %511, %508 ], [ 9223372036854775807, %497 ], [ -9223372036854775808, %502 ], !dbg !4830
  %515 = phi i32 [ 0, %508 ], [ 1, %497 ], [ 1, %502 ], !dbg !4830
  %516 = or i32 %515, %513, !dbg !4877
  call void @llvm.dbg.value(metadata i32 %516, metadata !4796, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4828
  br label %976, !dbg !4853

517:                                              ; preds = %60
  %518 = icmp eq i64 %31, -1, !dbg !4827
  br i1 %518, label %526, label %519, !dbg !4827

519:                                              ; preds = %517
  %520 = sub i64 0, %31, !dbg !4827
  %521 = udiv i64 -9223372036854775808, %520, !dbg !4827
  %522 = icmp ult i64 %521, %54, !dbg !4827
  br i1 %522, label %534, label %526, !dbg !4827

523:                                              ; preds = %60
  %524 = udiv i64 9223372036854775807, %54, !dbg !4827
  %525 = icmp ult i64 %524, %31, !dbg !4827
  br i1 %525, label %529, label %526, !dbg !4827

526:                                              ; preds = %517, %519, %523
  %527 = mul i64 %31, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %527, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 7, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %528 = icmp slt i64 %527, 0, !dbg !4827
  br i1 %528, label %534, label %529, !dbg !4827

529:                                              ; preds = %523, %526
  %530 = phi i32 [ 0, %526 ], [ 1, %523 ]
  %531 = phi i64 [ %527, %526 ], [ 9223372036854775807, %523 ]
  %532 = udiv i64 9223372036854775807, %54, !dbg !4827
  %533 = icmp ult i64 %532, %531, !dbg !4827
  br i1 %533, label %545, label %540, !dbg !4827

534:                                              ; preds = %519, %526
  %535 = phi i32 [ 0, %526 ], [ 1, %519 ]
  %536 = phi i64 [ %527, %526 ], [ -9223372036854775808, %519 ]
  %537 = sub i64 0, %536, !dbg !4827
  %538 = udiv i64 -9223372036854775808, %537, !dbg !4827
  %539 = icmp ult i64 %538, %54, !dbg !4827
  br i1 %539, label %550, label %540, !dbg !4827

540:                                              ; preds = %529, %534
  %541 = phi i32 [ %535, %534 ], [ %530, %529 ]
  %542 = phi i64 [ %536, %534 ], [ %531, %529 ]
  %543 = mul i64 %542, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %543, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %541, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 6, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %544 = icmp slt i64 %543, 0, !dbg !4827
  br i1 %544, label %550, label %545, !dbg !4827

545:                                              ; preds = %529, %540
  %546 = phi i32 [ %541, %540 ], [ 1, %529 ]
  %547 = phi i64 [ %543, %540 ], [ 9223372036854775807, %529 ]
  %548 = udiv i64 9223372036854775807, %54, !dbg !4827
  %549 = icmp ult i64 %548, %547, !dbg !4827
  br i1 %549, label %561, label %556, !dbg !4827

550:                                              ; preds = %534, %540
  %551 = phi i32 [ %541, %540 ], [ 1, %534 ]
  %552 = phi i64 [ %543, %540 ], [ -9223372036854775808, %534 ]
  %553 = sub i64 0, %552, !dbg !4827
  %554 = udiv i64 -9223372036854775808, %553, !dbg !4827
  %555 = icmp ult i64 %554, %54, !dbg !4827
  br i1 %555, label %566, label %556, !dbg !4827

556:                                              ; preds = %545, %550
  %557 = phi i32 [ %551, %550 ], [ %546, %545 ]
  %558 = phi i64 [ %552, %550 ], [ %547, %545 ]
  %559 = mul i64 %558, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %559, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %557, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 5, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %560 = icmp slt i64 %559, 0, !dbg !4827
  br i1 %560, label %566, label %561, !dbg !4827

561:                                              ; preds = %545, %556
  %562 = phi i32 [ %557, %556 ], [ 1, %545 ]
  %563 = phi i64 [ %559, %556 ], [ 9223372036854775807, %545 ]
  %564 = udiv i64 9223372036854775807, %54, !dbg !4827
  %565 = icmp ult i64 %564, %563, !dbg !4827
  br i1 %565, label %577, label %572, !dbg !4827

566:                                              ; preds = %550, %556
  %567 = phi i32 [ %557, %556 ], [ 1, %550 ]
  %568 = phi i64 [ %559, %556 ], [ -9223372036854775808, %550 ]
  %569 = sub i64 0, %568, !dbg !4827
  %570 = udiv i64 -9223372036854775808, %569, !dbg !4827
  %571 = icmp ult i64 %570, %54, !dbg !4827
  br i1 %571, label %582, label %572, !dbg !4827

572:                                              ; preds = %561, %566
  %573 = phi i32 [ %567, %566 ], [ %562, %561 ]
  %574 = phi i64 [ %568, %566 ], [ %563, %561 ]
  %575 = mul i64 %574, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %575, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %573, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 4, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %576 = icmp slt i64 %575, 0, !dbg !4827
  br i1 %576, label %582, label %577, !dbg !4827

577:                                              ; preds = %561, %572
  %578 = phi i32 [ %573, %572 ], [ 1, %561 ]
  %579 = phi i64 [ %575, %572 ], [ 9223372036854775807, %561 ]
  %580 = udiv i64 9223372036854775807, %54, !dbg !4827
  %581 = icmp ult i64 %580, %579, !dbg !4827
  br i1 %581, label %593, label %588, !dbg !4827

582:                                              ; preds = %566, %572
  %583 = phi i32 [ %573, %572 ], [ 1, %566 ]
  %584 = phi i64 [ %575, %572 ], [ -9223372036854775808, %566 ]
  %585 = sub i64 0, %584, !dbg !4827
  %586 = udiv i64 -9223372036854775808, %585, !dbg !4827
  %587 = icmp ult i64 %586, %54, !dbg !4827
  br i1 %587, label %598, label %588, !dbg !4827

588:                                              ; preds = %577, %582
  %589 = phi i32 [ %583, %582 ], [ %578, %577 ]
  %590 = phi i64 [ %584, %582 ], [ %579, %577 ]
  %591 = mul i64 %590, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %591, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %589, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %592 = icmp slt i64 %591, 0, !dbg !4827
  br i1 %592, label %598, label %593, !dbg !4827

593:                                              ; preds = %577, %588
  %594 = phi i32 [ %589, %588 ], [ 1, %577 ]
  %595 = phi i64 [ %591, %588 ], [ 9223372036854775807, %577 ]
  %596 = udiv i64 9223372036854775807, %54, !dbg !4827
  %597 = icmp ult i64 %596, %595, !dbg !4827
  br i1 %597, label %609, label %604, !dbg !4827

598:                                              ; preds = %582, %588
  %599 = phi i32 [ %589, %588 ], [ 1, %582 ]
  %600 = phi i64 [ %591, %588 ], [ -9223372036854775808, %582 ]
  %601 = sub i64 0, %600, !dbg !4827
  %602 = udiv i64 -9223372036854775808, %601, !dbg !4827
  %603 = icmp ult i64 %602, %54, !dbg !4827
  br i1 %603, label %614, label %604, !dbg !4827

604:                                              ; preds = %593, %598
  %605 = phi i32 [ %599, %598 ], [ %594, %593 ]
  %606 = phi i64 [ %600, %598 ], [ %595, %593 ]
  %607 = mul i64 %606, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %607, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %605, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %608 = icmp slt i64 %607, 0, !dbg !4827
  br i1 %608, label %614, label %609, !dbg !4827

609:                                              ; preds = %593, %604
  %610 = phi i32 [ %605, %604 ], [ 1, %593 ]
  %611 = phi i64 [ %607, %604 ], [ 9223372036854775807, %593 ]
  %612 = udiv i64 9223372036854775807, %54, !dbg !4827
  %613 = icmp ult i64 %612, %611, !dbg !4827
  br i1 %613, label %625, label %620, !dbg !4827

614:                                              ; preds = %598, %604
  %615 = phi i32 [ %605, %604 ], [ 1, %598 ]
  %616 = phi i64 [ %607, %604 ], [ -9223372036854775808, %598 ]
  %617 = sub i64 0, %616, !dbg !4827
  %618 = udiv i64 -9223372036854775808, %617, !dbg !4827
  %619 = icmp ult i64 %618, %54, !dbg !4827
  br i1 %619, label %630, label %620, !dbg !4827

620:                                              ; preds = %609, %614
  %621 = phi i32 [ %615, %614 ], [ %610, %609 ]
  %622 = phi i64 [ %616, %614 ], [ %611, %609 ]
  %623 = mul i64 %622, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %623, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %621, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %624 = icmp slt i64 %623, 0, !dbg !4827
  br i1 %624, label %630, label %625, !dbg !4827

625:                                              ; preds = %609, %620
  %626 = phi i32 [ %621, %620 ], [ 1, %609 ]
  %627 = phi i64 [ %623, %620 ], [ 9223372036854775807, %609 ]
  %628 = udiv i64 9223372036854775807, %54, !dbg !4827
  %629 = icmp ult i64 %628, %627, !dbg !4827
  br i1 %629, label %641, label %636, !dbg !4827

630:                                              ; preds = %614, %620
  %631 = phi i32 [ %621, %620 ], [ 1, %614 ]
  %632 = phi i64 [ %623, %620 ], [ -9223372036854775808, %614 ]
  %633 = sub i64 0, %632, !dbg !4827
  %634 = udiv i64 -9223372036854775808, %633, !dbg !4827
  %635 = icmp ult i64 %634, %54, !dbg !4827
  br i1 %635, label %646, label %636, !dbg !4827

636:                                              ; preds = %625, %630
  %637 = phi i32 [ %631, %630 ], [ %626, %625 ]
  %638 = phi i64 [ %632, %630 ], [ %627, %625 ]
  %639 = mul i64 %638, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %639, metadata !4813, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %637, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4825
  %640 = icmp slt i64 %639, 0, !dbg !4827
  br i1 %640, label %646, label %641, !dbg !4827

641:                                              ; preds = %625, %636
  %642 = phi i32 [ %637, %636 ], [ 1, %625 ]
  %643 = phi i64 [ %639, %636 ], [ 9223372036854775807, %625 ]
  %644 = udiv i64 9223372036854775807, %54, !dbg !4827
  %645 = icmp ult i64 %644, %643, !dbg !4827
  br i1 %645, label %656, label %652, !dbg !4827

646:                                              ; preds = %630, %636
  %647 = phi i32 [ %637, %636 ], [ 1, %630 ]
  %648 = phi i64 [ %639, %636 ], [ -9223372036854775808, %630 ]
  %649 = sub i64 0, %648, !dbg !4827
  %650 = udiv i64 -9223372036854775808, %649, !dbg !4827
  %651 = icmp ult i64 %650, %54, !dbg !4827
  br i1 %651, label %656, label %652, !dbg !4827

652:                                              ; preds = %646, %641
  %653 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %654 = phi i64 [ %648, %646 ], [ %643, %641 ]
  %655 = mul i64 %654, %54, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %655, metadata !4813, metadata !DIExpression()), !dbg !4825
  br label %656, !dbg !4878

656:                                              ; preds = %652, %646, %641
  %657 = phi i32 [ %653, %652 ], [ %642, %641 ], [ %647, %646 ]
  %658 = phi i64 [ %655, %652 ], [ 9223372036854775807, %641 ], [ -9223372036854775808, %646 ], !dbg !4825
  %659 = phi i32 [ 0, %652 ], [ 1, %641 ], [ 1, %646 ], !dbg !4825
  %660 = or i32 %659, %657, !dbg !4879
  call void @llvm.dbg.value(metadata i32 %660, metadata !4796, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4823
  br label %976, !dbg !4853

661:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4801, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4802, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4882
  %662 = icmp slt i64 %31, 0, !dbg !4884
  br i1 %662, label %663, label %669, !dbg !4884

663:                                              ; preds = %661
  %664 = icmp eq i64 %31, -1, !dbg !4884
  br i1 %664, label %672, label %665, !dbg !4884

665:                                              ; preds = %663
  %666 = sub i64 0, %31, !dbg !4884
  %667 = udiv i64 -9223372036854775808, %666, !dbg !4884
  %668 = icmp ult i64 %667, %54, !dbg !4884
  br i1 %668, label %680, label %672, !dbg !4884

669:                                              ; preds = %661
  %670 = udiv i64 9223372036854775807, %54, !dbg !4884
  %671 = icmp ult i64 %670, %31, !dbg !4884
  br i1 %671, label %675, label %672, !dbg !4884

672:                                              ; preds = %663, %665, %669
  %673 = mul i64 %31, %54, !dbg !4884
  call void @llvm.dbg.value(metadata i64 %673, metadata !4813, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4882
  %674 = icmp slt i64 %673, 0, !dbg !4884
  br i1 %674, label %680, label %675, !dbg !4884

675:                                              ; preds = %669, %672
  %676 = phi i32 [ 0, %672 ], [ 1, %669 ]
  %677 = phi i64 [ %673, %672 ], [ 9223372036854775807, %669 ]
  %678 = udiv i64 9223372036854775807, %54, !dbg !4884
  %679 = icmp ult i64 %678, %677, !dbg !4884
  br i1 %679, label %691, label %686, !dbg !4884

680:                                              ; preds = %665, %672
  %681 = phi i32 [ 0, %672 ], [ 1, %665 ]
  %682 = phi i64 [ %673, %672 ], [ -9223372036854775808, %665 ]
  %683 = sub i64 0, %682, !dbg !4884
  %684 = udiv i64 -9223372036854775808, %683, !dbg !4884
  %685 = icmp ult i64 %684, %54, !dbg !4884
  br i1 %685, label %696, label %686, !dbg !4884

686:                                              ; preds = %675, %680
  %687 = phi i32 [ %681, %680 ], [ %676, %675 ]
  %688 = phi i64 [ %682, %680 ], [ %677, %675 ]
  %689 = mul i64 %688, %54, !dbg !4884
  call void @llvm.dbg.value(metadata i64 %689, metadata !4813, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 %687, metadata !4796, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4882
  %690 = icmp slt i64 %689, 0, !dbg !4884
  br i1 %690, label %696, label %691, !dbg !4884

691:                                              ; preds = %675, %686
  %692 = phi i32 [ %687, %686 ], [ 1, %675 ]
  %693 = phi i64 [ %689, %686 ], [ 9223372036854775807, %675 ]
  %694 = udiv i64 9223372036854775807, %54, !dbg !4884
  %695 = icmp ult i64 %694, %693, !dbg !4884
  br i1 %695, label %707, label %702, !dbg !4884

696:                                              ; preds = %680, %686
  %697 = phi i32 [ %687, %686 ], [ 1, %680 ]
  %698 = phi i64 [ %689, %686 ], [ -9223372036854775808, %680 ]
  %699 = sub i64 0, %698, !dbg !4884
  %700 = udiv i64 -9223372036854775808, %699, !dbg !4884
  %701 = icmp ult i64 %700, %54, !dbg !4884
  br i1 %701, label %712, label %702, !dbg !4884

702:                                              ; preds = %691, %696
  %703 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %704 = phi i64 [ %698, %696 ], [ %693, %691 ]
  %705 = mul i64 %704, %54, !dbg !4884
  call void @llvm.dbg.value(metadata i64 %705, metadata !4813, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 %703, metadata !4796, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4882
  %706 = icmp slt i64 %705, 0, !dbg !4884
  br i1 %706, label %712, label %707, !dbg !4884

707:                                              ; preds = %691, %702
  %708 = phi i32 [ %703, %702 ], [ 1, %691 ]
  %709 = phi i64 [ %705, %702 ], [ 9223372036854775807, %691 ]
  %710 = udiv i64 9223372036854775807, %54, !dbg !4884
  %711 = icmp ult i64 %710, %709, !dbg !4884
  br i1 %711, label %722, label %718, !dbg !4884

712:                                              ; preds = %696, %702
  %713 = phi i32 [ %703, %702 ], [ 1, %696 ]
  %714 = phi i64 [ %705, %702 ], [ -9223372036854775808, %696 ]
  %715 = sub i64 0, %714, !dbg !4884
  %716 = udiv i64 -9223372036854775808, %715, !dbg !4884
  %717 = icmp ult i64 %716, %54, !dbg !4884
  br i1 %717, label %722, label %718, !dbg !4884

718:                                              ; preds = %712, %707
  %719 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %720 = phi i64 [ %714, %712 ], [ %709, %707 ]
  %721 = mul i64 %720, %54, !dbg !4884
  call void @llvm.dbg.value(metadata i64 %721, metadata !4813, metadata !DIExpression()), !dbg !4882
  br label %722, !dbg !4885

722:                                              ; preds = %718, %712, %707
  %723 = phi i32 [ %719, %718 ], [ %708, %707 ], [ %713, %712 ]
  %724 = phi i64 [ %721, %718 ], [ 9223372036854775807, %707 ], [ -9223372036854775808, %712 ], !dbg !4882
  %725 = phi i32 [ 0, %718 ], [ 1, %707 ], [ 1, %712 ], !dbg !4882
  %726 = or i32 %725, %723, !dbg !4886
  call void @llvm.dbg.value(metadata i32 %726, metadata !4796, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4880
  br label %976, !dbg !4853

727:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 2, metadata !4812, metadata !DIExpression()), !dbg !4887
  %728 = icmp slt i64 %31, 0, !dbg !4889
  br i1 %728, label %729, label %732, !dbg !4889

729:                                              ; preds = %727
  %730 = add i64 %31, -1, !dbg !4889
  %731 = icmp ult i64 %730, -4611686018427387905, !dbg !4889
  br i1 %731, label %976, label %734, !dbg !4889

732:                                              ; preds = %727
  %733 = icmp ugt i64 %31, 4611686018427387903, !dbg !4889
  br i1 %733, label %976, label %734, !dbg !4889

734:                                              ; preds = %729, %732
  %735 = shl nsw i64 %31, 1, !dbg !4889
  call void @llvm.dbg.value(metadata i64 %735, metadata !4813, metadata !DIExpression()), !dbg !4887
  br label %976, !dbg !4890

736:                                              ; preds = %58
  %737 = icmp eq i64 %31, -1, !dbg !4822
  br i1 %737, label %745, label %738, !dbg !4822

738:                                              ; preds = %736
  %739 = sub i64 0, %31, !dbg !4822
  %740 = udiv i64 -9223372036854775808, %739, !dbg !4822
  %741 = icmp ult i64 %740, %54, !dbg !4822
  br i1 %741, label %753, label %745, !dbg !4822

742:                                              ; preds = %58
  %743 = udiv i64 9223372036854775807, %54, !dbg !4822
  %744 = icmp ult i64 %743, %31, !dbg !4822
  br i1 %744, label %748, label %745, !dbg !4822

745:                                              ; preds = %736, %738, %742
  %746 = mul i64 %31, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %746, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 6, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %747 = icmp slt i64 %746, 0, !dbg !4822
  br i1 %747, label %753, label %748, !dbg !4822

748:                                              ; preds = %742, %745
  %749 = phi i32 [ 0, %745 ], [ 1, %742 ]
  %750 = phi i64 [ %746, %745 ], [ 9223372036854775807, %742 ]
  %751 = udiv i64 9223372036854775807, %54, !dbg !4822
  %752 = icmp ult i64 %751, %750, !dbg !4822
  br i1 %752, label %764, label %759, !dbg !4822

753:                                              ; preds = %738, %745
  %754 = phi i32 [ 0, %745 ], [ 1, %738 ]
  %755 = phi i64 [ %746, %745 ], [ -9223372036854775808, %738 ]
  %756 = sub i64 0, %755, !dbg !4822
  %757 = udiv i64 -9223372036854775808, %756, !dbg !4822
  %758 = icmp ult i64 %757, %54, !dbg !4822
  br i1 %758, label %769, label %759, !dbg !4822

759:                                              ; preds = %748, %753
  %760 = phi i32 [ %754, %753 ], [ %749, %748 ]
  %761 = phi i64 [ %755, %753 ], [ %750, %748 ]
  %762 = mul i64 %761, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %762, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %760, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 5, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %763 = icmp slt i64 %762, 0, !dbg !4822
  br i1 %763, label %769, label %764, !dbg !4822

764:                                              ; preds = %748, %759
  %765 = phi i32 [ %760, %759 ], [ 1, %748 ]
  %766 = phi i64 [ %762, %759 ], [ 9223372036854775807, %748 ]
  %767 = udiv i64 9223372036854775807, %54, !dbg !4822
  %768 = icmp ult i64 %767, %766, !dbg !4822
  br i1 %768, label %780, label %775, !dbg !4822

769:                                              ; preds = %753, %759
  %770 = phi i32 [ %760, %759 ], [ 1, %753 ]
  %771 = phi i64 [ %762, %759 ], [ -9223372036854775808, %753 ]
  %772 = sub i64 0, %771, !dbg !4822
  %773 = udiv i64 -9223372036854775808, %772, !dbg !4822
  %774 = icmp ult i64 %773, %54, !dbg !4822
  br i1 %774, label %785, label %775, !dbg !4822

775:                                              ; preds = %764, %769
  %776 = phi i32 [ %770, %769 ], [ %765, %764 ]
  %777 = phi i64 [ %771, %769 ], [ %766, %764 ]
  %778 = mul i64 %777, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %778, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %776, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 4, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %779 = icmp slt i64 %778, 0, !dbg !4822
  br i1 %779, label %785, label %780, !dbg !4822

780:                                              ; preds = %764, %775
  %781 = phi i32 [ %776, %775 ], [ 1, %764 ]
  %782 = phi i64 [ %778, %775 ], [ 9223372036854775807, %764 ]
  %783 = udiv i64 9223372036854775807, %54, !dbg !4822
  %784 = icmp ult i64 %783, %782, !dbg !4822
  br i1 %784, label %796, label %791, !dbg !4822

785:                                              ; preds = %769, %775
  %786 = phi i32 [ %776, %775 ], [ 1, %769 ]
  %787 = phi i64 [ %778, %775 ], [ -9223372036854775808, %769 ]
  %788 = sub i64 0, %787, !dbg !4822
  %789 = udiv i64 -9223372036854775808, %788, !dbg !4822
  %790 = icmp ult i64 %789, %54, !dbg !4822
  br i1 %790, label %801, label %791, !dbg !4822

791:                                              ; preds = %780, %785
  %792 = phi i32 [ %786, %785 ], [ %781, %780 ]
  %793 = phi i64 [ %787, %785 ], [ %782, %780 ]
  %794 = mul i64 %793, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %794, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %792, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %795 = icmp slt i64 %794, 0, !dbg !4822
  br i1 %795, label %801, label %796, !dbg !4822

796:                                              ; preds = %780, %791
  %797 = phi i32 [ %792, %791 ], [ 1, %780 ]
  %798 = phi i64 [ %794, %791 ], [ 9223372036854775807, %780 ]
  %799 = udiv i64 9223372036854775807, %54, !dbg !4822
  %800 = icmp ult i64 %799, %798, !dbg !4822
  br i1 %800, label %812, label %807, !dbg !4822

801:                                              ; preds = %785, %791
  %802 = phi i32 [ %792, %791 ], [ 1, %785 ]
  %803 = phi i64 [ %794, %791 ], [ -9223372036854775808, %785 ]
  %804 = sub i64 0, %803, !dbg !4822
  %805 = udiv i64 -9223372036854775808, %804, !dbg !4822
  %806 = icmp ult i64 %805, %54, !dbg !4822
  br i1 %806, label %817, label %807, !dbg !4822

807:                                              ; preds = %796, %801
  %808 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %809 = phi i64 [ %803, %801 ], [ %798, %796 ]
  %810 = mul i64 %809, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %810, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %808, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %811 = icmp slt i64 %810, 0, !dbg !4822
  br i1 %811, label %817, label %812, !dbg !4822

812:                                              ; preds = %796, %807
  %813 = phi i32 [ %808, %807 ], [ 1, %796 ]
  %814 = phi i64 [ %810, %807 ], [ 9223372036854775807, %796 ]
  %815 = udiv i64 9223372036854775807, %54, !dbg !4822
  %816 = icmp ult i64 %815, %814, !dbg !4822
  br i1 %816, label %828, label %823, !dbg !4822

817:                                              ; preds = %801, %807
  %818 = phi i32 [ %808, %807 ], [ 1, %801 ]
  %819 = phi i64 [ %810, %807 ], [ -9223372036854775808, %801 ]
  %820 = sub i64 0, %819, !dbg !4822
  %821 = udiv i64 -9223372036854775808, %820, !dbg !4822
  %822 = icmp ult i64 %821, %54, !dbg !4822
  br i1 %822, label %833, label %823, !dbg !4822

823:                                              ; preds = %812, %817
  %824 = phi i32 [ %818, %817 ], [ %813, %812 ]
  %825 = phi i64 [ %819, %817 ], [ %814, %812 ]
  %826 = mul i64 %825, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %826, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %824, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %827 = icmp slt i64 %826, 0, !dbg !4822
  br i1 %827, label %833, label %828, !dbg !4822

828:                                              ; preds = %812, %823
  %829 = phi i32 [ %824, %823 ], [ 1, %812 ]
  %830 = phi i64 [ %826, %823 ], [ 9223372036854775807, %812 ]
  %831 = udiv i64 9223372036854775807, %54, !dbg !4822
  %832 = icmp ult i64 %831, %830, !dbg !4822
  br i1 %832, label %844, label %839, !dbg !4822

833:                                              ; preds = %817, %823
  %834 = phi i32 [ %824, %823 ], [ 1, %817 ]
  %835 = phi i64 [ %826, %823 ], [ -9223372036854775808, %817 ]
  %836 = sub i64 0, %835, !dbg !4822
  %837 = udiv i64 -9223372036854775808, %836, !dbg !4822
  %838 = icmp ult i64 %837, %54, !dbg !4822
  br i1 %838, label %849, label %839, !dbg !4822

839:                                              ; preds = %828, %833
  %840 = phi i32 [ %834, %833 ], [ %829, %828 ]
  %841 = phi i64 [ %835, %833 ], [ %830, %828 ]
  %842 = mul i64 %841, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %842, metadata !4813, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %840, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4820
  %843 = icmp slt i64 %842, 0, !dbg !4822
  br i1 %843, label %849, label %844, !dbg !4822

844:                                              ; preds = %828, %839
  %845 = phi i32 [ %840, %839 ], [ 1, %828 ]
  %846 = phi i64 [ %842, %839 ], [ 9223372036854775807, %828 ]
  %847 = udiv i64 9223372036854775807, %54, !dbg !4822
  %848 = icmp ult i64 %847, %846, !dbg !4822
  br i1 %848, label %859, label %855, !dbg !4822

849:                                              ; preds = %833, %839
  %850 = phi i32 [ %840, %839 ], [ 1, %833 ]
  %851 = phi i64 [ %842, %839 ], [ -9223372036854775808, %833 ]
  %852 = sub i64 0, %851, !dbg !4822
  %853 = udiv i64 -9223372036854775808, %852, !dbg !4822
  %854 = icmp ult i64 %853, %54, !dbg !4822
  br i1 %854, label %859, label %855, !dbg !4822

855:                                              ; preds = %849, %844
  %856 = phi i32 [ %850, %849 ], [ %845, %844 ]
  %857 = phi i64 [ %851, %849 ], [ %846, %844 ]
  %858 = mul i64 %857, %54, !dbg !4822
  call void @llvm.dbg.value(metadata i64 %858, metadata !4813, metadata !DIExpression()), !dbg !4820
  br label %859, !dbg !4891

859:                                              ; preds = %855, %849, %844
  %860 = phi i32 [ %856, %855 ], [ %845, %844 ], [ %850, %849 ]
  %861 = phi i64 [ %858, %855 ], [ 9223372036854775807, %844 ], [ -9223372036854775808, %849 ], !dbg !4820
  %862 = phi i32 [ 0, %855 ], [ 1, %844 ], [ 1, %849 ], !dbg !4820
  %863 = or i32 %862, %860, !dbg !4892
  call void @llvm.dbg.value(metadata i32 %863, metadata !4796, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4818
  br label %976, !dbg !4853

864:                                              ; preds = %56
  %865 = icmp eq i64 %31, -1, !dbg !4816
  br i1 %865, label %873, label %866, !dbg !4816

866:                                              ; preds = %864
  %867 = sub i64 0, %31, !dbg !4816
  %868 = udiv i64 -9223372036854775808, %867, !dbg !4816
  %869 = icmp ult i64 %868, %54, !dbg !4816
  br i1 %869, label %881, label %873, !dbg !4816

870:                                              ; preds = %56
  %871 = udiv i64 9223372036854775807, %54, !dbg !4816
  %872 = icmp ult i64 %871, %31, !dbg !4816
  br i1 %872, label %876, label %873, !dbg !4816

873:                                              ; preds = %864, %866, %870
  %874 = mul i64 %31, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %874, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 5, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %875 = icmp slt i64 %874, 0, !dbg !4816
  br i1 %875, label %881, label %876, !dbg !4816

876:                                              ; preds = %870, %873
  %877 = phi i32 [ 0, %873 ], [ 1, %870 ]
  %878 = phi i64 [ %874, %873 ], [ 9223372036854775807, %870 ]
  %879 = udiv i64 9223372036854775807, %54, !dbg !4816
  %880 = icmp ult i64 %879, %878, !dbg !4816
  br i1 %880, label %892, label %887, !dbg !4816

881:                                              ; preds = %866, %873
  %882 = phi i32 [ 0, %873 ], [ 1, %866 ]
  %883 = phi i64 [ %874, %873 ], [ -9223372036854775808, %866 ]
  %884 = sub i64 0, %883, !dbg !4816
  %885 = udiv i64 -9223372036854775808, %884, !dbg !4816
  %886 = icmp ult i64 %885, %54, !dbg !4816
  br i1 %886, label %897, label %887, !dbg !4816

887:                                              ; preds = %876, %881
  %888 = phi i32 [ %882, %881 ], [ %877, %876 ]
  %889 = phi i64 [ %883, %881 ], [ %878, %876 ]
  %890 = mul i64 %889, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %890, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %888, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 4, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %891 = icmp slt i64 %890, 0, !dbg !4816
  br i1 %891, label %897, label %892, !dbg !4816

892:                                              ; preds = %876, %887
  %893 = phi i32 [ %888, %887 ], [ 1, %876 ]
  %894 = phi i64 [ %890, %887 ], [ 9223372036854775807, %876 ]
  %895 = udiv i64 9223372036854775807, %54, !dbg !4816
  %896 = icmp ult i64 %895, %894, !dbg !4816
  br i1 %896, label %908, label %903, !dbg !4816

897:                                              ; preds = %881, %887
  %898 = phi i32 [ %888, %887 ], [ 1, %881 ]
  %899 = phi i64 [ %890, %887 ], [ -9223372036854775808, %881 ]
  %900 = sub i64 0, %899, !dbg !4816
  %901 = udiv i64 -9223372036854775808, %900, !dbg !4816
  %902 = icmp ult i64 %901, %54, !dbg !4816
  br i1 %902, label %913, label %903, !dbg !4816

903:                                              ; preds = %892, %897
  %904 = phi i32 [ %898, %897 ], [ %893, %892 ]
  %905 = phi i64 [ %899, %897 ], [ %894, %892 ]
  %906 = mul i64 %905, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %906, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %904, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 3, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %907 = icmp slt i64 %906, 0, !dbg !4816
  br i1 %907, label %913, label %908, !dbg !4816

908:                                              ; preds = %892, %903
  %909 = phi i32 [ %904, %903 ], [ 1, %892 ]
  %910 = phi i64 [ %906, %903 ], [ 9223372036854775807, %892 ]
  %911 = udiv i64 9223372036854775807, %54, !dbg !4816
  %912 = icmp ult i64 %911, %910, !dbg !4816
  br i1 %912, label %924, label %919, !dbg !4816

913:                                              ; preds = %897, %903
  %914 = phi i32 [ %904, %903 ], [ 1, %897 ]
  %915 = phi i64 [ %906, %903 ], [ -9223372036854775808, %897 ]
  %916 = sub i64 0, %915, !dbg !4816
  %917 = udiv i64 -9223372036854775808, %916, !dbg !4816
  %918 = icmp ult i64 %917, %54, !dbg !4816
  br i1 %918, label %929, label %919, !dbg !4816

919:                                              ; preds = %908, %913
  %920 = phi i32 [ %914, %913 ], [ %909, %908 ]
  %921 = phi i64 [ %915, %913 ], [ %910, %908 ]
  %922 = mul i64 %921, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %922, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %920, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %923 = icmp slt i64 %922, 0, !dbg !4816
  br i1 %923, label %929, label %924, !dbg !4816

924:                                              ; preds = %908, %919
  %925 = phi i32 [ %920, %919 ], [ 1, %908 ]
  %926 = phi i64 [ %922, %919 ], [ 9223372036854775807, %908 ]
  %927 = udiv i64 9223372036854775807, %54, !dbg !4816
  %928 = icmp ult i64 %927, %926, !dbg !4816
  br i1 %928, label %940, label %935, !dbg !4816

929:                                              ; preds = %913, %919
  %930 = phi i32 [ %920, %919 ], [ 1, %913 ]
  %931 = phi i64 [ %922, %919 ], [ -9223372036854775808, %913 ]
  %932 = sub i64 0, %931, !dbg !4816
  %933 = udiv i64 -9223372036854775808, %932, !dbg !4816
  %934 = icmp ult i64 %933, %54, !dbg !4816
  br i1 %934, label %945, label %935, !dbg !4816

935:                                              ; preds = %924, %929
  %936 = phi i32 [ %930, %929 ], [ %925, %924 ]
  %937 = phi i64 [ %931, %929 ], [ %926, %924 ]
  %938 = mul i64 %937, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %938, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %936, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 1, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %939 = icmp slt i64 %938, 0, !dbg !4816
  br i1 %939, label %945, label %940, !dbg !4816

940:                                              ; preds = %924, %935
  %941 = phi i32 [ %936, %935 ], [ 1, %924 ]
  %942 = phi i64 [ %938, %935 ], [ 9223372036854775807, %924 ]
  %943 = udiv i64 9223372036854775807, %54, !dbg !4816
  %944 = icmp ult i64 %943, %942, !dbg !4816
  br i1 %944, label %956, label %951, !dbg !4816

945:                                              ; preds = %929, %935
  %946 = phi i32 [ %936, %935 ], [ 1, %929 ]
  %947 = phi i64 [ %938, %935 ], [ -9223372036854775808, %929 ]
  %948 = sub i64 0, %947, !dbg !4816
  %949 = udiv i64 -9223372036854775808, %948, !dbg !4816
  %950 = icmp ult i64 %949, %54, !dbg !4816
  br i1 %950, label %961, label %951, !dbg !4816

951:                                              ; preds = %940, %945
  %952 = phi i32 [ %946, %945 ], [ %941, %940 ]
  %953 = phi i64 [ %947, %945 ], [ %942, %940 ]
  %954 = mul i64 %953, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %954, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %952, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr undef, metadata !4807, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4812, metadata !DIExpression()), !dbg !4814
  %955 = icmp slt i64 %954, 0, !dbg !4816
  br i1 %955, label %961, label %956, !dbg !4816

956:                                              ; preds = %940, %951
  %957 = phi i32 [ %952, %951 ], [ 1, %940 ]
  %958 = phi i64 [ %954, %951 ], [ 9223372036854775807, %940 ]
  %959 = udiv i64 9223372036854775807, %54, !dbg !4816
  %960 = icmp ult i64 %959, %958, !dbg !4816
  br i1 %960, label %971, label %967, !dbg !4816

961:                                              ; preds = %945, %951
  %962 = phi i32 [ %952, %951 ], [ 1, %945 ]
  %963 = phi i64 [ %954, %951 ], [ -9223372036854775808, %945 ]
  %964 = sub i64 0, %963, !dbg !4816
  %965 = udiv i64 -9223372036854775808, %964, !dbg !4816
  %966 = icmp ult i64 %965, %54, !dbg !4816
  br i1 %966, label %971, label %967, !dbg !4816

967:                                              ; preds = %961, %956
  %968 = phi i32 [ %962, %961 ], [ %957, %956 ]
  %969 = phi i64 [ %963, %961 ], [ %958, %956 ]
  %970 = mul i64 %969, %54, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %970, metadata !4813, metadata !DIExpression()), !dbg !4814
  br label %971, !dbg !4893

971:                                              ; preds = %967, %961, %956
  %972 = phi i32 [ %968, %967 ], [ %957, %956 ], [ %962, %961 ]
  %973 = phi i64 [ %970, %967 ], [ 9223372036854775807, %956 ], [ -9223372036854775808, %961 ], !dbg !4814
  %974 = phi i32 [ 0, %967 ], [ 1, %956 ], [ 1, %961 ], !dbg !4814
  %975 = or i32 %974, %972, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %975, metadata !4796, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 0, metadata !4803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4804
  br label %976, !dbg !4853

976:                                              ; preds = %234, %238, %241, %971, %859, %722, %656, %512, %352, %272, %225, %175, %729, %78, %70, %53, %72, %74, %80, %82, %732, %734
  %977 = phi i64 [ %31, %53 ], [ %75, %74 ], [ 9223372036854775807, %72 ], [ %83, %82 ], [ 9223372036854775807, %80 ], [ %735, %734 ], [ 9223372036854775807, %732 ], [ -9223372036854775808, %70 ], [ -9223372036854775808, %78 ], [ -9223372036854775808, %729 ], [ %177, %175 ], [ %227, %225 ], [ %274, %272 ], [ %354, %352 ], [ %514, %512 ], [ %658, %656 ], [ %724, %722 ], [ %861, %859 ], [ %973, %971 ], [ %242, %241 ], [ 9223372036854775807, %238 ], [ -9223372036854775808, %234 ], !dbg !4742
  %978 = phi i32 [ 0, %53 ], [ 0, %74 ], [ 1, %72 ], [ 0, %82 ], [ 1, %80 ], [ 0, %734 ], [ 1, %732 ], [ 1, %70 ], [ 1, %78 ], [ 1, %729 ], [ %179, %175 ], [ %229, %225 ], [ %276, %272 ], [ %356, %352 ], [ %516, %512 ], [ %660, %656 ], [ %726, %722 ], [ %863, %859 ], [ %975, %971 ], [ 0, %241 ], [ 1, %238 ], [ 1, %234 ], !dbg !4895
  call void @llvm.dbg.value(metadata i32 %978, metadata !4741, metadata !DIExpression()), !dbg !4781
  %979 = or i32 %978, %30, !dbg !4853
  call void @llvm.dbg.value(metadata i32 %979, metadata !4736, metadata !DIExpression()), !dbg !4742
  %980 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4896
  store ptr %980, ptr %8, align 8, !dbg !4896, !tbaa !872
  %981 = load i8, ptr %980, align 1, !dbg !4897, !tbaa !950
  %982 = icmp eq i8 %981, 0, !dbg !4897
  %983 = or i32 %979, 2
  %984 = select i1 %982, i32 %979, i32 %983, !dbg !4899
  call void @llvm.dbg.value(metadata i32 %984, metadata !4736, metadata !DIExpression()), !dbg !4742
  br label %987

985:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %10, metadata !4735, metadata !DIExpression()), !dbg !4742
  store i64 %31, ptr %3, align 8, !dbg !4900, !tbaa !1319
  %986 = or i32 %30, 2, !dbg !4901
  call void @llvm.dbg.value(metadata i32 %30, metadata !4736, metadata !DIExpression()), !dbg !4742
  br label %990

987:                                              ; preds = %976, %29
  %988 = phi i64 [ %31, %29 ], [ %977, %976 ], !dbg !4902
  %989 = phi i32 [ %30, %29 ], [ %984, %976 ], !dbg !4903
  call void @llvm.dbg.value(metadata i32 %989, metadata !4736, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i64 %988, metadata !4735, metadata !DIExpression()), !dbg !4742
  store i64 %988, ptr %3, align 8, !dbg !4904, !tbaa !1319
  br label %990, !dbg !4905

990:                                              ; preds = %985, %22, %13, %15, %18, %987, %38, %28
  %991 = phi i32 [ %989, %987 ], [ %986, %985 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !4906
  ret i32 %991, !dbg !4906
}

; Function Attrs: nounwind
declare !dbg !4907 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #18 !dbg !4912 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4950, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata ptr %1, metadata !4951, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 0, metadata !4952, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 0, metadata !4953, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i8 0, metadata !4954, metadata !DIExpression()), !dbg !4974
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !4975
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4955, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata ptr %1, metadata !4959, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr %3, metadata !4961, metadata !DIExpression()), !dbg !4977
  br label %4, !dbg !4978

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4977
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4974
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4979
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4974
  call void @llvm.dbg.value(metadata i32 %9, metadata !4952, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 %8, metadata !4953, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata ptr %10, metadata !4961, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr %6, metadata !4959, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i8 poison, metadata !4954, metadata !DIExpression()), !dbg !4974
  %11 = load i8, ptr %6, align 1, !dbg !4980, !tbaa !950
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4981

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4952, metadata !DIExpression()), !dbg !4974
  %13 = icmp slt i64 %7, 80, !dbg !4982
  br i1 %13, label %14, label %43, !dbg !4985

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4986
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4977
  store i8 114, ptr %10, align 1, !dbg !4987, !tbaa !950
  br label %43, !dbg !4988

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4952, metadata !DIExpression()), !dbg !4974
  %17 = or i32 %8, 576, !dbg !4989
  call void @llvm.dbg.value(metadata i32 %17, metadata !4953, metadata !DIExpression()), !dbg !4974
  %18 = icmp slt i64 %7, 80, !dbg !4990
  br i1 %18, label %19, label %43, !dbg !4992

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4993
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4977
  store i8 119, ptr %10, align 1, !dbg !4994, !tbaa !950
  br label %43, !dbg !4995

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4952, metadata !DIExpression()), !dbg !4974
  %22 = or i32 %8, 1088, !dbg !4996
  call void @llvm.dbg.value(metadata i32 %22, metadata !4953, metadata !DIExpression()), !dbg !4974
  %23 = icmp slt i64 %7, 80, !dbg !4997
  br i1 %23, label %24, label %43, !dbg !4999

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5000
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4977
  store i8 97, ptr %10, align 1, !dbg !5001, !tbaa !950
  br label %43, !dbg !5002

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4953, metadata !DIExpression()), !dbg !4974
  %27 = icmp slt i64 %7, 80, !dbg !5003
  br i1 %27, label %28, label %43, !dbg !5005

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5006
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4977
  store i8 98, ptr %10, align 1, !dbg !5007, !tbaa !950
  br label %43, !dbg !5008

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4952, metadata !DIExpression()), !dbg !4974
  %31 = icmp slt i64 %7, 80, !dbg !5009
  br i1 %31, label %32, label %43, !dbg !5011

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5012
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4977
  store i8 43, ptr %10, align 1, !dbg !5013, !tbaa !950
  br label %43, !dbg !5014

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5015
  call void @llvm.dbg.value(metadata i32 %35, metadata !4953, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i8 1, metadata !4954, metadata !DIExpression()), !dbg !4974
  br label %43, !dbg !5016

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5017
  call void @llvm.dbg.value(metadata i32 %37, metadata !4953, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i8 1, metadata !4954, metadata !DIExpression()), !dbg !4974
  br label %43, !dbg !5018

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #43, !dbg !5019
  call void @llvm.dbg.value(metadata i64 %39, metadata !4962, metadata !DIExpression()), !dbg !5020
  %40 = sub nsw i64 80, %7, !dbg !5021
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5023
  call void @llvm.dbg.value(metadata i64 %41, metadata !4962, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.value(metadata ptr %10, metadata !5024, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata ptr %6, metadata !5027, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i64 %41, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #42, !dbg !5031
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5032
  call void @llvm.dbg.value(metadata ptr %42, metadata !4961, metadata !DIExpression()), !dbg !4977
  br label %49, !dbg !5033

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4974
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4974
  call void @llvm.dbg.value(metadata i32 %47, metadata !4952, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 %46, metadata !4953, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i8 poison, metadata !4954, metadata !DIExpression()), !dbg !4974
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5034
  call void @llvm.dbg.value(metadata ptr %48, metadata !4959, metadata !DIExpression()), !dbg !4977
  br label %4, !dbg !5035, !llvm.loop !5036

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4977
  call void @llvm.dbg.value(metadata ptr %50, metadata !4961, metadata !DIExpression()), !dbg !4977
  store i8 0, ptr %50, align 1, !dbg !5038, !tbaa !950
  br i1 %5, label %51, label %62, !dbg !5039

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !5040
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #42, !dbg !5041
  call void @llvm.dbg.value(metadata i32 %53, metadata !4967, metadata !DIExpression()), !dbg !5042
  %54 = icmp slt i32 %53, 0, !dbg !5043
  br i1 %54, label %64, label %55, !dbg !5045

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #42, !dbg !5046
  call void @llvm.dbg.value(metadata ptr %56, metadata !4970, metadata !DIExpression()), !dbg !5042
  %57 = icmp eq ptr %56, null, !dbg !5047
  br i1 %57, label %58, label %64, !dbg !5048

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #45, !dbg !5049
  %60 = load i32, ptr %59, align 4, !dbg !5049, !tbaa !941
  call void @llvm.dbg.value(metadata i32 %60, metadata !4971, metadata !DIExpression()), !dbg !5050
  %61 = tail call i32 @close(i32 noundef %53) #42, !dbg !5051
  store i32 %60, ptr %59, align 4, !dbg !5052, !tbaa !941
  br label %64, !dbg !5053

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5054, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.value(metadata ptr %1, metadata !5057, metadata !DIExpression()), !dbg !5058
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5060
  br label %64, !dbg !5061

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4974
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !5062
  ret ptr %65, !dbg !5062
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5063 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #39

; Function Attrs: nofree nounwind
declare !dbg !5066 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5069 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5070 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #18 !dbg !5073 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5111, metadata !DIExpression()), !dbg !5116
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !5117
  call void @llvm.dbg.value(metadata i1 poison, metadata !5112, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5116
  call void @llvm.dbg.value(metadata ptr %0, metadata !5118, metadata !DIExpression()), !dbg !5121
  %3 = load i32, ptr %0, align 8, !dbg !5123, !tbaa !1298
  %4 = and i32 %3, 32, !dbg !5124
  %5 = icmp eq i32 %4, 0, !dbg !5124
  call void @llvm.dbg.value(metadata i1 %5, metadata !5114, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5116
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !5125
  %7 = icmp eq i32 %6, 0, !dbg !5126
  call void @llvm.dbg.value(metadata i1 %7, metadata !5115, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5116
  br i1 %5, label %8, label %18, !dbg !5127

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5129
  call void @llvm.dbg.value(metadata i1 %9, metadata !5112, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5116
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5130
  %11 = xor i1 %7, true, !dbg !5130
  %12 = sext i1 %11 to i32, !dbg !5130
  br i1 %10, label %21, label %13, !dbg !5130

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !5131
  %15 = load i32, ptr %14, align 4, !dbg !5131, !tbaa !941
  %16 = icmp ne i32 %15, 9, !dbg !5132
  %17 = sext i1 %16 to i32, !dbg !5133
  br label %21, !dbg !5133

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5134

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !5136
  store i32 0, ptr %20, align 4, !dbg !5138, !tbaa !941
  br label %21, !dbg !5136

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5116
  ret i32 %22, !dbg !5139
}

; Function Attrs: nounwind
declare !dbg !5140 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !5143 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5148, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata ptr %1, metadata !5149, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata i64 %2, metadata !5150, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata ptr %3, metadata !5151, metadata !DIExpression()), !dbg !5153
  %5 = icmp eq ptr %1, null, !dbg !5154
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5156
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5156
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5156
  call void @llvm.dbg.value(metadata i64 %8, metadata !5150, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata ptr %7, metadata !5149, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata ptr %6, metadata !5148, metadata !DIExpression()), !dbg !5153
  %9 = icmp eq ptr %3, null, !dbg !5157
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5159
  call void @llvm.dbg.value(metadata ptr %10, metadata !5151, metadata !DIExpression()), !dbg !5153
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #42, !dbg !5160
  call void @llvm.dbg.value(metadata i64 %11, metadata !5152, metadata !DIExpression()), !dbg !5153
  %12 = icmp ult i64 %11, -3, !dbg !5161
  br i1 %12, label %13, label %17, !dbg !5163

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #43, !dbg !5164
  %15 = icmp eq i32 %14, 0, !dbg !5164
  br i1 %15, label %16, label %29, !dbg !5165

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5166, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.value(metadata ptr %10, metadata !5173, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata i32 0, metadata !5176, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata i64 8, metadata !5177, metadata !DIExpression()), !dbg !5178
  store i64 0, ptr %10, align 1, !dbg !5180
  br label %29, !dbg !5181

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5182
  br i1 %18, label %19, label %20, !dbg !5184

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5185
  unreachable, !dbg !5185

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5186

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #42, !dbg !5188
  br i1 %23, label %29, label %24, !dbg !5189

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5190
  br i1 %25, label %29, label %26, !dbg !5193

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5194, !tbaa !950
  %28 = zext i8 %27 to i32, !dbg !5195
  store i32 %28, ptr %6, align 4, !dbg !5196, !tbaa !941
  br label %29, !dbg !5197

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5153
  ret i64 %30, !dbg !5198
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5199 i32 @mbsinit(ptr noundef) local_unnamed_addr #40

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5205 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5207, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i64 %1, metadata !5208, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i64 %2, metadata !5209, metadata !DIExpression()), !dbg !5211
  %4 = icmp eq i64 %2, 0, !dbg !5212
  br i1 %4, label %8, label %5, !dbg !5212

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5212
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5212
  br i1 %7, label %13, label %8, !dbg !5212

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5210, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5211
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5210, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5211
  %9 = mul i64 %2, %1, !dbg !5212
  call void @llvm.dbg.value(metadata i64 %9, metadata !5210, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata ptr %0, metadata !5214, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.value(metadata i64 %9, metadata !5217, metadata !DIExpression()), !dbg !5218
  %10 = icmp eq i64 %9, 0, !dbg !5220
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5220
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #49, !dbg !5221
  br label %15, !dbg !5222

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5210, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5211
  %14 = tail call ptr @__errno_location() #45, !dbg !5223
  store i32 12, ptr %14, align 4, !dbg !5225, !tbaa !941
  br label %15, !dbg !5226

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5211
  ret ptr %16, !dbg !5227
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #18 !dbg !5228 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5232, metadata !DIExpression()), !dbg !5237
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !5238
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5233, metadata !DIExpression()), !dbg !5239
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !5240
  %4 = icmp eq i32 %3, 0, !dbg !5240
  br i1 %4, label %5, label %12, !dbg !5242

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5243, metadata !DIExpression()), !dbg !5247
  call void @llvm.dbg.value(metadata ptr @.str.158, metadata !5246, metadata !DIExpression()), !dbg !5247
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.158, i64 2), !dbg !5250
  %7 = icmp eq i32 %6, 0, !dbg !5251
  br i1 %7, label %11, label %8, !dbg !5252

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5243, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.value(metadata ptr @.str.1.159, metadata !5246, metadata !DIExpression()), !dbg !5253
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.159, i64 6), !dbg !5255
  %10 = icmp eq i32 %9, 0, !dbg !5256
  br i1 %10, label %11, label %12, !dbg !5257

11:                                               ; preds = %8, %5
  br label %12, !dbg !5258

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5237
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !5259
  ret i1 %13, !dbg !5259
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #18 !dbg !5260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5264, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata ptr %1, metadata !5265, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %2, metadata !5266, metadata !DIExpression()), !dbg !5267
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !5268
  ret i32 %4, !dbg !5269
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #18 !dbg !5270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5274, metadata !DIExpression()), !dbg !5275
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !5276
  ret ptr %2, !dbg !5277
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #18 !dbg !5278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5280, metadata !DIExpression()), !dbg !5282
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5283
  call void @llvm.dbg.value(metadata ptr %2, metadata !5281, metadata !DIExpression()), !dbg !5282
  ret ptr %2, !dbg !5284
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #18 !dbg !5285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5287, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata ptr %1, metadata !5288, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata i64 %2, metadata !5289, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata i32 %0, metadata !5280, metadata !DIExpression()), !dbg !5295
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5297
  call void @llvm.dbg.value(metadata ptr %4, metadata !5281, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata ptr %4, metadata !5290, metadata !DIExpression()), !dbg !5294
  %5 = icmp eq ptr %4, null, !dbg !5298
  br i1 %5, label %6, label %9, !dbg !5299

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5300
  br i1 %7, label %19, label %8, !dbg !5303

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5304, !tbaa !950
  br label %19, !dbg !5305

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !5306
  call void @llvm.dbg.value(metadata i64 %10, metadata !5291, metadata !DIExpression()), !dbg !5307
  %11 = icmp ult i64 %10, %2, !dbg !5308
  br i1 %11, label %12, label %14, !dbg !5310

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5311
  call void @llvm.dbg.value(metadata ptr %1, metadata !5313, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.value(metadata ptr %4, metadata !5316, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.value(metadata i64 %13, metadata !5317, metadata !DIExpression()), !dbg !5318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #42, !dbg !5320
  br label %19, !dbg !5321

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5322
  br i1 %15, label %19, label %16, !dbg !5325

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5326
  call void @llvm.dbg.value(metadata ptr %1, metadata !5313, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.value(metadata ptr %4, metadata !5316, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.value(metadata i64 %17, metadata !5317, metadata !DIExpression()), !dbg !5328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !5330
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5331
  store i8 0, ptr %18, align 1, !dbg !5332, !tbaa !950
  br label %19, !dbg !5333

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5334
  ret i32 %20, !dbg !5335
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
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { nocallback nofree nosync nounwind willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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

!llvm.dbg.cu = !{!74, !424, !428, !454, !469, !746, !780, !783, !785, !788, !790, !792, !526, !540, !588, !794, !738, !800, !831, !833, !840, !842, !762, !844, !847, !849, !851}
!llvm.ident = !{!853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853, !853}
!llvm.module.flags = !{!854, !855, !856, !857, !858, !859, !860}

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
!427 = distinct !DIGlobalVariable(name: "base32_to_int", scope: !428, file: !429, line: 206, type: !448, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !431, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/base32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "95987f1bba4d0dce67e048a4dafbe22a")
!430 = !{!196, !237, !135, !131, !130}
!431 = !{!432, !426}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "b32str", scope: !434, file: !429, line: 68, type: !447, isLocal: true, isDefinition: true)
!434 = distinct !DISubprogram(name: "base32_encode", scope: !429, file: !429, line: 65, type: !435, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !442)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437, !438, !441, !438}
!437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !439, line: 130, baseType: !440)
!439 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !134, line: 35, baseType: !237)
!441 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!442 = !{!443, !444, !445, !446}
!443 = !DILocalVariable(name: "in", arg: 1, scope: !434, file: !429, line: 65, type: !437)
!444 = !DILocalVariable(name: "inlen", arg: 2, scope: !434, file: !429, line: 65, type: !438)
!445 = !DILocalVariable(name: "out", arg: 3, scope: !434, file: !429, line: 66, type: !441)
!446 = !DILocalVariable(name: "outlen", arg: 4, scope: !434, file: !429, line: 66, type: !438)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !390)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 2048, elements: !450)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!450 = !{!451}
!451 = !DISubrange(count: 256)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "file_name", scope: !454, file: !455, line: 45, type: !136, isLocal: true, isDefinition: true)
!454 = distinct !DICompileUnit(language: DW_LANG_C11, file: !455, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !456, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!456 = !{!457, !459, !461, !463, !452, !465}
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !455, line: 121, type: !19, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !455, line: 121, type: !367, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !455, line: 123, type: !19, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !455, line: 126, type: !169, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !454, file: !455, line: 55, type: !196, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !469, file: !470, line: 66, type: !521, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!471 = !{!131, !138}
!472 = !{!473, !475, !500, !502, !504, !506, !467, !508, !510, !512, !514, !519}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 272, type: !69, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "old_file_name", scope: !477, file: !470, line: 304, type: !136, isLocal: true, isDefinition: true)
!477 = distinct !DISubprogram(name: "verror_at_line", scope: !470, file: !470, line: 298, type: !478, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !493)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !87, !87, !136, !78, !136, !480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !481, line: 52, baseType: !482)
!481 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !483, line: 14, baseType: !484)
!483 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !485, baseType: !486)
!485 = !DIFile(filename: "lib/error.c", directory: "/src")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !487)
!487 = !{!488, !489, !490, !491, !492}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !486, file: !485, baseType: !131, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !486, file: !485, baseType: !131, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !486, file: !485, baseType: !131, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !486, file: !485, baseType: !87, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !486, file: !485, baseType: !87, size: 32, offset: 224)
!493 = !{!494, !495, !496, !497, !498, !499}
!494 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !470, line: 298, type: !87)
!495 = !DILocalVariable(name: "errnum", arg: 2, scope: !477, file: !470, line: 298, type: !87)
!496 = !DILocalVariable(name: "file_name", arg: 3, scope: !477, file: !470, line: 298, type: !136)
!497 = !DILocalVariable(name: "line_number", arg: 4, scope: !477, file: !470, line: 298, type: !78)
!498 = !DILocalVariable(name: "message", arg: 5, scope: !477, file: !470, line: 298, type: !136)
!499 = !DILocalVariable(name: "args", arg: 6, scope: !477, file: !470, line: 298, type: !480)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "old_line_number", scope: !477, file: !470, line: 305, type: !78, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !470, line: 338, type: !273, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !299, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !164, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "error_message_count", scope: !469, file: !470, line: 69, type: !78, isLocal: false, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !469, file: !470, line: 295, type: !87, isLocal: false, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !19, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 21)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !470, line: 214, type: !69, isLocal: true, isDefinition: true)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null}
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "program_name", scope: !526, file: !527, line: 31, type: !136, isLocal: false, isDefinition: true)
!526 = distinct !DICompileUnit(language: DW_LANG_C11, file: !527, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !528, globals: !529, splitDebugInlining: false, nameTableKind: None)
!527 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!528 = !{!130}
!529 = !{!524, !530, !532}
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !527, line: 46, type: !299, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !527, line: 49, type: !273, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "utf07FF", scope: !536, file: !537, line: 46, type: !564, isLocal: true, isDefinition: true)
!536 = distinct !DISubprogram(name: "proper_name_lite", scope: !537, file: !537, line: 38, type: !538, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !542)
!537 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!538 = !DISubroutineType(types: !539)
!539 = !{!136, !136, !136}
!540 = distinct !DICompileUnit(language: DW_LANG_C11, file: !537, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !541, splitDebugInlining: false, nameTableKind: None)
!541 = !{!534}
!542 = !{!543, !544, !545, !546, !551}
!543 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !536, file: !537, line: 38, type: !136)
!544 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !536, file: !537, line: 38, type: !136)
!545 = !DILocalVariable(name: "translation", scope: !536, file: !537, line: 40, type: !136)
!546 = !DILocalVariable(name: "w", scope: !536, file: !537, line: 47, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !548, line: 37, baseType: !549)
!548 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!551 = !DILocalVariable(name: "mbs", scope: !536, file: !537, line: 48, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !553, line: 6, baseType: !554)
!553 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !555, line: 21, baseType: !556)
!555 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 13, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !556, file: !555, line: 15, baseType: !87, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !556, file: !555, line: 20, baseType: !560, size: 32, offset: 32)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !555, line: 16, size: 32, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !560, file: !555, line: 18, baseType: !78, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !560, file: !555, line: 19, baseType: !273, size: 32)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !567, line: 78, type: !299, isLocal: true, isDefinition: true)
!567 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !567, line: 79, type: !278, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !567, line: 80, type: !394, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !567, line: 81, type: !394, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !567, line: 82, type: !258, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !567, line: 83, type: !164, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !567, line: 84, type: !299, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !567, line: 85, type: !19, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !567, line: 86, type: !19, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !567, line: 87, type: !299, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !588, file: !567, line: 76, type: !658, isLocal: false, isDefinition: true)
!588 = distinct !DICompileUnit(language: DW_LANG_C11, file: !567, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !589, retainedTypes: !595, globals: !596, splitDebugInlining: false, nameTableKind: None)
!589 = !{!91, !590, !114}
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !92, line: 254, baseType: !78, size: 32, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!593 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!594 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!595 = !{!87, !132, !133}
!596 = !{!565, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !597, !601, !611, !613, !616, !618, !620, !622, !624, !647, !654, !656}
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !588, file: !567, line: 92, type: !599, isLocal: false, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 320, elements: !60)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !588, file: !567, line: 1040, type: !603, isLocal: false, isDefinition: true)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !567, line: 56, size: 448, elements: !604)
!604 = !{!605, !606, !607, !609, !610}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !603, file: !567, line: 59, baseType: !91, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !567, line: 62, baseType: !87, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !603, file: !567, line: 66, baseType: !608, size: 256, offset: 64)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !603, file: !567, line: 69, baseType: !136, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !603, file: !567, line: 72, baseType: !136, size: 64, offset: 384)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !588, file: !567, line: 107, type: !603, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "slot0", scope: !588, file: !567, line: 831, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !450)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !567, line: 321, type: !164, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !567, line: 357, type: !164, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !567, line: 358, type: !164, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !567, line: 199, type: !19, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "quote", scope: !626, file: !567, line: 228, type: !645, isLocal: true, isDefinition: true)
!626 = distinct !DISubprogram(name: "gettext_quote", scope: !567, file: !567, line: 197, type: !627, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!136, !136, !91}
!629 = !{!630, !631, !632, !633, !634}
!630 = !DILocalVariable(name: "msgid", arg: 1, scope: !626, file: !567, line: 197, type: !136)
!631 = !DILocalVariable(name: "s", arg: 2, scope: !626, file: !567, line: 197, type: !91)
!632 = !DILocalVariable(name: "translation", scope: !626, file: !567, line: 199, type: !136)
!633 = !DILocalVariable(name: "w", scope: !626, file: !567, line: 229, type: !547)
!634 = !DILocalVariable(name: "mbs", scope: !626, file: !567, line: 230, type: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !553, line: 6, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !555, line: 21, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 13, size: 64, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !637, file: !555, line: 15, baseType: !87, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !637, file: !555, line: 20, baseType: !641, size: 32, offset: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !555, line: 16, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !641, file: !555, line: 18, baseType: !78, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !641, file: !555, line: 19, baseType: !273, size: 32)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !646)
!646 = !{!166, !275}
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "slotvec", scope: !588, file: !567, line: 834, type: !649, isLocal: true, isDefinition: true)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !567, line: 823, size: 128, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !650, file: !567, line: 825, baseType: !133, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !567, line: 826, baseType: !130, size: 64, offset: 64)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "nslots", scope: !588, file: !567, line: 832, type: !87, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "slotvec0", scope: !588, file: !567, line: 833, type: !650, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 704, elements: !383)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !662, line: 67, type: !367, isLocal: true, isDefinition: true)
!662 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !662, line: 69, type: !19, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !662, line: 83, type: !19, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !662, line: 83, type: !273, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !662, line: 85, type: !164, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !662, line: 88, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 171)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !662, line: 88, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 34)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !662, line: 105, type: !154, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !662, line: 109, type: !406, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !662, line: 113, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 28)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !662, line: 120, type: !389, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !662, line: 127, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 36)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !662, line: 134, type: !318, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !662, line: 142, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 44)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !662, line: 150, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 48)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !662, line: 159, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 52)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !662, line: 170, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 60)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !662, line: 248, type: !258, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !662, line: 248, type: !343, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !662, line: 254, type: !258, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !662, line: 254, type: !149, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !662, line: 254, type: !318, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !662, line: 259, type: !3, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !662, line: 259, type: !733, isLocal: true, isDefinition: true)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 29)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !738, file: !739, line: 26, type: !741, isLocal: false, isDefinition: true)
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !740, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!740 = !{!736}
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 47)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "exit_failure", scope: !746, file: !747, line: 24, type: !749, isLocal: false, isDefinition: true)
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!748 = !{!744}
!749 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !752, line: 34, type: !169, isLocal: true, isDefinition: true)
!752 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !752, line: 34, type: !19, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !752, line: 34, type: !159, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !759, line: 108, type: !54, isLocal: true, isDefinition: true)
!759 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "internal_state", scope: !762, file: !759, line: 97, type: !765, isLocal: true, isDefinition: true)
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !763, globals: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !{!131, !133, !138}
!764 = !{!757, !760}
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !553, line: 6, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !555, line: 21, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 13, size: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !767, file: !555, line: 15, baseType: !87, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !767, file: !555, line: 20, baseType: !771, size: 32, offset: 32)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !555, line: 16, size: 32, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !771, file: !555, line: 18, baseType: !78, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !771, file: !555, line: 19, baseType: !273, size: 32)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !777, line: 35, type: !164, isLocal: true, isDefinition: true)
!777 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !777, line: 35, type: !278, isLocal: true, isDefinition: true)
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !782, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!782 = !{!105}
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !787, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!787 = !{!131}
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!789 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !787, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !795, retainedTypes: !787, globals: !799, splitDebugInlining: false, nameTableKind: None)
!795 = !{!796}
!796 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !662, line: 40, baseType: !78, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!799 = !{!660, !663, !665, !667, !669, !671, !676, !681, !683, !685, !690, !692, !697, !699, !704, !709, !714, !719, !721, !723, !725, !727, !729, !731}
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !802, retainedTypes: !830, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!802 = !{!803, !815}
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !804, file: !801, line: 188, baseType: !78, size: 32, elements: !813)
!804 = distinct !DISubprogram(name: "x2nrealloc", scope: !801, file: !801, line: 176, type: !805, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !808)
!805 = !DISubroutineType(types: !806)
!806 = !{!131, !131, !807, !133}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!808 = !{!809, !810, !811, !812}
!809 = !DILocalVariable(name: "p", arg: 1, scope: !804, file: !801, line: 176, type: !131)
!810 = !DILocalVariable(name: "pn", arg: 2, scope: !804, file: !801, line: 176, type: !807)
!811 = !DILocalVariable(name: "s", arg: 3, scope: !804, file: !801, line: 176, type: !133)
!812 = !DILocalVariable(name: "n", scope: !804, file: !801, line: 178, type: !133)
!813 = !{!814}
!814 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!815 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !816, file: !801, line: 228, baseType: !78, size: 32, elements: !813)
!816 = distinct !DISubprogram(name: "xpalloc", scope: !801, file: !801, line: 223, type: !817, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !820)
!817 = !DISubroutineType(types: !818)
!818 = !{!131, !131, !819, !438, !440, !438}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829}
!821 = !DILocalVariable(name: "pa", arg: 1, scope: !816, file: !801, line: 223, type: !131)
!822 = !DILocalVariable(name: "pn", arg: 2, scope: !816, file: !801, line: 223, type: !819)
!823 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !816, file: !801, line: 223, type: !438)
!824 = !DILocalVariable(name: "n_max", arg: 4, scope: !816, file: !801, line: 223, type: !440)
!825 = !DILocalVariable(name: "s", arg: 5, scope: !816, file: !801, line: 223, type: !438)
!826 = !DILocalVariable(name: "n0", scope: !816, file: !801, line: 230, type: !438)
!827 = !DILocalVariable(name: "n", scope: !816, file: !801, line: 237, type: !438)
!828 = !DILocalVariable(name: "nbytes", scope: !816, file: !801, line: 248, type: !438)
!829 = !DILocalVariable(name: "adjusted_nbytes", scope: !816, file: !801, line: 252, type: !438)
!830 = !{!130, !131, !196, !237, !135}
!831 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !832, splitDebugInlining: false, nameTableKind: None)
!832 = !{!750, !753, !755}
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !835, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!835 = !{!76}
!836 = !{!196, !237, !135, !837}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !838, line: 101, baseType: !839)
!838 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !787, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !846, splitDebugInlining: false, nameTableKind: None)
!845 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!846 = !{!196, !135, !131}
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !848, splitDebugInlining: false, nameTableKind: None)
!848 = !{!775, !778}
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !850, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !787, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!853 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!854 = !{i32 7, !"Dwarf Version", i32 5}
!855 = !{i32 2, !"Debug Info Version", i32 3}
!856 = !{i32 1, !"wchar_size", i32 4}
!857 = !{i32 8, !"PIC Level", i32 2}
!858 = !{i32 7, !"PIE Level", i32 2}
!859 = !{i32 7, !"uwtable", i32 2}
!860 = !{i32 7, !"frame-pointer", i32 1}
!861 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !862, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !87}
!864 = !{!865}
!865 = !DILocalVariable(name: "status", arg: 1, scope: !861, file: !2, line: 97, type: !87)
!866 = !DILocation(line: 0, scope: !861)
!867 = !DILocation(line: 99, column: 14, scope: !868)
!868 = distinct !DILexicalBlock(scope: !861, file: !2, line: 99, column: 7)
!869 = !DILocation(line: 99, column: 7, scope: !861)
!870 = !DILocation(line: 100, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !2, line: 100, column: 5)
!872 = !{!873, !873, i64 0}
!873 = !{!"any pointer", !874, i64 0}
!874 = !{!"omnipotent char", !875, i64 0}
!875 = !{!"Simple C/C++ TBAA"}
!876 = !DILocation(line: 103, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !868, file: !2, line: 102, column: 5)
!878 = !DILocation(line: 112, column: 7, scope: !877)
!879 = !DILocation(line: 729, column: 3, scope: !880, inlinedAt: !882)
!880 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !522, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !881)
!881 = !{}
!882 = distinct !DILocation(line: 117, column: 7, scope: !877)
!883 = !DILocation(line: 736, column: 3, scope: !884, inlinedAt: !885)
!884 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !522, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !881)
!885 = distinct !DILocation(line: 118, column: 7, scope: !877)
!886 = !DILocation(line: 153, column: 7, scope: !877)
!887 = !DILocation(line: 157, column: 7, scope: !877)
!888 = !DILocation(line: 161, column: 7, scope: !877)
!889 = !DILocation(line: 174, column: 7, scope: !877)
!890 = !DILocation(line: 175, column: 7, scope: !877)
!891 = !DILocation(line: 184, column: 7, scope: !877)
!892 = !DILocalVariable(name: "program", arg: 1, scope: !893, file: !86, line: 836, type: !136)
!893 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 836, type: !894, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !136}
!896 = !{!892, !897, !904, !905, !907, !908}
!897 = !DILocalVariable(name: "infomap", scope: !893, file: !86, line: 838, type: !898)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 896, elements: !20)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !893, file: !86, line: 838, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !900, file: !86, line: 838, baseType: !136, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !900, file: !86, line: 838, baseType: !136, size: 64, offset: 64)
!904 = !DILocalVariable(name: "node", scope: !893, file: !86, line: 848, type: !136)
!905 = !DILocalVariable(name: "map_prog", scope: !893, file: !86, line: 849, type: !906)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!907 = !DILocalVariable(name: "lc_messages", scope: !893, file: !86, line: 861, type: !136)
!908 = !DILocalVariable(name: "url_program", scope: !893, file: !86, line: 874, type: !136)
!909 = !DILocation(line: 0, scope: !893, inlinedAt: !910)
!910 = distinct !DILocation(line: 192, column: 7, scope: !877)
!911 = !DILocation(line: 857, column: 3, scope: !893, inlinedAt: !910)
!912 = !DILocation(line: 861, column: 29, scope: !893, inlinedAt: !910)
!913 = !DILocation(line: 862, column: 7, scope: !914, inlinedAt: !910)
!914 = distinct !DILexicalBlock(scope: !893, file: !86, line: 862, column: 7)
!915 = !DILocation(line: 862, column: 19, scope: !914, inlinedAt: !910)
!916 = !DILocation(line: 862, column: 22, scope: !914, inlinedAt: !910)
!917 = !DILocation(line: 862, column: 7, scope: !893, inlinedAt: !910)
!918 = !DILocation(line: 868, column: 7, scope: !919, inlinedAt: !910)
!919 = distinct !DILexicalBlock(scope: !914, file: !86, line: 863, column: 5)
!920 = !DILocation(line: 870, column: 5, scope: !919, inlinedAt: !910)
!921 = !DILocation(line: 875, column: 3, scope: !893, inlinedAt: !910)
!922 = !DILocation(line: 877, column: 3, scope: !893, inlinedAt: !910)
!923 = !DILocation(line: 195, column: 3, scope: !861)
!924 = !DISubprogram(name: "dcgettext", scope: !925, file: !925, line: 51, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!925 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!926 = !DISubroutineType(types: !927)
!927 = !{!130, !136, !136, !87}
!928 = !DISubprogram(name: "__fprintf_chk", scope: !929, file: !929, line: 93, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!929 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!930 = !DISubroutineType(types: !931)
!931 = !{!87, !932, !87, !437, null}
!932 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!933 = !DISubprogram(name: "__printf_chk", scope: !929, file: !929, line: 95, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!934 = !DISubroutineType(types: !935)
!935 = !{!87, !87, !437, null}
!936 = !DISubprogram(name: "fputs_unlocked", scope: !481, file: !481, line: 691, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!937 = !DISubroutineType(types: !938)
!938 = !{!87, !437, !932}
!939 = !DILocation(line: 0, scope: !186)
!940 = !DILocation(line: 581, column: 7, scope: !194)
!941 = !{!942, !942, i64 0}
!942 = !{!"int", !874, i64 0}
!943 = !DILocation(line: 581, column: 19, scope: !194)
!944 = !DILocation(line: 581, column: 7, scope: !186)
!945 = !DILocation(line: 585, column: 26, scope: !193)
!946 = !DILocation(line: 0, scope: !193)
!947 = !DILocation(line: 586, column: 23, scope: !193)
!948 = !DILocation(line: 586, column: 28, scope: !193)
!949 = !DILocation(line: 586, column: 32, scope: !193)
!950 = !{!874, !874, i64 0}
!951 = !DILocation(line: 586, column: 38, scope: !193)
!952 = !DILocalVariable(name: "__s1", arg: 1, scope: !953, file: !954, line: 1359, type: !136)
!953 = distinct !DISubprogram(name: "streq", scope: !954, file: !954, line: 1359, type: !955, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !957)
!954 = !DIFile(filename: "./lib/string.h", directory: "/src")
!955 = !DISubroutineType(types: !956)
!956 = !{!196, !136, !136}
!957 = !{!952, !958}
!958 = !DILocalVariable(name: "__s2", arg: 2, scope: !953, file: !954, line: 1359, type: !136)
!959 = !DILocation(line: 0, scope: !953, inlinedAt: !960)
!960 = distinct !DILocation(line: 586, column: 41, scope: !193)
!961 = !DILocation(line: 1361, column: 11, scope: !953, inlinedAt: !960)
!962 = !DILocation(line: 1361, column: 10, scope: !953, inlinedAt: !960)
!963 = !DILocation(line: 586, column: 19, scope: !193)
!964 = !DILocation(line: 587, column: 5, scope: !193)
!965 = !DILocation(line: 588, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !186, file: !86, line: 588, column: 7)
!967 = !DILocation(line: 588, column: 7, scope: !186)
!968 = !DILocation(line: 590, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !86, line: 589, column: 5)
!970 = !DILocation(line: 591, column: 7, scope: !969)
!971 = !DILocation(line: 595, column: 37, scope: !186)
!972 = !DILocation(line: 595, column: 35, scope: !186)
!973 = !DILocation(line: 596, column: 29, scope: !186)
!974 = !DILocation(line: 597, column: 8, scope: !202)
!975 = !DILocation(line: 597, column: 7, scope: !186)
!976 = !DILocation(line: 604, column: 24, scope: !201)
!977 = !DILocation(line: 604, column: 12, scope: !202)
!978 = !DILocation(line: 0, scope: !200)
!979 = !DILocation(line: 610, column: 16, scope: !200)
!980 = !DILocation(line: 610, column: 7, scope: !200)
!981 = !DILocation(line: 611, column: 21, scope: !200)
!982 = !{!983, !983, i64 0}
!983 = !{!"short", !874, i64 0}
!984 = !DILocation(line: 611, column: 19, scope: !200)
!985 = !DILocation(line: 611, column: 16, scope: !200)
!986 = !DILocation(line: 610, column: 30, scope: !200)
!987 = distinct !{!987, !980, !981, !988}
!988 = !{!"llvm.loop.mustprogress"}
!989 = !DILocation(line: 612, column: 18, scope: !990)
!990 = distinct !DILexicalBlock(scope: !200, file: !86, line: 612, column: 11)
!991 = !DILocation(line: 612, column: 11, scope: !200)
!992 = !DILocation(line: 620, column: 23, scope: !186)
!993 = !DILocation(line: 625, column: 39, scope: !186)
!994 = !DILocation(line: 626, column: 3, scope: !186)
!995 = !DILocation(line: 626, column: 10, scope: !186)
!996 = !DILocation(line: 626, column: 21, scope: !186)
!997 = !DILocation(line: 628, column: 44, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !86, line: 628, column: 11)
!999 = distinct !DILexicalBlock(scope: !186, file: !86, line: 627, column: 5)
!1000 = !DILocation(line: 628, column: 32, scope: !998)
!1001 = !DILocation(line: 628, column: 49, scope: !998)
!1002 = !DILocation(line: 628, column: 11, scope: !999)
!1003 = !DILocation(line: 630, column: 11, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !86, line: 630, column: 11)
!1005 = !DILocation(line: 630, column: 11, scope: !999)
!1006 = !DILocation(line: 632, column: 26, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !86, line: 632, column: 15)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !86, line: 631, column: 9)
!1009 = !DILocation(line: 632, column: 34, scope: !1007)
!1010 = !DILocation(line: 632, column: 37, scope: !1007)
!1011 = !DILocation(line: 632, column: 15, scope: !1008)
!1012 = !DILocation(line: 640, column: 16, scope: !999)
!1013 = distinct !{!1013, !994, !1014, !988}
!1014 = !DILocation(line: 641, column: 5, scope: !186)
!1015 = !DILocation(line: 644, column: 3, scope: !186)
!1016 = !DILocation(line: 0, scope: !953, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1018 = !DILocation(line: 0, scope: !953, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1020 = !DILocation(line: 0, scope: !953, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1022 = !DILocation(line: 0, scope: !953, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1024 = !DILocation(line: 0, scope: !953, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1026 = !DILocation(line: 0, scope: !953, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1028 = !DILocation(line: 0, scope: !953, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1030 = !DILocation(line: 0, scope: !953, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1032 = !DILocation(line: 0, scope: !953, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1034 = !DILocation(line: 0, scope: !953, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1036 = !DILocation(line: 663, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1038 = !DILocation(line: 664, column: 7, scope: !1037)
!1039 = !DILocation(line: 664, column: 10, scope: !1037)
!1040 = !DILocation(line: 663, column: 7, scope: !186)
!1041 = !DILocation(line: 669, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !86, line: 665, column: 5)
!1043 = !DILocation(line: 671, column: 5, scope: !1042)
!1044 = !DILocation(line: 676, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !86, line: 673, column: 5)
!1046 = !DILocation(line: 679, column: 3, scope: !186)
!1047 = !DILocation(line: 683, column: 3, scope: !186)
!1048 = !DILocation(line: 686, column: 3, scope: !186)
!1049 = !DILocation(line: 688, column: 3, scope: !186)
!1050 = !DILocation(line: 691, column: 3, scope: !186)
!1051 = !DILocation(line: 695, column: 3, scope: !186)
!1052 = !DILocation(line: 696, column: 1, scope: !186)
!1053 = !DISubprogram(name: "setlocale", scope: !1054, file: !1054, line: 122, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1054 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!130, !87, !136}
!1057 = !DISubprogram(name: "strncmp", scope: !1058, file: !1058, line: 159, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1058 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!87, !136, !136, !133}
!1061 = !DISubprogram(name: "exit", scope: !1062, file: !1062, line: 624, type: !862, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1062 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1063 = !DISubprogram(name: "getenv", scope: !1062, file: !1062, line: 641, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!130, !136}
!1066 = !DISubprogram(name: "strcmp", scope: !1058, file: !1058, line: 156, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!87, !136, !136}
!1069 = !DISubprogram(name: "strspn", scope: !1058, file: !1058, line: 297, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!135, !136, !136}
!1072 = !DISubprogram(name: "strchr", scope: !1058, file: !1058, line: 246, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!130, !136, !87}
!1075 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1081 = !DISubprogram(name: "strcspn", scope: !1058, file: !1058, line: 293, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1082 = !DISubprogram(name: "fwrite_unlocked", scope: !481, file: !481, line: 704, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!133, !1085, !133, !133, !932}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1088 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1089, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1092)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!87, !87, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1104}
!1093 = !DILocalVariable(name: "argc", arg: 1, scope: !1088, file: !2, line: 1630, type: !87)
!1094 = !DILocalVariable(name: "argv", arg: 2, scope: !1088, file: !2, line: 1630, type: !1091)
!1095 = !DILocalVariable(name: "opt", scope: !1088, file: !2, line: 1632, type: !87)
!1096 = !DILocalVariable(name: "input_fh", scope: !1088, file: !2, line: 1633, type: !209)
!1097 = !DILocalVariable(name: "infile", scope: !1088, file: !2, line: 1634, type: !136)
!1098 = !DILocalVariable(name: "decode", scope: !1088, file: !2, line: 1637, type: !196)
!1099 = !DILocalVariable(name: "ignore_garbage", scope: !1088, file: !2, line: 1639, type: !196)
!1100 = !DILocalVariable(name: "wrap_column", scope: !1088, file: !2, line: 1641, type: !438)
!1101 = !DILocalVariable(name: "w", scope: !1102, file: !2, line: 1664, type: !837)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 1663, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1657, column: 7)
!1104 = !DILocalVariable(name: "s_err", scope: !1102, file: !2, line: 1665, type: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1106 = !DILocation(line: 0, scope: !1088)
!1107 = !DILocation(line: 1648, column: 21, scope: !1088)
!1108 = !DILocation(line: 1648, column: 3, scope: !1088)
!1109 = !DILocation(line: 1649, column: 3, scope: !1088)
!1110 = !DILocation(line: 1650, column: 3, scope: !1088)
!1111 = !DILocation(line: 1651, column: 3, scope: !1088)
!1112 = !DILocation(line: 1653, column: 3, scope: !1088)
!1113 = !DILocation(line: 1655, column: 3, scope: !1088)
!1114 = !DILocation(line: 1641, column: 9, scope: !1088)
!1115 = !DILocation(line: 1655, column: 17, scope: !1088)
!1116 = distinct !{!1116, !1113, !1117, !988}
!1117 = !DILocation(line: 1698, column: 7, scope: !1088)
!1118 = !DILocation(line: 1664, column: 11, scope: !1102)
!1119 = !DILocation(line: 1665, column: 44, scope: !1102)
!1120 = !DILocation(line: 0, scope: !1102)
!1121 = !DILocation(line: 1665, column: 32, scope: !1102)
!1122 = !DILocation(line: 1666, column: 32, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 1666, column: 15)
!1124 = !DILocation(line: 1666, column: 40, scope: !1123)
!1125 = !DILocation(line: 1667, column: 13, scope: !1123)
!1126 = !DILocation(line: 1669, column: 31, scope: !1102)
!1127 = !DILocation(line: 1669, column: 51, scope: !1102)
!1128 = !DILocation(line: 1670, column: 9, scope: !1103)
!1129 = !DILocation(line: 1671, column: 9, scope: !1103)
!1130 = !DILocation(line: 1675, column: 9, scope: !1103)
!1131 = !DILocation(line: 1691, column: 7, scope: !1103)
!1132 = !DILocation(line: 1693, column: 7, scope: !1103)
!1133 = !DILocation(line: 1696, column: 9, scope: !1103)
!1134 = !DILocation(line: 1805, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1805, column: 7)
!1136 = !DILocation(line: 1805, column: 12, scope: !1135)
!1137 = !DILocation(line: 1805, column: 21, scope: !1135)
!1138 = !DILocation(line: 1805, column: 7, scope: !1088)
!1139 = !DILocation(line: 1807, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 1806, column: 5)
!1141 = !DILocation(line: 1808, column: 7, scope: !1140)
!1142 = !DILocation(line: 1811, column: 14, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1811, column: 7)
!1144 = !DILocation(line: 1811, column: 7, scope: !1088)
!1145 = !DILocation(line: 1812, column: 14, scope: !1143)
!1146 = !DILocation(line: 1812, column: 5, scope: !1143)
!1147 = !DILocation(line: 0, scope: !1143)
!1148 = !DILocation(line: 0, scope: !953, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 1816, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1816, column: 7)
!1151 = !DILocation(line: 1361, column: 11, scope: !953, inlinedAt: !1149)
!1152 = !DILocation(line: 1361, column: 10, scope: !953, inlinedAt: !1149)
!1153 = !DILocation(line: 1816, column: 7, scope: !1088)
!1154 = !DILocation(line: 1819, column: 18, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1817, column: 5)
!1156 = !DILocation(line: 1820, column: 5, scope: !1155)
!1157 = !DILocation(line: 1823, column: 18, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1822, column: 5)
!1159 = !DILocation(line: 1824, column: 20, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 1824, column: 11)
!1161 = !DILocation(line: 1824, column: 11, scope: !1158)
!1162 = !DILocation(line: 1825, column: 9, scope: !1160)
!1163 = !DILocation(line: 0, scope: !1150)
!1164 = !DILocation(line: 1828, column: 3, scope: !1088)
!1165 = !DILocation(line: 0, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1830, column: 7)
!1167 = !DILocation(line: 1830, column: 7, scope: !1088)
!1168 = !DILocation(line: 1831, column: 5, scope: !1166)
!1169 = !DILocation(line: 1833, column: 5, scope: !1166)
!1170 = !DISubprogram(name: "bindtextdomain", scope: !925, file: !925, line: 86, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!130, !136, !136}
!1173 = !DISubprogram(name: "textdomain", scope: !925, file: !925, line: 82, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1174 = !DISubprogram(name: "atexit", scope: !1062, file: !1062, line: 602, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!87, !521}
!1177 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!87, !87, !1180, !136, !1182, !417}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1183 = !DISubprogram(name: "__errno_location", scope: !1184, file: !1184, line: 37, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1184 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!417}
!1187 = distinct !DISubprogram(name: "do_decode", scope: !2, file: !2, line: 1562, type: !1188, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !209, !136, !209, !196}
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1204, !1206, !1208, !1212, !1214, !1217, !1218}
!1191 = !DILocalVariable(name: "in", arg: 1, scope: !1187, file: !2, line: 1562, type: !209)
!1192 = !DILocalVariable(name: "infile", arg: 2, scope: !1187, file: !2, line: 1562, type: !136)
!1193 = !DILocalVariable(name: "out", arg: 3, scope: !1187, file: !2, line: 1562, type: !209)
!1194 = !DILocalVariable(name: "ignore_garbage", arg: 4, scope: !1187, file: !2, line: 1562, type: !196)
!1195 = !DILocalVariable(name: "inbuf", scope: !1187, file: !2, line: 1564, type: !130)
!1196 = !DILocalVariable(name: "outbuf", scope: !1187, file: !2, line: 1564, type: !130)
!1197 = !DILocalVariable(name: "sum", scope: !1187, file: !2, line: 1565, type: !438)
!1198 = !DILocalVariable(name: "ctx", scope: !1187, file: !2, line: 1566, type: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !1200, line: 47, size: 96, elements: !1201)
!1200 = !DIFile(filename: "./lib/base32.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e713a01df52addfef9645906d93b4fcb")
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1199, file: !1200, line: 49, baseType: !87, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1199, file: !1200, line: 50, baseType: !299, size: 64, offset: 32)
!1204 = !DILocalVariable(name: "ok", scope: !1205, file: !2, line: 1578, type: !196)
!1205 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 1577, column: 5)
!1206 = !DILocalVariable(name: "n", scope: !1207, file: !2, line: 1583, type: !438)
!1207 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 1582, column: 9)
!1208 = !DILocalVariable(name: "i", scope: !1209, file: !2, line: 1588, type: !438)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 1588, column: 15)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 1587, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 1586, column: 15)
!1212 = !DILocalVariable(name: "n", scope: !1213, file: !2, line: 1607, type: !438)
!1213 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 1606, column: 9)
!1214 = !DILocalVariable(name: "__ptr", scope: !1215, file: !2, line: 1613, type: !136)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 1613, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1613, column: 15)
!1217 = !DILocalVariable(name: "__stream", scope: !1215, file: !2, line: 1613, type: !209)
!1218 = !DILocalVariable(name: "__cnt", scope: !1215, file: !2, line: 1613, type: !133)
!1219 = !DILocation(line: 0, scope: !1187)
!1220 = !DILocation(line: 1566, column: 3, scope: !1187)
!1221 = !DILocation(line: 1566, column: 30, scope: !1187)
!1222 = !DILocation(line: 1568, column: 11, scope: !1187)
!1223 = !DILocation(line: 1569, column: 12, scope: !1187)
!1224 = !DILocalVariable(name: "ctx", arg: 1, scope: !1225, file: !1200, line: 74, type: !1228)
!1225 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !1200, file: !1200, line: 74, type: !1226, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1229)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1229 = !{!1224}
!1230 = !DILocation(line: 0, scope: !1225, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 1574, column: 3, scope: !1187)
!1232 = !DILocation(line: 76, column: 10, scope: !1225, inlinedAt: !1231)
!1233 = !{!1234, !942, i64 0}
!1234 = !{!"base32_decode_context", !942, i64 0, !874, i64 4}
!1235 = !DILocation(line: 1576, column: 3, scope: !1187)
!1236 = !DILocation(line: 0, scope: !1205)
!1237 = !DILocation(line: 1583, column: 21, scope: !1207)
!1238 = !DILocation(line: 0, scope: !1207)
!1239 = !DILocation(line: 1586, column: 15, scope: !1207)
!1240 = !DILocation(line: 0, scope: !1209)
!1241 = !DILocation(line: 1590, column: 42, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 1590, column: 23)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 1589, column: 17)
!1244 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1588, column: 15)
!1245 = !DILocation(line: 1590, column: 32, scope: !1242)
!1246 = !DILocalVariable(name: "ch", arg: 1, scope: !1247, file: !1200, line: 56, type: !138)
!1247 = distinct !DISubprogram(name: "isubase32", scope: !1200, file: !1200, line: 56, type: !1248, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!196, !138}
!1250 = !{!1246}
!1251 = !DILocation(line: 0, scope: !1247, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 1590, column: 23, scope: !1242)
!1253 = !DILocation(line: 58, column: 10, scope: !1247, inlinedAt: !1252)
!1254 = !DILocation(line: 58, column: 44, scope: !1247, inlinedAt: !1252)
!1255 = !DILocation(line: 58, column: 41, scope: !1247, inlinedAt: !1252)
!1256 = !DILocation(line: 1591, column: 23, scope: !1242)
!1257 = !DILocalVariable(name: "len", arg: 1, scope: !1258, file: !2, line: 200, type: !87)
!1258 = distinct !DISubprogram(name: "base32_required_padding", scope: !2, file: !2, line: 200, type: !1259, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!87, !87}
!1261 = !{!1257, !1262}
!1262 = !DILocalVariable(name: "partial", scope: !1258, file: !2, line: 202, type: !87)
!1263 = !DILocation(line: 0, scope: !1258, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 1591, column: 27, scope: !1242)
!1265 = !DILocation(line: 1592, column: 22, scope: !1242)
!1266 = !DILocation(line: 1592, column: 21, scope: !1242)
!1267 = !DILocation(line: 1594, column: 42, scope: !1242)
!1268 = !DILocation(line: 1594, column: 63, scope: !1242)
!1269 = !DILocation(line: 1594, column: 68, scope: !1242)
!1270 = !DILocation(line: 1594, column: 72, scope: !1242)
!1271 = !DILocalVariable(name: "__dest", arg: 1, scope: !1272, file: !1273, line: 34, type: !131)
!1272 = distinct !DISubprogram(name: "memmove", scope: !1273, file: !1273, line: 34, type: !1274, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1276)
!1273 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!131, !131, !1086, !133}
!1276 = !{!1271, !1277, !1278}
!1277 = !DILocalVariable(name: "__src", arg: 2, scope: !1272, file: !1273, line: 34, type: !1086)
!1278 = !DILocalVariable(name: "__len", arg: 3, scope: !1272, file: !1273, line: 34, type: !133)
!1279 = !DILocation(line: 0, scope: !1272, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 1594, column: 21, scope: !1242)
!1281 = !DILocation(line: 36, column: 10, scope: !1272, inlinedAt: !1280)
!1282 = !DILocation(line: 1588, column: 35, scope: !1244)
!1283 = !DILocation(line: 1588, column: 39, scope: !1244)
!1284 = !DILocation(line: 1588, column: 15, scope: !1209)
!1285 = distinct !{!1285, !1284, !1286, !988}
!1286 = !DILocation(line: 1595, column: 17, scope: !1209)
!1287 = !DILocation(line: 1583, column: 17, scope: !1207)
!1288 = !DILocalVariable(name: "__stream", arg: 1, scope: !1289, file: !1290, line: 135, type: !209)
!1289 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1290, file: !1290, line: 135, type: !1291, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1293)
!1290 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!87, !209}
!1293 = !{!1288}
!1294 = !DILocation(line: 0, scope: !1289, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 1600, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 1600, column: 15)
!1297 = !DILocation(line: 137, column: 10, scope: !1289, inlinedAt: !1295)
!1298 = !{!1299, !942, i64 0}
!1299 = !{!"_IO_FILE", !942, i64 0, !873, i64 8, !873, i64 16, !873, i64 24, !873, i64 32, !873, i64 40, !873, i64 48, !873, i64 56, !873, i64 64, !873, i64 72, !873, i64 80, !873, i64 88, !873, i64 96, !873, i64 104, !942, i64 112, !942, i64 116, !1300, i64 120, !983, i64 128, !874, i64 130, !874, i64 131, !873, i64 136, !1300, i64 144, !873, i64 152, !873, i64 160, !873, i64 168, !873, i64 176, !1300, i64 184, !942, i64 192, !874, i64 196}
!1300 = !{!"long", !874, i64 0}
!1301 = !DILocation(line: 1600, column: 15, scope: !1296)
!1302 = !DILocation(line: 1600, column: 15, scope: !1207)
!1303 = !DILocation(line: 1601, column: 13, scope: !1296)
!1304 = !DILocation(line: 1598, column: 15, scope: !1207)
!1305 = !DILocation(line: 1603, column: 18, scope: !1205)
!1306 = !DILocation(line: 1603, column: 48, scope: !1205)
!1307 = !DILocalVariable(name: "__stream", arg: 1, scope: !1308, file: !1290, line: 128, type: !209)
!1308 = distinct !DISubprogram(name: "feof_unlocked", scope: !1290, file: !1290, line: 128, type: !1291, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1309)
!1309 = !{!1307}
!1310 = !DILocation(line: 0, scope: !1308, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 1603, column: 52, scope: !1205)
!1312 = distinct !{!1312, !1235, !1313, !988}
!1313 = !DILocation(line: 1624, column: 20, scope: !1187)
!1314 = !DILocation(line: 1605, column: 14, scope: !1205)
!1315 = !DILocation(line: 1605, column: 18, scope: !1205)
!1316 = !DILocation(line: 1607, column: 11, scope: !1213)
!1317 = !DILocation(line: 0, scope: !1213)
!1318 = !DILocation(line: 1607, column: 17, scope: !1213)
!1319 = !{!1300, !1300, i64 0}
!1320 = !DILocation(line: 1609, column: 18, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1608, column: 15)
!1322 = !DILocation(line: 1613, column: 15, scope: !1216)
!1323 = !DILocation(line: 1609, column: 13, scope: !1321)
!1324 = !DILocation(line: 0, scope: !1308, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 1605, column: 21, scope: !1205)
!1326 = !DILocation(line: 130, column: 10, scope: !1308, inlinedAt: !1325)
!1327 = !DILocation(line: 1605, column: 7, scope: !1205)
!1328 = !DILocalVariable(name: "ctx", arg: 1, scope: !1329, file: !2, line: 414, type: !1228)
!1329 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !2, file: !2, line: 414, type: !1330, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1333)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!196, !1228, !1332, !819}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1333 = !{!1328, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1334 = !DILocalVariable(name: "out", arg: 2, scope: !1329, file: !2, line: 415, type: !1332)
!1335 = !DILocalVariable(name: "outlen", arg: 3, scope: !1329, file: !2, line: 415, type: !819)
!1336 = !DILocalVariable(name: "padbuf", scope: !1329, file: !2, line: 424, type: !299)
!1337 = !DILocalVariable(name: "pending_len", scope: !1329, file: !2, line: 425, type: !438)
!1338 = !DILocalVariable(name: "auto_padding", scope: !1329, file: !2, line: 426, type: !438)
!1339 = !DILocalVariable(name: "n", scope: !1329, file: !2, line: 427, type: !438)
!1340 = !DILocalVariable(name: "result", scope: !1329, file: !2, line: 428, type: !196)
!1341 = !DILocation(line: 0, scope: !1329, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 1611, column: 18, scope: !1321)
!1343 = !DILocalVariable(name: "ctx", arg: 1, scope: !1344, file: !2, line: 403, type: !1228)
!1344 = distinct !DISubprogram(name: "get_pending_length", scope: !2, file: !2, line: 403, type: !1345, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!87, !1228}
!1347 = !{!1343}
!1348 = !DILocation(line: 0, scope: !1344, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 417, column: 7, scope: !1350, inlinedAt: !1342)
!1350 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 417, column: 7)
!1351 = !DILocation(line: 405, column: 15, scope: !1344, inlinedAt: !1349)
!1352 = !DILocation(line: 417, column: 32, scope: !1350, inlinedAt: !1342)
!1353 = !DILocation(line: 417, column: 7, scope: !1329, inlinedAt: !1342)
!1354 = !DILocation(line: 424, column: 3, scope: !1329, inlinedAt: !1342)
!1355 = !DILocation(line: 424, column: 8, scope: !1329, inlinedAt: !1342)
!1356 = !DILocation(line: 0, scope: !1344, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 425, column: 23, scope: !1329, inlinedAt: !1342)
!1358 = !DILocation(line: 0, scope: !1258, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 426, column: 24, scope: !1329, inlinedAt: !1342)
!1360 = !DILocation(line: 202, column: 21, scope: !1258, inlinedAt: !1359)
!1361 = !DILocation(line: 203, column: 10, scope: !1258, inlinedAt: !1359)
!1362 = !DILocation(line: 427, column: 3, scope: !1329, inlinedAt: !1342)
!1363 = !DILocation(line: 427, column: 9, scope: !1329, inlinedAt: !1342)
!1364 = !DILocation(line: 430, column: 7, scope: !1365, inlinedAt: !1342)
!1365 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 430, column: 7)
!1366 = !DILocation(line: 430, column: 20, scope: !1365, inlinedAt: !1342)
!1367 = !DILocalVariable(name: "ctx", arg: 1, scope: !1368, file: !2, line: 397, type: !1228)
!1368 = distinct !DISubprogram(name: "has_padding", scope: !2, file: !2, line: 397, type: !1369, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!196, !1228}
!1371 = !{!1367}
!1372 = !DILocation(line: 0, scope: !1368, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 430, column: 25, scope: !1365, inlinedAt: !1342)
!1374 = !DILocation(line: 399, column: 36, scope: !1368, inlinedAt: !1373)
!1375 = !DILocation(line: 399, column: 20, scope: !1368, inlinedAt: !1373)
!1376 = !DILocation(line: 399, column: 41, scope: !1368, inlinedAt: !1373)
!1377 = !DILocation(line: 430, column: 7, scope: !1329, inlinedAt: !1342)
!1378 = !DILocation(line: 432, column: 7, scope: !1379, inlinedAt: !1342)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 432, column: 7)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 432, column: 7)
!1381 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 431, column: 5)
!1382 = !DILocation(line: 432, column: 7, scope: !1380, inlinedAt: !1342)
!1383 = !DILocation(line: 433, column: 16, scope: !1381, inlinedAt: !1342)
!1384 = !DILocation(line: 434, column: 5, scope: !1381, inlinedAt: !1342)
!1385 = !DILocation(line: 437, column: 16, scope: !1386, inlinedAt: !1342)
!1386 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 436, column: 5)
!1387 = !DILocation(line: 440, column: 13, scope: !1329, inlinedAt: !1342)
!1388 = !DILocation(line: 440, column: 11, scope: !1329, inlinedAt: !1342)
!1389 = !DILocation(line: 442, column: 1, scope: !1329, inlinedAt: !1342)
!1390 = !DILocation(line: 419, column: 15, scope: !1391, inlinedAt: !1342)
!1391 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 418, column: 5)
!1392 = !DILocation(line: 420, column: 7, scope: !1391, inlinedAt: !1342)
!1393 = !DILocation(line: 1613, column: 44, scope: !1216)
!1394 = !DILocation(line: 1613, column: 42, scope: !1216)
!1395 = !DILocation(line: 1613, column: 15, scope: !1213)
!1396 = !DILocation(line: 1616, column: 15, scope: !1213)
!1397 = !DILocation(line: 1622, column: 9, scope: !1205)
!1398 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1402)
!1399 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !522, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1400)
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "saved_errno", scope: !1399, file: !86, line: 948, type: !87)
!1402 = distinct !DILocation(line: 1614, column: 13, scope: !1216)
!1403 = !DILocation(line: 0, scope: !1399, inlinedAt: !1402)
!1404 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1402)
!1405 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1402)
!1406 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1402)
!1407 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1402)
!1408 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1402)
!1409 = !DILocation(line: 1617, column: 13, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1616, column: 15)
!1411 = !DILocation(line: 130, column: 10, scope: !1308, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 1624, column: 11, scope: !1187)
!1413 = !DILocation(line: 1624, column: 10, scope: !1187)
!1414 = !DILocation(line: 0, scope: !1308, inlinedAt: !1412)
!1415 = !DILocation(line: 1623, column: 5, scope: !1205)
!1416 = !DILocation(line: 1626, column: 3, scope: !1187)
!1417 = distinct !DISubprogram(name: "do_encode", scope: !2, file: !2, line: 1488, type: !1418, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !209, !136, !209, !438}
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1421 = !DILocalVariable(name: "in", arg: 1, scope: !1417, file: !2, line: 1488, type: !209)
!1422 = !DILocalVariable(name: "infile", arg: 2, scope: !1417, file: !2, line: 1488, type: !136)
!1423 = !DILocalVariable(name: "out", arg: 3, scope: !1417, file: !2, line: 1488, type: !209)
!1424 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1417, file: !2, line: 1488, type: !438)
!1425 = !DILocalVariable(name: "current_column", scope: !1417, file: !2, line: 1490, type: !438)
!1426 = !DILocalVariable(name: "inbuf", scope: !1417, file: !2, line: 1491, type: !130)
!1427 = !DILocalVariable(name: "outbuf", scope: !1417, file: !2, line: 1491, type: !130)
!1428 = !DILocalVariable(name: "sum", scope: !1417, file: !2, line: 1492, type: !438)
!1429 = !DILocalVariable(name: "n", scope: !1430, file: !2, line: 1507, type: !438)
!1430 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 1506, column: 5)
!1431 = !DILocation(line: 0, scope: !1417)
!1432 = !DILocation(line: 1494, column: 11, scope: !1417)
!1433 = !DILocation(line: 1495, column: 12, scope: !1417)
!1434 = !DILocation(line: 1505, column: 3, scope: !1417)
!1435 = !DILocation(line: 1490, column: 9, scope: !1417)
!1436 = !DILocation(line: 1510, column: 7, scope: !1430)
!1437 = !DILocation(line: 0, scope: !1430)
!1438 = !DILocation(line: 1512, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 1511, column: 9)
!1440 = !DILocation(line: 1513, column: 15, scope: !1439)
!1441 = !DILocation(line: 0, scope: !1308, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 1515, column: 15, scope: !1430)
!1443 = !DILocation(line: 130, column: 10, scope: !1308, inlinedAt: !1442)
!1444 = !DILocation(line: 1515, column: 15, scope: !1430)
!1445 = !DILocation(line: 1515, column: 25, scope: !1430)
!1446 = !DILocation(line: 0, scope: !1289, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1515, column: 29, scope: !1430)
!1448 = !DILocation(line: 1515, column: 29, scope: !1430)
!1449 = !DILocation(line: 1515, column: 41, scope: !1430)
!1450 = distinct !{!1450, !1436, !1451, !988}
!1451 = !DILocation(line: 1515, column: 63, scope: !1430)
!1452 = !DILocation(line: 1517, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 1517, column: 11)
!1454 = !DILocation(line: 1517, column: 11, scope: !1430)
!1455 = !DILocation(line: 1532, column: 48, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 1529, column: 13)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 1518, column: 9)
!1458 = !DILocation(line: 1532, column: 15, scope: !1456)
!1459 = !DILocalVariable(name: "buffer", arg: 1, scope: !1460, file: !2, line: 1443, type: !136)
!1460 = distinct !DISubprogram(name: "wrap_write", scope: !2, file: !2, line: 1443, type: !1461, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !136, !438, !438, !819, !209}
!1463 = !{!1459, !1464, !1465, !1466, !1467, !1468, !1473, !1474, !1475, !1477, !1480, !1485, !1486}
!1464 = !DILocalVariable(name: "len", arg: 2, scope: !1460, file: !2, line: 1443, type: !438)
!1465 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1460, file: !2, line: 1444, type: !438)
!1466 = !DILocalVariable(name: "current_column", arg: 4, scope: !1460, file: !2, line: 1444, type: !819)
!1467 = !DILocalVariable(name: "out", arg: 5, scope: !1460, file: !2, line: 1444, type: !209)
!1468 = !DILocalVariable(name: "__ptr", scope: !1469, file: !2, line: 1449, type: !136)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 1449, column: 11)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 1449, column: 11)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 1447, column: 5)
!1472 = distinct !DILexicalBlock(scope: !1460, file: !2, line: 1446, column: 7)
!1473 = !DILocalVariable(name: "__stream", scope: !1469, file: !2, line: 1449, type: !209)
!1474 = !DILocalVariable(name: "__cnt", scope: !1469, file: !2, line: 1449, type: !133)
!1475 = !DILocalVariable(name: "written", scope: !1476, file: !2, line: 1453, type: !438)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 1453, column: 5)
!1477 = !DILocalVariable(name: "to_write", scope: !1478, file: !2, line: 1455, type: !438)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 1454, column: 7)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 1453, column: 5)
!1480 = !DILocalVariable(name: "__ptr", scope: !1481, file: !2, line: 1465, type: !136)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1465, column: 17)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 1465, column: 17)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 1464, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 1457, column: 13)
!1485 = !DILocalVariable(name: "__stream", scope: !1481, file: !2, line: 1465, type: !209)
!1486 = !DILocalVariable(name: "__cnt", scope: !1481, file: !2, line: 1465, type: !133)
!1487 = !DILocation(line: 0, scope: !1460, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 1534, column: 15, scope: !1456)
!1489 = !DILocation(line: 1446, column: 7, scope: !1460, inlinedAt: !1488)
!1490 = !DILocation(line: 1449, column: 11, scope: !1470, inlinedAt: !1488)
!1491 = !DILocation(line: 1449, column: 43, scope: !1470, inlinedAt: !1488)
!1492 = !DILocation(line: 1449, column: 11, scope: !1471, inlinedAt: !1488)
!1493 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 1450, column: 9, scope: !1470, inlinedAt: !1488)
!1495 = !DILocation(line: 0, scope: !1399, inlinedAt: !1494)
!1496 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1494)
!1497 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1494)
!1498 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1494)
!1499 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1494)
!1500 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1494)
!1501 = !DILocation(line: 0, scope: !1476, inlinedAt: !1488)
!1502 = !DILocation(line: 1455, column: 26, scope: !1478, inlinedAt: !1488)
!1503 = !DILocation(line: 0, scope: !1478, inlinedAt: !1488)
!1504 = !DILocation(line: 1457, column: 22, scope: !1484, inlinedAt: !1488)
!1505 = !DILocation(line: 1457, column: 13, scope: !1478, inlinedAt: !1488)
!1506 = !DILocalVariable(name: "__c", arg: 1, scope: !1507, file: !1290, line: 91, type: !87)
!1507 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1290, file: !1290, line: 91, type: !1508, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!87, !87, !209}
!1510 = !{!1506, !1511}
!1511 = !DILocalVariable(name: "__stream", arg: 2, scope: !1507, file: !1290, line: 91, type: !209)
!1512 = !DILocation(line: 0, scope: !1507, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 1459, column: 17, scope: !1514, inlinedAt: !1488)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 1459, column: 17)
!1515 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 1458, column: 11)
!1516 = !DILocation(line: 93, column: 10, scope: !1507, inlinedAt: !1513)
!1517 = !{!1299, !873, i64 40}
!1518 = !{!1299, !873, i64 48}
!1519 = !{!"branch_weights", i32 2000, i32 1}
!1520 = !DILocation(line: 1459, column: 17, scope: !1515, inlinedAt: !1488)
!1521 = !DILocation(line: 1459, column: 35, scope: !1514, inlinedAt: !1488)
!1522 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 1460, column: 15, scope: !1514, inlinedAt: !1488)
!1524 = !DILocation(line: 0, scope: !1399, inlinedAt: !1523)
!1525 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1523)
!1526 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1523)
!1527 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1523)
!1528 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1523)
!1529 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1523)
!1530 = !DILocation(line: 1465, column: 17, scope: !1482, inlinedAt: !1488)
!1531 = !DILocation(line: 1465, column: 64, scope: !1482, inlinedAt: !1488)
!1532 = !DILocation(line: 1465, column: 17, scope: !1483, inlinedAt: !1488)
!1533 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 1466, column: 15, scope: !1482, inlinedAt: !1488)
!1535 = !DILocation(line: 0, scope: !1399, inlinedAt: !1534)
!1536 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1534)
!1537 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1534)
!1538 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1534)
!1539 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1534)
!1540 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1534)
!1541 = !DILocation(line: 1467, column: 29, scope: !1483, inlinedAt: !1488)
!1542 = !DILocation(line: 1468, column: 21, scope: !1483, inlinedAt: !1488)
!1543 = !DILocation(line: 0, scope: !1484, inlinedAt: !1488)
!1544 = !DILocation(line: 1453, column: 37, scope: !1479, inlinedAt: !1488)
!1545 = !DILocation(line: 1453, column: 5, scope: !1476, inlinedAt: !1488)
!1546 = distinct !{!1546, !1545, !1547, !988}
!1547 = !DILocation(line: 1470, column: 7, scope: !1476, inlinedAt: !1488)
!1548 = !DILocation(line: 0, scope: !1308, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 1539, column: 11, scope: !1417)
!1550 = !DILocation(line: 130, column: 10, scope: !1308, inlinedAt: !1549)
!1551 = !DILocation(line: 1539, column: 11, scope: !1417)
!1552 = !DILocation(line: 1539, column: 21, scope: !1417)
!1553 = !DILocation(line: 0, scope: !1289, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 1539, column: 25, scope: !1417)
!1555 = !DILocation(line: 1539, column: 25, scope: !1417)
!1556 = !DILocation(line: 1539, column: 37, scope: !1417)
!1557 = distinct !{!1557, !1434, !1558, !988}
!1558 = !DILocation(line: 1539, column: 60, scope: !1417)
!1559 = !DILocation(line: 1552, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 1552, column: 7)
!1561 = !DILocation(line: 1552, column: 19, scope: !1560)
!1562 = !DILocation(line: 0, scope: !1507, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1552, column: 44, scope: !1560)
!1564 = !DILocation(line: 93, column: 10, scope: !1507, inlinedAt: !1563)
!1565 = !DILocation(line: 1552, column: 7, scope: !1417)
!1566 = !DILocation(line: 1552, column: 62, scope: !1560)
!1567 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 1553, column: 5, scope: !1560)
!1569 = !DILocation(line: 0, scope: !1399, inlinedAt: !1568)
!1570 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1568)
!1571 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1568)
!1572 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1568)
!1573 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1568)
!1574 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1568)
!1575 = !DILocation(line: 0, scope: !1289, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 1555, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 1555, column: 7)
!1578 = !DILocation(line: 137, column: 10, scope: !1289, inlinedAt: !1576)
!1579 = !DILocation(line: 1555, column: 7, scope: !1577)
!1580 = !DILocation(line: 1555, column: 7, scope: !1417)
!1581 = !DILocation(line: 1556, column: 5, scope: !1577)
!1582 = !DILocation(line: 1558, column: 3, scope: !1417)
!1583 = !DISubprogram(name: "fflush_unlocked", scope: !481, file: !481, line: 239, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1584 = !DISubprogram(name: "clearerr_unlocked", scope: !481, file: !481, line: 794, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !209}
!1587 = !DISubprogram(name: "__overflow", scope: !481, file: !481, line: 886, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!87, !209, !87}
!1590 = distinct !DISubprogram(name: "finish_and_exit", scope: !2, file: !2, line: 1474, type: !1591, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !209, !136}
!1593 = !{!1594, !1595}
!1594 = !DILocalVariable(name: "in", arg: 1, scope: !1590, file: !2, line: 1474, type: !209)
!1595 = !DILocalVariable(name: "infile", arg: 2, scope: !1590, file: !2, line: 1474, type: !136)
!1596 = !DILocation(line: 0, scope: !1590)
!1597 = !DILocation(line: 1476, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 1476, column: 7)
!1599 = !DILocation(line: 1476, column: 19, scope: !1598)
!1600 = !DILocation(line: 1476, column: 7, scope: !1590)
!1601 = !DILocation(line: 0, scope: !953, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1478, column: 11, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 1478, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 1477, column: 5)
!1605 = !DILocation(line: 1361, column: 11, scope: !953, inlinedAt: !1602)
!1606 = !DILocation(line: 1361, column: 10, scope: !953, inlinedAt: !1602)
!1607 = !DILocation(line: 0, scope: !1603)
!1608 = !DILocation(line: 1478, column: 11, scope: !1604)
!1609 = !DILocation(line: 1479, column: 9, scope: !1603)
!1610 = !DILocation(line: 1481, column: 9, scope: !1603)
!1611 = !DILocation(line: 1484, column: 3, scope: !1590)
!1612 = !DISubprogram(name: "__assert_fail", scope: !1613, file: !1613, line: 69, type: !1614, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1613 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !136, !136, !78, !136}
!1616 = distinct !DISubprogram(name: "isubase32", scope: !1200, file: !1200, line: 56, type: !1248, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1617)
!1617 = !{!1618}
!1618 = !DILocalVariable(name: "ch", arg: 1, scope: !1616, file: !1200, line: 56, type: !138)
!1619 = !DILocation(line: 0, scope: !1616)
!1620 = !DILocation(line: 58, column: 10, scope: !1616)
!1621 = !DILocation(line: 58, column: 44, scope: !1616)
!1622 = !DILocation(line: 58, column: 41, scope: !1616)
!1623 = !DILocation(line: 58, column: 3, scope: !1616)
!1624 = distinct !DISubprogram(name: "isbase32", scope: !1200, file: !1200, line: 62, type: !1625, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!196, !4}
!1627 = !{!1628}
!1628 = !DILocalVariable(name: "ch", arg: 1, scope: !1624, file: !1200, line: 62, type: !4)
!1629 = !DILocation(line: 0, scope: !1624)
!1630 = !DILocation(line: 0, scope: !1616, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 64, column: 10, scope: !1624)
!1632 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1631)
!1633 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1631)
!1634 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1631)
!1635 = !DILocation(line: 64, column: 3, scope: !1624)
!1636 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !1200, file: !1200, line: 74, type: !1637, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1644)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !1200, line: 47, size: 96, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1640, file: !1200, line: 49, baseType: !87, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1640, file: !1200, line: 50, baseType: !299, size: 64, offset: 32)
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "ctx", arg: 1, scope: !1636, file: !1200, line: 74, type: !1639)
!1646 = !DILocation(line: 0, scope: !1636)
!1647 = !DILocation(line: 76, column: 10, scope: !1636)
!1648 = !DILocation(line: 77, column: 1, scope: !1636)
!1649 = !DILocation(line: 0, scope: !434)
!1650 = !DILocation(line: 71, column: 10, scope: !434)
!1651 = !DILocation(line: 71, column: 16, scope: !434)
!1652 = !DILocation(line: 71, column: 3, scope: !434)
!1653 = !DILocation(line: 73, column: 34, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !434, file: !429, line: 72, column: 5)
!1655 = !DILocation(line: 73, column: 16, scope: !1654)
!1656 = !DILocation(line: 73, column: 11, scope: !1654)
!1657 = !DILocation(line: 73, column: 14, scope: !1654)
!1658 = !DILocation(line: 74, column: 12, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 74, column: 11)
!1660 = !DILocation(line: 74, column: 11, scope: !1654)
!1661 = !DILocation(line: 76, column: 25, scope: !1654)
!1662 = !DILocation(line: 76, column: 42, scope: !1654)
!1663 = !DILocation(line: 77, column: 27, scope: !1654)
!1664 = !DILocation(line: 78, column: 23, scope: !1654)
!1665 = !DILocation(line: 76, column: 16, scope: !1654)
!1666 = !DILocation(line: 76, column: 14, scope: !1654)
!1667 = !DILocation(line: 79, column: 12, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 79, column: 11)
!1669 = !DILocation(line: 79, column: 11, scope: !1654)
!1670 = !DILocation(line: 77, column: 47, scope: !1654)
!1671 = !DILocation(line: 76, column: 11, scope: !1654)
!1672 = !DILocation(line: 81, column: 14, scope: !1654)
!1673 = !DILocation(line: 85, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 85, column: 11)
!1675 = !DILocation(line: 85, column: 11, scope: !1654)
!1676 = !DILocation(line: 83, column: 43, scope: !1654)
!1677 = !DILocation(line: 83, column: 12, scope: !1654)
!1678 = !DILocation(line: 81, column: 11, scope: !1654)
!1679 = !DILocation(line: 89, column: 21, scope: !1654)
!1680 = !DILocation(line: 89, column: 38, scope: !1654)
!1681 = !DILocation(line: 90, column: 23, scope: !1654)
!1682 = !DILocation(line: 91, column: 19, scope: !1654)
!1683 = !DILocation(line: 89, column: 12, scope: !1654)
!1684 = !DILocation(line: 87, column: 14, scope: !1654)
!1685 = !DILocation(line: 93, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 93, column: 11)
!1687 = !DILocation(line: 93, column: 11, scope: !1654)
!1688 = !DILocation(line: 90, column: 43, scope: !1654)
!1689 = !DILocation(line: 97, column: 31, scope: !1654)
!1690 = !DILocation(line: 97, column: 21, scope: !1654)
!1691 = !DILocation(line: 97, column: 38, scope: !1654)
!1692 = !DILocation(line: 98, column: 23, scope: !1654)
!1693 = !DILocation(line: 98, column: 43, scope: !1654)
!1694 = !DILocation(line: 98, column: 20, scope: !1654)
!1695 = !DILocation(line: 99, column: 19, scope: !1654)
!1696 = !DILocation(line: 97, column: 12, scope: !1654)
!1697 = !DILocation(line: 96, column: 10, scope: !1654)
!1698 = !DILocation(line: 0, scope: !1654)
!1699 = !DILocation(line: 87, column: 11, scope: !1654)
!1700 = !DILocation(line: 95, column: 11, scope: !1654)
!1701 = !DILocation(line: 95, column: 14, scope: !1654)
!1702 = !DILocation(line: 101, column: 12, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 101, column: 11)
!1704 = !DILocation(line: 101, column: 11, scope: !1654)
!1705 = !DILocation(line: 104, column: 10, scope: !1654)
!1706 = !DILocation(line: 103, column: 14, scope: !1654)
!1707 = !DILocation(line: 107, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 107, column: 11)
!1709 = !DILocation(line: 107, column: 11, scope: !1654)
!1710 = !DILocation(line: 105, column: 30, scope: !1654)
!1711 = !DILocation(line: 105, column: 43, scope: !1654)
!1712 = !DILocation(line: 105, column: 12, scope: !1654)
!1713 = !DILocation(line: 103, column: 11, scope: !1654)
!1714 = !DILocation(line: 111, column: 21, scope: !1654)
!1715 = !DILocation(line: 111, column: 38, scope: !1654)
!1716 = !DILocation(line: 112, column: 23, scope: !1654)
!1717 = !DILocation(line: 113, column: 19, scope: !1654)
!1718 = !DILocation(line: 111, column: 12, scope: !1654)
!1719 = !DILocation(line: 109, column: 14, scope: !1654)
!1720 = !DILocation(line: 115, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 115, column: 11)
!1722 = !DILocation(line: 115, column: 11, scope: !1654)
!1723 = !DILocation(line: 112, column: 43, scope: !1654)
!1724 = !DILocation(line: 117, column: 41, scope: !1654)
!1725 = !DILocation(line: 117, column: 48, scope: !1654)
!1726 = !DILocation(line: 117, column: 24, scope: !1654)
!1727 = !DILocation(line: 117, column: 16, scope: !1654)
!1728 = !DILocation(line: 109, column: 11, scope: !1654)
!1729 = !DILocation(line: 117, column: 14, scope: !1654)
!1730 = !DILocation(line: 118, column: 12, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 118, column: 11)
!1732 = !DILocation(line: 118, column: 11, scope: !1654)
!1733 = !DILocation(line: 117, column: 11, scope: !1654)
!1734 = !DILocation(line: 120, column: 11, scope: !1654)
!1735 = !DILocation(line: 122, column: 11, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1654, file: !429, line: 122, column: 11)
!1737 = !DILocation(line: 122, column: 11, scope: !1654)
!1738 = distinct !{!1738, !1652, !1739, !988}
!1739 = !DILocation(line: 124, column: 5, scope: !434)
!1740 = !DILocation(line: 126, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !434, file: !429, line: 126, column: 7)
!1742 = !DILocation(line: 126, column: 7, scope: !434)
!1743 = !DILocation(line: 127, column: 10, scope: !1741)
!1744 = !DILocation(line: 127, column: 5, scope: !1741)
!1745 = !DILocation(line: 128, column: 1, scope: !434)
!1746 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !429, file: !429, line: 140, type: !1747, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!438, !136, !438, !1091}
!1749 = !{!1750, !1751, !1752, !1753, !1754}
!1750 = !DILocalVariable(name: "in", arg: 1, scope: !1746, file: !429, line: 140, type: !136)
!1751 = !DILocalVariable(name: "inlen", arg: 2, scope: !1746, file: !429, line: 140, type: !438)
!1752 = !DILocalVariable(name: "out", arg: 3, scope: !1746, file: !429, line: 140, type: !1091)
!1753 = !DILocalVariable(name: "in_over_5", scope: !1746, file: !429, line: 145, type: !438)
!1754 = !DILocalVariable(name: "outlen", scope: !1746, file: !429, line: 145, type: !438)
!1755 = !DILocation(line: 0, scope: !1746)
!1756 = !DILocation(line: 145, column: 27, scope: !1746)
!1757 = !DILocation(line: 145, column: 44, scope: !1746)
!1758 = !DILocation(line: 145, column: 31, scope: !1746)
!1759 = !DILocation(line: 146, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1746, file: !429, line: 146, column: 7)
!1761 = !DILocation(line: 146, column: 39, scope: !1760)
!1762 = !DILocation(line: 148, column: 12, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !429, line: 147, column: 5)
!1764 = !DILocation(line: 149, column: 7, scope: !1763)
!1765 = !DILocation(line: 151, column: 9, scope: !1746)
!1766 = !DILocalVariable(name: "s", arg: 1, scope: !1767, file: !1768, line: 55, type: !438)
!1767 = distinct !DISubprogram(name: "imalloc", scope: !1768, file: !1768, line: 55, type: !1769, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1771)
!1768 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!131, !438}
!1771 = !{!1766}
!1772 = !DILocation(line: 0, scope: !1767, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 153, column: 10, scope: !1746)
!1774 = !DILocation(line: 57, column: 26, scope: !1767, inlinedAt: !1773)
!1775 = !DILocation(line: 153, column: 8, scope: !1746)
!1776 = !DILocation(line: 154, column: 8, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1746, file: !429, line: 154, column: 7)
!1778 = !DILocation(line: 154, column: 7, scope: !1746)
!1779 = !DILocation(line: 157, column: 3, scope: !1746)
!1780 = !DILocation(line: 159, column: 3, scope: !1746)
!1781 = !DILocation(line: 160, column: 1, scope: !1746)
!1782 = !DISubprogram(name: "malloc", scope: !1062, file: !1062, line: 540, type: !1783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!131, !133}
!1785 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !429, file: !429, line: 464, type: !1786, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!196, !1639, !437, !438, !441, !819}
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1800, !1804}
!1789 = !DILocalVariable(name: "ctx", arg: 1, scope: !1785, file: !429, line: 464, type: !1639)
!1790 = !DILocalVariable(name: "in", arg: 2, scope: !1785, file: !429, line: 465, type: !437)
!1791 = !DILocalVariable(name: "inlen", arg: 3, scope: !1785, file: !429, line: 465, type: !438)
!1792 = !DILocalVariable(name: "out", arg: 4, scope: !1785, file: !429, line: 466, type: !441)
!1793 = !DILocalVariable(name: "outlen", arg: 5, scope: !1785, file: !429, line: 466, type: !819)
!1794 = !DILocalVariable(name: "ignore_newlines", scope: !1785, file: !429, line: 468, type: !196)
!1795 = !DILocalVariable(name: "flush_ctx", scope: !1785, file: !429, line: 469, type: !196)
!1796 = !DILocalVariable(name: "ctx_i", scope: !1785, file: !429, line: 470, type: !78)
!1797 = !DILocalVariable(name: "outleft", scope: !1785, file: !429, line: 478, type: !438)
!1798 = !DILocalVariable(name: "outleft_save", scope: !1799, file: !429, line: 482, type: !438)
!1799 = distinct !DILexicalBlock(scope: !1785, file: !429, line: 481, column: 5)
!1800 = !DILocalVariable(name: "in_end", scope: !1801, file: !429, line: 515, type: !136)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !429, line: 514, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !429, line: 509, column: 9)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !429, line: 503, column: 11)
!1804 = !DILocalVariable(name: "non_nl", scope: !1801, file: !429, line: 517, type: !136)
!1805 = !DILocation(line: 0, scope: !1785)
!1806 = !DILocation(line: 468, column: 30, scope: !1785)
!1807 = !DILocation(line: 472, column: 7, scope: !1785)
!1808 = !DILocation(line: 474, column: 20, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !429, line: 473, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1785, file: !429, line: 472, column: 7)
!1811 = !DILocation(line: 475, column: 25, scope: !1809)
!1812 = !DILocation(line: 476, column: 5, scope: !1809)
!1813 = !DILocation(line: 478, column: 3, scope: !1785)
!1814 = !DILocation(line: 478, column: 19, scope: !1785)
!1815 = !DILocation(line: 478, column: 9, scope: !1785)
!1816 = !DILocation(line: 480, column: 3, scope: !1785)
!1817 = !DILocation(line: 482, column: 28, scope: !1799)
!1818 = !DILocation(line: 0, scope: !1799)
!1819 = !DILocation(line: 483, column: 22, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1799, file: !429, line: 483, column: 11)
!1821 = !DILocation(line: 490, column: 20, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !429, line: 490, column: 19)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !429, line: 486, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !429, line: 484, column: 9)
!1825 = !DILocation(line: 490, column: 19, scope: !1823)
!1826 = !DILocation(line: 493, column: 18, scope: !1823)
!1827 = !DILocation(line: 494, column: 21, scope: !1823)
!1828 = !DILocation(line: 489, column: 30, scope: !1823)
!1829 = distinct !{!1829, !1830, !1831}
!1830 = !DILocation(line: 485, column: 11, scope: !1824)
!1831 = !DILocation(line: 495, column: 13, scope: !1824)
!1832 = !DILocation(line: 498, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1799, file: !429, line: 498, column: 11)
!1834 = !DILocation(line: 498, column: 22, scope: !1833)
!1835 = !DILocation(line: 503, column: 17, scope: !1803)
!1836 = !DILocation(line: 503, column: 20, scope: !1803)
!1837 = !DILocation(line: 503, column: 24, scope: !1803)
!1838 = !DILocation(line: 503, column: 32, scope: !1803)
!1839 = !DILocation(line: 505, column: 11, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1803, file: !429, line: 504, column: 9)
!1841 = !DILocation(line: 506, column: 11, scope: !1840)
!1842 = !DILocation(line: 507, column: 9, scope: !1840)
!1843 = !DILocation(line: 511, column: 33, scope: !1802)
!1844 = !DILocation(line: 511, column: 31, scope: !1802)
!1845 = !DILocation(line: 511, column: 15, scope: !1802)
!1846 = !DILocation(line: 512, column: 19, scope: !1802)
!1847 = !DILocation(line: 515, column: 37, scope: !1801)
!1848 = !DILocation(line: 0, scope: !1801)
!1849 = !DILocation(line: 518, column: 17, scope: !1801)
!1850 = !DILocalVariable(name: "ctx", arg: 1, scope: !1851, file: !429, line: 281, type: !1639)
!1851 = distinct !DISubprogram(name: "get_8", scope: !429, file: !429, line: 281, type: !1852, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1855)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!130, !1639, !1854, !437, !819}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1855 = !{!1850, !1856, !1857, !1858, !1859, !1862, !1864}
!1856 = !DILocalVariable(name: "in", arg: 2, scope: !1851, file: !429, line: 282, type: !1854)
!1857 = !DILocalVariable(name: "in_end", arg: 3, scope: !1851, file: !429, line: 282, type: !437)
!1858 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1851, file: !429, line: 283, type: !819)
!1859 = !DILocalVariable(name: "t", scope: !1860, file: !429, line: 290, type: !136)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !429, line: 289, column: 5)
!1861 = distinct !DILexicalBlock(scope: !1851, file: !429, line: 288, column: 7)
!1862 = !DILocalVariable(name: "p", scope: !1863, file: !429, line: 302, type: !136)
!1863 = distinct !DILexicalBlock(scope: !1851, file: !429, line: 300, column: 3)
!1864 = !DILocalVariable(name: "c", scope: !1865, file: !429, line: 305, type: !4)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !429, line: 304, column: 7)
!1866 = !DILocation(line: 0, scope: !1851, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 519, column: 24, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1801, file: !429, line: 518, column: 17)
!1869 = !DILocation(line: 285, column: 12, scope: !1870, inlinedAt: !1867)
!1870 = distinct !DILexicalBlock(scope: !1851, file: !429, line: 285, column: 7)
!1871 = !{!1872}
!1872 = distinct !{!1872, !1873, !"get_8: argument 0"}
!1873 = distinct !{!1873, !"get_8"}
!1874 = !DILocation(line: 285, column: 7, scope: !1851, inlinedAt: !1867)
!1875 = !DILocation(line: 286, column: 12, scope: !1870, inlinedAt: !1867)
!1876 = !DILocation(line: 288, column: 7, scope: !1851, inlinedAt: !1867)
!1877 = !DILocation(line: 0, scope: !1860, inlinedAt: !1867)
!1878 = !DILocation(line: 291, column: 13, scope: !1879, inlinedAt: !1867)
!1879 = distinct !DILexicalBlock(scope: !1860, file: !429, line: 291, column: 11)
!1880 = !DILocation(line: 291, column: 29, scope: !1879, inlinedAt: !1867)
!1881 = !DILocation(line: 291, column: 32, scope: !1879, inlinedAt: !1867)
!1882 = !DILocation(line: 291, column: 52, scope: !1879, inlinedAt: !1867)
!1883 = !DILocation(line: 291, column: 11, scope: !1860, inlinedAt: !1867)
!1884 = !DILocation(line: 294, column: 15, scope: !1885, inlinedAt: !1867)
!1885 = distinct !DILexicalBlock(scope: !1879, file: !429, line: 292, column: 9)
!1886 = !DILocation(line: 526, column: 42, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1801, file: !429, line: 526, column: 17)
!1888 = !DILocation(line: 0, scope: !1863, inlinedAt: !1867)
!1889 = !DILocation(line: 303, column: 14, scope: !1863, inlinedAt: !1867)
!1890 = !DILocation(line: 303, column: 5, scope: !1863, inlinedAt: !1867)
!1891 = !DILocation(line: 306, column: 13, scope: !1865, inlinedAt: !1867)
!1892 = !DILocation(line: 305, column: 20, scope: !1865, inlinedAt: !1867)
!1893 = !DILocation(line: 305, column: 18, scope: !1865, inlinedAt: !1867)
!1894 = !DILocation(line: 0, scope: !1865, inlinedAt: !1867)
!1895 = !DILocation(line: 306, column: 15, scope: !1896, inlinedAt: !1867)
!1896 = distinct !DILexicalBlock(scope: !1865, file: !429, line: 306, column: 13)
!1897 = !DILocation(line: 308, column: 28, scope: !1898, inlinedAt: !1867)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !429, line: 307, column: 11)
!1899 = !DILocation(line: 308, column: 13, scope: !1898, inlinedAt: !1867)
!1900 = !DILocation(line: 308, column: 32, scope: !1898, inlinedAt: !1867)
!1901 = !DILocation(line: 309, column: 22, scope: !1902, inlinedAt: !1867)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !429, line: 309, column: 17)
!1903 = !DILocation(line: 309, column: 24, scope: !1902, inlinedAt: !1867)
!1904 = !DILocation(line: 309, column: 17, scope: !1898, inlinedAt: !1867)
!1905 = !DILocation(line: 315, column: 27, scope: !1863, inlinedAt: !1867)
!1906 = !DILocation(line: 315, column: 22, scope: !1863, inlinedAt: !1867)
!1907 = !DILocation(line: 0, scope: !1868)
!1908 = !DILocation(line: 526, column: 23, scope: !1887)
!1909 = !DILocation(line: 526, column: 28, scope: !1887)
!1910 = !DILocation(line: 526, column: 38, scope: !1887)
!1911 = !DILocation(line: 531, column: 18, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1801, file: !429, line: 531, column: 17)
!1913 = !DILocation(line: 531, column: 17, scope: !1801)
!1914 = !DILocation(line: 534, column: 28, scope: !1801)
!1915 = !DILocation(line: 539, column: 14, scope: !1785)
!1916 = !DILocation(line: 539, column: 11, scope: !1785)
!1917 = !DILocation(line: 542, column: 1, scope: !1785)
!1918 = !DILocation(line: 541, column: 3, scope: !1785)
!1919 = distinct !DISubprogram(name: "decode_8", scope: !429, file: !429, line: 335, type: !1920, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!196, !437, !438, !1332, !819}
!1922 = !{!1923, !1924, !1925, !1926, !1927}
!1923 = !DILocalVariable(name: "in", arg: 1, scope: !1919, file: !429, line: 335, type: !437)
!1924 = !DILocalVariable(name: "inlen", arg: 2, scope: !1919, file: !429, line: 335, type: !438)
!1925 = !DILocalVariable(name: "outp", arg: 3, scope: !1919, file: !429, line: 336, type: !1332)
!1926 = !DILocalVariable(name: "outleft", arg: 4, scope: !1919, file: !429, line: 336, type: !819)
!1927 = !DILocalVariable(name: "out", scope: !1919, file: !429, line: 344, type: !130)
!1928 = !DILocation(line: 0, scope: !1919)
!1929 = !DILocation(line: 338, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1919, file: !429, line: 338, column: 7)
!1931 = !DILocation(line: 338, column: 7, scope: !1919)
!1932 = !DILocation(line: 341, column: 18, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1919, file: !429, line: 341, column: 7)
!1934 = !DILocation(line: 0, scope: !1624, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 341, column: 8, scope: !1933)
!1936 = !DILocation(line: 0, scope: !1616, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1935)
!1938 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1937)
!1939 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1937)
!1940 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1937)
!1941 = !DILocation(line: 341, column: 25, scope: !1933)
!1942 = !DILocation(line: 341, column: 39, scope: !1933)
!1943 = !DILocation(line: 0, scope: !1624, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 341, column: 29, scope: !1933)
!1945 = !DILocation(line: 0, scope: !1616, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1944)
!1947 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1946)
!1948 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1946)
!1949 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1946)
!1950 = !DILocation(line: 341, column: 7, scope: !1919)
!1951 = !DILocation(line: 344, column: 15, scope: !1919)
!1952 = !DILocation(line: 346, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1919, file: !429, line: 346, column: 7)
!1954 = !DILocation(line: 346, column: 7, scope: !1919)
!1955 = !DILocation(line: 348, column: 50, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1953, file: !429, line: 347, column: 5)
!1957 = !DILocation(line: 349, column: 52, scope: !1956)
!1958 = !DILocation(line: 349, column: 17, scope: !1956)
!1959 = !DILocation(line: 348, column: 11, scope: !1956)
!1960 = !DILocation(line: 348, column: 14, scope: !1956)
!1961 = !DILocation(line: 350, column: 7, scope: !1956)
!1962 = !DILocation(line: 351, column: 5, scope: !1956)
!1963 = !DILocation(line: 353, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1919, file: !429, line: 353, column: 7)
!1965 = !DILocation(line: 353, column: 13, scope: !1964)
!1966 = !DILocation(line: 353, column: 7, scope: !1919)
!1967 = !DILocation(line: 355, column: 11, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !429, line: 355, column: 11)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !429, line: 354, column: 5)
!1970 = !DILocation(line: 355, column: 17, scope: !1968)
!1971 = !DILocation(line: 355, column: 24, scope: !1968)
!1972 = !DILocation(line: 355, column: 27, scope: !1968)
!1973 = !DILocation(line: 355, column: 33, scope: !1968)
!1974 = !DILocation(line: 355, column: 40, scope: !1968)
!1975 = !DILocation(line: 355, column: 43, scope: !1968)
!1976 = !DILocation(line: 355, column: 49, scope: !1968)
!1977 = !DILocation(line: 356, column: 11, scope: !1968)
!1978 = !DILocation(line: 356, column: 14, scope: !1968)
!1979 = !DILocation(line: 356, column: 20, scope: !1968)
!1980 = !DILocation(line: 356, column: 27, scope: !1968)
!1981 = !DILocation(line: 356, column: 30, scope: !1968)
!1982 = !DILocation(line: 356, column: 36, scope: !1968)
!1983 = !DILocation(line: 355, column: 11, scope: !1969)
!1984 = !DILocation(line: 0, scope: !1624, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 365, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !429, line: 365, column: 11)
!1987 = distinct !DILexicalBlock(scope: !1964, file: !429, line: 364, column: 5)
!1988 = !DILocation(line: 0, scope: !1616, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1985)
!1990 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1989)
!1991 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1989)
!1992 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1989)
!1993 = !DILocation(line: 365, column: 29, scope: !1986)
!1994 = !DILocation(line: 365, column: 43, scope: !1986)
!1995 = !DILocation(line: 0, scope: !1624, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 365, column: 33, scope: !1986)
!1997 = !DILocation(line: 0, scope: !1616, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1996)
!1999 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1998)
!2000 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1998)
!2001 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1998)
!2002 = !DILocation(line: 365, column: 11, scope: !1987)
!2003 = !DILocation(line: 368, column: 11, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1987, file: !429, line: 368, column: 11)
!2005 = !DILocation(line: 368, column: 11, scope: !1987)
!2006 = !DILocation(line: 370, column: 54, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !429, line: 369, column: 9)
!2008 = !DILocation(line: 371, column: 56, scope: !2007)
!2009 = !DILocation(line: 371, column: 21, scope: !2007)
!2010 = !DILocation(line: 372, column: 56, scope: !2007)
!2011 = !DILocation(line: 372, column: 21, scope: !2007)
!2012 = !DILocation(line: 370, column: 15, scope: !2007)
!2013 = !DILocation(line: 370, column: 18, scope: !2007)
!2014 = !DILocation(line: 373, column: 11, scope: !2007)
!2015 = !DILocation(line: 374, column: 9, scope: !2007)
!2016 = !DILocation(line: 376, column: 11, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1987, file: !429, line: 376, column: 11)
!2018 = !DILocation(line: 376, column: 17, scope: !2017)
!2019 = !DILocation(line: 376, column: 11, scope: !1987)
!2020 = !DILocation(line: 378, column: 15, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !429, line: 378, column: 15)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !429, line: 377, column: 9)
!2023 = !DILocation(line: 378, column: 21, scope: !2021)
!2024 = !DILocation(line: 378, column: 28, scope: !2021)
!2025 = !DILocation(line: 378, column: 31, scope: !2021)
!2026 = !DILocation(line: 378, column: 37, scope: !2021)
!2027 = !DILocation(line: 378, column: 44, scope: !2021)
!2028 = !DILocation(line: 378, column: 47, scope: !2021)
!2029 = !DILocation(line: 378, column: 53, scope: !2021)
!2030 = !DILocation(line: 378, column: 15, scope: !2022)
!2031 = !DILocation(line: 0, scope: !1624, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 387, column: 16, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !429, line: 387, column: 15)
!2034 = distinct !DILexicalBlock(scope: !2017, file: !429, line: 386, column: 9)
!2035 = !DILocation(line: 0, scope: !1616, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2032)
!2037 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2036)
!2038 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2036)
!2039 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2036)
!2040 = !DILocation(line: 387, column: 15, scope: !2034)
!2041 = !DILocation(line: 390, column: 15, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2034, file: !429, line: 390, column: 15)
!2043 = !DILocation(line: 390, column: 15, scope: !2034)
!2044 = !DILocation(line: 392, column: 58, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !429, line: 391, column: 13)
!2046 = !DILocation(line: 393, column: 60, scope: !2045)
!2047 = !DILocation(line: 393, column: 25, scope: !2045)
!2048 = !DILocation(line: 392, column: 19, scope: !2045)
!2049 = !DILocation(line: 392, column: 22, scope: !2045)
!2050 = !DILocation(line: 394, column: 15, scope: !2045)
!2051 = !DILocation(line: 395, column: 13, scope: !2045)
!2052 = !DILocation(line: 0, scope: !1987)
!2053 = !DILocation(line: 397, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2034, file: !429, line: 397, column: 15)
!2055 = !DILocation(line: 397, column: 21, scope: !2054)
!2056 = !DILocation(line: 397, column: 15, scope: !2034)
!2057 = !DILocation(line: 399, column: 19, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !429, line: 399, column: 19)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !429, line: 398, column: 13)
!2060 = !DILocation(line: 399, column: 25, scope: !2058)
!2061 = !DILocation(line: 399, column: 32, scope: !2058)
!2062 = !DILocation(line: 399, column: 35, scope: !2058)
!2063 = !DILocation(line: 399, column: 41, scope: !2058)
!2064 = !DILocation(line: 399, column: 19, scope: !2059)
!2065 = !DILocation(line: 0, scope: !1624, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 408, column: 20, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !429, line: 408, column: 19)
!2068 = distinct !DILexicalBlock(scope: !2054, file: !429, line: 407, column: 13)
!2069 = !DILocation(line: 0, scope: !1616, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2066)
!2071 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2070)
!2072 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2070)
!2073 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2070)
!2074 = !DILocation(line: 408, column: 37, scope: !2067)
!2075 = !DILocation(line: 408, column: 51, scope: !2067)
!2076 = !DILocation(line: 0, scope: !1624, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 408, column: 41, scope: !2067)
!2078 = !DILocation(line: 0, scope: !1616, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2077)
!2080 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2079)
!2081 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2079)
!2082 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2079)
!2083 = !DILocation(line: 408, column: 19, scope: !2068)
!2084 = !DILocation(line: 411, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2068, file: !429, line: 411, column: 19)
!2086 = !DILocation(line: 411, column: 19, scope: !2068)
!2087 = !DILocation(line: 413, column: 62, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !429, line: 412, column: 17)
!2089 = !DILocation(line: 414, column: 64, scope: !2088)
!2090 = !DILocation(line: 414, column: 29, scope: !2088)
!2091 = !DILocation(line: 415, column: 64, scope: !2088)
!2092 = !DILocation(line: 415, column: 29, scope: !2088)
!2093 = !DILocation(line: 413, column: 23, scope: !2088)
!2094 = !DILocation(line: 413, column: 26, scope: !2088)
!2095 = !DILocation(line: 416, column: 19, scope: !2088)
!2096 = !DILocation(line: 417, column: 17, scope: !2088)
!2097 = !DILocation(line: 0, scope: !2034)
!2098 = !DILocation(line: 419, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2068, file: !429, line: 419, column: 19)
!2100 = !DILocation(line: 419, column: 25, scope: !2099)
!2101 = !DILocation(line: 419, column: 19, scope: !2068)
!2102 = !DILocation(line: 0, scope: !1624, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 421, column: 24, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !429, line: 421, column: 23)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !429, line: 420, column: 17)
!2106 = !DILocation(line: 0, scope: !1616, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2103)
!2108 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2107)
!2109 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2107)
!2110 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2107)
!2111 = !DILocation(line: 421, column: 23, scope: !2105)
!2112 = !DILocation(line: 424, column: 23, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !429, line: 424, column: 23)
!2114 = !DILocation(line: 424, column: 23, scope: !2105)
!2115 = !DILocation(line: 426, column: 66, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !429, line: 425, column: 21)
!2117 = !DILocation(line: 427, column: 33, scope: !2116)
!2118 = !DILocation(line: 426, column: 27, scope: !2116)
!2119 = !DILocation(line: 426, column: 30, scope: !2116)
!2120 = !DILocation(line: 428, column: 23, scope: !2116)
!2121 = !DILocation(line: 429, column: 21, scope: !2116)
!2122 = !DILocation(line: 434, column: 55, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !429, line: 434, column: 23)
!2124 = distinct !DILexicalBlock(scope: !2099, file: !429, line: 432, column: 17)
!2125 = !DILocation(line: 434, column: 23, scope: !2124)
!2126 = !DILocation(line: 442, column: 3, scope: !1919)
!2127 = !DILocation(line: 443, column: 1, scope: !1919)
!2128 = !DISubprogram(name: "memchr", scope: !1058, file: !1058, line: 107, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!131, !1086, !87, !133}
!2131 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !429, file: !429, line: 556, type: !2132, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!196, !1639, !136, !438, !1091, !819}
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140}
!2135 = !DILocalVariable(name: "ctx", arg: 1, scope: !2131, file: !429, line: 556, type: !1639)
!2136 = !DILocalVariable(name: "in", arg: 2, scope: !2131, file: !429, line: 557, type: !136)
!2137 = !DILocalVariable(name: "inlen", arg: 3, scope: !2131, file: !429, line: 557, type: !438)
!2138 = !DILocalVariable(name: "out", arg: 4, scope: !2131, file: !429, line: 557, type: !1091)
!2139 = !DILocalVariable(name: "outlen", arg: 5, scope: !2131, file: !429, line: 558, type: !819)
!2140 = !DILocalVariable(name: "needlen", scope: !2131, file: !429, line: 565, type: !438)
!2141 = !DILocation(line: 0, scope: !2131)
!2142 = !DILocation(line: 565, column: 3, scope: !2131)
!2143 = !DILocation(line: 565, column: 31, scope: !2131)
!2144 = !DILocation(line: 565, column: 21, scope: !2131)
!2145 = !DILocation(line: 565, column: 9, scope: !2131)
!2146 = !DILocation(line: 0, scope: !1767, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 567, column: 10, scope: !2131)
!2148 = !DILocation(line: 57, column: 26, scope: !1767, inlinedAt: !2147)
!2149 = !DILocation(line: 567, column: 8, scope: !2131)
!2150 = !DILocation(line: 568, column: 8, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2131, file: !429, line: 568, column: 7)
!2152 = !DILocation(line: 568, column: 7, scope: !2131)
!2153 = !DILocation(line: 571, column: 8, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2131, file: !429, line: 571, column: 7)
!2155 = !DILocation(line: 571, column: 7, scope: !2131)
!2156 = !DILocation(line: 573, column: 13, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !429, line: 572, column: 5)
!2158 = !DILocation(line: 573, column: 7, scope: !2157)
!2159 = !DILocation(line: 574, column: 12, scope: !2157)
!2160 = !DILocation(line: 575, column: 7, scope: !2157)
!2161 = !DILocation(line: 578, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2131, file: !429, line: 578, column: 7)
!2163 = !DILocation(line: 578, column: 7, scope: !2131)
!2164 = !DILocation(line: 579, column: 15, scope: !2162)
!2165 = !DILocation(line: 579, column: 13, scope: !2162)
!2166 = !DILocation(line: 579, column: 5, scope: !2162)
!2167 = !DILocation(line: 582, column: 1, scope: !2131)
!2168 = !DISubprogram(name: "free", scope: !954, file: !954, line: 752, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !131}
!2171 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !455, file: !455, line: 50, type: !894, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2172)
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "file", arg: 1, scope: !2171, file: !455, line: 50, type: !136)
!2174 = !DILocation(line: 0, scope: !2171)
!2175 = !DILocation(line: 52, column: 13, scope: !2171)
!2176 = !DILocation(line: 53, column: 1, scope: !2171)
!2177 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !455, file: !455, line: 87, type: !2178, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !196}
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "ignore", arg: 1, scope: !2177, file: !455, line: 87, type: !196)
!2182 = !DILocation(line: 0, scope: !2177)
!2183 = !DILocation(line: 89, column: 16, scope: !2177)
!2184 = !{!2185, !2185, i64 0}
!2185 = !{!"_Bool", !874, i64 0}
!2186 = !DILocation(line: 90, column: 1, scope: !2177)
!2187 = distinct !DISubprogram(name: "close_stdout", scope: !455, file: !455, line: 116, type: !522, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "write_error", scope: !2190, file: !455, line: 121, type: !136)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !455, line: 120, column: 5)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !455, line: 118, column: 7)
!2192 = !DILocation(line: 118, column: 21, scope: !2191)
!2193 = !DILocation(line: 118, column: 7, scope: !2191)
!2194 = !DILocation(line: 118, column: 29, scope: !2191)
!2195 = !DILocation(line: 119, column: 7, scope: !2191)
!2196 = !DILocation(line: 119, column: 12, scope: !2191)
!2197 = !{i8 0, i8 2}
!2198 = !DILocation(line: 119, column: 25, scope: !2191)
!2199 = !DILocation(line: 119, column: 28, scope: !2191)
!2200 = !DILocation(line: 119, column: 34, scope: !2191)
!2201 = !DILocation(line: 118, column: 7, scope: !2187)
!2202 = !DILocation(line: 121, column: 33, scope: !2190)
!2203 = !DILocation(line: 0, scope: !2190)
!2204 = !DILocation(line: 122, column: 11, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2190, file: !455, line: 122, column: 11)
!2206 = !DILocation(line: 0, scope: !2205)
!2207 = !DILocation(line: 122, column: 11, scope: !2190)
!2208 = !DILocation(line: 123, column: 9, scope: !2205)
!2209 = !DILocation(line: 126, column: 9, scope: !2205)
!2210 = !DILocation(line: 128, column: 14, scope: !2190)
!2211 = !DILocation(line: 128, column: 7, scope: !2190)
!2212 = !DILocation(line: 133, column: 42, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2187, file: !455, line: 133, column: 7)
!2214 = !DILocation(line: 133, column: 28, scope: !2213)
!2215 = !DILocation(line: 133, column: 50, scope: !2213)
!2216 = !DILocation(line: 133, column: 7, scope: !2187)
!2217 = !DILocation(line: 134, column: 12, scope: !2213)
!2218 = !DILocation(line: 134, column: 5, scope: !2213)
!2219 = !DILocation(line: 135, column: 1, scope: !2187)
!2220 = !DISubprogram(name: "_exit", scope: !2221, file: !2221, line: 624, type: !862, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2221 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2222 = distinct !DISubprogram(name: "verror", scope: !470, file: !470, line: 251, type: !2223, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !87, !87, !136, !480}
!2225 = !{!2226, !2227, !2228, !2229}
!2226 = !DILocalVariable(name: "status", arg: 1, scope: !2222, file: !470, line: 251, type: !87)
!2227 = !DILocalVariable(name: "errnum", arg: 2, scope: !2222, file: !470, line: 251, type: !87)
!2228 = !DILocalVariable(name: "message", arg: 3, scope: !2222, file: !470, line: 251, type: !136)
!2229 = !DILocalVariable(name: "args", arg: 4, scope: !2222, file: !470, line: 251, type: !480)
!2230 = !DILocation(line: 0, scope: !2222)
!2231 = !DILocation(line: 251, column: 1, scope: !2222)
!2232 = !DILocation(line: 261, column: 3, scope: !2222)
!2233 = !DILocation(line: 265, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !470, line: 265, column: 7)
!2235 = !DILocation(line: 265, column: 7, scope: !2222)
!2236 = !DILocation(line: 266, column: 5, scope: !2234)
!2237 = !DILocation(line: 272, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !470, line: 268, column: 5)
!2239 = !DILocation(line: 276, column: 3, scope: !2222)
!2240 = !{i64 0, i64 8, !872, i64 8, i64 8, !872, i64 16, i64 8, !872, i64 24, i64 4, !941, i64 28, i64 4, !941}
!2241 = !DILocation(line: 282, column: 1, scope: !2222)
!2242 = distinct !DISubprogram(name: "flush_stdout", scope: !470, file: !470, line: 163, type: !522, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2243)
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "stdout_fd", scope: !2242, file: !470, line: 166, type: !87)
!2245 = !DILocation(line: 0, scope: !2242)
!2246 = !DILocalVariable(name: "fd", arg: 1, scope: !2247, file: !470, line: 145, type: !87)
!2247 = distinct !DISubprogram(name: "is_open", scope: !470, file: !470, line: 145, type: !1259, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2248)
!2248 = !{!2246}
!2249 = !DILocation(line: 0, scope: !2247, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 182, column: 25, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2242, file: !470, line: 182, column: 7)
!2252 = !DILocation(line: 157, column: 15, scope: !2247, inlinedAt: !2250)
!2253 = !DILocation(line: 157, column: 12, scope: !2247, inlinedAt: !2250)
!2254 = !DILocation(line: 182, column: 7, scope: !2242)
!2255 = !DILocation(line: 184, column: 5, scope: !2251)
!2256 = !DILocation(line: 185, column: 1, scope: !2242)
!2257 = distinct !DISubprogram(name: "error_tail", scope: !470, file: !470, line: 219, type: !2223, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "status", arg: 1, scope: !2257, file: !470, line: 219, type: !87)
!2260 = !DILocalVariable(name: "errnum", arg: 2, scope: !2257, file: !470, line: 219, type: !87)
!2261 = !DILocalVariable(name: "message", arg: 3, scope: !2257, file: !470, line: 219, type: !136)
!2262 = !DILocalVariable(name: "args", arg: 4, scope: !2257, file: !470, line: 219, type: !480)
!2263 = !DILocation(line: 0, scope: !2257)
!2264 = !DILocation(line: 219, column: 1, scope: !2257)
!2265 = !DILocation(line: 229, column: 13, scope: !2257)
!2266 = !DILocation(line: 135, column: 10, scope: !2267, inlinedAt: !2309)
!2267 = distinct !DISubprogram(name: "vfprintf", scope: !929, file: !929, line: 132, type: !2268, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2305)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!87, !2270, !437, !482}
!2270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2271)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2273, file: !213, line: 51, baseType: !87, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2273, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2273, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2273, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2273, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2273, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2273, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2273, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2273, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2273, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2273, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2273, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2273, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2273, file: !213, line: 70, baseType: !2289, size: 64, offset: 832)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2273, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2273, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2273, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2273, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2273, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2273, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2273, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2273, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2273, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2273, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2273, file: !213, line: 93, baseType: !2289, size: 64, offset: 1344)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2273, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2273, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2273, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2273, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "__stream", arg: 1, scope: !2267, file: !929, line: 132, type: !2270)
!2307 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2267, file: !929, line: 133, type: !437)
!2308 = !DILocalVariable(name: "__ap", arg: 3, scope: !2267, file: !929, line: 133, type: !482)
!2309 = distinct !DILocation(line: 229, column: 3, scope: !2257)
!2310 = !{!2311, !2313}
!2311 = distinct !{!2311, !2312, !"vfprintf.inline: argument 0"}
!2312 = distinct !{!2312, !"vfprintf.inline"}
!2313 = distinct !{!2313, !2312, !"vfprintf.inline: argument 1"}
!2314 = !DILocation(line: 229, column: 3, scope: !2257)
!2315 = !DILocation(line: 0, scope: !2267, inlinedAt: !2309)
!2316 = !DILocation(line: 133, column: 49, scope: !2267, inlinedAt: !2309)
!2317 = !DILocation(line: 232, column: 3, scope: !2257)
!2318 = !DILocation(line: 233, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2257, file: !470, line: 233, column: 7)
!2320 = !DILocation(line: 233, column: 7, scope: !2257)
!2321 = !DILocalVariable(name: "errnum", arg: 1, scope: !2322, file: !470, line: 188, type: !87)
!2322 = distinct !DISubprogram(name: "print_errno_message", scope: !470, file: !470, line: 188, type: !862, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2323)
!2323 = !{!2321, !2324, !2325}
!2324 = !DILocalVariable(name: "s", scope: !2322, file: !470, line: 190, type: !136)
!2325 = !DILocalVariable(name: "errbuf", scope: !2322, file: !470, line: 193, type: !2326)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2327)
!2327 = !{!2328}
!2328 = !DISubrange(count: 1024)
!2329 = !DILocation(line: 0, scope: !2322, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 234, column: 5, scope: !2319)
!2331 = !DILocation(line: 193, column: 3, scope: !2322, inlinedAt: !2330)
!2332 = !DILocation(line: 193, column: 8, scope: !2322, inlinedAt: !2330)
!2333 = !DILocation(line: 195, column: 7, scope: !2322, inlinedAt: !2330)
!2334 = !DILocation(line: 207, column: 9, scope: !2335, inlinedAt: !2330)
!2335 = distinct !DILexicalBlock(scope: !2322, file: !470, line: 207, column: 7)
!2336 = !DILocation(line: 207, column: 7, scope: !2322, inlinedAt: !2330)
!2337 = !DILocation(line: 208, column: 9, scope: !2335, inlinedAt: !2330)
!2338 = !DILocation(line: 208, column: 5, scope: !2335, inlinedAt: !2330)
!2339 = !DILocation(line: 214, column: 3, scope: !2322, inlinedAt: !2330)
!2340 = !DILocation(line: 216, column: 1, scope: !2322, inlinedAt: !2330)
!2341 = !DILocation(line: 234, column: 5, scope: !2319)
!2342 = !DILocation(line: 238, column: 3, scope: !2257)
!2343 = !DILocalVariable(name: "__c", arg: 1, scope: !2344, file: !1290, line: 101, type: !87)
!2344 = distinct !DISubprogram(name: "putc_unlocked", scope: !1290, file: !1290, line: 101, type: !2345, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!87, !87, !2271}
!2347 = !{!2343, !2348}
!2348 = !DILocalVariable(name: "__stream", arg: 2, scope: !2344, file: !1290, line: 101, type: !2271)
!2349 = !DILocation(line: 0, scope: !2344, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 238, column: 3, scope: !2257)
!2351 = !DILocation(line: 103, column: 10, scope: !2344, inlinedAt: !2350)
!2352 = !DILocation(line: 240, column: 3, scope: !2257)
!2353 = !DILocation(line: 241, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2257, file: !470, line: 241, column: 7)
!2355 = !DILocation(line: 241, column: 7, scope: !2257)
!2356 = !DILocation(line: 242, column: 5, scope: !2354)
!2357 = !DILocation(line: 243, column: 1, scope: !2257)
!2358 = !DISubprogram(name: "__vfprintf_chk", scope: !929, file: !929, line: 96, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!87, !2270, !87, !437, !482}
!2361 = !DISubprogram(name: "strerror_r", scope: !1058, file: !1058, line: 444, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!130, !87, !130, !133}
!2364 = !DISubprogram(name: "fcntl", scope: !2365, file: !2365, line: 149, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2365 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!87, !87, !87, null}
!2368 = distinct !DISubprogram(name: "error", scope: !470, file: !470, line: 285, type: !2369, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !87, !87, !136, null}
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "status", arg: 1, scope: !2368, file: !470, line: 285, type: !87)
!2373 = !DILocalVariable(name: "errnum", arg: 2, scope: !2368, file: !470, line: 285, type: !87)
!2374 = !DILocalVariable(name: "message", arg: 3, scope: !2368, file: !470, line: 285, type: !136)
!2375 = !DILocalVariable(name: "ap", scope: !2368, file: !470, line: 287, type: !480)
!2376 = !DILocation(line: 0, scope: !2368)
!2377 = !DILocation(line: 287, column: 3, scope: !2368)
!2378 = !DILocation(line: 287, column: 11, scope: !2368)
!2379 = !DILocation(line: 288, column: 3, scope: !2368)
!2380 = !DILocation(line: 289, column: 3, scope: !2368)
!2381 = !DILocation(line: 290, column: 3, scope: !2368)
!2382 = !DILocation(line: 291, column: 1, scope: !2368)
!2383 = !DILocation(line: 0, scope: !477)
!2384 = !DILocation(line: 298, column: 1, scope: !477)
!2385 = !DILocation(line: 302, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !477, file: !470, line: 302, column: 7)
!2387 = !DILocation(line: 302, column: 7, scope: !477)
!2388 = !DILocation(line: 307, column: 11, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !470, line: 307, column: 11)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !470, line: 303, column: 5)
!2391 = !DILocation(line: 307, column: 27, scope: !2389)
!2392 = !DILocation(line: 308, column: 11, scope: !2389)
!2393 = !DILocation(line: 308, column: 28, scope: !2389)
!2394 = !DILocation(line: 308, column: 25, scope: !2389)
!2395 = !DILocation(line: 309, column: 15, scope: !2389)
!2396 = !DILocation(line: 309, column: 33, scope: !2389)
!2397 = !DILocation(line: 310, column: 19, scope: !2389)
!2398 = !DILocation(line: 311, column: 22, scope: !2389)
!2399 = !DILocation(line: 311, column: 56, scope: !2389)
!2400 = !DILocation(line: 307, column: 11, scope: !2390)
!2401 = !DILocation(line: 316, column: 21, scope: !2390)
!2402 = !DILocation(line: 317, column: 23, scope: !2390)
!2403 = !DILocation(line: 318, column: 5, scope: !2390)
!2404 = !DILocation(line: 327, column: 3, scope: !477)
!2405 = !DILocation(line: 331, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !477, file: !470, line: 331, column: 7)
!2407 = !DILocation(line: 331, column: 7, scope: !477)
!2408 = !DILocation(line: 332, column: 5, scope: !2406)
!2409 = !DILocation(line: 338, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !470, line: 334, column: 5)
!2411 = !DILocation(line: 346, column: 3, scope: !477)
!2412 = !DILocation(line: 350, column: 3, scope: !477)
!2413 = !DILocation(line: 356, column: 1, scope: !477)
!2414 = distinct !DISubprogram(name: "error_at_line", scope: !470, file: !470, line: 359, type: !2415, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !87, !87, !136, !78, !136, null}
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423}
!2418 = !DILocalVariable(name: "status", arg: 1, scope: !2414, file: !470, line: 359, type: !87)
!2419 = !DILocalVariable(name: "errnum", arg: 2, scope: !2414, file: !470, line: 359, type: !87)
!2420 = !DILocalVariable(name: "file_name", arg: 3, scope: !2414, file: !470, line: 359, type: !136)
!2421 = !DILocalVariable(name: "line_number", arg: 4, scope: !2414, file: !470, line: 360, type: !78)
!2422 = !DILocalVariable(name: "message", arg: 5, scope: !2414, file: !470, line: 360, type: !136)
!2423 = !DILocalVariable(name: "ap", scope: !2414, file: !470, line: 362, type: !480)
!2424 = !DILocation(line: 0, scope: !2414)
!2425 = !DILocation(line: 362, column: 3, scope: !2414)
!2426 = !DILocation(line: 362, column: 11, scope: !2414)
!2427 = !DILocation(line: 363, column: 3, scope: !2414)
!2428 = !DILocation(line: 364, column: 3, scope: !2414)
!2429 = !DILocation(line: 366, column: 3, scope: !2414)
!2430 = !DILocation(line: 367, column: 1, scope: !2414)
!2431 = distinct !DISubprogram(name: "fdadvise", scope: !781, file: !781, line: 25, type: !2432, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !2436)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !87, !2434, !2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !481, line: 63, baseType: !235)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !106, line: 51, baseType: !105)
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DILocalVariable(name: "fd", arg: 1, scope: !2431, file: !781, line: 25, type: !87)
!2438 = !DILocalVariable(name: "offset", arg: 2, scope: !2431, file: !781, line: 25, type: !2434)
!2439 = !DILocalVariable(name: "len", arg: 3, scope: !2431, file: !781, line: 25, type: !2434)
!2440 = !DILocalVariable(name: "advice", arg: 4, scope: !2431, file: !781, line: 25, type: !2435)
!2441 = !DILocation(line: 0, scope: !2431)
!2442 = !DILocation(line: 28, column: 3, scope: !2431)
!2443 = !DILocation(line: 30, column: 1, scope: !2431)
!2444 = !DISubprogram(name: "posix_fadvise", scope: !2365, file: !2365, line: 273, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!87, !87, !2434, !2434, !87}
!2447 = distinct !DISubprogram(name: "fadvise", scope: !781, file: !781, line: 33, type: !2448, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !2484)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !2450, !2435}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2452, file: !213, line: 51, baseType: !87, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2452, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2452, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2452, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2452, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2452, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2452, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2452, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2452, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2452, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2452, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2452, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2452, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2452, file: !213, line: 70, baseType: !2468, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2452, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2452, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2452, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2452, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2452, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2452, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2452, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2452, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2452, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2452, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2452, file: !213, line: 93, baseType: !2468, size: 64, offset: 1344)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2452, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2452, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2452, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2452, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2484 = !{!2485, !2486}
!2485 = !DILocalVariable(name: "fp", arg: 1, scope: !2447, file: !781, line: 33, type: !2450)
!2486 = !DILocalVariable(name: "advice", arg: 2, scope: !2447, file: !781, line: 33, type: !2435)
!2487 = !DILocation(line: 0, scope: !2447)
!2488 = !DILocation(line: 35, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2447, file: !781, line: 35, column: 7)
!2490 = !DILocation(line: 35, column: 7, scope: !2447)
!2491 = !DILocation(line: 36, column: 15, scope: !2489)
!2492 = !DILocation(line: 0, scope: !2431, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 36, column: 5, scope: !2489)
!2494 = !DILocation(line: 28, column: 3, scope: !2431, inlinedAt: !2493)
!2495 = !DILocation(line: 36, column: 5, scope: !2489)
!2496 = !DILocation(line: 37, column: 1, scope: !2447)
!2497 = !DISubprogram(name: "fileno", scope: !481, file: !481, line: 809, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!87, !2450}
!2500 = distinct !DISubprogram(name: "rpl_fclose", scope: !784, file: !784, line: 58, type: !2501, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2537)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!87, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2505, file: !213, line: 51, baseType: !87, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2505, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2505, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2505, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2505, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2505, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2505, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2505, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2505, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2505, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2505, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2505, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2505, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2505, file: !213, line: 70, baseType: !2521, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2505, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2505, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2505, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2505, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2505, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2505, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2505, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2505, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2505, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2505, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2505, file: !213, line: 93, baseType: !2521, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2505, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2505, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2505, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2505, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "fp", arg: 1, scope: !2500, file: !784, line: 58, type: !2503)
!2539 = !DILocalVariable(name: "saved_errno", scope: !2500, file: !784, line: 60, type: !87)
!2540 = !DILocalVariable(name: "fd", scope: !2500, file: !784, line: 63, type: !87)
!2541 = !DILocalVariable(name: "result", scope: !2500, file: !784, line: 74, type: !87)
!2542 = !DILocation(line: 0, scope: !2500)
!2543 = !DILocation(line: 63, column: 12, scope: !2500)
!2544 = !DILocation(line: 64, column: 10, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2500, file: !784, line: 64, column: 7)
!2546 = !DILocation(line: 64, column: 7, scope: !2500)
!2547 = !DILocation(line: 65, column: 12, scope: !2545)
!2548 = !DILocation(line: 65, column: 5, scope: !2545)
!2549 = !DILocation(line: 70, column: 9, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2500, file: !784, line: 70, column: 7)
!2551 = !DILocation(line: 70, column: 23, scope: !2550)
!2552 = !DILocation(line: 70, column: 33, scope: !2550)
!2553 = !DILocation(line: 70, column: 26, scope: !2550)
!2554 = !DILocation(line: 70, column: 59, scope: !2550)
!2555 = !DILocation(line: 71, column: 7, scope: !2550)
!2556 = !DILocation(line: 71, column: 10, scope: !2550)
!2557 = !DILocation(line: 70, column: 7, scope: !2500)
!2558 = !DILocation(line: 100, column: 12, scope: !2500)
!2559 = !DILocation(line: 105, column: 7, scope: !2500)
!2560 = !DILocation(line: 72, column: 19, scope: !2550)
!2561 = !DILocation(line: 105, column: 19, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2500, file: !784, line: 105, column: 7)
!2563 = !DILocation(line: 107, column: 13, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2562, file: !784, line: 106, column: 5)
!2565 = !DILocation(line: 109, column: 5, scope: !2564)
!2566 = !DILocation(line: 112, column: 1, scope: !2500)
!2567 = !DISubprogram(name: "fclose", scope: !481, file: !481, line: 178, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2568 = !DISubprogram(name: "__freading", scope: !2569, file: !2569, line: 51, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2569 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2570 = !DISubprogram(name: "lseek", scope: !2221, file: !2221, line: 339, type: !2571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!235, !87, !235, !87}
!2573 = distinct !DISubprogram(name: "rpl_fflush", scope: !786, file: !786, line: 130, type: !2574, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !2610)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!87, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2578, file: !213, line: 51, baseType: !87, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2578, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2578, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2578, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2578, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2578, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2578, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2578, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2578, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2578, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2578, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2578, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2578, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2578, file: !213, line: 70, baseType: !2594, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2578, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2578, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2578, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2578, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2578, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2578, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2578, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2578, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2578, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2578, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2578, file: !213, line: 93, baseType: !2594, size: 64, offset: 1344)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2578, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2578, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2578, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2578, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2610 = !{!2611}
!2611 = !DILocalVariable(name: "stream", arg: 1, scope: !2573, file: !786, line: 130, type: !2576)
!2612 = !DILocation(line: 0, scope: !2573)
!2613 = !DILocation(line: 151, column: 14, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2573, file: !786, line: 151, column: 7)
!2615 = !DILocation(line: 151, column: 22, scope: !2614)
!2616 = !DILocation(line: 151, column: 27, scope: !2614)
!2617 = !DILocation(line: 151, column: 7, scope: !2573)
!2618 = !DILocation(line: 152, column: 12, scope: !2614)
!2619 = !DILocation(line: 152, column: 5, scope: !2614)
!2620 = !DILocalVariable(name: "fp", arg: 1, scope: !2621, file: !786, line: 42, type: !2576)
!2621 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !786, file: !786, line: 42, type: !2622, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2576}
!2624 = !{!2620}
!2625 = !DILocation(line: 0, scope: !2621, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 157, column: 3, scope: !2573)
!2627 = !DILocation(line: 44, column: 12, scope: !2628, inlinedAt: !2626)
!2628 = distinct !DILexicalBlock(scope: !2621, file: !786, line: 44, column: 7)
!2629 = !DILocation(line: 44, column: 19, scope: !2628, inlinedAt: !2626)
!2630 = !DILocation(line: 44, column: 7, scope: !2621, inlinedAt: !2626)
!2631 = !DILocation(line: 46, column: 5, scope: !2628, inlinedAt: !2626)
!2632 = !DILocation(line: 159, column: 10, scope: !2573)
!2633 = !DILocation(line: 159, column: 3, scope: !2573)
!2634 = !DILocation(line: 236, column: 1, scope: !2573)
!2635 = !DISubprogram(name: "fflush", scope: !481, file: !481, line: 230, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2636 = distinct !DISubprogram(name: "fpurge", scope: !789, file: !789, line: 32, type: !2637, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2673)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!87, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2641)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2641, file: !213, line: 51, baseType: !87, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2641, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2641, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2641, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2641, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2641, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2641, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2641, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2641, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2641, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2641, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2641, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2641, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2641, file: !213, line: 70, baseType: !2657, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2641, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2641, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2641, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2641, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2641, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2641, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2641, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2641, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2641, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2641, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2641, file: !213, line: 93, baseType: !2657, size: 64, offset: 1344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2641, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2641, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2641, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2641, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2673 = !{!2674}
!2674 = !DILocalVariable(name: "fp", arg: 1, scope: !2636, file: !789, line: 32, type: !2639)
!2675 = !DILocation(line: 0, scope: !2636)
!2676 = !DILocation(line: 36, column: 3, scope: !2636)
!2677 = !DILocation(line: 38, column: 3, scope: !2636)
!2678 = !DISubprogram(name: "__fpurge", scope: !2569, file: !2569, line: 72, type: !2679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2639}
!2681 = distinct !DISubprogram(name: "rpl_fseeko", scope: !791, file: !791, line: 28, type: !2682, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !2718)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!87, !2684, !2434, !87}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2686, file: !213, line: 51, baseType: !87, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2686, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2686, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2686, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2686, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2686, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2686, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2686, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2686, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2686, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2686, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2686, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2686, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2686, file: !213, line: 70, baseType: !2702, size: 64, offset: 832)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2686, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2686, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2686, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2686, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2686, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2686, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2686, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2686, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2686, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2686, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2686, file: !213, line: 93, baseType: !2702, size: 64, offset: 1344)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2686, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2686, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2686, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2686, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "fp", arg: 1, scope: !2681, file: !791, line: 28, type: !2684)
!2720 = !DILocalVariable(name: "offset", arg: 2, scope: !2681, file: !791, line: 28, type: !2434)
!2721 = !DILocalVariable(name: "whence", arg: 3, scope: !2681, file: !791, line: 28, type: !87)
!2722 = !DILocalVariable(name: "pos", scope: !2723, file: !791, line: 123, type: !2434)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !791, line: 119, column: 5)
!2724 = distinct !DILexicalBlock(scope: !2681, file: !791, line: 55, column: 7)
!2725 = !DILocation(line: 0, scope: !2681)
!2726 = !DILocation(line: 55, column: 12, scope: !2724)
!2727 = !{!1299, !873, i64 16}
!2728 = !DILocation(line: 55, column: 33, scope: !2724)
!2729 = !{!1299, !873, i64 8}
!2730 = !DILocation(line: 55, column: 25, scope: !2724)
!2731 = !DILocation(line: 56, column: 7, scope: !2724)
!2732 = !DILocation(line: 56, column: 15, scope: !2724)
!2733 = !DILocation(line: 56, column: 37, scope: !2724)
!2734 = !{!1299, !873, i64 32}
!2735 = !DILocation(line: 56, column: 29, scope: !2724)
!2736 = !DILocation(line: 57, column: 7, scope: !2724)
!2737 = !DILocation(line: 57, column: 15, scope: !2724)
!2738 = !{!1299, !873, i64 72}
!2739 = !DILocation(line: 57, column: 29, scope: !2724)
!2740 = !DILocation(line: 55, column: 7, scope: !2681)
!2741 = !DILocation(line: 123, column: 26, scope: !2723)
!2742 = !DILocation(line: 123, column: 19, scope: !2723)
!2743 = !DILocation(line: 0, scope: !2723)
!2744 = !DILocation(line: 124, column: 15, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2723, file: !791, line: 124, column: 11)
!2746 = !DILocation(line: 124, column: 11, scope: !2723)
!2747 = !DILocation(line: 135, column: 19, scope: !2723)
!2748 = !DILocation(line: 136, column: 12, scope: !2723)
!2749 = !DILocation(line: 136, column: 20, scope: !2723)
!2750 = !{!1299, !1300, i64 144}
!2751 = !DILocation(line: 167, column: 7, scope: !2723)
!2752 = !DILocation(line: 169, column: 10, scope: !2681)
!2753 = !DILocation(line: 169, column: 3, scope: !2681)
!2754 = !DILocation(line: 170, column: 1, scope: !2681)
!2755 = !DISubprogram(name: "fseeko", scope: !481, file: !481, line: 736, type: !2756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!87, !2684, !235, !87}
!2758 = distinct !DISubprogram(name: "getprogname", scope: !793, file: !793, line: 54, type: !2759, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !881)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!136}
!2761 = !DILocation(line: 58, column: 10, scope: !2758)
!2762 = !DILocation(line: 58, column: 3, scope: !2758)
!2763 = distinct !DISubprogram(name: "set_program_name", scope: !527, file: !527, line: 37, type: !894, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2764)
!2764 = !{!2765, !2766, !2767}
!2765 = !DILocalVariable(name: "argv0", arg: 1, scope: !2763, file: !527, line: 37, type: !136)
!2766 = !DILocalVariable(name: "slash", scope: !2763, file: !527, line: 44, type: !136)
!2767 = !DILocalVariable(name: "base", scope: !2763, file: !527, line: 45, type: !136)
!2768 = !DILocation(line: 0, scope: !2763)
!2769 = !DILocation(line: 44, column: 23, scope: !2763)
!2770 = !DILocation(line: 45, column: 22, scope: !2763)
!2771 = !DILocation(line: 46, column: 17, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2763, file: !527, line: 46, column: 7)
!2773 = !DILocation(line: 46, column: 9, scope: !2772)
!2774 = !DILocation(line: 46, column: 25, scope: !2772)
!2775 = !DILocation(line: 46, column: 40, scope: !2772)
!2776 = !DILocalVariable(name: "__s1", arg: 1, scope: !2777, file: !954, line: 974, type: !1086)
!2777 = distinct !DISubprogram(name: "memeq", scope: !954, file: !954, line: 974, type: !2778, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!196, !1086, !1086, !133}
!2780 = !{!2776, !2781, !2782}
!2781 = !DILocalVariable(name: "__s2", arg: 2, scope: !2777, file: !954, line: 974, type: !1086)
!2782 = !DILocalVariable(name: "__n", arg: 3, scope: !2777, file: !954, line: 974, type: !133)
!2783 = !DILocation(line: 0, scope: !2777, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 46, column: 28, scope: !2772)
!2785 = !DILocation(line: 976, column: 11, scope: !2777, inlinedAt: !2784)
!2786 = !DILocation(line: 976, column: 10, scope: !2777, inlinedAt: !2784)
!2787 = !DILocation(line: 46, column: 7, scope: !2763)
!2788 = !DILocation(line: 49, column: 11, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !527, line: 49, column: 11)
!2790 = distinct !DILexicalBlock(scope: !2772, file: !527, line: 47, column: 5)
!2791 = !DILocation(line: 49, column: 36, scope: !2789)
!2792 = !DILocation(line: 49, column: 11, scope: !2790)
!2793 = !DILocation(line: 65, column: 16, scope: !2763)
!2794 = !DILocation(line: 71, column: 27, scope: !2763)
!2795 = !DILocation(line: 74, column: 33, scope: !2763)
!2796 = !DILocation(line: 76, column: 1, scope: !2763)
!2797 = !DISubprogram(name: "strrchr", scope: !1058, file: !1058, line: 273, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2798 = !DILocation(line: 0, scope: !536)
!2799 = !DILocation(line: 40, column: 29, scope: !536)
!2800 = !DILocation(line: 41, column: 19, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !536, file: !537, line: 41, column: 7)
!2802 = !DILocation(line: 41, column: 7, scope: !536)
!2803 = !DILocation(line: 47, column: 3, scope: !536)
!2804 = !DILocation(line: 48, column: 3, scope: !536)
!2805 = !DILocation(line: 48, column: 13, scope: !536)
!2806 = !DILocalVariable(name: "ps", arg: 1, scope: !2807, file: !2808, line: 1135, type: !2811)
!2807 = distinct !DISubprogram(name: "mbszero", scope: !2808, file: !2808, line: 1135, type: !2809, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2812)
!2808 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!2812 = !{!2806}
!2813 = !DILocation(line: 0, scope: !2807, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 48, column: 18, scope: !536)
!2815 = !DILocalVariable(name: "__dest", arg: 1, scope: !2816, file: !1273, line: 57, type: !131)
!2816 = distinct !DISubprogram(name: "memset", scope: !1273, file: !1273, line: 57, type: !2817, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!131, !131, !87, !133}
!2819 = !{!2815, !2820, !2821}
!2820 = !DILocalVariable(name: "__ch", arg: 2, scope: !2816, file: !1273, line: 57, type: !87)
!2821 = !DILocalVariable(name: "__len", arg: 3, scope: !2816, file: !1273, line: 57, type: !133)
!2822 = !DILocation(line: 0, scope: !2816, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1137, column: 3, scope: !2807, inlinedAt: !2814)
!2824 = !DILocation(line: 59, column: 10, scope: !2816, inlinedAt: !2823)
!2825 = !DILocation(line: 49, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !536, file: !537, line: 49, column: 7)
!2827 = !DILocation(line: 49, column: 39, scope: !2826)
!2828 = !DILocation(line: 49, column: 44, scope: !2826)
!2829 = !DILocation(line: 54, column: 1, scope: !536)
!2830 = !DISubprogram(name: "mbrtoc32", scope: !548, file: !548, line: 57, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!133, !2833, !437, !133, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2834)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2811)
!2836 = distinct !DISubprogram(name: "clone_quoting_options", scope: !567, file: !567, line: 113, type: !2837, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2840)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!2839, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!2840 = !{!2841, !2842, !2843}
!2841 = !DILocalVariable(name: "o", arg: 1, scope: !2836, file: !567, line: 113, type: !2839)
!2842 = !DILocalVariable(name: "saved_errno", scope: !2836, file: !567, line: 115, type: !87)
!2843 = !DILocalVariable(name: "p", scope: !2836, file: !567, line: 116, type: !2839)
!2844 = !DILocation(line: 0, scope: !2836)
!2845 = !DILocation(line: 115, column: 21, scope: !2836)
!2846 = !DILocation(line: 116, column: 40, scope: !2836)
!2847 = !DILocation(line: 116, column: 31, scope: !2836)
!2848 = !DILocation(line: 118, column: 9, scope: !2836)
!2849 = !DILocation(line: 119, column: 3, scope: !2836)
!2850 = distinct !DISubprogram(name: "get_quoting_style", scope: !567, file: !567, line: 124, type: !2851, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2855)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!91, !2853}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!2855 = !{!2856}
!2856 = !DILocalVariable(name: "o", arg: 1, scope: !2850, file: !567, line: 124, type: !2853)
!2857 = !DILocation(line: 0, scope: !2850)
!2858 = !DILocation(line: 126, column: 11, scope: !2850)
!2859 = !DILocation(line: 126, column: 46, scope: !2850)
!2860 = !{!2861, !874, i64 0}
!2861 = !{!"quoting_options", !874, i64 0, !942, i64 4, !874, i64 8, !873, i64 40, !873, i64 48}
!2862 = !DILocation(line: 126, column: 3, scope: !2850)
!2863 = distinct !DISubprogram(name: "set_quoting_style", scope: !567, file: !567, line: 132, type: !2864, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !2839, !91}
!2866 = !{!2867, !2868}
!2867 = !DILocalVariable(name: "o", arg: 1, scope: !2863, file: !567, line: 132, type: !2839)
!2868 = !DILocalVariable(name: "s", arg: 2, scope: !2863, file: !567, line: 132, type: !91)
!2869 = !DILocation(line: 0, scope: !2863)
!2870 = !DILocation(line: 134, column: 4, scope: !2863)
!2871 = !DILocation(line: 134, column: 45, scope: !2863)
!2872 = !DILocation(line: 135, column: 1, scope: !2863)
!2873 = distinct !DISubprogram(name: "set_char_quoting", scope: !567, file: !567, line: 143, type: !2874, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!87, !2839, !4, !87}
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2883, !2884}
!2877 = !DILocalVariable(name: "o", arg: 1, scope: !2873, file: !567, line: 143, type: !2839)
!2878 = !DILocalVariable(name: "c", arg: 2, scope: !2873, file: !567, line: 143, type: !4)
!2879 = !DILocalVariable(name: "i", arg: 3, scope: !2873, file: !567, line: 143, type: !87)
!2880 = !DILocalVariable(name: "uc", scope: !2873, file: !567, line: 145, type: !138)
!2881 = !DILocalVariable(name: "p", scope: !2873, file: !567, line: 146, type: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2883 = !DILocalVariable(name: "shift", scope: !2873, file: !567, line: 148, type: !87)
!2884 = !DILocalVariable(name: "r", scope: !2873, file: !567, line: 149, type: !78)
!2885 = !DILocation(line: 0, scope: !2873)
!2886 = !DILocation(line: 147, column: 6, scope: !2873)
!2887 = !DILocation(line: 147, column: 41, scope: !2873)
!2888 = !DILocation(line: 147, column: 62, scope: !2873)
!2889 = !DILocation(line: 147, column: 57, scope: !2873)
!2890 = !DILocation(line: 148, column: 15, scope: !2873)
!2891 = !DILocation(line: 149, column: 21, scope: !2873)
!2892 = !DILocation(line: 149, column: 24, scope: !2873)
!2893 = !DILocation(line: 149, column: 34, scope: !2873)
!2894 = !DILocation(line: 150, column: 19, scope: !2873)
!2895 = !DILocation(line: 150, column: 24, scope: !2873)
!2896 = !DILocation(line: 150, column: 6, scope: !2873)
!2897 = !DILocation(line: 151, column: 3, scope: !2873)
!2898 = distinct !DISubprogram(name: "set_quoting_flags", scope: !567, file: !567, line: 159, type: !2899, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!87, !2839, !87}
!2901 = !{!2902, !2903, !2904}
!2902 = !DILocalVariable(name: "o", arg: 1, scope: !2898, file: !567, line: 159, type: !2839)
!2903 = !DILocalVariable(name: "i", arg: 2, scope: !2898, file: !567, line: 159, type: !87)
!2904 = !DILocalVariable(name: "r", scope: !2898, file: !567, line: 163, type: !87)
!2905 = !DILocation(line: 0, scope: !2898)
!2906 = !DILocation(line: 161, column: 8, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2898, file: !567, line: 161, column: 7)
!2908 = !DILocation(line: 161, column: 7, scope: !2898)
!2909 = !DILocation(line: 163, column: 14, scope: !2898)
!2910 = !{!2861, !942, i64 4}
!2911 = !DILocation(line: 164, column: 12, scope: !2898)
!2912 = !DILocation(line: 165, column: 3, scope: !2898)
!2913 = distinct !DISubprogram(name: "set_custom_quoting", scope: !567, file: !567, line: 169, type: !2914, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !2839, !136, !136}
!2916 = !{!2917, !2918, !2919}
!2917 = !DILocalVariable(name: "o", arg: 1, scope: !2913, file: !567, line: 169, type: !2839)
!2918 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2913, file: !567, line: 170, type: !136)
!2919 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2913, file: !567, line: 170, type: !136)
!2920 = !DILocation(line: 0, scope: !2913)
!2921 = !DILocation(line: 172, column: 8, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2913, file: !567, line: 172, column: 7)
!2923 = !DILocation(line: 172, column: 7, scope: !2913)
!2924 = !DILocation(line: 174, column: 12, scope: !2913)
!2925 = !DILocation(line: 175, column: 8, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2913, file: !567, line: 175, column: 7)
!2927 = !DILocation(line: 175, column: 19, scope: !2926)
!2928 = !DILocation(line: 176, column: 5, scope: !2926)
!2929 = !DILocation(line: 177, column: 6, scope: !2913)
!2930 = !DILocation(line: 177, column: 17, scope: !2913)
!2931 = !{!2861, !873, i64 40}
!2932 = !DILocation(line: 178, column: 6, scope: !2913)
!2933 = !DILocation(line: 178, column: 18, scope: !2913)
!2934 = !{!2861, !873, i64 48}
!2935 = !DILocation(line: 179, column: 1, scope: !2913)
!2936 = !DISubprogram(name: "abort", scope: !1062, file: !1062, line: 598, type: !522, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !881)
!2937 = distinct !DISubprogram(name: "quotearg_buffer", scope: !567, file: !567, line: 774, type: !2938, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!133, !130, !133, !136, !133, !2853}
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948}
!2941 = !DILocalVariable(name: "buffer", arg: 1, scope: !2937, file: !567, line: 774, type: !130)
!2942 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2937, file: !567, line: 774, type: !133)
!2943 = !DILocalVariable(name: "arg", arg: 3, scope: !2937, file: !567, line: 775, type: !136)
!2944 = !DILocalVariable(name: "argsize", arg: 4, scope: !2937, file: !567, line: 775, type: !133)
!2945 = !DILocalVariable(name: "o", arg: 5, scope: !2937, file: !567, line: 776, type: !2853)
!2946 = !DILocalVariable(name: "p", scope: !2937, file: !567, line: 778, type: !2853)
!2947 = !DILocalVariable(name: "saved_errno", scope: !2937, file: !567, line: 779, type: !87)
!2948 = !DILocalVariable(name: "r", scope: !2937, file: !567, line: 780, type: !133)
!2949 = !DILocation(line: 0, scope: !2937)
!2950 = !DILocation(line: 778, column: 37, scope: !2937)
!2951 = !DILocation(line: 779, column: 21, scope: !2937)
!2952 = !DILocation(line: 781, column: 43, scope: !2937)
!2953 = !DILocation(line: 781, column: 53, scope: !2937)
!2954 = !DILocation(line: 781, column: 63, scope: !2937)
!2955 = !DILocation(line: 782, column: 43, scope: !2937)
!2956 = !DILocation(line: 782, column: 58, scope: !2937)
!2957 = !DILocation(line: 780, column: 14, scope: !2937)
!2958 = !DILocation(line: 783, column: 9, scope: !2937)
!2959 = !DILocation(line: 784, column: 3, scope: !2937)
!2960 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !567, file: !567, line: 251, type: !2961, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !2965)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!133, !130, !133, !136, !133, !91, !87, !2963, !136, !136}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2990, !2992, !2995, !2996, !2997, !2998, !3001, !3002, !3005, !3009, !3010, !3018, !3021, !3022, !3024, !3025, !3026, !3027}
!2966 = !DILocalVariable(name: "buffer", arg: 1, scope: !2960, file: !567, line: 251, type: !130)
!2967 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2960, file: !567, line: 251, type: !133)
!2968 = !DILocalVariable(name: "arg", arg: 3, scope: !2960, file: !567, line: 252, type: !136)
!2969 = !DILocalVariable(name: "argsize", arg: 4, scope: !2960, file: !567, line: 252, type: !133)
!2970 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2960, file: !567, line: 253, type: !91)
!2971 = !DILocalVariable(name: "flags", arg: 6, scope: !2960, file: !567, line: 253, type: !87)
!2972 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2960, file: !567, line: 254, type: !2963)
!2973 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2960, file: !567, line: 255, type: !136)
!2974 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2960, file: !567, line: 256, type: !136)
!2975 = !DILocalVariable(name: "unibyte_locale", scope: !2960, file: !567, line: 258, type: !196)
!2976 = !DILocalVariable(name: "len", scope: !2960, file: !567, line: 260, type: !133)
!2977 = !DILocalVariable(name: "orig_buffersize", scope: !2960, file: !567, line: 261, type: !133)
!2978 = !DILocalVariable(name: "quote_string", scope: !2960, file: !567, line: 262, type: !136)
!2979 = !DILocalVariable(name: "quote_string_len", scope: !2960, file: !567, line: 263, type: !133)
!2980 = !DILocalVariable(name: "backslash_escapes", scope: !2960, file: !567, line: 264, type: !196)
!2981 = !DILocalVariable(name: "elide_outer_quotes", scope: !2960, file: !567, line: 265, type: !196)
!2982 = !DILocalVariable(name: "encountered_single_quote", scope: !2960, file: !567, line: 266, type: !196)
!2983 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2960, file: !567, line: 267, type: !196)
!2984 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2960, file: !567, line: 309, type: !196)
!2985 = !DILocalVariable(name: "lq", scope: !2986, file: !567, line: 361, type: !136)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !567, line: 361, column: 11)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !567, line: 360, column: 13)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !567, line: 333, column: 7)
!2989 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 312, column: 5)
!2990 = !DILocalVariable(name: "i", scope: !2991, file: !567, line: 395, type: !133)
!2991 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 395, column: 3)
!2992 = !DILocalVariable(name: "is_right_quote", scope: !2993, file: !567, line: 397, type: !196)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !567, line: 396, column: 5)
!2994 = distinct !DILexicalBlock(scope: !2991, file: !567, line: 395, column: 3)
!2995 = !DILocalVariable(name: "escaping", scope: !2993, file: !567, line: 398, type: !196)
!2996 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2993, file: !567, line: 399, type: !196)
!2997 = !DILocalVariable(name: "c", scope: !2993, file: !567, line: 417, type: !138)
!2998 = !DILocalVariable(name: "m", scope: !2999, file: !567, line: 598, type: !133)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 596, column: 11)
!3000 = distinct !DILexicalBlock(scope: !2993, file: !567, line: 419, column: 9)
!3001 = !DILocalVariable(name: "printable", scope: !2999, file: !567, line: 600, type: !196)
!3002 = !DILocalVariable(name: "mbs", scope: !3003, file: !567, line: 609, type: !635)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !567, line: 608, column: 15)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !567, line: 602, column: 17)
!3005 = !DILocalVariable(name: "w", scope: !3006, file: !567, line: 618, type: !547)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !567, line: 617, column: 19)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !567, line: 616, column: 17)
!3008 = distinct !DILexicalBlock(scope: !3003, file: !567, line: 616, column: 17)
!3009 = !DILocalVariable(name: "bytes", scope: !3006, file: !567, line: 619, type: !133)
!3010 = !DILocalVariable(name: "j", scope: !3011, file: !567, line: 648, type: !133)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !567, line: 648, column: 29)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !567, line: 647, column: 27)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !567, line: 645, column: 29)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !567, line: 636, column: 23)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !567, line: 628, column: 30)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !567, line: 623, column: 30)
!3017 = distinct !DILexicalBlock(scope: !3006, file: !567, line: 621, column: 25)
!3018 = !DILocalVariable(name: "ilim", scope: !3019, file: !567, line: 674, type: !133)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !567, line: 671, column: 15)
!3020 = distinct !DILexicalBlock(scope: !2999, file: !567, line: 670, column: 17)
!3021 = !DILabel(scope: !2960, name: "process_input", file: !567, line: 308)
!3022 = !DILabel(scope: !3023, name: "c_and_shell_escape", file: !567, line: 502)
!3023 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 478, column: 9)
!3024 = !DILabel(scope: !3023, name: "c_escape", file: !567, line: 507)
!3025 = !DILabel(scope: !2993, name: "store_escape", file: !567, line: 709)
!3026 = !DILabel(scope: !2993, name: "store_c", file: !567, line: 712)
!3027 = !DILabel(scope: !2960, name: "force_outer_quoting_style", file: !567, line: 753)
!3028 = !DILocation(line: 0, scope: !2960)
!3029 = !DILocation(line: 258, column: 25, scope: !2960)
!3030 = !DILocation(line: 258, column: 36, scope: !2960)
!3031 = !DILocation(line: 267, column: 3, scope: !2960)
!3032 = !DILocation(line: 261, column: 10, scope: !2960)
!3033 = !DILocation(line: 262, column: 15, scope: !2960)
!3034 = !DILocation(line: 263, column: 10, scope: !2960)
!3035 = !DILocation(line: 308, column: 2, scope: !2960)
!3036 = !DILocation(line: 311, column: 3, scope: !2960)
!3037 = !DILocation(line: 318, column: 11, scope: !2989)
!3038 = !DILocation(line: 319, column: 9, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !567, line: 319, column: 9)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !567, line: 319, column: 9)
!3041 = distinct !DILexicalBlock(scope: !2989, file: !567, line: 318, column: 11)
!3042 = !DILocation(line: 319, column: 9, scope: !3040)
!3043 = !DILocation(line: 0, scope: !626, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 357, column: 26, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !567, line: 335, column: 11)
!3046 = distinct !DILexicalBlock(scope: !2988, file: !567, line: 334, column: 13)
!3047 = !DILocation(line: 199, column: 29, scope: !626, inlinedAt: !3044)
!3048 = !DILocation(line: 201, column: 19, scope: !3049, inlinedAt: !3044)
!3049 = distinct !DILexicalBlock(scope: !626, file: !567, line: 201, column: 7)
!3050 = !DILocation(line: 201, column: 7, scope: !626, inlinedAt: !3044)
!3051 = !DILocation(line: 229, column: 3, scope: !626, inlinedAt: !3044)
!3052 = !DILocation(line: 230, column: 3, scope: !626, inlinedAt: !3044)
!3053 = !DILocation(line: 230, column: 13, scope: !626, inlinedAt: !3044)
!3054 = !DILocalVariable(name: "ps", arg: 1, scope: !3055, file: !2808, line: 1135, type: !3058)
!3055 = distinct !DISubprogram(name: "mbszero", scope: !2808, file: !2808, line: 1135, type: !3056, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3059)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3059 = !{!3054}
!3060 = !DILocation(line: 0, scope: !3055, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 230, column: 18, scope: !626, inlinedAt: !3044)
!3062 = !DILocalVariable(name: "__dest", arg: 1, scope: !3063, file: !1273, line: 57, type: !131)
!3063 = distinct !DISubprogram(name: "memset", scope: !1273, file: !1273, line: 57, type: !2817, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3064)
!3064 = !{!3062, !3065, !3066}
!3065 = !DILocalVariable(name: "__ch", arg: 2, scope: !3063, file: !1273, line: 57, type: !87)
!3066 = !DILocalVariable(name: "__len", arg: 3, scope: !3063, file: !1273, line: 57, type: !133)
!3067 = !DILocation(line: 0, scope: !3063, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 1137, column: 3, scope: !3055, inlinedAt: !3061)
!3069 = !DILocation(line: 59, column: 10, scope: !3063, inlinedAt: !3068)
!3070 = !DILocation(line: 231, column: 7, scope: !3071, inlinedAt: !3044)
!3071 = distinct !DILexicalBlock(scope: !626, file: !567, line: 231, column: 7)
!3072 = !DILocation(line: 231, column: 40, scope: !3071, inlinedAt: !3044)
!3073 = !DILocation(line: 231, column: 45, scope: !3071, inlinedAt: !3044)
!3074 = !DILocation(line: 235, column: 1, scope: !626, inlinedAt: !3044)
!3075 = !DILocation(line: 0, scope: !626, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 358, column: 27, scope: !3045)
!3077 = !DILocation(line: 199, column: 29, scope: !626, inlinedAt: !3076)
!3078 = !DILocation(line: 201, column: 19, scope: !3049, inlinedAt: !3076)
!3079 = !DILocation(line: 201, column: 7, scope: !626, inlinedAt: !3076)
!3080 = !DILocation(line: 229, column: 3, scope: !626, inlinedAt: !3076)
!3081 = !DILocation(line: 230, column: 3, scope: !626, inlinedAt: !3076)
!3082 = !DILocation(line: 230, column: 13, scope: !626, inlinedAt: !3076)
!3083 = !DILocation(line: 0, scope: !3055, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 230, column: 18, scope: !626, inlinedAt: !3076)
!3085 = !DILocation(line: 0, scope: !3063, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1137, column: 3, scope: !3055, inlinedAt: !3084)
!3087 = !DILocation(line: 59, column: 10, scope: !3063, inlinedAt: !3086)
!3088 = !DILocation(line: 231, column: 7, scope: !3071, inlinedAt: !3076)
!3089 = !DILocation(line: 231, column: 40, scope: !3071, inlinedAt: !3076)
!3090 = !DILocation(line: 231, column: 45, scope: !3071, inlinedAt: !3076)
!3091 = !DILocation(line: 235, column: 1, scope: !626, inlinedAt: !3076)
!3092 = !DILocation(line: 360, column: 13, scope: !2988)
!3093 = !DILocation(line: 0, scope: !2986)
!3094 = !DILocation(line: 361, column: 45, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2986, file: !567, line: 361, column: 11)
!3096 = !DILocation(line: 361, column: 11, scope: !2986)
!3097 = !DILocation(line: 362, column: 13, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !567, line: 362, column: 13)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !567, line: 362, column: 13)
!3100 = !DILocation(line: 362, column: 13, scope: !3099)
!3101 = !DILocation(line: 361, column: 52, scope: !3095)
!3102 = distinct !{!3102, !3096, !3103, !988}
!3103 = !DILocation(line: 362, column: 13, scope: !2986)
!3104 = !DILocation(line: 260, column: 10, scope: !2960)
!3105 = !DILocation(line: 365, column: 28, scope: !2988)
!3106 = !DILocation(line: 367, column: 7, scope: !2989)
!3107 = !DILocation(line: 370, column: 7, scope: !2989)
!3108 = !DILocation(line: 376, column: 11, scope: !2989)
!3109 = !DILocation(line: 381, column: 11, scope: !2989)
!3110 = !DILocation(line: 382, column: 9, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !567, line: 382, column: 9)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !567, line: 382, column: 9)
!3113 = distinct !DILexicalBlock(scope: !2989, file: !567, line: 381, column: 11)
!3114 = !DILocation(line: 382, column: 9, scope: !3112)
!3115 = !DILocation(line: 389, column: 7, scope: !2989)
!3116 = !DILocation(line: 392, column: 7, scope: !2989)
!3117 = !DILocation(line: 0, scope: !2991)
!3118 = !DILocation(line: 395, column: 8, scope: !2991)
!3119 = !DILocation(line: 395, scope: !2991)
!3120 = !DILocation(line: 395, column: 34, scope: !2994)
!3121 = !DILocation(line: 395, column: 26, scope: !2994)
!3122 = !DILocation(line: 395, column: 48, scope: !2994)
!3123 = !DILocation(line: 395, column: 55, scope: !2994)
!3124 = !DILocation(line: 395, column: 3, scope: !2991)
!3125 = !DILocation(line: 395, column: 67, scope: !2994)
!3126 = !DILocation(line: 0, scope: !2993)
!3127 = !DILocation(line: 402, column: 11, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2993, file: !567, line: 401, column: 11)
!3129 = !DILocation(line: 404, column: 17, scope: !3128)
!3130 = !DILocation(line: 405, column: 39, scope: !3128)
!3131 = !DILocation(line: 409, column: 32, scope: !3128)
!3132 = !DILocation(line: 405, column: 19, scope: !3128)
!3133 = !DILocation(line: 405, column: 15, scope: !3128)
!3134 = !DILocation(line: 410, column: 11, scope: !3128)
!3135 = !DILocation(line: 410, column: 25, scope: !3128)
!3136 = !DILocalVariable(name: "__s1", arg: 1, scope: !3137, file: !954, line: 974, type: !1086)
!3137 = distinct !DISubprogram(name: "memeq", scope: !954, file: !954, line: 974, type: !2778, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3138)
!3138 = !{!3136, !3139, !3140}
!3139 = !DILocalVariable(name: "__s2", arg: 2, scope: !3137, file: !954, line: 974, type: !1086)
!3140 = !DILocalVariable(name: "__n", arg: 3, scope: !3137, file: !954, line: 974, type: !133)
!3141 = !DILocation(line: 0, scope: !3137, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 410, column: 14, scope: !3128)
!3143 = !DILocation(line: 976, column: 11, scope: !3137, inlinedAt: !3142)
!3144 = !DILocation(line: 976, column: 10, scope: !3137, inlinedAt: !3142)
!3145 = !DILocation(line: 401, column: 11, scope: !2993)
!3146 = !DILocation(line: 417, column: 25, scope: !2993)
!3147 = !DILocation(line: 418, column: 7, scope: !2993)
!3148 = !DILocation(line: 421, column: 15, scope: !3000)
!3149 = !DILocation(line: 423, column: 15, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !567, line: 423, column: 15)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !567, line: 422, column: 13)
!3152 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 421, column: 15)
!3153 = !DILocation(line: 423, column: 15, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !567, line: 423, column: 15)
!3155 = !DILocation(line: 423, column: 15, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !567, line: 423, column: 15)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !567, line: 423, column: 15)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !567, line: 423, column: 15)
!3159 = !DILocation(line: 423, column: 15, scope: !3157)
!3160 = !DILocation(line: 423, column: 15, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !567, line: 423, column: 15)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !567, line: 423, column: 15)
!3163 = !DILocation(line: 423, column: 15, scope: !3162)
!3164 = !DILocation(line: 423, column: 15, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !567, line: 423, column: 15)
!3166 = distinct !DILexicalBlock(scope: !3158, file: !567, line: 423, column: 15)
!3167 = !DILocation(line: 423, column: 15, scope: !3166)
!3168 = !DILocation(line: 423, column: 15, scope: !3158)
!3169 = !DILocation(line: 423, column: 15, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !567, line: 423, column: 15)
!3171 = distinct !DILexicalBlock(scope: !3150, file: !567, line: 423, column: 15)
!3172 = !DILocation(line: 423, column: 15, scope: !3171)
!3173 = !DILocation(line: 431, column: 19, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3151, file: !567, line: 430, column: 19)
!3175 = !DILocation(line: 431, column: 24, scope: !3174)
!3176 = !DILocation(line: 431, column: 28, scope: !3174)
!3177 = !DILocation(line: 431, column: 38, scope: !3174)
!3178 = !DILocation(line: 431, column: 48, scope: !3174)
!3179 = !DILocation(line: 431, column: 59, scope: !3174)
!3180 = !DILocation(line: 433, column: 19, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !567, line: 433, column: 19)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !567, line: 433, column: 19)
!3183 = distinct !DILexicalBlock(scope: !3174, file: !567, line: 432, column: 17)
!3184 = !DILocation(line: 433, column: 19, scope: !3182)
!3185 = !DILocation(line: 434, column: 19, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !567, line: 434, column: 19)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !567, line: 434, column: 19)
!3188 = !DILocation(line: 434, column: 19, scope: !3187)
!3189 = !DILocation(line: 435, column: 17, scope: !3183)
!3190 = !DILocation(line: 442, column: 20, scope: !3152)
!3191 = !DILocation(line: 447, column: 11, scope: !3000)
!3192 = !DILocation(line: 450, column: 19, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 448, column: 13)
!3194 = !DILocation(line: 456, column: 19, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3193, file: !567, line: 455, column: 19)
!3196 = !DILocation(line: 456, column: 24, scope: !3195)
!3197 = !DILocation(line: 456, column: 28, scope: !3195)
!3198 = !DILocation(line: 456, column: 38, scope: !3195)
!3199 = !DILocation(line: 456, column: 47, scope: !3195)
!3200 = !DILocation(line: 456, column: 41, scope: !3195)
!3201 = !DILocation(line: 456, column: 52, scope: !3195)
!3202 = !DILocation(line: 455, column: 19, scope: !3193)
!3203 = !DILocation(line: 457, column: 25, scope: !3195)
!3204 = !DILocation(line: 457, column: 17, scope: !3195)
!3205 = !DILocation(line: 464, column: 25, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3195, file: !567, line: 458, column: 19)
!3207 = !DILocation(line: 468, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !567, line: 468, column: 21)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !567, line: 468, column: 21)
!3210 = !DILocation(line: 468, column: 21, scope: !3209)
!3211 = !DILocation(line: 469, column: 21, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !567, line: 469, column: 21)
!3213 = distinct !DILexicalBlock(scope: !3206, file: !567, line: 469, column: 21)
!3214 = !DILocation(line: 469, column: 21, scope: !3213)
!3215 = !DILocation(line: 470, column: 21, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !567, line: 470, column: 21)
!3217 = distinct !DILexicalBlock(scope: !3206, file: !567, line: 470, column: 21)
!3218 = !DILocation(line: 470, column: 21, scope: !3217)
!3219 = !DILocation(line: 471, column: 21, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !567, line: 471, column: 21)
!3221 = distinct !DILexicalBlock(scope: !3206, file: !567, line: 471, column: 21)
!3222 = !DILocation(line: 471, column: 21, scope: !3221)
!3223 = !DILocation(line: 472, column: 21, scope: !3206)
!3224 = !DILocation(line: 482, column: 33, scope: !3023)
!3225 = !DILocation(line: 483, column: 33, scope: !3023)
!3226 = !DILocation(line: 485, column: 33, scope: !3023)
!3227 = !DILocation(line: 486, column: 33, scope: !3023)
!3228 = !DILocation(line: 487, column: 33, scope: !3023)
!3229 = !DILocation(line: 490, column: 17, scope: !3023)
!3230 = !DILocation(line: 492, column: 21, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !567, line: 491, column: 15)
!3232 = distinct !DILexicalBlock(scope: !3023, file: !567, line: 490, column: 17)
!3233 = !DILocation(line: 499, column: 35, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3023, file: !567, line: 499, column: 17)
!3235 = !DILocation(line: 0, scope: !3023)
!3236 = !DILocation(line: 502, column: 11, scope: !3023)
!3237 = !DILocation(line: 504, column: 17, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3023, file: !567, line: 503, column: 17)
!3239 = !DILocation(line: 507, column: 11, scope: !3023)
!3240 = !DILocation(line: 508, column: 17, scope: !3023)
!3241 = !DILocation(line: 517, column: 15, scope: !3000)
!3242 = !DILocation(line: 517, column: 40, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 517, column: 15)
!3244 = !DILocation(line: 517, column: 47, scope: !3243)
!3245 = !DILocation(line: 517, column: 18, scope: !3243)
!3246 = !DILocation(line: 521, column: 17, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 521, column: 15)
!3248 = !DILocation(line: 521, column: 15, scope: !3000)
!3249 = !DILocation(line: 525, column: 11, scope: !3000)
!3250 = !DILocation(line: 537, column: 15, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 536, column: 15)
!3252 = !DILocation(line: 536, column: 15, scope: !3000)
!3253 = !DILocation(line: 544, column: 15, scope: !3000)
!3254 = !DILocation(line: 546, column: 19, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !567, line: 545, column: 13)
!3256 = distinct !DILexicalBlock(scope: !3000, file: !567, line: 544, column: 15)
!3257 = !DILocation(line: 549, column: 19, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !567, line: 549, column: 19)
!3259 = !DILocation(line: 549, column: 30, scope: !3258)
!3260 = !DILocation(line: 558, column: 15, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !567, line: 558, column: 15)
!3262 = distinct !DILexicalBlock(scope: !3255, file: !567, line: 558, column: 15)
!3263 = !DILocation(line: 558, column: 15, scope: !3262)
!3264 = !DILocation(line: 559, column: 15, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !567, line: 559, column: 15)
!3266 = distinct !DILexicalBlock(scope: !3255, file: !567, line: 559, column: 15)
!3267 = !DILocation(line: 559, column: 15, scope: !3266)
!3268 = !DILocation(line: 560, column: 15, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !567, line: 560, column: 15)
!3270 = distinct !DILexicalBlock(scope: !3255, file: !567, line: 560, column: 15)
!3271 = !DILocation(line: 560, column: 15, scope: !3270)
!3272 = !DILocation(line: 562, column: 13, scope: !3255)
!3273 = !DILocation(line: 602, column: 17, scope: !2999)
!3274 = !DILocation(line: 0, scope: !2999)
!3275 = !DILocation(line: 605, column: 29, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3004, file: !567, line: 603, column: 15)
!3277 = !DILocation(line: 605, column: 41, scope: !3276)
!3278 = !DILocation(line: 606, column: 15, scope: !3276)
!3279 = !DILocation(line: 609, column: 17, scope: !3003)
!3280 = !DILocation(line: 609, column: 27, scope: !3003)
!3281 = !DILocation(line: 0, scope: !3055, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 609, column: 32, scope: !3003)
!3283 = !DILocation(line: 0, scope: !3063, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1137, column: 3, scope: !3055, inlinedAt: !3282)
!3285 = !DILocation(line: 59, column: 10, scope: !3063, inlinedAt: !3284)
!3286 = !DILocation(line: 613, column: 29, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3003, file: !567, line: 613, column: 21)
!3288 = !DILocation(line: 613, column: 21, scope: !3003)
!3289 = !DILocation(line: 614, column: 29, scope: !3287)
!3290 = !DILocation(line: 614, column: 19, scope: !3287)
!3291 = !DILocation(line: 618, column: 21, scope: !3006)
!3292 = !DILocation(line: 620, column: 54, scope: !3006)
!3293 = !DILocation(line: 0, scope: !3006)
!3294 = !DILocation(line: 619, column: 36, scope: !3006)
!3295 = !DILocation(line: 621, column: 25, scope: !3006)
!3296 = !DILocation(line: 631, column: 38, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3015, file: !567, line: 629, column: 23)
!3298 = !DILocation(line: 631, column: 48, scope: !3297)
!3299 = !DILocation(line: 626, column: 25, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3016, file: !567, line: 624, column: 23)
!3301 = !DILocation(line: 631, column: 51, scope: !3297)
!3302 = !DILocation(line: 631, column: 25, scope: !3297)
!3303 = !DILocation(line: 632, column: 28, scope: !3297)
!3304 = !DILocation(line: 631, column: 34, scope: !3297)
!3305 = distinct !{!3305, !3302, !3303, !988}
!3306 = !DILocation(line: 646, column: 29, scope: !3013)
!3307 = !DILocation(line: 0, scope: !3011)
!3308 = !DILocation(line: 649, column: 49, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3011, file: !567, line: 648, column: 29)
!3310 = !DILocation(line: 649, column: 39, scope: !3309)
!3311 = !DILocation(line: 649, column: 31, scope: !3309)
!3312 = !DILocation(line: 648, column: 60, scope: !3309)
!3313 = !DILocation(line: 648, column: 50, scope: !3309)
!3314 = !DILocation(line: 648, column: 29, scope: !3011)
!3315 = distinct !{!3315, !3314, !3316, !988}
!3316 = !DILocation(line: 654, column: 33, scope: !3011)
!3317 = !DILocation(line: 657, column: 43, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3014, file: !567, line: 657, column: 29)
!3319 = !DILocalVariable(name: "wc", arg: 1, scope: !3320, file: !3321, line: 865, type: !3324)
!3320 = distinct !DISubprogram(name: "c32isprint", scope: !3321, file: !3321, line: 865, type: !3322, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3326)
!3321 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!87, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3325, line: 20, baseType: !78)
!3325 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3326 = !{!3319}
!3327 = !DILocation(line: 0, scope: !3320, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 657, column: 31, scope: !3318)
!3329 = !DILocation(line: 871, column: 10, scope: !3320, inlinedAt: !3328)
!3330 = !DILocation(line: 657, column: 31, scope: !3318)
!3331 = !DILocation(line: 664, column: 23, scope: !3006)
!3332 = !DILocation(line: 665, column: 19, scope: !3007)
!3333 = !DILocation(line: 666, column: 15, scope: !3004)
!3334 = !DILocation(line: 753, column: 2, scope: !2960)
!3335 = !DILocation(line: 756, column: 51, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 756, column: 7)
!3337 = !DILocation(line: 0, scope: !3004)
!3338 = !DILocation(line: 670, column: 19, scope: !3020)
!3339 = !DILocation(line: 670, column: 23, scope: !3020)
!3340 = !DILocation(line: 674, column: 33, scope: !3019)
!3341 = !DILocation(line: 0, scope: !3019)
!3342 = !DILocation(line: 676, column: 17, scope: !3019)
!3343 = !DILocation(line: 398, column: 12, scope: !2993)
!3344 = !DILocation(line: 678, column: 43, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !567, line: 678, column: 25)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !567, line: 677, column: 19)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !567, line: 676, column: 17)
!3348 = distinct !DILexicalBlock(scope: !3019, file: !567, line: 676, column: 17)
!3349 = !DILocation(line: 680, column: 25, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !567, line: 680, column: 25)
!3351 = distinct !DILexicalBlock(scope: !3345, file: !567, line: 679, column: 23)
!3352 = !DILocation(line: 680, column: 25, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !567, line: 680, column: 25)
!3354 = !DILocation(line: 680, column: 25, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !567, line: 680, column: 25)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !567, line: 680, column: 25)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !567, line: 680, column: 25)
!3358 = !DILocation(line: 680, column: 25, scope: !3356)
!3359 = !DILocation(line: 680, column: 25, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !567, line: 680, column: 25)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !567, line: 680, column: 25)
!3362 = !DILocation(line: 680, column: 25, scope: !3361)
!3363 = !DILocation(line: 680, column: 25, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !567, line: 680, column: 25)
!3365 = distinct !DILexicalBlock(scope: !3357, file: !567, line: 680, column: 25)
!3366 = !DILocation(line: 680, column: 25, scope: !3365)
!3367 = !DILocation(line: 680, column: 25, scope: !3357)
!3368 = !DILocation(line: 680, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !567, line: 680, column: 25)
!3370 = distinct !DILexicalBlock(scope: !3350, file: !567, line: 680, column: 25)
!3371 = !DILocation(line: 680, column: 25, scope: !3370)
!3372 = !DILocation(line: 681, column: 25, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !567, line: 681, column: 25)
!3374 = distinct !DILexicalBlock(scope: !3351, file: !567, line: 681, column: 25)
!3375 = !DILocation(line: 681, column: 25, scope: !3374)
!3376 = !DILocation(line: 682, column: 25, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !567, line: 682, column: 25)
!3378 = distinct !DILexicalBlock(scope: !3351, file: !567, line: 682, column: 25)
!3379 = !DILocation(line: 682, column: 25, scope: !3378)
!3380 = !DILocation(line: 683, column: 38, scope: !3351)
!3381 = !DILocation(line: 683, column: 33, scope: !3351)
!3382 = !DILocation(line: 684, column: 23, scope: !3351)
!3383 = !DILocation(line: 685, column: 30, scope: !3345)
!3384 = !DILocation(line: 687, column: 25, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !567, line: 687, column: 25)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !567, line: 687, column: 25)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !567, line: 686, column: 23)
!3388 = distinct !DILexicalBlock(scope: !3345, file: !567, line: 685, column: 30)
!3389 = !DILocation(line: 687, column: 25, scope: !3386)
!3390 = !DILocation(line: 689, column: 23, scope: !3387)
!3391 = !DILocation(line: 690, column: 35, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3346, file: !567, line: 690, column: 25)
!3393 = !DILocation(line: 690, column: 30, scope: !3392)
!3394 = !DILocation(line: 690, column: 25, scope: !3346)
!3395 = !DILocation(line: 692, column: 21, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !567, line: 692, column: 21)
!3397 = distinct !DILexicalBlock(scope: !3346, file: !567, line: 692, column: 21)
!3398 = !DILocation(line: 692, column: 21, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !567, line: 692, column: 21)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !567, line: 692, column: 21)
!3401 = distinct !DILexicalBlock(scope: !3396, file: !567, line: 692, column: 21)
!3402 = !DILocation(line: 692, column: 21, scope: !3400)
!3403 = !DILocation(line: 692, column: 21, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !567, line: 692, column: 21)
!3405 = distinct !DILexicalBlock(scope: !3401, file: !567, line: 692, column: 21)
!3406 = !DILocation(line: 692, column: 21, scope: !3405)
!3407 = !DILocation(line: 692, column: 21, scope: !3401)
!3408 = !DILocation(line: 0, scope: !3346)
!3409 = !DILocation(line: 693, column: 21, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !567, line: 693, column: 21)
!3411 = distinct !DILexicalBlock(scope: !3346, file: !567, line: 693, column: 21)
!3412 = !DILocation(line: 693, column: 21, scope: !3411)
!3413 = !DILocation(line: 694, column: 25, scope: !3346)
!3414 = !DILocation(line: 676, column: 17, scope: !3347)
!3415 = distinct !{!3415, !3416, !3417}
!3416 = !DILocation(line: 676, column: 17, scope: !3348)
!3417 = !DILocation(line: 695, column: 19, scope: !3348)
!3418 = !DILocation(line: 409, column: 30, scope: !3128)
!3419 = !DILocation(line: 702, column: 34, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !2993, file: !567, line: 702, column: 11)
!3421 = !DILocation(line: 704, column: 14, scope: !3420)
!3422 = !DILocation(line: 705, column: 14, scope: !3420)
!3423 = !DILocation(line: 705, column: 35, scope: !3420)
!3424 = !DILocation(line: 705, column: 17, scope: !3420)
!3425 = !DILocation(line: 705, column: 47, scope: !3420)
!3426 = !DILocation(line: 705, column: 65, scope: !3420)
!3427 = !DILocation(line: 706, column: 11, scope: !3420)
!3428 = !DILocation(line: 702, column: 11, scope: !2993)
!3429 = !DILocation(line: 395, column: 15, scope: !2991)
!3430 = !DILocation(line: 709, column: 5, scope: !2993)
!3431 = !DILocation(line: 710, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !2993, file: !567, line: 710, column: 7)
!3433 = !DILocation(line: 710, column: 7, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3432, file: !567, line: 710, column: 7)
!3435 = !DILocation(line: 710, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !567, line: 710, column: 7)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !567, line: 710, column: 7)
!3438 = distinct !DILexicalBlock(scope: !3434, file: !567, line: 710, column: 7)
!3439 = !DILocation(line: 710, column: 7, scope: !3437)
!3440 = !DILocation(line: 710, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !567, line: 710, column: 7)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !567, line: 710, column: 7)
!3443 = !DILocation(line: 710, column: 7, scope: !3442)
!3444 = !DILocation(line: 710, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !567, line: 710, column: 7)
!3446 = distinct !DILexicalBlock(scope: !3438, file: !567, line: 710, column: 7)
!3447 = !DILocation(line: 710, column: 7, scope: !3446)
!3448 = !DILocation(line: 710, column: 7, scope: !3438)
!3449 = !DILocation(line: 710, column: 7, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !567, line: 710, column: 7)
!3451 = distinct !DILexicalBlock(scope: !3432, file: !567, line: 710, column: 7)
!3452 = !DILocation(line: 710, column: 7, scope: !3451)
!3453 = !DILocation(line: 712, column: 5, scope: !2993)
!3454 = !DILocation(line: 713, column: 7, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !567, line: 713, column: 7)
!3456 = distinct !DILexicalBlock(scope: !2993, file: !567, line: 713, column: 7)
!3457 = !DILocation(line: 417, column: 21, scope: !2993)
!3458 = !DILocation(line: 713, column: 7, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !567, line: 713, column: 7)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !567, line: 713, column: 7)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !567, line: 713, column: 7)
!3462 = !DILocation(line: 713, column: 7, scope: !3460)
!3463 = !DILocation(line: 713, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !567, line: 713, column: 7)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !567, line: 713, column: 7)
!3466 = !DILocation(line: 713, column: 7, scope: !3465)
!3467 = !DILocation(line: 713, column: 7, scope: !3461)
!3468 = !DILocation(line: 714, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !567, line: 714, column: 7)
!3470 = distinct !DILexicalBlock(scope: !2993, file: !567, line: 714, column: 7)
!3471 = !DILocation(line: 714, column: 7, scope: !3470)
!3472 = !DILocation(line: 716, column: 11, scope: !2993)
!3473 = !DILocation(line: 718, column: 5, scope: !2994)
!3474 = !DILocation(line: 395, column: 82, scope: !2994)
!3475 = !DILocation(line: 395, column: 3, scope: !2994)
!3476 = distinct !{!3476, !3124, !3477, !988}
!3477 = !DILocation(line: 718, column: 5, scope: !2991)
!3478 = !DILocation(line: 720, column: 11, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 720, column: 7)
!3480 = !DILocation(line: 720, column: 16, scope: !3479)
!3481 = !DILocation(line: 728, column: 51, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 728, column: 7)
!3483 = !DILocation(line: 731, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3482, file: !567, line: 730, column: 5)
!3485 = !DILocation(line: 732, column: 16, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3484, file: !567, line: 731, column: 11)
!3487 = !DILocation(line: 732, column: 9, scope: !3486)
!3488 = !DILocation(line: 736, column: 18, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3486, file: !567, line: 736, column: 16)
!3490 = !DILocation(line: 736, column: 29, scope: !3489)
!3491 = !DILocation(line: 745, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 745, column: 7)
!3493 = !DILocation(line: 745, column: 20, scope: !3492)
!3494 = !DILocation(line: 746, column: 12, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !567, line: 746, column: 5)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !567, line: 746, column: 5)
!3497 = !DILocation(line: 746, column: 5, scope: !3496)
!3498 = !DILocation(line: 747, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !567, line: 747, column: 7)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !567, line: 747, column: 7)
!3501 = !DILocation(line: 747, column: 7, scope: !3500)
!3502 = !DILocation(line: 746, column: 39, scope: !3495)
!3503 = distinct !{!3503, !3497, !3504, !988}
!3504 = !DILocation(line: 747, column: 7, scope: !3496)
!3505 = !DILocation(line: 749, column: 11, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !2960, file: !567, line: 749, column: 7)
!3507 = !DILocation(line: 749, column: 7, scope: !2960)
!3508 = !DILocation(line: 750, column: 5, scope: !3506)
!3509 = !DILocation(line: 750, column: 17, scope: !3506)
!3510 = !DILocation(line: 756, column: 21, scope: !3336)
!3511 = !DILocation(line: 760, column: 42, scope: !2960)
!3512 = !DILocation(line: 758, column: 10, scope: !2960)
!3513 = !DILocation(line: 758, column: 3, scope: !2960)
!3514 = !DILocation(line: 762, column: 1, scope: !2960)
!3515 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1062, file: !1062, line: 98, type: !3516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!133}
!3518 = !DISubprogram(name: "strlen", scope: !1058, file: !1058, line: 407, type: !3519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!135, !136}
!3521 = !DISubprogram(name: "iswprint", scope: !3522, file: !3522, line: 120, type: !3322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!3522 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3523 = distinct !DISubprogram(name: "quotearg_alloc", scope: !567, file: !567, line: 788, type: !3524, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!130, !136, !133, !2853}
!3526 = !{!3527, !3528, !3529}
!3527 = !DILocalVariable(name: "arg", arg: 1, scope: !3523, file: !567, line: 788, type: !136)
!3528 = !DILocalVariable(name: "argsize", arg: 2, scope: !3523, file: !567, line: 788, type: !133)
!3529 = !DILocalVariable(name: "o", arg: 3, scope: !3523, file: !567, line: 789, type: !2853)
!3530 = !DILocation(line: 0, scope: !3523)
!3531 = !DILocalVariable(name: "arg", arg: 1, scope: !3532, file: !567, line: 801, type: !136)
!3532 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !567, file: !567, line: 801, type: !3533, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!130, !136, !133, !807, !2853}
!3535 = !{!3531, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543}
!3536 = !DILocalVariable(name: "argsize", arg: 2, scope: !3532, file: !567, line: 801, type: !133)
!3537 = !DILocalVariable(name: "size", arg: 3, scope: !3532, file: !567, line: 801, type: !807)
!3538 = !DILocalVariable(name: "o", arg: 4, scope: !3532, file: !567, line: 802, type: !2853)
!3539 = !DILocalVariable(name: "p", scope: !3532, file: !567, line: 804, type: !2853)
!3540 = !DILocalVariable(name: "saved_errno", scope: !3532, file: !567, line: 805, type: !87)
!3541 = !DILocalVariable(name: "flags", scope: !3532, file: !567, line: 807, type: !87)
!3542 = !DILocalVariable(name: "bufsize", scope: !3532, file: !567, line: 808, type: !133)
!3543 = !DILocalVariable(name: "buf", scope: !3532, file: !567, line: 812, type: !130)
!3544 = !DILocation(line: 0, scope: !3532, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 791, column: 10, scope: !3523)
!3546 = !DILocation(line: 804, column: 37, scope: !3532, inlinedAt: !3545)
!3547 = !DILocation(line: 805, column: 21, scope: !3532, inlinedAt: !3545)
!3548 = !DILocation(line: 807, column: 18, scope: !3532, inlinedAt: !3545)
!3549 = !DILocation(line: 807, column: 24, scope: !3532, inlinedAt: !3545)
!3550 = !DILocation(line: 808, column: 72, scope: !3532, inlinedAt: !3545)
!3551 = !DILocation(line: 809, column: 56, scope: !3532, inlinedAt: !3545)
!3552 = !DILocation(line: 810, column: 49, scope: !3532, inlinedAt: !3545)
!3553 = !DILocation(line: 811, column: 49, scope: !3532, inlinedAt: !3545)
!3554 = !DILocation(line: 808, column: 20, scope: !3532, inlinedAt: !3545)
!3555 = !DILocation(line: 811, column: 62, scope: !3532, inlinedAt: !3545)
!3556 = !DILocation(line: 812, column: 15, scope: !3532, inlinedAt: !3545)
!3557 = !DILocation(line: 813, column: 60, scope: !3532, inlinedAt: !3545)
!3558 = !DILocation(line: 815, column: 32, scope: !3532, inlinedAt: !3545)
!3559 = !DILocation(line: 815, column: 47, scope: !3532, inlinedAt: !3545)
!3560 = !DILocation(line: 813, column: 3, scope: !3532, inlinedAt: !3545)
!3561 = !DILocation(line: 816, column: 9, scope: !3532, inlinedAt: !3545)
!3562 = !DILocation(line: 791, column: 3, scope: !3523)
!3563 = !DILocation(line: 0, scope: !3532)
!3564 = !DILocation(line: 804, column: 37, scope: !3532)
!3565 = !DILocation(line: 805, column: 21, scope: !3532)
!3566 = !DILocation(line: 807, column: 18, scope: !3532)
!3567 = !DILocation(line: 807, column: 27, scope: !3532)
!3568 = !DILocation(line: 807, column: 24, scope: !3532)
!3569 = !DILocation(line: 808, column: 72, scope: !3532)
!3570 = !DILocation(line: 809, column: 56, scope: !3532)
!3571 = !DILocation(line: 810, column: 49, scope: !3532)
!3572 = !DILocation(line: 811, column: 49, scope: !3532)
!3573 = !DILocation(line: 808, column: 20, scope: !3532)
!3574 = !DILocation(line: 811, column: 62, scope: !3532)
!3575 = !DILocation(line: 812, column: 15, scope: !3532)
!3576 = !DILocation(line: 813, column: 60, scope: !3532)
!3577 = !DILocation(line: 815, column: 32, scope: !3532)
!3578 = !DILocation(line: 815, column: 47, scope: !3532)
!3579 = !DILocation(line: 813, column: 3, scope: !3532)
!3580 = !DILocation(line: 816, column: 9, scope: !3532)
!3581 = !DILocation(line: 817, column: 7, scope: !3532)
!3582 = !DILocation(line: 818, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3532, file: !567, line: 817, column: 7)
!3584 = !DILocation(line: 818, column: 5, scope: !3583)
!3585 = !DILocation(line: 819, column: 3, scope: !3532)
!3586 = distinct !DISubprogram(name: "quotearg_free", scope: !567, file: !567, line: 837, type: !522, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3587)
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "sv", scope: !3586, file: !567, line: 839, type: !649)
!3589 = !DILocalVariable(name: "i", scope: !3590, file: !567, line: 840, type: !87)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !567, line: 840, column: 3)
!3591 = !DILocation(line: 839, column: 24, scope: !3586)
!3592 = !DILocation(line: 0, scope: !3586)
!3593 = !DILocation(line: 0, scope: !3590)
!3594 = !DILocation(line: 840, column: 21, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3590, file: !567, line: 840, column: 3)
!3596 = !DILocation(line: 840, column: 3, scope: !3590)
!3597 = !DILocation(line: 842, column: 13, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3586, file: !567, line: 842, column: 7)
!3599 = !{!3600, !873, i64 8}
!3600 = !{!"slotvec", !1300, i64 0, !873, i64 8}
!3601 = !DILocation(line: 842, column: 17, scope: !3598)
!3602 = !DILocation(line: 842, column: 7, scope: !3586)
!3603 = !DILocation(line: 841, column: 17, scope: !3595)
!3604 = !DILocation(line: 841, column: 5, scope: !3595)
!3605 = !DILocation(line: 840, column: 32, scope: !3595)
!3606 = distinct !{!3606, !3596, !3607, !988}
!3607 = !DILocation(line: 841, column: 20, scope: !3590)
!3608 = !DILocation(line: 844, column: 7, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3598, file: !567, line: 843, column: 5)
!3610 = !DILocation(line: 845, column: 21, scope: !3609)
!3611 = !{!3600, !1300, i64 0}
!3612 = !DILocation(line: 846, column: 20, scope: !3609)
!3613 = !DILocation(line: 847, column: 5, scope: !3609)
!3614 = !DILocation(line: 848, column: 10, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3586, file: !567, line: 848, column: 7)
!3616 = !DILocation(line: 848, column: 7, scope: !3586)
!3617 = !DILocation(line: 850, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3615, file: !567, line: 849, column: 5)
!3619 = !DILocation(line: 851, column: 15, scope: !3618)
!3620 = !DILocation(line: 852, column: 5, scope: !3618)
!3621 = !DILocation(line: 853, column: 10, scope: !3586)
!3622 = !DILocation(line: 854, column: 1, scope: !3586)
!3623 = distinct !DISubprogram(name: "quotearg_n", scope: !567, file: !567, line: 919, type: !1055, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3624)
!3624 = !{!3625, !3626}
!3625 = !DILocalVariable(name: "n", arg: 1, scope: !3623, file: !567, line: 919, type: !87)
!3626 = !DILocalVariable(name: "arg", arg: 2, scope: !3623, file: !567, line: 919, type: !136)
!3627 = !DILocation(line: 0, scope: !3623)
!3628 = !DILocation(line: 921, column: 10, scope: !3623)
!3629 = !DILocation(line: 921, column: 3, scope: !3623)
!3630 = distinct !DISubprogram(name: "quotearg_n_options", scope: !567, file: !567, line: 866, type: !3631, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!130, !87, !136, !133, !2853}
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3644, !3645, !3647, !3648, !3649}
!3634 = !DILocalVariable(name: "n", arg: 1, scope: !3630, file: !567, line: 866, type: !87)
!3635 = !DILocalVariable(name: "arg", arg: 2, scope: !3630, file: !567, line: 866, type: !136)
!3636 = !DILocalVariable(name: "argsize", arg: 3, scope: !3630, file: !567, line: 866, type: !133)
!3637 = !DILocalVariable(name: "options", arg: 4, scope: !3630, file: !567, line: 867, type: !2853)
!3638 = !DILocalVariable(name: "saved_errno", scope: !3630, file: !567, line: 869, type: !87)
!3639 = !DILocalVariable(name: "sv", scope: !3630, file: !567, line: 871, type: !649)
!3640 = !DILocalVariable(name: "nslots_max", scope: !3630, file: !567, line: 873, type: !87)
!3641 = !DILocalVariable(name: "preallocated", scope: !3642, file: !567, line: 879, type: !196)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !567, line: 878, column: 5)
!3643 = distinct !DILexicalBlock(scope: !3630, file: !567, line: 877, column: 7)
!3644 = !DILocalVariable(name: "new_nslots", scope: !3642, file: !567, line: 880, type: !438)
!3645 = !DILocalVariable(name: "size", scope: !3646, file: !567, line: 891, type: !133)
!3646 = distinct !DILexicalBlock(scope: !3630, file: !567, line: 890, column: 3)
!3647 = !DILocalVariable(name: "val", scope: !3646, file: !567, line: 892, type: !130)
!3648 = !DILocalVariable(name: "flags", scope: !3646, file: !567, line: 894, type: !87)
!3649 = !DILocalVariable(name: "qsize", scope: !3646, file: !567, line: 895, type: !133)
!3650 = !DILocation(line: 0, scope: !3630)
!3651 = !DILocation(line: 869, column: 21, scope: !3630)
!3652 = !DILocation(line: 871, column: 24, scope: !3630)
!3653 = !DILocation(line: 874, column: 17, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3630, file: !567, line: 874, column: 7)
!3655 = !DILocation(line: 875, column: 5, scope: !3654)
!3656 = !DILocation(line: 877, column: 7, scope: !3643)
!3657 = !DILocation(line: 877, column: 14, scope: !3643)
!3658 = !DILocation(line: 877, column: 7, scope: !3630)
!3659 = !DILocation(line: 879, column: 31, scope: !3642)
!3660 = !DILocation(line: 0, scope: !3642)
!3661 = !DILocation(line: 880, column: 7, scope: !3642)
!3662 = !DILocation(line: 880, column: 26, scope: !3642)
!3663 = !DILocation(line: 880, column: 13, scope: !3642)
!3664 = !DILocation(line: 882, column: 31, scope: !3642)
!3665 = !DILocation(line: 883, column: 33, scope: !3642)
!3666 = !DILocation(line: 883, column: 42, scope: !3642)
!3667 = !DILocation(line: 883, column: 31, scope: !3642)
!3668 = !DILocation(line: 882, column: 22, scope: !3642)
!3669 = !DILocation(line: 882, column: 15, scope: !3642)
!3670 = !DILocation(line: 884, column: 11, scope: !3642)
!3671 = !DILocation(line: 885, column: 15, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3642, file: !567, line: 884, column: 11)
!3673 = !{i64 0, i64 8, !1319, i64 8, i64 8, !872}
!3674 = !DILocation(line: 885, column: 9, scope: !3672)
!3675 = !DILocation(line: 886, column: 20, scope: !3642)
!3676 = !DILocation(line: 886, column: 18, scope: !3642)
!3677 = !DILocation(line: 886, column: 32, scope: !3642)
!3678 = !DILocation(line: 886, column: 43, scope: !3642)
!3679 = !DILocation(line: 886, column: 53, scope: !3642)
!3680 = !DILocation(line: 0, scope: !3063, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 886, column: 7, scope: !3642)
!3682 = !DILocation(line: 59, column: 10, scope: !3063, inlinedAt: !3681)
!3683 = !DILocation(line: 887, column: 16, scope: !3642)
!3684 = !DILocation(line: 887, column: 14, scope: !3642)
!3685 = !DILocation(line: 888, column: 5, scope: !3643)
!3686 = !DILocation(line: 888, column: 5, scope: !3642)
!3687 = !DILocation(line: 891, column: 19, scope: !3646)
!3688 = !DILocation(line: 891, column: 25, scope: !3646)
!3689 = !DILocation(line: 0, scope: !3646)
!3690 = !DILocation(line: 892, column: 23, scope: !3646)
!3691 = !DILocation(line: 894, column: 26, scope: !3646)
!3692 = !DILocation(line: 894, column: 32, scope: !3646)
!3693 = !DILocation(line: 896, column: 55, scope: !3646)
!3694 = !DILocation(line: 897, column: 55, scope: !3646)
!3695 = !DILocation(line: 898, column: 55, scope: !3646)
!3696 = !DILocation(line: 899, column: 55, scope: !3646)
!3697 = !DILocation(line: 895, column: 20, scope: !3646)
!3698 = !DILocation(line: 901, column: 14, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3646, file: !567, line: 901, column: 9)
!3700 = !DILocation(line: 901, column: 9, scope: !3646)
!3701 = !DILocation(line: 903, column: 35, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3699, file: !567, line: 902, column: 7)
!3703 = !DILocation(line: 903, column: 20, scope: !3702)
!3704 = !DILocation(line: 904, column: 17, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3702, file: !567, line: 904, column: 13)
!3706 = !DILocation(line: 904, column: 13, scope: !3702)
!3707 = !DILocation(line: 905, column: 11, scope: !3705)
!3708 = !DILocation(line: 906, column: 27, scope: !3702)
!3709 = !DILocation(line: 906, column: 19, scope: !3702)
!3710 = !DILocation(line: 907, column: 69, scope: !3702)
!3711 = !DILocation(line: 909, column: 44, scope: !3702)
!3712 = !DILocation(line: 910, column: 44, scope: !3702)
!3713 = !DILocation(line: 907, column: 9, scope: !3702)
!3714 = !DILocation(line: 911, column: 7, scope: !3702)
!3715 = !DILocation(line: 913, column: 11, scope: !3646)
!3716 = !DILocation(line: 914, column: 5, scope: !3646)
!3717 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !567, file: !567, line: 925, type: !3718, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!130, !87, !136, !133}
!3720 = !{!3721, !3722, !3723}
!3721 = !DILocalVariable(name: "n", arg: 1, scope: !3717, file: !567, line: 925, type: !87)
!3722 = !DILocalVariable(name: "arg", arg: 2, scope: !3717, file: !567, line: 925, type: !136)
!3723 = !DILocalVariable(name: "argsize", arg: 3, scope: !3717, file: !567, line: 925, type: !133)
!3724 = !DILocation(line: 0, scope: !3717)
!3725 = !DILocation(line: 927, column: 10, scope: !3717)
!3726 = !DILocation(line: 927, column: 3, scope: !3717)
!3727 = distinct !DISubprogram(name: "quotearg", scope: !567, file: !567, line: 931, type: !1064, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3728)
!3728 = !{!3729}
!3729 = !DILocalVariable(name: "arg", arg: 1, scope: !3727, file: !567, line: 931, type: !136)
!3730 = !DILocation(line: 0, scope: !3727)
!3731 = !DILocation(line: 0, scope: !3623, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 933, column: 10, scope: !3727)
!3733 = !DILocation(line: 921, column: 10, scope: !3623, inlinedAt: !3732)
!3734 = !DILocation(line: 933, column: 3, scope: !3727)
!3735 = distinct !DISubprogram(name: "quotearg_mem", scope: !567, file: !567, line: 937, type: !3736, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!130, !136, !133}
!3738 = !{!3739, !3740}
!3739 = !DILocalVariable(name: "arg", arg: 1, scope: !3735, file: !567, line: 937, type: !136)
!3740 = !DILocalVariable(name: "argsize", arg: 2, scope: !3735, file: !567, line: 937, type: !133)
!3741 = !DILocation(line: 0, scope: !3735)
!3742 = !DILocation(line: 0, scope: !3717, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 939, column: 10, scope: !3735)
!3744 = !DILocation(line: 927, column: 10, scope: !3717, inlinedAt: !3743)
!3745 = !DILocation(line: 939, column: 3, scope: !3735)
!3746 = distinct !DISubprogram(name: "quotearg_n_style", scope: !567, file: !567, line: 943, type: !3747, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!130, !87, !91, !136}
!3749 = !{!3750, !3751, !3752, !3753}
!3750 = !DILocalVariable(name: "n", arg: 1, scope: !3746, file: !567, line: 943, type: !87)
!3751 = !DILocalVariable(name: "s", arg: 2, scope: !3746, file: !567, line: 943, type: !91)
!3752 = !DILocalVariable(name: "arg", arg: 3, scope: !3746, file: !567, line: 943, type: !136)
!3753 = !DILocalVariable(name: "o", scope: !3746, file: !567, line: 945, type: !2854)
!3754 = !DILocation(line: 0, scope: !3746)
!3755 = !DILocation(line: 945, column: 3, scope: !3746)
!3756 = !DILocation(line: 945, column: 32, scope: !3746)
!3757 = !{!3758}
!3758 = distinct !{!3758, !3759, !"quoting_options_from_style: argument 0"}
!3759 = distinct !{!3759, !"quoting_options_from_style"}
!3760 = !DILocation(line: 945, column: 36, scope: !3746)
!3761 = !DILocalVariable(name: "style", arg: 1, scope: !3762, file: !567, line: 183, type: !91)
!3762 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !567, file: !567, line: 183, type: !3763, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!603, !91}
!3765 = !{!3761, !3766}
!3766 = !DILocalVariable(name: "o", scope: !3762, file: !567, line: 185, type: !603)
!3767 = !DILocation(line: 0, scope: !3762, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 945, column: 36, scope: !3746)
!3769 = !DILocation(line: 185, column: 26, scope: !3762, inlinedAt: !3768)
!3770 = !DILocation(line: 186, column: 13, scope: !3771, inlinedAt: !3768)
!3771 = distinct !DILexicalBlock(scope: !3762, file: !567, line: 186, column: 7)
!3772 = !DILocation(line: 186, column: 7, scope: !3762, inlinedAt: !3768)
!3773 = !DILocation(line: 187, column: 5, scope: !3771, inlinedAt: !3768)
!3774 = !DILocation(line: 188, column: 11, scope: !3762, inlinedAt: !3768)
!3775 = !DILocation(line: 946, column: 10, scope: !3746)
!3776 = !DILocation(line: 947, column: 1, scope: !3746)
!3777 = !DILocation(line: 946, column: 3, scope: !3746)
!3778 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !567, file: !567, line: 950, type: !3779, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!130, !87, !91, !136, !133}
!3781 = !{!3782, !3783, !3784, !3785, !3786}
!3782 = !DILocalVariable(name: "n", arg: 1, scope: !3778, file: !567, line: 950, type: !87)
!3783 = !DILocalVariable(name: "s", arg: 2, scope: !3778, file: !567, line: 950, type: !91)
!3784 = !DILocalVariable(name: "arg", arg: 3, scope: !3778, file: !567, line: 951, type: !136)
!3785 = !DILocalVariable(name: "argsize", arg: 4, scope: !3778, file: !567, line: 951, type: !133)
!3786 = !DILocalVariable(name: "o", scope: !3778, file: !567, line: 953, type: !2854)
!3787 = !DILocation(line: 0, scope: !3778)
!3788 = !DILocation(line: 953, column: 3, scope: !3778)
!3789 = !DILocation(line: 953, column: 32, scope: !3778)
!3790 = !{!3791}
!3791 = distinct !{!3791, !3792, !"quoting_options_from_style: argument 0"}
!3792 = distinct !{!3792, !"quoting_options_from_style"}
!3793 = !DILocation(line: 953, column: 36, scope: !3778)
!3794 = !DILocation(line: 0, scope: !3762, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 953, column: 36, scope: !3778)
!3796 = !DILocation(line: 185, column: 26, scope: !3762, inlinedAt: !3795)
!3797 = !DILocation(line: 186, column: 13, scope: !3771, inlinedAt: !3795)
!3798 = !DILocation(line: 186, column: 7, scope: !3762, inlinedAt: !3795)
!3799 = !DILocation(line: 187, column: 5, scope: !3771, inlinedAt: !3795)
!3800 = !DILocation(line: 188, column: 11, scope: !3762, inlinedAt: !3795)
!3801 = !DILocation(line: 954, column: 10, scope: !3778)
!3802 = !DILocation(line: 955, column: 1, scope: !3778)
!3803 = !DILocation(line: 954, column: 3, scope: !3778)
!3804 = distinct !DISubprogram(name: "quotearg_style", scope: !567, file: !567, line: 958, type: !3805, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!130, !91, !136}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "s", arg: 1, scope: !3804, file: !567, line: 958, type: !91)
!3809 = !DILocalVariable(name: "arg", arg: 2, scope: !3804, file: !567, line: 958, type: !136)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 0, scope: !3746, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 960, column: 10, scope: !3804)
!3813 = !DILocation(line: 945, column: 3, scope: !3746, inlinedAt: !3812)
!3814 = !DILocation(line: 945, column: 32, scope: !3746, inlinedAt: !3812)
!3815 = !{!3816}
!3816 = distinct !{!3816, !3817, !"quoting_options_from_style: argument 0"}
!3817 = distinct !{!3817, !"quoting_options_from_style"}
!3818 = !DILocation(line: 945, column: 36, scope: !3746, inlinedAt: !3812)
!3819 = !DILocation(line: 0, scope: !3762, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 945, column: 36, scope: !3746, inlinedAt: !3812)
!3821 = !DILocation(line: 185, column: 26, scope: !3762, inlinedAt: !3820)
!3822 = !DILocation(line: 186, column: 13, scope: !3771, inlinedAt: !3820)
!3823 = !DILocation(line: 186, column: 7, scope: !3762, inlinedAt: !3820)
!3824 = !DILocation(line: 187, column: 5, scope: !3771, inlinedAt: !3820)
!3825 = !DILocation(line: 188, column: 11, scope: !3762, inlinedAt: !3820)
!3826 = !DILocation(line: 946, column: 10, scope: !3746, inlinedAt: !3812)
!3827 = !DILocation(line: 947, column: 1, scope: !3746, inlinedAt: !3812)
!3828 = !DILocation(line: 960, column: 3, scope: !3804)
!3829 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !567, file: !567, line: 964, type: !3830, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!130, !91, !136, !133}
!3832 = !{!3833, !3834, !3835}
!3833 = !DILocalVariable(name: "s", arg: 1, scope: !3829, file: !567, line: 964, type: !91)
!3834 = !DILocalVariable(name: "arg", arg: 2, scope: !3829, file: !567, line: 964, type: !136)
!3835 = !DILocalVariable(name: "argsize", arg: 3, scope: !3829, file: !567, line: 964, type: !133)
!3836 = !DILocation(line: 0, scope: !3829)
!3837 = !DILocation(line: 0, scope: !3778, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 966, column: 10, scope: !3829)
!3839 = !DILocation(line: 953, column: 3, scope: !3778, inlinedAt: !3838)
!3840 = !DILocation(line: 953, column: 32, scope: !3778, inlinedAt: !3838)
!3841 = !{!3842}
!3842 = distinct !{!3842, !3843, !"quoting_options_from_style: argument 0"}
!3843 = distinct !{!3843, !"quoting_options_from_style"}
!3844 = !DILocation(line: 953, column: 36, scope: !3778, inlinedAt: !3838)
!3845 = !DILocation(line: 0, scope: !3762, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 953, column: 36, scope: !3778, inlinedAt: !3838)
!3847 = !DILocation(line: 185, column: 26, scope: !3762, inlinedAt: !3846)
!3848 = !DILocation(line: 186, column: 13, scope: !3771, inlinedAt: !3846)
!3849 = !DILocation(line: 186, column: 7, scope: !3762, inlinedAt: !3846)
!3850 = !DILocation(line: 187, column: 5, scope: !3771, inlinedAt: !3846)
!3851 = !DILocation(line: 188, column: 11, scope: !3762, inlinedAt: !3846)
!3852 = !DILocation(line: 954, column: 10, scope: !3778, inlinedAt: !3838)
!3853 = !DILocation(line: 955, column: 1, scope: !3778, inlinedAt: !3838)
!3854 = !DILocation(line: 966, column: 3, scope: !3829)
!3855 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !567, file: !567, line: 970, type: !3856, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!130, !136, !133, !4}
!3858 = !{!3859, !3860, !3861, !3862}
!3859 = !DILocalVariable(name: "arg", arg: 1, scope: !3855, file: !567, line: 970, type: !136)
!3860 = !DILocalVariable(name: "argsize", arg: 2, scope: !3855, file: !567, line: 970, type: !133)
!3861 = !DILocalVariable(name: "ch", arg: 3, scope: !3855, file: !567, line: 970, type: !4)
!3862 = !DILocalVariable(name: "options", scope: !3855, file: !567, line: 972, type: !603)
!3863 = !DILocation(line: 0, scope: !3855)
!3864 = !DILocation(line: 972, column: 3, scope: !3855)
!3865 = !DILocation(line: 972, column: 26, scope: !3855)
!3866 = !DILocation(line: 973, column: 13, scope: !3855)
!3867 = !{i64 0, i64 4, !950, i64 4, i64 4, !941, i64 8, i64 32, !950, i64 40, i64 8, !872, i64 48, i64 8, !872}
!3868 = !DILocation(line: 0, scope: !2873, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 974, column: 3, scope: !3855)
!3870 = !DILocation(line: 147, column: 41, scope: !2873, inlinedAt: !3869)
!3871 = !DILocation(line: 147, column: 62, scope: !2873, inlinedAt: !3869)
!3872 = !DILocation(line: 147, column: 57, scope: !2873, inlinedAt: !3869)
!3873 = !DILocation(line: 148, column: 15, scope: !2873, inlinedAt: !3869)
!3874 = !DILocation(line: 149, column: 21, scope: !2873, inlinedAt: !3869)
!3875 = !DILocation(line: 149, column: 24, scope: !2873, inlinedAt: !3869)
!3876 = !DILocation(line: 150, column: 19, scope: !2873, inlinedAt: !3869)
!3877 = !DILocation(line: 150, column: 24, scope: !2873, inlinedAt: !3869)
!3878 = !DILocation(line: 150, column: 6, scope: !2873, inlinedAt: !3869)
!3879 = !DILocation(line: 975, column: 10, scope: !3855)
!3880 = !DILocation(line: 976, column: 1, scope: !3855)
!3881 = !DILocation(line: 975, column: 3, scope: !3855)
!3882 = distinct !DISubprogram(name: "quotearg_char", scope: !567, file: !567, line: 979, type: !3883, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!130, !136, !4}
!3885 = !{!3886, !3887}
!3886 = !DILocalVariable(name: "arg", arg: 1, scope: !3882, file: !567, line: 979, type: !136)
!3887 = !DILocalVariable(name: "ch", arg: 2, scope: !3882, file: !567, line: 979, type: !4)
!3888 = !DILocation(line: 0, scope: !3882)
!3889 = !DILocation(line: 0, scope: !3855, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 981, column: 10, scope: !3882)
!3891 = !DILocation(line: 972, column: 3, scope: !3855, inlinedAt: !3890)
!3892 = !DILocation(line: 972, column: 26, scope: !3855, inlinedAt: !3890)
!3893 = !DILocation(line: 973, column: 13, scope: !3855, inlinedAt: !3890)
!3894 = !DILocation(line: 0, scope: !2873, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 974, column: 3, scope: !3855, inlinedAt: !3890)
!3896 = !DILocation(line: 147, column: 41, scope: !2873, inlinedAt: !3895)
!3897 = !DILocation(line: 147, column: 62, scope: !2873, inlinedAt: !3895)
!3898 = !DILocation(line: 147, column: 57, scope: !2873, inlinedAt: !3895)
!3899 = !DILocation(line: 148, column: 15, scope: !2873, inlinedAt: !3895)
!3900 = !DILocation(line: 149, column: 21, scope: !2873, inlinedAt: !3895)
!3901 = !DILocation(line: 149, column: 24, scope: !2873, inlinedAt: !3895)
!3902 = !DILocation(line: 150, column: 19, scope: !2873, inlinedAt: !3895)
!3903 = !DILocation(line: 150, column: 24, scope: !2873, inlinedAt: !3895)
!3904 = !DILocation(line: 150, column: 6, scope: !2873, inlinedAt: !3895)
!3905 = !DILocation(line: 975, column: 10, scope: !3855, inlinedAt: !3890)
!3906 = !DILocation(line: 976, column: 1, scope: !3855, inlinedAt: !3890)
!3907 = !DILocation(line: 981, column: 3, scope: !3882)
!3908 = distinct !DISubprogram(name: "quotearg_colon", scope: !567, file: !567, line: 985, type: !1064, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3909)
!3909 = !{!3910}
!3910 = !DILocalVariable(name: "arg", arg: 1, scope: !3908, file: !567, line: 985, type: !136)
!3911 = !DILocation(line: 0, scope: !3908)
!3912 = !DILocation(line: 0, scope: !3882, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 987, column: 10, scope: !3908)
!3914 = !DILocation(line: 0, scope: !3855, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 981, column: 10, scope: !3882, inlinedAt: !3913)
!3916 = !DILocation(line: 972, column: 3, scope: !3855, inlinedAt: !3915)
!3917 = !DILocation(line: 972, column: 26, scope: !3855, inlinedAt: !3915)
!3918 = !DILocation(line: 973, column: 13, scope: !3855, inlinedAt: !3915)
!3919 = !DILocation(line: 0, scope: !2873, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 974, column: 3, scope: !3855, inlinedAt: !3915)
!3921 = !DILocation(line: 147, column: 57, scope: !2873, inlinedAt: !3920)
!3922 = !DILocation(line: 149, column: 21, scope: !2873, inlinedAt: !3920)
!3923 = !DILocation(line: 150, column: 6, scope: !2873, inlinedAt: !3920)
!3924 = !DILocation(line: 975, column: 10, scope: !3855, inlinedAt: !3915)
!3925 = !DILocation(line: 976, column: 1, scope: !3855, inlinedAt: !3915)
!3926 = !DILocation(line: 987, column: 3, scope: !3908)
!3927 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !567, file: !567, line: 991, type: !3736, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3928)
!3928 = !{!3929, !3930}
!3929 = !DILocalVariable(name: "arg", arg: 1, scope: !3927, file: !567, line: 991, type: !136)
!3930 = !DILocalVariable(name: "argsize", arg: 2, scope: !3927, file: !567, line: 991, type: !133)
!3931 = !DILocation(line: 0, scope: !3927)
!3932 = !DILocation(line: 0, scope: !3855, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 993, column: 10, scope: !3927)
!3934 = !DILocation(line: 972, column: 3, scope: !3855, inlinedAt: !3933)
!3935 = !DILocation(line: 972, column: 26, scope: !3855, inlinedAt: !3933)
!3936 = !DILocation(line: 973, column: 13, scope: !3855, inlinedAt: !3933)
!3937 = !DILocation(line: 0, scope: !2873, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 974, column: 3, scope: !3855, inlinedAt: !3933)
!3939 = !DILocation(line: 147, column: 57, scope: !2873, inlinedAt: !3938)
!3940 = !DILocation(line: 149, column: 21, scope: !2873, inlinedAt: !3938)
!3941 = !DILocation(line: 150, column: 6, scope: !2873, inlinedAt: !3938)
!3942 = !DILocation(line: 975, column: 10, scope: !3855, inlinedAt: !3933)
!3943 = !DILocation(line: 976, column: 1, scope: !3855, inlinedAt: !3933)
!3944 = !DILocation(line: 993, column: 3, scope: !3927)
!3945 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !567, file: !567, line: 997, type: !3747, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3946)
!3946 = !{!3947, !3948, !3949, !3950}
!3947 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !567, line: 997, type: !87)
!3948 = !DILocalVariable(name: "s", arg: 2, scope: !3945, file: !567, line: 997, type: !91)
!3949 = !DILocalVariable(name: "arg", arg: 3, scope: !3945, file: !567, line: 997, type: !136)
!3950 = !DILocalVariable(name: "options", scope: !3945, file: !567, line: 999, type: !603)
!3951 = !DILocation(line: 185, column: 26, scope: !3762, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 1000, column: 13, scope: !3945)
!3953 = !DILocation(line: 0, scope: !3945)
!3954 = !DILocation(line: 999, column: 3, scope: !3945)
!3955 = !DILocation(line: 999, column: 26, scope: !3945)
!3956 = !DILocation(line: 0, scope: !3762, inlinedAt: !3952)
!3957 = !DILocation(line: 186, column: 13, scope: !3771, inlinedAt: !3952)
!3958 = !DILocation(line: 186, column: 7, scope: !3762, inlinedAt: !3952)
!3959 = !DILocation(line: 187, column: 5, scope: !3771, inlinedAt: !3952)
!3960 = !{!3961}
!3961 = distinct !{!3961, !3962, !"quoting_options_from_style: argument 0"}
!3962 = distinct !{!3962, !"quoting_options_from_style"}
!3963 = !DILocation(line: 1000, column: 13, scope: !3945)
!3964 = !DILocation(line: 0, scope: !2873, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 1001, column: 3, scope: !3945)
!3966 = !DILocation(line: 147, column: 57, scope: !2873, inlinedAt: !3965)
!3967 = !DILocation(line: 149, column: 21, scope: !2873, inlinedAt: !3965)
!3968 = !DILocation(line: 150, column: 6, scope: !2873, inlinedAt: !3965)
!3969 = !DILocation(line: 1002, column: 10, scope: !3945)
!3970 = !DILocation(line: 1003, column: 1, scope: !3945)
!3971 = !DILocation(line: 1002, column: 3, scope: !3945)
!3972 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !567, file: !567, line: 1006, type: !3973, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!130, !87, !136, !136, !136}
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DILocalVariable(name: "n", arg: 1, scope: !3972, file: !567, line: 1006, type: !87)
!3977 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3972, file: !567, line: 1006, type: !136)
!3978 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3972, file: !567, line: 1007, type: !136)
!3979 = !DILocalVariable(name: "arg", arg: 4, scope: !3972, file: !567, line: 1007, type: !136)
!3980 = !DILocation(line: 0, scope: !3972)
!3981 = !DILocalVariable(name: "n", arg: 1, scope: !3982, file: !567, line: 1014, type: !87)
!3982 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !567, file: !567, line: 1014, type: !3983, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !3985)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!130, !87, !136, !136, !136, !133}
!3985 = !{!3981, !3986, !3987, !3988, !3989, !3990}
!3986 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3982, file: !567, line: 1014, type: !136)
!3987 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3982, file: !567, line: 1015, type: !136)
!3988 = !DILocalVariable(name: "arg", arg: 4, scope: !3982, file: !567, line: 1016, type: !136)
!3989 = !DILocalVariable(name: "argsize", arg: 5, scope: !3982, file: !567, line: 1016, type: !133)
!3990 = !DILocalVariable(name: "o", scope: !3982, file: !567, line: 1018, type: !603)
!3991 = !DILocation(line: 0, scope: !3982, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 1009, column: 10, scope: !3972)
!3993 = !DILocation(line: 1018, column: 3, scope: !3982, inlinedAt: !3992)
!3994 = !DILocation(line: 1018, column: 26, scope: !3982, inlinedAt: !3992)
!3995 = !DILocation(line: 1018, column: 30, scope: !3982, inlinedAt: !3992)
!3996 = !DILocation(line: 0, scope: !2913, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 1019, column: 3, scope: !3982, inlinedAt: !3992)
!3998 = !DILocation(line: 174, column: 12, scope: !2913, inlinedAt: !3997)
!3999 = !DILocation(line: 175, column: 8, scope: !2926, inlinedAt: !3997)
!4000 = !DILocation(line: 175, column: 19, scope: !2926, inlinedAt: !3997)
!4001 = !DILocation(line: 176, column: 5, scope: !2926, inlinedAt: !3997)
!4002 = !DILocation(line: 177, column: 6, scope: !2913, inlinedAt: !3997)
!4003 = !DILocation(line: 177, column: 17, scope: !2913, inlinedAt: !3997)
!4004 = !DILocation(line: 178, column: 6, scope: !2913, inlinedAt: !3997)
!4005 = !DILocation(line: 178, column: 18, scope: !2913, inlinedAt: !3997)
!4006 = !DILocation(line: 1020, column: 10, scope: !3982, inlinedAt: !3992)
!4007 = !DILocation(line: 1021, column: 1, scope: !3982, inlinedAt: !3992)
!4008 = !DILocation(line: 1009, column: 3, scope: !3972)
!4009 = !DILocation(line: 0, scope: !3982)
!4010 = !DILocation(line: 1018, column: 3, scope: !3982)
!4011 = !DILocation(line: 1018, column: 26, scope: !3982)
!4012 = !DILocation(line: 1018, column: 30, scope: !3982)
!4013 = !DILocation(line: 0, scope: !2913, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 1019, column: 3, scope: !3982)
!4015 = !DILocation(line: 174, column: 12, scope: !2913, inlinedAt: !4014)
!4016 = !DILocation(line: 175, column: 8, scope: !2926, inlinedAt: !4014)
!4017 = !DILocation(line: 175, column: 19, scope: !2926, inlinedAt: !4014)
!4018 = !DILocation(line: 176, column: 5, scope: !2926, inlinedAt: !4014)
!4019 = !DILocation(line: 177, column: 6, scope: !2913, inlinedAt: !4014)
!4020 = !DILocation(line: 177, column: 17, scope: !2913, inlinedAt: !4014)
!4021 = !DILocation(line: 178, column: 6, scope: !2913, inlinedAt: !4014)
!4022 = !DILocation(line: 178, column: 18, scope: !2913, inlinedAt: !4014)
!4023 = !DILocation(line: 1020, column: 10, scope: !3982)
!4024 = !DILocation(line: 1021, column: 1, scope: !3982)
!4025 = !DILocation(line: 1020, column: 3, scope: !3982)
!4026 = distinct !DISubprogram(name: "quotearg_custom", scope: !567, file: !567, line: 1024, type: !4027, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!130, !136, !136, !136}
!4029 = !{!4030, !4031, !4032}
!4030 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4026, file: !567, line: 1024, type: !136)
!4031 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4026, file: !567, line: 1024, type: !136)
!4032 = !DILocalVariable(name: "arg", arg: 3, scope: !4026, file: !567, line: 1025, type: !136)
!4033 = !DILocation(line: 0, scope: !4026)
!4034 = !DILocation(line: 0, scope: !3972, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 1027, column: 10, scope: !4026)
!4036 = !DILocation(line: 0, scope: !3982, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 1009, column: 10, scope: !3972, inlinedAt: !4035)
!4038 = !DILocation(line: 1018, column: 3, scope: !3982, inlinedAt: !4037)
!4039 = !DILocation(line: 1018, column: 26, scope: !3982, inlinedAt: !4037)
!4040 = !DILocation(line: 1018, column: 30, scope: !3982, inlinedAt: !4037)
!4041 = !DILocation(line: 0, scope: !2913, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1019, column: 3, scope: !3982, inlinedAt: !4037)
!4043 = !DILocation(line: 174, column: 12, scope: !2913, inlinedAt: !4042)
!4044 = !DILocation(line: 175, column: 8, scope: !2926, inlinedAt: !4042)
!4045 = !DILocation(line: 175, column: 19, scope: !2926, inlinedAt: !4042)
!4046 = !DILocation(line: 176, column: 5, scope: !2926, inlinedAt: !4042)
!4047 = !DILocation(line: 177, column: 6, scope: !2913, inlinedAt: !4042)
!4048 = !DILocation(line: 177, column: 17, scope: !2913, inlinedAt: !4042)
!4049 = !DILocation(line: 178, column: 6, scope: !2913, inlinedAt: !4042)
!4050 = !DILocation(line: 178, column: 18, scope: !2913, inlinedAt: !4042)
!4051 = !DILocation(line: 1020, column: 10, scope: !3982, inlinedAt: !4037)
!4052 = !DILocation(line: 1021, column: 1, scope: !3982, inlinedAt: !4037)
!4053 = !DILocation(line: 1027, column: 3, scope: !4026)
!4054 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !567, file: !567, line: 1031, type: !4055, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!130, !136, !136, !136, !133}
!4057 = !{!4058, !4059, !4060, !4061}
!4058 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4054, file: !567, line: 1031, type: !136)
!4059 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4054, file: !567, line: 1031, type: !136)
!4060 = !DILocalVariable(name: "arg", arg: 3, scope: !4054, file: !567, line: 1032, type: !136)
!4061 = !DILocalVariable(name: "argsize", arg: 4, scope: !4054, file: !567, line: 1032, type: !133)
!4062 = !DILocation(line: 0, scope: !4054)
!4063 = !DILocation(line: 0, scope: !3982, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 1034, column: 10, scope: !4054)
!4065 = !DILocation(line: 1018, column: 3, scope: !3982, inlinedAt: !4064)
!4066 = !DILocation(line: 1018, column: 26, scope: !3982, inlinedAt: !4064)
!4067 = !DILocation(line: 1018, column: 30, scope: !3982, inlinedAt: !4064)
!4068 = !DILocation(line: 0, scope: !2913, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 1019, column: 3, scope: !3982, inlinedAt: !4064)
!4070 = !DILocation(line: 174, column: 12, scope: !2913, inlinedAt: !4069)
!4071 = !DILocation(line: 175, column: 8, scope: !2926, inlinedAt: !4069)
!4072 = !DILocation(line: 175, column: 19, scope: !2926, inlinedAt: !4069)
!4073 = !DILocation(line: 176, column: 5, scope: !2926, inlinedAt: !4069)
!4074 = !DILocation(line: 177, column: 6, scope: !2913, inlinedAt: !4069)
!4075 = !DILocation(line: 177, column: 17, scope: !2913, inlinedAt: !4069)
!4076 = !DILocation(line: 178, column: 6, scope: !2913, inlinedAt: !4069)
!4077 = !DILocation(line: 178, column: 18, scope: !2913, inlinedAt: !4069)
!4078 = !DILocation(line: 1020, column: 10, scope: !3982, inlinedAt: !4064)
!4079 = !DILocation(line: 1021, column: 1, scope: !3982, inlinedAt: !4064)
!4080 = !DILocation(line: 1034, column: 3, scope: !4054)
!4081 = distinct !DISubprogram(name: "quote_n_mem", scope: !567, file: !567, line: 1049, type: !4082, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!136, !87, !136, !133}
!4084 = !{!4085, !4086, !4087}
!4085 = !DILocalVariable(name: "n", arg: 1, scope: !4081, file: !567, line: 1049, type: !87)
!4086 = !DILocalVariable(name: "arg", arg: 2, scope: !4081, file: !567, line: 1049, type: !136)
!4087 = !DILocalVariable(name: "argsize", arg: 3, scope: !4081, file: !567, line: 1049, type: !133)
!4088 = !DILocation(line: 0, scope: !4081)
!4089 = !DILocation(line: 1051, column: 10, scope: !4081)
!4090 = !DILocation(line: 1051, column: 3, scope: !4081)
!4091 = distinct !DISubprogram(name: "quote_mem", scope: !567, file: !567, line: 1055, type: !4092, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!136, !136, !133}
!4094 = !{!4095, !4096}
!4095 = !DILocalVariable(name: "arg", arg: 1, scope: !4091, file: !567, line: 1055, type: !136)
!4096 = !DILocalVariable(name: "argsize", arg: 2, scope: !4091, file: !567, line: 1055, type: !133)
!4097 = !DILocation(line: 0, scope: !4091)
!4098 = !DILocation(line: 0, scope: !4081, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 1057, column: 10, scope: !4091)
!4100 = !DILocation(line: 1051, column: 10, scope: !4081, inlinedAt: !4099)
!4101 = !DILocation(line: 1057, column: 3, scope: !4091)
!4102 = distinct !DISubprogram(name: "quote_n", scope: !567, file: !567, line: 1061, type: !4103, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!136, !87, !136}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "n", arg: 1, scope: !4102, file: !567, line: 1061, type: !87)
!4107 = !DILocalVariable(name: "arg", arg: 2, scope: !4102, file: !567, line: 1061, type: !136)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 0, scope: !4081, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 1063, column: 10, scope: !4102)
!4111 = !DILocation(line: 1051, column: 10, scope: !4081, inlinedAt: !4110)
!4112 = !DILocation(line: 1063, column: 3, scope: !4102)
!4113 = distinct !DISubprogram(name: "quote", scope: !567, file: !567, line: 1067, type: !4114, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!136, !136}
!4116 = !{!4117}
!4117 = !DILocalVariable(name: "arg", arg: 1, scope: !4113, file: !567, line: 1067, type: !136)
!4118 = !DILocation(line: 0, scope: !4113)
!4119 = !DILocation(line: 0, scope: !4102, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 1069, column: 10, scope: !4113)
!4121 = !DILocation(line: 0, scope: !4081, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 1063, column: 10, scope: !4102, inlinedAt: !4120)
!4123 = !DILocation(line: 1051, column: 10, scope: !4081, inlinedAt: !4122)
!4124 = !DILocation(line: 1069, column: 3, scope: !4113)
!4125 = distinct !DISubprogram(name: "version_etc_arn", scope: !662, file: !662, line: 61, type: !4126, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4163)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !4128, !136, !136, !136, !4162, !133}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4130)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4130, file: !213, line: 51, baseType: !87, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4130, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4130, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4130, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4130, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4130, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4130, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4130, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4130, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4130, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4130, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4130, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4130, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4130, file: !213, line: 70, baseType: !4146, size: 64, offset: 832)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4130, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4130, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4130, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4130, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4130, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4130, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4130, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4130, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4130, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4130, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4130, file: !213, line: 93, baseType: !4146, size: 64, offset: 1344)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4130, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4130, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4130, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4130, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169}
!4164 = !DILocalVariable(name: "stream", arg: 1, scope: !4125, file: !662, line: 61, type: !4128)
!4165 = !DILocalVariable(name: "command_name", arg: 2, scope: !4125, file: !662, line: 62, type: !136)
!4166 = !DILocalVariable(name: "package", arg: 3, scope: !4125, file: !662, line: 62, type: !136)
!4167 = !DILocalVariable(name: "version", arg: 4, scope: !4125, file: !662, line: 63, type: !136)
!4168 = !DILocalVariable(name: "authors", arg: 5, scope: !4125, file: !662, line: 64, type: !4162)
!4169 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4125, file: !662, line: 64, type: !133)
!4170 = !DILocation(line: 0, scope: !4125)
!4171 = !DILocation(line: 66, column: 7, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4125, file: !662, line: 66, column: 7)
!4173 = !DILocation(line: 66, column: 7, scope: !4125)
!4174 = !DILocation(line: 67, column: 5, scope: !4172)
!4175 = !DILocation(line: 69, column: 5, scope: !4172)
!4176 = !DILocation(line: 83, column: 3, scope: !4125)
!4177 = !DILocation(line: 85, column: 3, scope: !4125)
!4178 = !DILocation(line: 88, column: 3, scope: !4125)
!4179 = !DILocation(line: 95, column: 3, scope: !4125)
!4180 = !DILocation(line: 97, column: 3, scope: !4125)
!4181 = !DILocation(line: 105, column: 7, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4125, file: !662, line: 98, column: 5)
!4183 = !DILocation(line: 106, column: 7, scope: !4182)
!4184 = !DILocation(line: 109, column: 7, scope: !4182)
!4185 = !DILocation(line: 110, column: 7, scope: !4182)
!4186 = !DILocation(line: 113, column: 7, scope: !4182)
!4187 = !DILocation(line: 115, column: 7, scope: !4182)
!4188 = !DILocation(line: 120, column: 7, scope: !4182)
!4189 = !DILocation(line: 122, column: 7, scope: !4182)
!4190 = !DILocation(line: 127, column: 7, scope: !4182)
!4191 = !DILocation(line: 129, column: 7, scope: !4182)
!4192 = !DILocation(line: 134, column: 7, scope: !4182)
!4193 = !DILocation(line: 137, column: 7, scope: !4182)
!4194 = !DILocation(line: 142, column: 7, scope: !4182)
!4195 = !DILocation(line: 145, column: 7, scope: !4182)
!4196 = !DILocation(line: 150, column: 7, scope: !4182)
!4197 = !DILocation(line: 154, column: 7, scope: !4182)
!4198 = !DILocation(line: 159, column: 7, scope: !4182)
!4199 = !DILocation(line: 163, column: 7, scope: !4182)
!4200 = !DILocation(line: 170, column: 7, scope: !4182)
!4201 = !DILocation(line: 174, column: 7, scope: !4182)
!4202 = !DILocation(line: 176, column: 1, scope: !4125)
!4203 = distinct !DISubprogram(name: "version_etc_ar", scope: !662, file: !662, line: 183, type: !4204, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !4128, !136, !136, !136, !4162}
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212}
!4207 = !DILocalVariable(name: "stream", arg: 1, scope: !4203, file: !662, line: 183, type: !4128)
!4208 = !DILocalVariable(name: "command_name", arg: 2, scope: !4203, file: !662, line: 184, type: !136)
!4209 = !DILocalVariable(name: "package", arg: 3, scope: !4203, file: !662, line: 184, type: !136)
!4210 = !DILocalVariable(name: "version", arg: 4, scope: !4203, file: !662, line: 185, type: !136)
!4211 = !DILocalVariable(name: "authors", arg: 5, scope: !4203, file: !662, line: 185, type: !4162)
!4212 = !DILocalVariable(name: "n_authors", scope: !4203, file: !662, line: 187, type: !133)
!4213 = !DILocation(line: 0, scope: !4203)
!4214 = !DILocation(line: 189, column: 8, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4203, file: !662, line: 189, column: 3)
!4216 = !DILocation(line: 189, scope: !4215)
!4217 = !DILocation(line: 189, column: 23, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4215, file: !662, line: 189, column: 3)
!4219 = !DILocation(line: 189, column: 3, scope: !4215)
!4220 = !DILocation(line: 189, column: 52, scope: !4218)
!4221 = distinct !{!4221, !4219, !4222, !988}
!4222 = !DILocation(line: 190, column: 5, scope: !4215)
!4223 = !DILocation(line: 191, column: 3, scope: !4203)
!4224 = !DILocation(line: 192, column: 1, scope: !4203)
!4225 = distinct !DISubprogram(name: "version_etc_va", scope: !662, file: !662, line: 199, type: !4226, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4239)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4128, !136, !136, !136, !4228}
!4228 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !481, line: 52, baseType: !4229)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !483, line: 14, baseType: !4230)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4231, baseType: !4232)
!4231 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4232, file: !4231, line: 192, baseType: !131, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4232, file: !4231, line: 192, baseType: !131, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4232, file: !4231, line: 192, baseType: !131, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4232, file: !4231, line: 192, baseType: !87, size: 32, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4232, file: !4231, line: 192, baseType: !87, size: 32, offset: 224)
!4239 = !{!4240, !4241, !4242, !4243, !4244, !4245, !4246}
!4240 = !DILocalVariable(name: "stream", arg: 1, scope: !4225, file: !662, line: 199, type: !4128)
!4241 = !DILocalVariable(name: "command_name", arg: 2, scope: !4225, file: !662, line: 200, type: !136)
!4242 = !DILocalVariable(name: "package", arg: 3, scope: !4225, file: !662, line: 200, type: !136)
!4243 = !DILocalVariable(name: "version", arg: 4, scope: !4225, file: !662, line: 201, type: !136)
!4244 = !DILocalVariable(name: "authors", arg: 5, scope: !4225, file: !662, line: 201, type: !4228)
!4245 = !DILocalVariable(name: "n_authors", scope: !4225, file: !662, line: 203, type: !133)
!4246 = !DILocalVariable(name: "authtab", scope: !4225, file: !662, line: 204, type: !4247)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4248 = !DILocation(line: 0, scope: !4225)
!4249 = !DILocation(line: 201, column: 46, scope: !4225)
!4250 = !DILocation(line: 204, column: 3, scope: !4225)
!4251 = !DILocation(line: 204, column: 15, scope: !4225)
!4252 = !DILocation(line: 208, column: 35, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !662, line: 206, column: 3)
!4254 = distinct !DILexicalBlock(scope: !4225, file: !662, line: 206, column: 3)
!4255 = !DILocation(line: 208, column: 33, scope: !4253)
!4256 = !DILocation(line: 208, column: 67, scope: !4253)
!4257 = !DILocation(line: 206, column: 3, scope: !4254)
!4258 = !DILocation(line: 208, column: 14, scope: !4253)
!4259 = !DILocation(line: 0, scope: !4254)
!4260 = !DILocation(line: 211, column: 3, scope: !4225)
!4261 = !DILocation(line: 213, column: 1, scope: !4225)
!4262 = distinct !DISubprogram(name: "version_etc", scope: !662, file: !662, line: 230, type: !4263, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !4128, !136, !136, !136, null}
!4265 = !{!4266, !4267, !4268, !4269, !4270}
!4266 = !DILocalVariable(name: "stream", arg: 1, scope: !4262, file: !662, line: 230, type: !4128)
!4267 = !DILocalVariable(name: "command_name", arg: 2, scope: !4262, file: !662, line: 231, type: !136)
!4268 = !DILocalVariable(name: "package", arg: 3, scope: !4262, file: !662, line: 231, type: !136)
!4269 = !DILocalVariable(name: "version", arg: 4, scope: !4262, file: !662, line: 232, type: !136)
!4270 = !DILocalVariable(name: "authors", scope: !4262, file: !662, line: 234, type: !4228)
!4271 = !DILocation(line: 0, scope: !4262)
!4272 = !DILocation(line: 234, column: 3, scope: !4262)
!4273 = !DILocation(line: 234, column: 11, scope: !4262)
!4274 = !DILocation(line: 235, column: 3, scope: !4262)
!4275 = !DILocation(line: 236, column: 3, scope: !4262)
!4276 = !DILocation(line: 237, column: 3, scope: !4262)
!4277 = !DILocation(line: 238, column: 1, scope: !4262)
!4278 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !662, file: !662, line: 241, type: !522, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !881)
!4279 = !DILocation(line: 243, column: 3, scope: !4278)
!4280 = !DILocation(line: 248, column: 3, scope: !4278)
!4281 = !DILocation(line: 254, column: 3, scope: !4278)
!4282 = !DILocation(line: 259, column: 3, scope: !4278)
!4283 = !DILocation(line: 261, column: 1, scope: !4278)
!4284 = distinct !DISubprogram(name: "xnrealloc", scope: !4285, file: !4285, line: 147, type: !4286, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4288)
!4285 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!131, !131, !133, !133}
!4288 = !{!4289, !4290, !4291}
!4289 = !DILocalVariable(name: "p", arg: 1, scope: !4284, file: !4285, line: 147, type: !131)
!4290 = !DILocalVariable(name: "n", arg: 2, scope: !4284, file: !4285, line: 147, type: !133)
!4291 = !DILocalVariable(name: "s", arg: 3, scope: !4284, file: !4285, line: 147, type: !133)
!4292 = !DILocation(line: 0, scope: !4284)
!4293 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !801, line: 83, type: !131)
!4294 = distinct !DISubprogram(name: "xreallocarray", scope: !801, file: !801, line: 83, type: !4286, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4295)
!4295 = !{!4293, !4296, !4297}
!4296 = !DILocalVariable(name: "n", arg: 2, scope: !4294, file: !801, line: 83, type: !133)
!4297 = !DILocalVariable(name: "s", arg: 3, scope: !4294, file: !801, line: 83, type: !133)
!4298 = !DILocation(line: 0, scope: !4294, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 149, column: 10, scope: !4284)
!4300 = !DILocation(line: 85, column: 25, scope: !4294, inlinedAt: !4299)
!4301 = !DILocalVariable(name: "p", arg: 1, scope: !4302, file: !801, line: 37, type: !131)
!4302 = distinct !DISubprogram(name: "check_nonnull", scope: !801, file: !801, line: 37, type: !4303, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!131, !131}
!4305 = !{!4301}
!4306 = !DILocation(line: 0, scope: !4302, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 85, column: 10, scope: !4294, inlinedAt: !4299)
!4308 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4307)
!4309 = distinct !DILexicalBlock(scope: !4302, file: !801, line: 39, column: 7)
!4310 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4307)
!4311 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4307)
!4312 = !DILocation(line: 149, column: 3, scope: !4284)
!4313 = !DILocation(line: 0, scope: !4294)
!4314 = !DILocation(line: 85, column: 25, scope: !4294)
!4315 = !DILocation(line: 0, scope: !4302, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 85, column: 10, scope: !4294)
!4317 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4316)
!4318 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4316)
!4319 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4316)
!4320 = !DILocation(line: 85, column: 3, scope: !4294)
!4321 = distinct !DISubprogram(name: "xmalloc", scope: !801, file: !801, line: 47, type: !1783, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4322)
!4322 = !{!4323}
!4323 = !DILocalVariable(name: "s", arg: 1, scope: !4321, file: !801, line: 47, type: !133)
!4324 = !DILocation(line: 0, scope: !4321)
!4325 = !DILocation(line: 49, column: 25, scope: !4321)
!4326 = !DILocation(line: 0, scope: !4302, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 49, column: 10, scope: !4321)
!4328 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4327)
!4329 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4327)
!4330 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4327)
!4331 = !DILocation(line: 49, column: 3, scope: !4321)
!4332 = distinct !DISubprogram(name: "ximalloc", scope: !801, file: !801, line: 53, type: !1769, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4333)
!4333 = !{!4334}
!4334 = !DILocalVariable(name: "s", arg: 1, scope: !4332, file: !801, line: 53, type: !438)
!4335 = !DILocation(line: 0, scope: !4332)
!4336 = !DILocalVariable(name: "s", arg: 1, scope: !4337, file: !1768, line: 55, type: !438)
!4337 = distinct !DISubprogram(name: "imalloc", scope: !1768, file: !1768, line: 55, type: !1769, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4338)
!4338 = !{!4336}
!4339 = !DILocation(line: 0, scope: !4337, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 55, column: 25, scope: !4332)
!4341 = !DILocation(line: 57, column: 26, scope: !4337, inlinedAt: !4340)
!4342 = !DILocation(line: 0, scope: !4302, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 55, column: 10, scope: !4332)
!4344 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4343)
!4345 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4343)
!4346 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4343)
!4347 = !DILocation(line: 55, column: 3, scope: !4332)
!4348 = distinct !DISubprogram(name: "xcharalloc", scope: !801, file: !801, line: 59, type: !4349, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!130, !133}
!4351 = !{!4352}
!4352 = !DILocalVariable(name: "n", arg: 1, scope: !4348, file: !801, line: 59, type: !133)
!4353 = !DILocation(line: 0, scope: !4348)
!4354 = !DILocation(line: 0, scope: !4321, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 61, column: 10, scope: !4348)
!4356 = !DILocation(line: 49, column: 25, scope: !4321, inlinedAt: !4355)
!4357 = !DILocation(line: 0, scope: !4302, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 49, column: 10, scope: !4321, inlinedAt: !4355)
!4359 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4358)
!4360 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4358)
!4361 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4358)
!4362 = !DILocation(line: 61, column: 3, scope: !4348)
!4363 = distinct !DISubprogram(name: "xrealloc", scope: !801, file: !801, line: 68, type: !4364, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!131, !131, !133}
!4366 = !{!4367, !4368}
!4367 = !DILocalVariable(name: "p", arg: 1, scope: !4363, file: !801, line: 68, type: !131)
!4368 = !DILocalVariable(name: "s", arg: 2, scope: !4363, file: !801, line: 68, type: !133)
!4369 = !DILocation(line: 0, scope: !4363)
!4370 = !DILocalVariable(name: "ptr", arg: 1, scope: !4371, file: !4372, line: 2057, type: !131)
!4371 = distinct !DISubprogram(name: "rpl_realloc", scope: !4372, file: !4372, line: 2057, type: !4364, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4373)
!4372 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4373 = !{!4370, !4374}
!4374 = !DILocalVariable(name: "size", arg: 2, scope: !4371, file: !4372, line: 2057, type: !133)
!4375 = !DILocation(line: 0, scope: !4371, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 70, column: 25, scope: !4363)
!4377 = !DILocation(line: 2059, column: 24, scope: !4371, inlinedAt: !4376)
!4378 = !DILocation(line: 2059, column: 10, scope: !4371, inlinedAt: !4376)
!4379 = !DILocation(line: 0, scope: !4302, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 70, column: 10, scope: !4363)
!4381 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4380)
!4382 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4380)
!4383 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4380)
!4384 = !DILocation(line: 70, column: 3, scope: !4363)
!4385 = !DISubprogram(name: "realloc", scope: !1062, file: !1062, line: 551, type: !4364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!4386 = distinct !DISubprogram(name: "xirealloc", scope: !801, file: !801, line: 74, type: !4387, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4389)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!131, !131, !438}
!4389 = !{!4390, !4391}
!4390 = !DILocalVariable(name: "p", arg: 1, scope: !4386, file: !801, line: 74, type: !131)
!4391 = !DILocalVariable(name: "s", arg: 2, scope: !4386, file: !801, line: 74, type: !438)
!4392 = !DILocation(line: 0, scope: !4386)
!4393 = !DILocalVariable(name: "p", arg: 1, scope: !4394, file: !1768, line: 66, type: !131)
!4394 = distinct !DISubprogram(name: "irealloc", scope: !1768, file: !1768, line: 66, type: !4387, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4395)
!4395 = !{!4393, !4396}
!4396 = !DILocalVariable(name: "s", arg: 2, scope: !4394, file: !1768, line: 66, type: !438)
!4397 = !DILocation(line: 0, scope: !4394, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 76, column: 25, scope: !4386)
!4399 = !DILocation(line: 0, scope: !4371, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 68, column: 26, scope: !4394, inlinedAt: !4398)
!4401 = !DILocation(line: 2059, column: 24, scope: !4371, inlinedAt: !4400)
!4402 = !DILocation(line: 2059, column: 10, scope: !4371, inlinedAt: !4400)
!4403 = !DILocation(line: 0, scope: !4302, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 76, column: 10, scope: !4386)
!4405 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4404)
!4406 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4404)
!4407 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4404)
!4408 = !DILocation(line: 76, column: 3, scope: !4386)
!4409 = distinct !DISubprogram(name: "xireallocarray", scope: !801, file: !801, line: 89, type: !4410, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4412)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!131, !131, !438, !438}
!4412 = !{!4413, !4414, !4415}
!4413 = !DILocalVariable(name: "p", arg: 1, scope: !4409, file: !801, line: 89, type: !131)
!4414 = !DILocalVariable(name: "n", arg: 2, scope: !4409, file: !801, line: 89, type: !438)
!4415 = !DILocalVariable(name: "s", arg: 3, scope: !4409, file: !801, line: 89, type: !438)
!4416 = !DILocation(line: 0, scope: !4409)
!4417 = !DILocalVariable(name: "p", arg: 1, scope: !4418, file: !1768, line: 98, type: !131)
!4418 = distinct !DISubprogram(name: "ireallocarray", scope: !1768, file: !1768, line: 98, type: !4410, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4419)
!4419 = !{!4417, !4420, !4421}
!4420 = !DILocalVariable(name: "n", arg: 2, scope: !4418, file: !1768, line: 98, type: !438)
!4421 = !DILocalVariable(name: "s", arg: 3, scope: !4418, file: !1768, line: 98, type: !438)
!4422 = !DILocation(line: 0, scope: !4418, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 91, column: 25, scope: !4409)
!4424 = !DILocation(line: 101, column: 13, scope: !4418, inlinedAt: !4423)
!4425 = !DILocation(line: 0, scope: !4302, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 91, column: 10, scope: !4409)
!4427 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4426)
!4428 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4426)
!4429 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4426)
!4430 = !DILocation(line: 91, column: 3, scope: !4409)
!4431 = distinct !DISubprogram(name: "xnmalloc", scope: !801, file: !801, line: 98, type: !4432, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!131, !133, !133}
!4434 = !{!4435, !4436}
!4435 = !DILocalVariable(name: "n", arg: 1, scope: !4431, file: !801, line: 98, type: !133)
!4436 = !DILocalVariable(name: "s", arg: 2, scope: !4431, file: !801, line: 98, type: !133)
!4437 = !DILocation(line: 0, scope: !4431)
!4438 = !DILocation(line: 0, scope: !4294, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 100, column: 10, scope: !4431)
!4440 = !DILocation(line: 85, column: 25, scope: !4294, inlinedAt: !4439)
!4441 = !DILocation(line: 0, scope: !4302, inlinedAt: !4442)
!4442 = distinct !DILocation(line: 85, column: 10, scope: !4294, inlinedAt: !4439)
!4443 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4442)
!4444 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4442)
!4445 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4442)
!4446 = !DILocation(line: 100, column: 3, scope: !4431)
!4447 = distinct !DISubprogram(name: "xinmalloc", scope: !801, file: !801, line: 104, type: !4448, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!131, !438, !438}
!4450 = !{!4451, !4452}
!4451 = !DILocalVariable(name: "n", arg: 1, scope: !4447, file: !801, line: 104, type: !438)
!4452 = !DILocalVariable(name: "s", arg: 2, scope: !4447, file: !801, line: 104, type: !438)
!4453 = !DILocation(line: 0, scope: !4447)
!4454 = !DILocation(line: 0, scope: !4409, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 106, column: 10, scope: !4447)
!4456 = !DILocation(line: 0, scope: !4418, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 91, column: 25, scope: !4409, inlinedAt: !4455)
!4458 = !DILocation(line: 101, column: 13, scope: !4418, inlinedAt: !4457)
!4459 = !DILocation(line: 0, scope: !4302, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 91, column: 10, scope: !4409, inlinedAt: !4455)
!4461 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4460)
!4462 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4460)
!4463 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4460)
!4464 = !DILocation(line: 106, column: 3, scope: !4447)
!4465 = distinct !DISubprogram(name: "x2realloc", scope: !801, file: !801, line: 116, type: !4466, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!131, !131, !807}
!4468 = !{!4469, !4470}
!4469 = !DILocalVariable(name: "p", arg: 1, scope: !4465, file: !801, line: 116, type: !131)
!4470 = !DILocalVariable(name: "ps", arg: 2, scope: !4465, file: !801, line: 116, type: !807)
!4471 = !DILocation(line: 0, scope: !4465)
!4472 = !DILocation(line: 0, scope: !804, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 118, column: 10, scope: !4465)
!4474 = !DILocation(line: 178, column: 14, scope: !804, inlinedAt: !4473)
!4475 = !DILocation(line: 180, column: 9, scope: !4476, inlinedAt: !4473)
!4476 = distinct !DILexicalBlock(scope: !804, file: !801, line: 180, column: 7)
!4477 = !DILocation(line: 180, column: 7, scope: !804, inlinedAt: !4473)
!4478 = !DILocation(line: 182, column: 13, scope: !4479, inlinedAt: !4473)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !801, line: 182, column: 11)
!4480 = distinct !DILexicalBlock(scope: !4476, file: !801, line: 181, column: 5)
!4481 = !DILocation(line: 182, column: 11, scope: !4480, inlinedAt: !4473)
!4482 = !DILocation(line: 197, column: 11, scope: !4483, inlinedAt: !4473)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !801, line: 197, column: 11)
!4484 = distinct !DILexicalBlock(scope: !4476, file: !801, line: 195, column: 5)
!4485 = !DILocation(line: 197, column: 11, scope: !4484, inlinedAt: !4473)
!4486 = !DILocation(line: 198, column: 9, scope: !4483, inlinedAt: !4473)
!4487 = !DILocation(line: 0, scope: !4294, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 201, column: 7, scope: !804, inlinedAt: !4473)
!4489 = !DILocation(line: 85, column: 25, scope: !4294, inlinedAt: !4488)
!4490 = !DILocation(line: 0, scope: !4302, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 85, column: 10, scope: !4294, inlinedAt: !4488)
!4492 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4491)
!4493 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4491)
!4494 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4491)
!4495 = !DILocation(line: 202, column: 7, scope: !804, inlinedAt: !4473)
!4496 = !DILocation(line: 118, column: 3, scope: !4465)
!4497 = !DILocation(line: 0, scope: !804)
!4498 = !DILocation(line: 178, column: 14, scope: !804)
!4499 = !DILocation(line: 180, column: 9, scope: !4476)
!4500 = !DILocation(line: 180, column: 7, scope: !804)
!4501 = !DILocation(line: 182, column: 13, scope: !4479)
!4502 = !DILocation(line: 182, column: 11, scope: !4480)
!4503 = !DILocation(line: 190, column: 30, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4479, file: !801, line: 183, column: 9)
!4505 = !DILocation(line: 191, column: 16, scope: !4504)
!4506 = !DILocation(line: 191, column: 13, scope: !4504)
!4507 = !DILocation(line: 192, column: 9, scope: !4504)
!4508 = !DILocation(line: 197, column: 11, scope: !4483)
!4509 = !DILocation(line: 197, column: 11, scope: !4484)
!4510 = !DILocation(line: 198, column: 9, scope: !4483)
!4511 = !DILocation(line: 0, scope: !4294, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 201, column: 7, scope: !804)
!4513 = !DILocation(line: 85, column: 25, scope: !4294, inlinedAt: !4512)
!4514 = !DILocation(line: 0, scope: !4302, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 85, column: 10, scope: !4294, inlinedAt: !4512)
!4516 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4515)
!4517 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4515)
!4518 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4515)
!4519 = !DILocation(line: 202, column: 7, scope: !804)
!4520 = !DILocation(line: 203, column: 3, scope: !804)
!4521 = !DILocation(line: 0, scope: !816)
!4522 = !DILocation(line: 230, column: 14, scope: !816)
!4523 = !DILocation(line: 238, column: 7, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !816, file: !801, line: 238, column: 7)
!4525 = !DILocation(line: 238, column: 7, scope: !816)
!4526 = !DILocation(line: 240, column: 9, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !816, file: !801, line: 240, column: 7)
!4528 = !DILocation(line: 240, column: 18, scope: !4527)
!4529 = !DILocation(line: 253, column: 8, scope: !816)
!4530 = !DILocation(line: 258, column: 27, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !801, line: 257, column: 5)
!4532 = distinct !DILexicalBlock(scope: !816, file: !801, line: 256, column: 7)
!4533 = !DILocation(line: 259, column: 32, scope: !4531)
!4534 = !DILocation(line: 260, column: 5, scope: !4531)
!4535 = !DILocation(line: 262, column: 9, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !816, file: !801, line: 262, column: 7)
!4537 = !DILocation(line: 262, column: 7, scope: !816)
!4538 = !DILocation(line: 263, column: 9, scope: !4536)
!4539 = !DILocation(line: 263, column: 5, scope: !4536)
!4540 = !DILocation(line: 264, column: 9, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !816, file: !801, line: 264, column: 7)
!4542 = !DILocation(line: 264, column: 14, scope: !4541)
!4543 = !DILocation(line: 265, column: 7, scope: !4541)
!4544 = !DILocation(line: 265, column: 11, scope: !4541)
!4545 = !DILocation(line: 266, column: 11, scope: !4541)
!4546 = !DILocation(line: 267, column: 14, scope: !4541)
!4547 = !DILocation(line: 264, column: 7, scope: !816)
!4548 = !DILocation(line: 268, column: 5, scope: !4541)
!4549 = !DILocation(line: 0, scope: !4363, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 269, column: 8, scope: !816)
!4551 = !DILocation(line: 0, scope: !4371, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 70, column: 25, scope: !4363, inlinedAt: !4550)
!4553 = !DILocation(line: 2059, column: 24, scope: !4371, inlinedAt: !4552)
!4554 = !DILocation(line: 2059, column: 10, scope: !4371, inlinedAt: !4552)
!4555 = !DILocation(line: 0, scope: !4302, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 70, column: 10, scope: !4363, inlinedAt: !4550)
!4557 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4556)
!4558 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4556)
!4559 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4556)
!4560 = !DILocation(line: 270, column: 7, scope: !816)
!4561 = !DILocation(line: 271, column: 3, scope: !816)
!4562 = distinct !DISubprogram(name: "xzalloc", scope: !801, file: !801, line: 279, type: !1783, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4563)
!4563 = !{!4564}
!4564 = !DILocalVariable(name: "s", arg: 1, scope: !4562, file: !801, line: 279, type: !133)
!4565 = !DILocation(line: 0, scope: !4562)
!4566 = !DILocalVariable(name: "n", arg: 1, scope: !4567, file: !801, line: 294, type: !133)
!4567 = distinct !DISubprogram(name: "xcalloc", scope: !801, file: !801, line: 294, type: !4432, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4568)
!4568 = !{!4566, !4569}
!4569 = !DILocalVariable(name: "s", arg: 2, scope: !4567, file: !801, line: 294, type: !133)
!4570 = !DILocation(line: 0, scope: !4567, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 281, column: 10, scope: !4562)
!4572 = !DILocation(line: 296, column: 25, scope: !4567, inlinedAt: !4571)
!4573 = !DILocation(line: 0, scope: !4302, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 296, column: 10, scope: !4567, inlinedAt: !4571)
!4575 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4574)
!4576 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4574)
!4577 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4574)
!4578 = !DILocation(line: 281, column: 3, scope: !4562)
!4579 = !DISubprogram(name: "calloc", scope: !1062, file: !1062, line: 543, type: !4432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!4580 = !DILocation(line: 0, scope: !4567)
!4581 = !DILocation(line: 296, column: 25, scope: !4567)
!4582 = !DILocation(line: 0, scope: !4302, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 296, column: 10, scope: !4567)
!4584 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4583)
!4585 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4583)
!4586 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4583)
!4587 = !DILocation(line: 296, column: 3, scope: !4567)
!4588 = distinct !DISubprogram(name: "xizalloc", scope: !801, file: !801, line: 285, type: !1769, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4589)
!4589 = !{!4590}
!4590 = !DILocalVariable(name: "s", arg: 1, scope: !4588, file: !801, line: 285, type: !438)
!4591 = !DILocation(line: 0, scope: !4588)
!4592 = !DILocalVariable(name: "n", arg: 1, scope: !4593, file: !801, line: 300, type: !438)
!4593 = distinct !DISubprogram(name: "xicalloc", scope: !801, file: !801, line: 300, type: !4448, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4594)
!4594 = !{!4592, !4595}
!4595 = !DILocalVariable(name: "s", arg: 2, scope: !4593, file: !801, line: 300, type: !438)
!4596 = !DILocation(line: 0, scope: !4593, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 287, column: 10, scope: !4588)
!4598 = !DILocalVariable(name: "n", arg: 1, scope: !4599, file: !1768, line: 77, type: !438)
!4599 = distinct !DISubprogram(name: "icalloc", scope: !1768, file: !1768, line: 77, type: !4448, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4600)
!4600 = !{!4598, !4601}
!4601 = !DILocalVariable(name: "s", arg: 2, scope: !4599, file: !1768, line: 77, type: !438)
!4602 = !DILocation(line: 0, scope: !4599, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 302, column: 25, scope: !4593, inlinedAt: !4597)
!4604 = !DILocation(line: 91, column: 10, scope: !4599, inlinedAt: !4603)
!4605 = !DILocation(line: 0, scope: !4302, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 302, column: 10, scope: !4593, inlinedAt: !4597)
!4607 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4606)
!4608 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4606)
!4609 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4606)
!4610 = !DILocation(line: 287, column: 3, scope: !4588)
!4611 = !DILocation(line: 0, scope: !4593)
!4612 = !DILocation(line: 0, scope: !4599, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 302, column: 25, scope: !4593)
!4614 = !DILocation(line: 91, column: 10, scope: !4599, inlinedAt: !4613)
!4615 = !DILocation(line: 0, scope: !4302, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 302, column: 10, scope: !4593)
!4617 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4616)
!4618 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4616)
!4619 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4616)
!4620 = !DILocation(line: 302, column: 3, scope: !4593)
!4621 = distinct !DISubprogram(name: "xmemdup", scope: !801, file: !801, line: 310, type: !4622, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!131, !1086, !133}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "p", arg: 1, scope: !4621, file: !801, line: 310, type: !1086)
!4626 = !DILocalVariable(name: "s", arg: 2, scope: !4621, file: !801, line: 310, type: !133)
!4627 = !DILocation(line: 0, scope: !4621)
!4628 = !DILocation(line: 0, scope: !4321, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 312, column: 18, scope: !4621)
!4630 = !DILocation(line: 49, column: 25, scope: !4321, inlinedAt: !4629)
!4631 = !DILocation(line: 0, scope: !4302, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 49, column: 10, scope: !4321, inlinedAt: !4629)
!4633 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4632)
!4634 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4632)
!4635 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4632)
!4636 = !DILocalVariable(name: "__dest", arg: 1, scope: !4637, file: !1273, line: 26, type: !4640)
!4637 = distinct !DISubprogram(name: "memcpy", scope: !1273, file: !1273, line: 26, type: !4638, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4641)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!131, !4640, !1085, !133}
!4640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4641 = !{!4636, !4642, !4643}
!4642 = !DILocalVariable(name: "__src", arg: 2, scope: !4637, file: !1273, line: 26, type: !1085)
!4643 = !DILocalVariable(name: "__len", arg: 3, scope: !4637, file: !1273, line: 26, type: !133)
!4644 = !DILocation(line: 0, scope: !4637, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 312, column: 10, scope: !4621)
!4646 = !DILocation(line: 29, column: 10, scope: !4637, inlinedAt: !4645)
!4647 = !DILocation(line: 312, column: 3, scope: !4621)
!4648 = distinct !DISubprogram(name: "ximemdup", scope: !801, file: !801, line: 316, type: !4649, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!131, !1086, !438}
!4651 = !{!4652, !4653}
!4652 = !DILocalVariable(name: "p", arg: 1, scope: !4648, file: !801, line: 316, type: !1086)
!4653 = !DILocalVariable(name: "s", arg: 2, scope: !4648, file: !801, line: 316, type: !438)
!4654 = !DILocation(line: 0, scope: !4648)
!4655 = !DILocation(line: 0, scope: !4332, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 318, column: 18, scope: !4648)
!4657 = !DILocation(line: 0, scope: !4337, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 55, column: 25, scope: !4332, inlinedAt: !4656)
!4659 = !DILocation(line: 57, column: 26, scope: !4337, inlinedAt: !4658)
!4660 = !DILocation(line: 0, scope: !4302, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 55, column: 10, scope: !4332, inlinedAt: !4656)
!4662 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4661)
!4663 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4661)
!4664 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4661)
!4665 = !DILocation(line: 0, scope: !4637, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 318, column: 10, scope: !4648)
!4667 = !DILocation(line: 29, column: 10, scope: !4637, inlinedAt: !4666)
!4668 = !DILocation(line: 318, column: 3, scope: !4648)
!4669 = distinct !DISubprogram(name: "ximemdup0", scope: !801, file: !801, line: 325, type: !4670, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!130, !1086, !438}
!4672 = !{!4673, !4674, !4675}
!4673 = !DILocalVariable(name: "p", arg: 1, scope: !4669, file: !801, line: 325, type: !1086)
!4674 = !DILocalVariable(name: "s", arg: 2, scope: !4669, file: !801, line: 325, type: !438)
!4675 = !DILocalVariable(name: "result", scope: !4669, file: !801, line: 327, type: !130)
!4676 = !DILocation(line: 0, scope: !4669)
!4677 = !DILocation(line: 327, column: 30, scope: !4669)
!4678 = !DILocation(line: 0, scope: !4332, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 327, column: 18, scope: !4669)
!4680 = !DILocation(line: 0, scope: !4337, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 55, column: 25, scope: !4332, inlinedAt: !4679)
!4682 = !DILocation(line: 57, column: 26, scope: !4337, inlinedAt: !4681)
!4683 = !DILocation(line: 0, scope: !4302, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 55, column: 10, scope: !4332, inlinedAt: !4679)
!4685 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4684)
!4686 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4684)
!4687 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4684)
!4688 = !DILocation(line: 328, column: 3, scope: !4669)
!4689 = !DILocation(line: 328, column: 13, scope: !4669)
!4690 = !DILocation(line: 0, scope: !4637, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 329, column: 10, scope: !4669)
!4692 = !DILocation(line: 29, column: 10, scope: !4637, inlinedAt: !4691)
!4693 = !DILocation(line: 329, column: 3, scope: !4669)
!4694 = distinct !DISubprogram(name: "xstrdup", scope: !801, file: !801, line: 335, type: !1064, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4695)
!4695 = !{!4696}
!4696 = !DILocalVariable(name: "string", arg: 1, scope: !4694, file: !801, line: 335, type: !136)
!4697 = !DILocation(line: 0, scope: !4694)
!4698 = !DILocation(line: 337, column: 27, scope: !4694)
!4699 = !DILocation(line: 337, column: 43, scope: !4694)
!4700 = !DILocation(line: 0, scope: !4621, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 337, column: 10, scope: !4694)
!4702 = !DILocation(line: 0, scope: !4321, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 312, column: 18, scope: !4621, inlinedAt: !4701)
!4704 = !DILocation(line: 49, column: 25, scope: !4321, inlinedAt: !4703)
!4705 = !DILocation(line: 0, scope: !4302, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 49, column: 10, scope: !4321, inlinedAt: !4703)
!4707 = !DILocation(line: 39, column: 8, scope: !4309, inlinedAt: !4706)
!4708 = !DILocation(line: 39, column: 7, scope: !4302, inlinedAt: !4706)
!4709 = !DILocation(line: 40, column: 5, scope: !4309, inlinedAt: !4706)
!4710 = !DILocation(line: 0, scope: !4637, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 312, column: 10, scope: !4621, inlinedAt: !4701)
!4712 = !DILocation(line: 29, column: 10, scope: !4637, inlinedAt: !4711)
!4713 = !DILocation(line: 337, column: 3, scope: !4694)
!4714 = distinct !DISubprogram(name: "xalloc_die", scope: !752, file: !752, line: 32, type: !522, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4715)
!4715 = !{!4716}
!4716 = !DILocalVariable(name: "__errstatus", scope: !4717, file: !752, line: 34, type: !4718)
!4717 = distinct !DILexicalBlock(scope: !4714, file: !752, line: 34, column: 3)
!4718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4719 = !DILocation(line: 34, column: 3, scope: !4717)
!4720 = !DILocation(line: 0, scope: !4717)
!4721 = !DILocation(line: 40, column: 3, scope: !4714)
!4722 = distinct !DISubprogram(name: "xstrtoimax", scope: !4723, file: !4723, line: 71, type: !4724, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4727)
!4723 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!1105, !136, !1091, !87, !4726, !136}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!4727 = !{!4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4740, !4741}
!4728 = !DILocalVariable(name: "nptr", arg: 1, scope: !4722, file: !4723, line: 71, type: !136)
!4729 = !DILocalVariable(name: "endptr", arg: 2, scope: !4722, file: !4723, line: 71, type: !1091)
!4730 = !DILocalVariable(name: "base", arg: 3, scope: !4722, file: !4723, line: 71, type: !87)
!4731 = !DILocalVariable(name: "val", arg: 4, scope: !4722, file: !4723, line: 72, type: !4726)
!4732 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4722, file: !4723, line: 72, type: !136)
!4733 = !DILocalVariable(name: "t_ptr", scope: !4722, file: !4723, line: 74, type: !130)
!4734 = !DILocalVariable(name: "p", scope: !4722, file: !4723, line: 75, type: !1091)
!4735 = !DILocalVariable(name: "tmp", scope: !4722, file: !4723, line: 91, type: !837)
!4736 = !DILocalVariable(name: "err", scope: !4722, file: !4723, line: 92, type: !1105)
!4737 = !DILocalVariable(name: "xbase", scope: !4738, file: !4723, line: 126, type: !87)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !4723, line: 119, column: 5)
!4739 = distinct !DILexicalBlock(scope: !4722, file: !4723, line: 118, column: 7)
!4740 = !DILocalVariable(name: "suffixes", scope: !4738, file: !4723, line: 127, type: !87)
!4741 = !DILocalVariable(name: "overflow", scope: !4738, file: !4723, line: 156, type: !1105)
!4742 = !DILocation(line: 0, scope: !4722)
!4743 = !DILocation(line: 74, column: 3, scope: !4722)
!4744 = !DILocation(line: 75, column: 14, scope: !4722)
!4745 = !DILocation(line: 90, column: 3, scope: !4722)
!4746 = !DILocation(line: 90, column: 9, scope: !4722)
!4747 = !DILocation(line: 91, column: 20, scope: !4722)
!4748 = !DILocation(line: 94, column: 7, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4722, file: !4723, line: 94, column: 7)
!4750 = !DILocation(line: 94, column: 10, scope: !4749)
!4751 = !DILocation(line: 94, column: 7, scope: !4722)
!4752 = !DILocation(line: 98, column: 14, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !4723, line: 98, column: 11)
!4754 = distinct !DILexicalBlock(scope: !4749, file: !4723, line: 95, column: 5)
!4755 = !DILocation(line: 98, column: 29, scope: !4753)
!4756 = !DILocation(line: 98, column: 32, scope: !4753)
!4757 = !DILocation(line: 98, column: 38, scope: !4753)
!4758 = !DILocation(line: 98, column: 41, scope: !4753)
!4759 = !DILocation(line: 98, column: 11, scope: !4754)
!4760 = !DILocation(line: 102, column: 12, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4749, file: !4723, line: 102, column: 12)
!4762 = !DILocation(line: 102, column: 12, scope: !4749)
!4763 = !DILocation(line: 107, column: 5, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !4723, line: 103, column: 5)
!4765 = !DILocation(line: 112, column: 8, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4722, file: !4723, line: 112, column: 7)
!4767 = !DILocation(line: 112, column: 7, scope: !4722)
!4768 = !DILocation(line: 114, column: 12, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !4723, line: 113, column: 5)
!4770 = !DILocation(line: 115, column: 7, scope: !4769)
!4771 = !DILocation(line: 118, column: 7, scope: !4739)
!4772 = !DILocation(line: 118, column: 11, scope: !4739)
!4773 = !DILocation(line: 118, column: 7, scope: !4722)
!4774 = !DILocation(line: 120, column: 12, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4738, file: !4723, line: 120, column: 11)
!4776 = !DILocation(line: 120, column: 11, scope: !4738)
!4777 = !DILocation(line: 122, column: 16, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !4723, line: 121, column: 9)
!4779 = !DILocation(line: 123, column: 22, scope: !4778)
!4780 = !DILocation(line: 123, column: 11, scope: !4778)
!4781 = !DILocation(line: 0, scope: !4738)
!4782 = !DILocation(line: 128, column: 7, scope: !4738)
!4783 = !DILocation(line: 140, column: 15, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !4723, line: 140, column: 15)
!4785 = distinct !DILexicalBlock(scope: !4738, file: !4723, line: 129, column: 9)
!4786 = !DILocation(line: 140, column: 15, scope: !4785)
!4787 = !DILocation(line: 141, column: 21, scope: !4784)
!4788 = !DILocation(line: 141, column: 13, scope: !4784)
!4789 = !DILocation(line: 144, column: 21, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !4723, line: 144, column: 21)
!4791 = distinct !DILexicalBlock(scope: !4784, file: !4723, line: 142, column: 15)
!4792 = !DILocation(line: 144, column: 29, scope: !4790)
!4793 = !DILocation(line: 144, column: 21, scope: !4791)
!4794 = !DILocation(line: 152, column: 17, scope: !4791)
!4795 = !DILocation(line: 157, column: 7, scope: !4738)
!4796 = !DILocalVariable(name: "err", scope: !4797, file: !4723, line: 64, type: !1105)
!4797 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4723, file: !4723, line: 62, type: !4798, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4800)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!1105, !4726, !87, !87}
!4800 = !{!4801, !4802, !4803, !4796}
!4801 = !DILocalVariable(name: "x", arg: 1, scope: !4797, file: !4723, line: 62, type: !4726)
!4802 = !DILocalVariable(name: "base", arg: 2, scope: !4797, file: !4723, line: 62, type: !87)
!4803 = !DILocalVariable(name: "power", arg: 3, scope: !4797, file: !4723, line: 62, type: !87)
!4804 = !DILocation(line: 0, scope: !4797, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 219, column: 22, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4738, file: !4723, line: 158, column: 9)
!4807 = !DILocalVariable(name: "x", arg: 1, scope: !4808, file: !4723, line: 47, type: !4726)
!4808 = distinct !DISubprogram(name: "bkm_scale", scope: !4723, file: !4723, line: 47, type: !4809, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4811)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!1105, !4726, !87}
!4811 = !{!4807, !4812, !4813}
!4812 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4808, file: !4723, line: 47, type: !87)
!4813 = !DILocalVariable(name: "scaled", scope: !4808, file: !4723, line: 49, type: !837)
!4814 = !DILocation(line: 0, scope: !4808, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4805)
!4816 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4815)
!4817 = distinct !DILexicalBlock(scope: !4808, file: !4723, line: 50, column: 7)
!4818 = !DILocation(line: 0, scope: !4797, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 215, column: 22, scope: !4806)
!4820 = !DILocation(line: 0, scope: !4808, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4819)
!4822 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4821)
!4823 = !DILocation(line: 0, scope: !4797, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 202, column: 22, scope: !4806)
!4825 = !DILocation(line: 0, scope: !4808, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4824)
!4827 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4826)
!4828 = !DILocation(line: 0, scope: !4797, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 198, column: 22, scope: !4806)
!4830 = !DILocation(line: 0, scope: !4808, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4829)
!4832 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4831)
!4833 = !DILocation(line: 0, scope: !4797, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 194, column: 22, scope: !4806)
!4835 = !DILocation(line: 0, scope: !4808, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4834)
!4837 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4836)
!4838 = !DILocation(line: 0, scope: !4797, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 175, column: 22, scope: !4806)
!4840 = !DILocation(line: 0, scope: !4808, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4839)
!4842 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4841)
!4843 = !DILocation(line: 0, scope: !4808, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 160, column: 22, scope: !4806)
!4845 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4844)
!4846 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4844)
!4847 = !DILocation(line: 0, scope: !4808, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 167, column: 22, scope: !4806)
!4849 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4848)
!4850 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4848)
!4851 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4841)
!4852 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4839)
!4853 = !DILocation(line: 227, column: 11, scope: !4738)
!4854 = !DILocation(line: 0, scope: !4797, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 180, column: 22, scope: !4806)
!4856 = !DILocation(line: 0, scope: !4808, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4855)
!4858 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4857)
!4859 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4857)
!4860 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4855)
!4861 = !DILocation(line: 0, scope: !4797, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 185, column: 22, scope: !4806)
!4863 = !DILocation(line: 0, scope: !4808, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4862)
!4865 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4864)
!4866 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4864)
!4867 = !DILocation(line: 0, scope: !4797, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 190, column: 22, scope: !4806)
!4869 = !DILocation(line: 0, scope: !4808, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4868)
!4871 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4870)
!4872 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4870)
!4873 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4868)
!4874 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4836)
!4875 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4834)
!4876 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4831)
!4877 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4829)
!4878 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4826)
!4879 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4824)
!4880 = !DILocation(line: 0, scope: !4797, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 207, column: 22, scope: !4806)
!4882 = !DILocation(line: 0, scope: !4808, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 66, column: 12, scope: !4797, inlinedAt: !4881)
!4884 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4883)
!4885 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4883)
!4886 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4881)
!4887 = !DILocation(line: 0, scope: !4808, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 211, column: 22, scope: !4806)
!4889 = !DILocation(line: 50, column: 7, scope: !4817, inlinedAt: !4888)
!4890 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4888)
!4891 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4821)
!4892 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4819)
!4893 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4815)
!4894 = !DILocation(line: 66, column: 9, scope: !4797, inlinedAt: !4805)
!4895 = !DILocation(line: 0, scope: !4806)
!4896 = !DILocation(line: 228, column: 10, scope: !4738)
!4897 = !DILocation(line: 229, column: 11, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4738, file: !4723, line: 229, column: 11)
!4899 = !DILocation(line: 229, column: 11, scope: !4738)
!4900 = !DILocation(line: 223, column: 16, scope: !4806)
!4901 = !DILocation(line: 224, column: 22, scope: !4806)
!4902 = !DILocation(line: 100, column: 11, scope: !4754)
!4903 = !DILocation(line: 92, column: 16, scope: !4722)
!4904 = !DILocation(line: 233, column: 8, scope: !4722)
!4905 = !DILocation(line: 234, column: 3, scope: !4722)
!4906 = !DILocation(line: 235, column: 1, scope: !4722)
!4907 = !DISubprogram(name: "strtoimax", scope: !4908, file: !4908, line: 297, type: !4909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!4908 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!837, !437, !4911, !87}
!4911 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1091)
!4912 = distinct !DISubprogram(name: "rpl_fopen", scope: !841, file: !841, line: 46, type: !4913, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !4949)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!4915, !136, !136}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4917)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4918)
!4918 = !{!4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4917, file: !213, line: 51, baseType: !87, size: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4917, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4917, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4917, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4917, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4917, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4917, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4917, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4917, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4917, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4917, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4917, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4917, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4917, file: !213, line: 70, baseType: !4933, size: 64, offset: 832)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4917, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4917, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4917, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4917, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4917, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4917, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4917, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4917, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4917, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4917, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4917, file: !213, line: 93, baseType: !4933, size: 64, offset: 1344)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4917, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4917, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4917, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4917, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4949 = !{!4950, !4951, !4952, !4953, !4954, !4955, !4959, !4961, !4962, !4967, !4970, !4971}
!4950 = !DILocalVariable(name: "filename", arg: 1, scope: !4912, file: !841, line: 46, type: !136)
!4951 = !DILocalVariable(name: "mode", arg: 2, scope: !4912, file: !841, line: 46, type: !136)
!4952 = !DILocalVariable(name: "open_direction", scope: !4912, file: !841, line: 54, type: !87)
!4953 = !DILocalVariable(name: "open_flags", scope: !4912, file: !841, line: 55, type: !87)
!4954 = !DILocalVariable(name: "open_flags_gnu", scope: !4912, file: !841, line: 57, type: !196)
!4955 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4912, file: !841, line: 59, type: !4956)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4957)
!4957 = !{!4958}
!4958 = !DISubrange(count: 81)
!4959 = !DILocalVariable(name: "p", scope: !4960, file: !841, line: 62, type: !136)
!4960 = distinct !DILexicalBlock(scope: !4912, file: !841, line: 61, column: 3)
!4961 = !DILocalVariable(name: "q", scope: !4960, file: !841, line: 64, type: !130)
!4962 = !DILocalVariable(name: "len", scope: !4963, file: !841, line: 128, type: !133)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !841, line: 127, column: 9)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !841, line: 68, column: 7)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !841, line: 67, column: 5)
!4966 = distinct !DILexicalBlock(scope: !4960, file: !841, line: 67, column: 5)
!4967 = !DILocalVariable(name: "fd", scope: !4968, file: !841, line: 199, type: !87)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !841, line: 198, column: 5)
!4969 = distinct !DILexicalBlock(scope: !4912, file: !841, line: 197, column: 7)
!4970 = !DILocalVariable(name: "fp", scope: !4968, file: !841, line: 204, type: !4915)
!4971 = !DILocalVariable(name: "saved_errno", scope: !4972, file: !841, line: 207, type: !87)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !841, line: 206, column: 9)
!4973 = distinct !DILexicalBlock(scope: !4968, file: !841, line: 205, column: 11)
!4974 = !DILocation(line: 0, scope: !4912)
!4975 = !DILocation(line: 59, column: 3, scope: !4912)
!4976 = !DILocation(line: 59, column: 8, scope: !4912)
!4977 = !DILocation(line: 0, scope: !4960)
!4978 = !DILocation(line: 67, column: 5, scope: !4960)
!4979 = !DILocation(line: 54, column: 7, scope: !4912)
!4980 = !DILocation(line: 67, column: 12, scope: !4965)
!4981 = !DILocation(line: 67, column: 5, scope: !4966)
!4982 = !DILocation(line: 74, column: 19, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !841, line: 74, column: 17)
!4984 = distinct !DILexicalBlock(scope: !4964, file: !841, line: 70, column: 11)
!4985 = !DILocation(line: 74, column: 17, scope: !4984)
!4986 = !DILocation(line: 75, column: 17, scope: !4983)
!4987 = !DILocation(line: 75, column: 20, scope: !4983)
!4988 = !DILocation(line: 75, column: 15, scope: !4983)
!4989 = !DILocation(line: 80, column: 24, scope: !4984)
!4990 = !DILocation(line: 82, column: 19, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4984, file: !841, line: 82, column: 17)
!4992 = !DILocation(line: 82, column: 17, scope: !4984)
!4993 = !DILocation(line: 83, column: 17, scope: !4991)
!4994 = !DILocation(line: 83, column: 20, scope: !4991)
!4995 = !DILocation(line: 83, column: 15, scope: !4991)
!4996 = !DILocation(line: 88, column: 24, scope: !4984)
!4997 = !DILocation(line: 90, column: 19, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4984, file: !841, line: 90, column: 17)
!4999 = !DILocation(line: 90, column: 17, scope: !4984)
!5000 = !DILocation(line: 91, column: 17, scope: !4998)
!5001 = !DILocation(line: 91, column: 20, scope: !4998)
!5002 = !DILocation(line: 91, column: 15, scope: !4998)
!5003 = !DILocation(line: 100, column: 19, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4984, file: !841, line: 100, column: 17)
!5005 = !DILocation(line: 100, column: 17, scope: !4984)
!5006 = !DILocation(line: 101, column: 17, scope: !5004)
!5007 = !DILocation(line: 101, column: 20, scope: !5004)
!5008 = !DILocation(line: 101, column: 15, scope: !5004)
!5009 = !DILocation(line: 107, column: 19, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4984, file: !841, line: 107, column: 17)
!5011 = !DILocation(line: 107, column: 17, scope: !4984)
!5012 = !DILocation(line: 108, column: 17, scope: !5010)
!5013 = !DILocation(line: 108, column: 20, scope: !5010)
!5014 = !DILocation(line: 108, column: 15, scope: !5010)
!5015 = !DILocation(line: 113, column: 24, scope: !4984)
!5016 = !DILocation(line: 115, column: 13, scope: !4984)
!5017 = !DILocation(line: 117, column: 24, scope: !4984)
!5018 = !DILocation(line: 119, column: 13, scope: !4984)
!5019 = !DILocation(line: 128, column: 24, scope: !4963)
!5020 = !DILocation(line: 0, scope: !4963)
!5021 = !DILocation(line: 129, column: 48, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4963, file: !841, line: 129, column: 15)
!5023 = !DILocation(line: 129, column: 15, scope: !4963)
!5024 = !DILocalVariable(name: "__dest", arg: 1, scope: !5025, file: !1273, line: 26, type: !4640)
!5025 = distinct !DISubprogram(name: "memcpy", scope: !1273, file: !1273, line: 26, type: !4638, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5026)
!5026 = !{!5024, !5027, !5028}
!5027 = !DILocalVariable(name: "__src", arg: 2, scope: !5025, file: !1273, line: 26, type: !1085)
!5028 = !DILocalVariable(name: "__len", arg: 3, scope: !5025, file: !1273, line: 26, type: !133)
!5029 = !DILocation(line: 0, scope: !5025, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 131, column: 11, scope: !4963)
!5031 = !DILocation(line: 29, column: 10, scope: !5025, inlinedAt: !5030)
!5032 = !DILocation(line: 132, column: 13, scope: !4963)
!5033 = !DILocation(line: 135, column: 9, scope: !4964)
!5034 = !DILocation(line: 67, column: 25, scope: !4965)
!5035 = !DILocation(line: 67, column: 5, scope: !4965)
!5036 = distinct !{!5036, !4981, !5037, !988}
!5037 = !DILocation(line: 136, column: 7, scope: !4966)
!5038 = !DILocation(line: 138, column: 8, scope: !4960)
!5039 = !DILocation(line: 197, column: 7, scope: !4912)
!5040 = !DILocation(line: 199, column: 47, scope: !4968)
!5041 = !DILocation(line: 199, column: 16, scope: !4968)
!5042 = !DILocation(line: 0, scope: !4968)
!5043 = !DILocation(line: 201, column: 14, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4968, file: !841, line: 201, column: 11)
!5045 = !DILocation(line: 201, column: 11, scope: !4968)
!5046 = !DILocation(line: 204, column: 18, scope: !4968)
!5047 = !DILocation(line: 205, column: 14, scope: !4973)
!5048 = !DILocation(line: 205, column: 11, scope: !4968)
!5049 = !DILocation(line: 207, column: 29, scope: !4972)
!5050 = !DILocation(line: 0, scope: !4972)
!5051 = !DILocation(line: 208, column: 11, scope: !4972)
!5052 = !DILocation(line: 209, column: 17, scope: !4972)
!5053 = !DILocation(line: 210, column: 9, scope: !4972)
!5054 = !DILocalVariable(name: "filename", arg: 1, scope: !5055, file: !841, line: 30, type: !136)
!5055 = distinct !DISubprogram(name: "orig_fopen", scope: !841, file: !841, line: 30, type: !4913, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5056)
!5056 = !{!5054, !5057}
!5057 = !DILocalVariable(name: "mode", arg: 2, scope: !5055, file: !841, line: 30, type: !136)
!5058 = !DILocation(line: 0, scope: !5055, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 219, column: 10, scope: !4912)
!5060 = !DILocation(line: 32, column: 10, scope: !5055, inlinedAt: !5059)
!5061 = !DILocation(line: 219, column: 3, scope: !4912)
!5062 = !DILocation(line: 220, column: 1, scope: !4912)
!5063 = !DISubprogram(name: "open", scope: !2365, file: !2365, line: 181, type: !5064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!87, !136, !87, null}
!5066 = !DISubprogram(name: "fdopen", scope: !481, file: !481, line: 293, type: !5067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!4915, !87, !136}
!5069 = !DISubprogram(name: "close", scope: !2221, file: !2221, line: 358, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!5070 = !DISubprogram(name: "fopen", scope: !481, file: !481, line: 258, type: !5071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!4915, !437, !437}
!5073 = distinct !DISubprogram(name: "close_stream", scope: !843, file: !843, line: 55, type: !5074, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5110)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!87, !5076}
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !5078)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5079)
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5078, file: !213, line: 51, baseType: !87, size: 32)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5078, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5078, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5078, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5078, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5078, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5078, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5078, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5078, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5078, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5078, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5078, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5078, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5078, file: !213, line: 70, baseType: !5094, size: 64, offset: 832)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5078, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5078, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5078, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5078, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5078, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5078, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5078, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5078, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5078, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5078, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5078, file: !213, line: 93, baseType: !5094, size: 64, offset: 1344)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5078, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5078, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5078, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5078, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5110 = !{!5111, !5112, !5114, !5115}
!5111 = !DILocalVariable(name: "stream", arg: 1, scope: !5073, file: !843, line: 55, type: !5076)
!5112 = !DILocalVariable(name: "some_pending", scope: !5073, file: !843, line: 57, type: !5113)
!5113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5114 = !DILocalVariable(name: "prev_fail", scope: !5073, file: !843, line: 58, type: !5113)
!5115 = !DILocalVariable(name: "fclose_fail", scope: !5073, file: !843, line: 59, type: !5113)
!5116 = !DILocation(line: 0, scope: !5073)
!5117 = !DILocation(line: 57, column: 30, scope: !5073)
!5118 = !DILocalVariable(name: "__stream", arg: 1, scope: !5119, file: !1290, line: 135, type: !5076)
!5119 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1290, file: !1290, line: 135, type: !5074, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5120)
!5120 = !{!5118}
!5121 = !DILocation(line: 0, scope: !5119, inlinedAt: !5122)
!5122 = distinct !DILocation(line: 58, column: 27, scope: !5073)
!5123 = !DILocation(line: 137, column: 10, scope: !5119, inlinedAt: !5122)
!5124 = !DILocation(line: 58, column: 43, scope: !5073)
!5125 = !DILocation(line: 59, column: 29, scope: !5073)
!5126 = !DILocation(line: 59, column: 45, scope: !5073)
!5127 = !DILocation(line: 69, column: 17, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5073, file: !843, line: 69, column: 7)
!5129 = !DILocation(line: 57, column: 50, scope: !5073)
!5130 = !DILocation(line: 69, column: 33, scope: !5128)
!5131 = !DILocation(line: 69, column: 53, scope: !5128)
!5132 = !DILocation(line: 69, column: 59, scope: !5128)
!5133 = !DILocation(line: 69, column: 7, scope: !5073)
!5134 = !DILocation(line: 71, column: 11, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5128, file: !843, line: 70, column: 5)
!5136 = !DILocation(line: 72, column: 9, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5135, file: !843, line: 71, column: 11)
!5138 = !DILocation(line: 72, column: 15, scope: !5137)
!5139 = !DILocation(line: 77, column: 1, scope: !5073)
!5140 = !DISubprogram(name: "__fpending", scope: !2569, file: !2569, line: 75, type: !5141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!133, !5076}
!5143 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !759, file: !759, line: 100, type: !5144, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !5147)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!133, !2834, !136, !133, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!5147 = !{!5148, !5149, !5150, !5151, !5152}
!5148 = !DILocalVariable(name: "pwc", arg: 1, scope: !5143, file: !759, line: 100, type: !2834)
!5149 = !DILocalVariable(name: "s", arg: 2, scope: !5143, file: !759, line: 100, type: !136)
!5150 = !DILocalVariable(name: "n", arg: 3, scope: !5143, file: !759, line: 100, type: !133)
!5151 = !DILocalVariable(name: "ps", arg: 4, scope: !5143, file: !759, line: 100, type: !5146)
!5152 = !DILocalVariable(name: "ret", scope: !5143, file: !759, line: 130, type: !133)
!5153 = !DILocation(line: 0, scope: !5143)
!5154 = !DILocation(line: 105, column: 9, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5143, file: !759, line: 105, column: 7)
!5156 = !DILocation(line: 105, column: 7, scope: !5143)
!5157 = !DILocation(line: 117, column: 10, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5143, file: !759, line: 117, column: 7)
!5159 = !DILocation(line: 117, column: 7, scope: !5143)
!5160 = !DILocation(line: 130, column: 16, scope: !5143)
!5161 = !DILocation(line: 135, column: 11, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5143, file: !759, line: 135, column: 7)
!5163 = !DILocation(line: 135, column: 25, scope: !5162)
!5164 = !DILocation(line: 135, column: 30, scope: !5162)
!5165 = !DILocation(line: 135, column: 7, scope: !5143)
!5166 = !DILocalVariable(name: "ps", arg: 1, scope: !5167, file: !2808, line: 1135, type: !5146)
!5167 = distinct !DISubprogram(name: "mbszero", scope: !2808, file: !2808, line: 1135, type: !5168, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !5170)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{null, !5146}
!5170 = !{!5166}
!5171 = !DILocation(line: 0, scope: !5167, inlinedAt: !5172)
!5172 = distinct !DILocation(line: 137, column: 5, scope: !5162)
!5173 = !DILocalVariable(name: "__dest", arg: 1, scope: !5174, file: !1273, line: 57, type: !131)
!5174 = distinct !DISubprogram(name: "memset", scope: !1273, file: !1273, line: 57, type: !2817, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !5175)
!5175 = !{!5173, !5176, !5177}
!5176 = !DILocalVariable(name: "__ch", arg: 2, scope: !5174, file: !1273, line: 57, type: !87)
!5177 = !DILocalVariable(name: "__len", arg: 3, scope: !5174, file: !1273, line: 57, type: !133)
!5178 = !DILocation(line: 0, scope: !5174, inlinedAt: !5179)
!5179 = distinct !DILocation(line: 1137, column: 3, scope: !5167, inlinedAt: !5172)
!5180 = !DILocation(line: 59, column: 10, scope: !5174, inlinedAt: !5179)
!5181 = !DILocation(line: 137, column: 5, scope: !5162)
!5182 = !DILocation(line: 138, column: 11, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5143, file: !759, line: 138, column: 7)
!5184 = !DILocation(line: 138, column: 7, scope: !5143)
!5185 = !DILocation(line: 139, column: 5, scope: !5183)
!5186 = !DILocation(line: 143, column: 26, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5143, file: !759, line: 143, column: 7)
!5188 = !DILocation(line: 143, column: 41, scope: !5187)
!5189 = !DILocation(line: 143, column: 7, scope: !5143)
!5190 = !DILocation(line: 145, column: 15, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !759, line: 145, column: 11)
!5192 = distinct !DILexicalBlock(scope: !5187, file: !759, line: 144, column: 5)
!5193 = !DILocation(line: 145, column: 11, scope: !5192)
!5194 = !DILocation(line: 146, column: 32, scope: !5191)
!5195 = !DILocation(line: 146, column: 16, scope: !5191)
!5196 = !DILocation(line: 146, column: 14, scope: !5191)
!5197 = !DILocation(line: 146, column: 9, scope: !5191)
!5198 = !DILocation(line: 286, column: 1, scope: !5143)
!5199 = !DISubprogram(name: "mbsinit", scope: !5200, file: !5200, line: 293, type: !5201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !881)
!5200 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!87, !5203}
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!5205 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !845, file: !845, line: 27, type: !4286, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5206)
!5206 = !{!5207, !5208, !5209, !5210}
!5207 = !DILocalVariable(name: "ptr", arg: 1, scope: !5205, file: !845, line: 27, type: !131)
!5208 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5205, file: !845, line: 27, type: !133)
!5209 = !DILocalVariable(name: "size", arg: 3, scope: !5205, file: !845, line: 27, type: !133)
!5210 = !DILocalVariable(name: "nbytes", scope: !5205, file: !845, line: 29, type: !133)
!5211 = !DILocation(line: 0, scope: !5205)
!5212 = !DILocation(line: 30, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5205, file: !845, line: 30, column: 7)
!5214 = !DILocalVariable(name: "ptr", arg: 1, scope: !5215, file: !4372, line: 2057, type: !131)
!5215 = distinct !DISubprogram(name: "rpl_realloc", scope: !4372, file: !4372, line: 2057, type: !4364, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5216)
!5216 = !{!5214, !5217}
!5217 = !DILocalVariable(name: "size", arg: 2, scope: !5215, file: !4372, line: 2057, type: !133)
!5218 = !DILocation(line: 0, scope: !5215, inlinedAt: !5219)
!5219 = distinct !DILocation(line: 37, column: 10, scope: !5205)
!5220 = !DILocation(line: 2059, column: 24, scope: !5215, inlinedAt: !5219)
!5221 = !DILocation(line: 2059, column: 10, scope: !5215, inlinedAt: !5219)
!5222 = !DILocation(line: 37, column: 3, scope: !5205)
!5223 = !DILocation(line: 32, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5213, file: !845, line: 31, column: 5)
!5225 = !DILocation(line: 32, column: 13, scope: !5224)
!5226 = !DILocation(line: 33, column: 7, scope: !5224)
!5227 = !DILocation(line: 38, column: 1, scope: !5205)
!5228 = distinct !DISubprogram(name: "hard_locale", scope: !777, file: !777, line: 28, type: !5229, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!196, !87}
!5231 = !{!5232, !5233}
!5232 = !DILocalVariable(name: "category", arg: 1, scope: !5228, file: !777, line: 28, type: !87)
!5233 = !DILocalVariable(name: "locale", scope: !5228, file: !777, line: 30, type: !5234)
!5234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5235)
!5235 = !{!5236}
!5236 = !DISubrange(count: 257)
!5237 = !DILocation(line: 0, scope: !5228)
!5238 = !DILocation(line: 30, column: 3, scope: !5228)
!5239 = !DILocation(line: 30, column: 8, scope: !5228)
!5240 = !DILocation(line: 32, column: 7, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5228, file: !777, line: 32, column: 7)
!5242 = !DILocation(line: 32, column: 7, scope: !5228)
!5243 = !DILocalVariable(name: "__s1", arg: 1, scope: !5244, file: !954, line: 1359, type: !136)
!5244 = distinct !DISubprogram(name: "streq", scope: !954, file: !954, line: 1359, type: !955, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !5245)
!5245 = !{!5243, !5246}
!5246 = !DILocalVariable(name: "__s2", arg: 2, scope: !5244, file: !954, line: 1359, type: !136)
!5247 = !DILocation(line: 0, scope: !5244, inlinedAt: !5248)
!5248 = distinct !DILocation(line: 35, column: 9, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5228, file: !777, line: 35, column: 7)
!5250 = !DILocation(line: 1361, column: 11, scope: !5244, inlinedAt: !5248)
!5251 = !DILocation(line: 1361, column: 10, scope: !5244, inlinedAt: !5248)
!5252 = !DILocation(line: 35, column: 29, scope: !5249)
!5253 = !DILocation(line: 0, scope: !5244, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 35, column: 32, scope: !5249)
!5255 = !DILocation(line: 1361, column: 11, scope: !5244, inlinedAt: !5254)
!5256 = !DILocation(line: 1361, column: 10, scope: !5244, inlinedAt: !5254)
!5257 = !DILocation(line: 35, column: 7, scope: !5228)
!5258 = !DILocation(line: 46, column: 3, scope: !5228)
!5259 = !DILocation(line: 47, column: 1, scope: !5228)
!5260 = distinct !DISubprogram(name: "setlocale_null_r", scope: !850, file: !850, line: 154, type: !5261, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !5263)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!87, !87, !130, !133}
!5263 = !{!5264, !5265, !5266}
!5264 = !DILocalVariable(name: "category", arg: 1, scope: !5260, file: !850, line: 154, type: !87)
!5265 = !DILocalVariable(name: "buf", arg: 2, scope: !5260, file: !850, line: 154, type: !130)
!5266 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5260, file: !850, line: 154, type: !133)
!5267 = !DILocation(line: 0, scope: !5260)
!5268 = !DILocation(line: 159, column: 10, scope: !5260)
!5269 = !DILocation(line: 159, column: 3, scope: !5260)
!5270 = distinct !DISubprogram(name: "setlocale_null", scope: !850, file: !850, line: 186, type: !5271, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!136, !87}
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "category", arg: 1, scope: !5270, file: !850, line: 186, type: !87)
!5275 = !DILocation(line: 0, scope: !5270)
!5276 = !DILocation(line: 189, column: 10, scope: !5270)
!5277 = !DILocation(line: 189, column: 3, scope: !5270)
!5278 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !852, file: !852, line: 35, type: !5271, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !5279)
!5279 = !{!5280, !5281}
!5280 = !DILocalVariable(name: "category", arg: 1, scope: !5278, file: !852, line: 35, type: !87)
!5281 = !DILocalVariable(name: "result", scope: !5278, file: !852, line: 37, type: !136)
!5282 = !DILocation(line: 0, scope: !5278)
!5283 = !DILocation(line: 37, column: 24, scope: !5278)
!5284 = !DILocation(line: 62, column: 3, scope: !5278)
!5285 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !852, file: !852, line: 66, type: !5261, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !5286)
!5286 = !{!5287, !5288, !5289, !5290, !5291}
!5287 = !DILocalVariable(name: "category", arg: 1, scope: !5285, file: !852, line: 66, type: !87)
!5288 = !DILocalVariable(name: "buf", arg: 2, scope: !5285, file: !852, line: 66, type: !130)
!5289 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5285, file: !852, line: 66, type: !133)
!5290 = !DILocalVariable(name: "result", scope: !5285, file: !852, line: 111, type: !136)
!5291 = !DILocalVariable(name: "length", scope: !5292, file: !852, line: 125, type: !133)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !852, line: 124, column: 5)
!5293 = distinct !DILexicalBlock(scope: !5285, file: !852, line: 113, column: 7)
!5294 = !DILocation(line: 0, scope: !5285)
!5295 = !DILocation(line: 0, scope: !5278, inlinedAt: !5296)
!5296 = distinct !DILocation(line: 111, column: 24, scope: !5285)
!5297 = !DILocation(line: 37, column: 24, scope: !5278, inlinedAt: !5296)
!5298 = !DILocation(line: 113, column: 14, scope: !5293)
!5299 = !DILocation(line: 113, column: 7, scope: !5285)
!5300 = !DILocation(line: 116, column: 19, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !852, line: 116, column: 11)
!5302 = distinct !DILexicalBlock(scope: !5293, file: !852, line: 114, column: 5)
!5303 = !DILocation(line: 116, column: 11, scope: !5302)
!5304 = !DILocation(line: 120, column: 16, scope: !5301)
!5305 = !DILocation(line: 120, column: 9, scope: !5301)
!5306 = !DILocation(line: 125, column: 23, scope: !5292)
!5307 = !DILocation(line: 0, scope: !5292)
!5308 = !DILocation(line: 126, column: 18, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5292, file: !852, line: 126, column: 11)
!5310 = !DILocation(line: 126, column: 11, scope: !5292)
!5311 = !DILocation(line: 128, column: 39, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5309, file: !852, line: 127, column: 9)
!5313 = !DILocalVariable(name: "__dest", arg: 1, scope: !5314, file: !1273, line: 26, type: !4640)
!5314 = distinct !DISubprogram(name: "memcpy", scope: !1273, file: !1273, line: 26, type: !4638, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !5315)
!5315 = !{!5313, !5316, !5317}
!5316 = !DILocalVariable(name: "__src", arg: 2, scope: !5314, file: !1273, line: 26, type: !1085)
!5317 = !DILocalVariable(name: "__len", arg: 3, scope: !5314, file: !1273, line: 26, type: !133)
!5318 = !DILocation(line: 0, scope: !5314, inlinedAt: !5319)
!5319 = distinct !DILocation(line: 128, column: 11, scope: !5312)
!5320 = !DILocation(line: 29, column: 10, scope: !5314, inlinedAt: !5319)
!5321 = !DILocation(line: 129, column: 11, scope: !5312)
!5322 = !DILocation(line: 133, column: 23, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !852, line: 133, column: 15)
!5324 = distinct !DILexicalBlock(scope: !5309, file: !852, line: 132, column: 9)
!5325 = !DILocation(line: 133, column: 15, scope: !5324)
!5326 = !DILocation(line: 138, column: 44, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5323, file: !852, line: 134, column: 13)
!5328 = !DILocation(line: 0, scope: !5314, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 138, column: 15, scope: !5327)
!5330 = !DILocation(line: 29, column: 10, scope: !5314, inlinedAt: !5329)
!5331 = !DILocation(line: 139, column: 15, scope: !5327)
!5332 = !DILocation(line: 139, column: 32, scope: !5327)
!5333 = !DILocation(line: 140, column: 13, scope: !5327)
!5334 = !DILocation(line: 0, scope: !5293)
!5335 = !DILocation(line: 145, column: 1, scope: !5285)
